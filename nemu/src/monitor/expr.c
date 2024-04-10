#include "nemu.h"
#include "cpu/reg.h"
#include "memory/memory.h"

#include <stdlib.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>

#include <elf.h> 

enum
{
	NOTYPE = 256,
	EQ,
	NUM,
	REG,
	SYMB,

	/* TODO: Add more token types */
	HEX,
	NEQ,
	AND,
	OR,
	NOT,
	DEREF,
};

static struct rule
{
	char *regex;
	int token_type;
} rules[] = {
	/* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */

	{" +", NOTYPE}, // white space
	{"\\+", '+'}, // \+ 匹配+符号

	/* 整数的加减乘除 */
	{"\\-", '-'},	// \- 匹配-符号
	{"\\*", '*'},	// \* 匹配*符号
	{"\\/", '/'},	// \/ 匹配/符号
	{"\\(", '('},	// \( 匹配(括号
	{"\\)", ')'},	// \) 匹配)括号

	/* 扩展功能 */
	{"0[xX]{1}[0-9a-fA-F]+", HEX}, // 为了区分0 0x, 先解析hex
	{"[0-9]+", NUM},
	{"%e[abcd]{1}x", REG}, // 通用寄存器
	{"%e[bs]p", REG},
	{"%e[ds]i", REG},

	{"==", EQ}, // 逻辑运算符号
	{"!=", NEQ},
	{"&&", AND},
	{"\\|\\|", OR},
	{"!", NOT},

	{"[A-Za-z_][A-Za-z0-9_]*", SYMB},
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]))

static regex_t re[NR_REGEX];

/* Rules are used for more times.
 * Therefore we compile them only once before any usage.
 */
void init_regex()
{
	int i;
	char error_msg[128];
	int ret;

	for (i = 0; i < NR_REGEX; i++)
	{
		ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
		if (ret != 0)
		{
			regerror(ret, &re[i], error_msg, 128);
			assert(ret != 0);
		}
	}
}

typedef struct token
{
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

/* 将字符串解析为token数组 */
static bool make_token(char *e)
{
	int position = 0;
	int i;
	regmatch_t pmatch;

	nr_token = 0;

	while (e[position] != '\0')
	{
		/* Try all rules one by one. */
		for (i = 0; i < NR_REGEX; i++)
		{
			if (regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0)
			{
				char *substr_start = e + position;
				int substr_len = pmatch.rm_eo;

				printf("match regex[%d] at position %d with len %d: %.*s\n", i, position, substr_len, substr_len, substr_start);
				position += substr_len;

				/* TODO: Now a new token is recognized with rules[i]. 
				 * Add codes to perform some actions with this token.
				 */

				// printf("input=%s token_type=%c\n", e + position, rules[i].token_type);
				switch (rules[i].token_type)
				{
				case NOTYPE:
					printf("NOTYPE");
					break;
				case SYMB:
				case REG:
				case HEX:
				case NUM:
					if (substr_len <= 32) {
						printf("token=%s\n", substr_start);
						memcpy(tokens[nr_token].str, substr_start, substr_len);
					} else {
						printf("ERROR substr_len > 32\n");
					}
				default:
					tokens[nr_token].type = rules[i].token_type;
					nr_token++;
				}

				break;
			}
		}

		if (i == NR_REGEX)
		{
			printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
			return false;
		}
	}

	// 打印 token 数组
	for (int i = 0; i < nr_token; i++) {
		if (tokens[i].type == NUM || tokens[i].type == SYMB)
			printf("%s", tokens[i].str);
		else	
			printf("%c", tokens[i].type);
	}
	printf("\n");

	return true;
}

static uint32_t check_parentheses(int left, int right)
{
	int count = 0;

	if (tokens[left].type != '(' || tokens[right].type != ')')
		return 0;

	for (int i = left; i <= right; i++) {
		if (tokens[i].type == '(')
			count += 1;
		if (tokens[i].type == ')')
			count -= 1;
		// 中途出现0 说明不是最左和最右匹配
		if ((count <= 0) && (i != right))
			return 0; 
	}
	
	return !count ? 1 : 0;
}

/* 错误表达式不能分裂 */
static uint32_t check_badexpr(int left, int right)
{
	int count = 0;
	for (int i = left; i <= right; i++) {
		if (tokens[i].type == '(')
			count += 1;
		if (tokens[i].type == ')')
			count -= 1;
		if (count < 0) 
			return 1;
	}
	return !count ? 0 : 1;
}

/* 计算操作数的优先级 */
static int operator_level(int operator)
{
	if ('+' == operator || '-' == operator)
		return 7;
	if ('*' == operator || '/' == operator)
		return 8;
	if (EQ == operator || NEQ == operator)
		return 4;
	if (AND == operator)
		return 0;
	if (OR == operator)
		return -1;
	if (NOT == operator || DEREF == operator)
		return 9; 
	return 0x7FFFFFFF;
}

extern CPU_STATE cpu;

static int reg_index(char *str)
{
	if (strcmp(str, "%eax") == 0)
		return 0;
	if (strcmp(str, "%ecx") == 0)
		return 1;
	if (strcmp(str, "%edx") == 0)
		return 2;
	if (strcmp(str, "%ebx") == 0)
		return 3;
	if (strcmp(str, "%esp") == 0)
		return 4;
	if (strcmp(str, "%ebp") == 0)
		return 5;
	if (strcmp(str, "%esi") == 0)
		return 6;
	if (strcmp(str, "%edi") == 0)
		return 7;
	return 0;
}

typedef struct {
	void *base;
	int num;
}tab_desc;

#define HEXADDR(val) ((uint32_t)(val))

static void *shstrtab_base(Elf32_Ehdr *elf)
{
	// Elf32_Shdr *entry = (void *)elf + elf->e_shoff;
	Elf32_Shdr *entry = (void *)elf + vaddr_read(HEXADDR(&(elf->e_shoff)), SREG_CS, 4);
	// Elf32_Half shstrndx = elf->e_shstrndx;
	Elf32_Half shstrndx = vaddr_read(HEXADDR(&(elf->e_shstrndx)), SREG_CS, 4);
	Elf32_Shdr *shstrtab = entry + shstrndx;
	// return ((void *)elf + shstrtab->sh_offset);
	return ((void *)elf + vaddr_read(HEXADDR(&(shstrtab->sh_offset)), SREG_CS, 4));
}

static tab_desc shtab_base(Elf32_Ehdr *elf)
{
	// tab_desc tmp = {.base = (void *)elf + elf->e_shoff, .num = elf->e_shnum};
	tab_desc tmp = {.base = (void *)elf + vaddr_read(HEXADDR(&(elf->e_shoff)), SREG_CS, 4), 
		.num=vaddr_read(HEXADDR(&(elf->e_shnum)), SREG_CS, 4)};
	return tmp;
}

static tab_desc nametab_base(Elf32_Ehdr *elf, char *section_name)
{
	tab_desc shentry = shtab_base(elf);
	char *shstrtab = shstrtab_base(elf);
	// printf("END BREAK POINT shstrtab.base=0x%x shtab.base=0x%x\n", HEXADDR(shstrtab), 
	// 		HEXADDR(shentry.base));
	tab_desc ret = {.base=NULL, .num=0,};
	for (int i = 0; i < shentry.num; i++) {
		Elf32_Shdr *entry = ((Elf32_Shdr *)shentry.base) + i;
		// if (0 == strcmp(section_name, entry->sh_name + shstrtab)) {
		if (0 == strcmp(section_name, hw_mem + shstrtab + 
					vaddr_read(HEXADDR(&(entry->sh_name)), SREG_CS, 4))) {
			// ret.base = (void *)elf + entry->sh_offset;
			ret.base = (void *)elf + vaddr_read(HEXADDR(&(entry->sh_offset)), SREG_CS, 4);
			// ret.num = !entry->sh_entsize ? 0 : entry->sh_size / entry->sh_entsize;
			ret.num = !vaddr_read(HEXADDR(&(entry->sh_entsize)), SREG_CS, 4) ? 0 :
			       	vaddr_read(HEXADDR(&(entry->sh_size)), SREG_CS, 4) / 
				vaddr_read(HEXADDR(&(entry->sh_entsize)), SREG_CS, 4);	
			return ret;
		}
	}
	return ret;
}

static uint32_t varobject_addr(Elf32_Ehdr *elf, char *varname)
{
	tab_desc symtab = nametab_base(elf, ".symtab");
	tab_desc strtab = nametab_base(elf, ".strtab");
	printf("symtab.base=%x strtab.base=0x%x", symtab.base, strtab.base);
	char *strtab_base = strtab.base;
	Elf32_Sym *entry = symtab.base;
	for (int i = 0; i < symtab.num; i++) {
		if (0 == strcmp(strtab_base + (entry + i)->st_name, varname)) {
			return (entry + i)->st_value;
		}
	}
	return 0;
}


/* 递归求解表达式 */
static int eval(int left, int right)
{
	printf("left=%d right=%d\n", left, right);
	if (left > right) {
		printf("%s ERROR [left > right]\n", __func__);
		assert(0);
		return 0;
	} else if (left == right) {
		if (tokens[left].type == NUM)
			return atoi(tokens[left].str); 
		if (tokens[left].type == HEX)
			return strtol(tokens[left].str, NULL, 16);
		// 处理寄存器值
		if (tokens[left].type == REG) {
			int rdx = reg_index(tokens[left].str);
			// printf("str=%s index=%d\n", tokens[left].str, reg_index(tokens[left].str));
			return cpu.gpr[rdx]._32;
		}
		// 符号-变量,
		if (tokens[left].type == SYMB) {
			Elf32_Ehdr *elf;

#ifdef HAS_DEVICE_IDE
			uint8_t buf[4096];
			ide_read(buf, ELF_OFFSET_IN_DISK, 4096);
			elf = (void *)buf;
			// Log("ELF loading from hard disk.");
#else
			elf = (void *)0x0;
			int val = varobject_addr(elf, tokens[left].str);
			printf("var_val=%x\n", val);	
			return val;
#endif
		}
	} else if (check_parentheses(left, right)) { // (express)
		return eval(left + 1, right - 1);
	} else {
		// 0. 判断是否为错误表达式
		if (check_badexpr(left, right)) {
			printf("ERROR bad expression \n");
			assert(0);
		}

		// 1. 找到dominant operator, 分裂表达式
		int dop_index = 0;
		int dop = 0;
		int count = 0;
		for (int i = left; i <= right; i++) {
			if (tokens[i].type == '(') {
				count += 1;
				continue; 
			}
			if (tokens[i].type == ')') {
				count -= 1;
				continue;
			}
			// 位于括号内直接走
			if (count > 0)
				continue;
			// 非运算符直接走
			if (tokens[i].type == '+' || tokens[i].type == '-' || 
				tokens[i].type == '*' || tokens[i].type == '/' ||
				tokens[i].type == EQ  || tokens[i].type == NEQ ||
				tokens[i].type == AND || tokens[i].type == OR ||
				tokens[i].type == NOT || tokens[i].type == DEREF) {
				// 后者优先级低选择后者, 优先级相同也选择后者
				if (!dop || operator_level(tokens[i].type) <= 
						operator_level(dop)) {
					dop = tokens[i].type;
					dop_index = i;
				}
			}
		}
		
		int val1, val2;
		// 处理单目运算
		if (dop == NOT) {
			val2 = eval(dop_index + 1, right);
		} else if (dop == DEREF) {
			val2 = eval(dop_index + 1, right); // 地址
			val2 = vaddr_read(val2, SREG_CS, 4);
		} else {
			val1 = eval(left, dop_index - 1);
			val2 = eval(dop_index + 1, right);
		}
		// printf("dop=%d val1=%d val2=%d dop_index=%d\n", dop, val1, val2, dop_index);
		switch(dop) {
		case '+':
			return val1 + val2;
		case '-':
			return val1 - val2;
		case '*':
			return val1 * val2;
		case '/':
			return val1 / val2;
		case EQ:
			return val1 == val2;
		case NEQ:
			return val1 != val2;
		case AND:
			return val1 && val2;
		case OR:
			return val1 || val2;
		case NOT:
			return !val2;
		case DEREF:
			return val2; // 返回解引用后的值
		default:
			printf("ERROR tokens[i].type is not operator\n");
			assert(0);
		}
	}

	printf("ERROR eval non-void function\n");
	assert(0);
	return 0;
}

uint32_t expr(char *e, bool *success)
{
	if (!make_token(e))
	{
		*success = false;
		return 0;
	}

	// 处理 *解引用情况
	for (int i = 0; i < nr_token; i++) {
		if (tokens[i].type == '*' && (i == 0 || (tokens[i-1].type != HEX && tokens[i-1].type != NUM)))
			tokens[i].type = DEREF;
	}
	*success = true;
	// 没有实现对负数表达式的解析
	return eval(0, nr_token - 1);
}
