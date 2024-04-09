#include "nemu.h"
#include "cpu/reg.h"
#include "memory/memory.h"

#include <stdlib.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>

enum
{
	NOTYPE = 256,
	EQ,
	NUM,
	REG,
	SYMB,

	/* TODO: Add more token types */
	HEX,
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
	{"0[xX]{1}[0-9a-fA-F]+", HEX},
	{"[0-9]+", NUM},
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
				case NUM:
					if (substr_len <= 32) {
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
		if (tokens[i].type == NUM)
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
static int operator_level(char operator)
{
	if ('+' == operator || '-' == operator)
		return 1;
	if ('*' == operator || '/' == operator)
		return 2;
	return 0x7FFFFFFF;
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
		// 假设str值在uing32_t范围内, 否则值无法预期
		if (tokens[left].type == NUM)
			return atoi(tokens[left].str); 
		if (tokens[left].type == HEX)
			return (int)strtol(tokens[left].str, NULL, 16);
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
		char dop = 0;
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
				tokens[i].type == '*' || tokens[i].type == '/') {
				// 后者优先级低选择后者, 优先级相同也选择后者
				if (!dop || operator_level(tokens[i].type) <= 
						operator_level(dop)) {
					dop = tokens[i].type;
					dop_index = i;
				}
			}
		}
		
		int val1 = eval(left, dop_index - 1);
		int val2 = eval(dop_index + 1, right);
		switch(dop) {
		case '+':
			return val1 + val2;
		case '-':
			return val1 - val2;
		case '*':
			return val1 * val2;
		case '/':
			return val1 / val2;
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

	// printf("\nPlease implement expr at expr.c\n");
	// fflush(stdout);
	// assert(0);
	*success = true;
	return eval(0, nr_token - 1);
}
