#include "cpu/cpu.h"

/* llc add 24.3.30 bit operation */
static inline uint8_t get_bit(uint8_t index, uint32_t num)
{
	return (num >> index) & 0x1U;
}

static inline void set_bit0(uint8_t index, uint32_t *num)
{
	*num = *num & (~(0x1 << index));
}

static inline void set_bit1(uint8_t index, uint32_t *num)
{
	*num = *num | (0x1 << index);
}
/* llc end */

/* 注意这里的data_size实际上指的是进行8/16/32 bit运算
 * 但是README上说 截取低位其实有一点描述不准确 */
uint32_t alu_add(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_add(src, dest, data_size);
#else
	// uint8_t ZF, SF, OF, CF;
	uint8_t PF = 0;
	uint8_t fn, cout = 0, cout_1 = 0;
        uint8_t	cin = 0;
	uint32_t ans = 0;

	for (int i = 0; i < data_size; i++) {
		fn = (get_bit(i, src) + get_bit(i, dest) + cin) & 0x1;
		cout = (get_bit(i, src) + get_bit(i, dest) + cin) >> 1;
		cin = cout;

		(fn == 0) ? set_bit0(i, &ans) : set_bit1(i, &ans);
		if ((data_size - 2) == i)
			cout_1 = cout;
	}

	for (int i = 0; i < 8; i++) {
		PF += get_bit(i, ans) ? 1 : 0;
	}
	PF = (PF & 0x1) ? 0 : 1;

	cpu.eflags.ZF = (ans == 0) ? 1 : 0;
	cpu.eflags.SF = get_bit((data_size - 1), ans) ? 1 : 0;
	cpu.eflags.OF = cout ^ cout_1;
	cpu.eflags.CF = 0 ^ cout;
	cpu.eflags.PF = PF;

	return ans;
#endif
}

uint32_t alu_adc(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_adc(src, dest, data_size);
#else
	// uint8_t ZF, SF, OF, CF;
	uint8_t PF = 0;
	uint8_t fn, cout = 0, cout_1 = 0;
        uint8_t	cin = cpu.eflags.CF;
	uint32_t ans = 0;

	for (int i = 0; i < data_size; i++) {
		fn = (get_bit(i, src) + get_bit(i, dest) + cin) & 0x1;
		cout = (get_bit(i, src) + get_bit(i, dest) + cin) >> 1;
		cin = cout;

		(fn == 0) ? set_bit0(i, &ans) : set_bit1(i, &ans);
		if ((data_size - 2) == i)
			cout_1 = cout;
	}

	for (int i = 0; i < 8; i++) {
		PF += get_bit(i, ans) ? 1 : 0;
	}
	PF = (PF & 0x1) ? 0 : 1;

	cpu.eflags.ZF = (ans == 0) ? 1 : 0;
	cpu.eflags.SF = get_bit((data_size - 1), ans) ? 1 : 0;
	cpu.eflags.OF = cout ^ cout_1;
	cpu.eflags.CF = 0 ^ cout;
	cpu.eflags.PF = PF;

	return ans;
#endif
}

uint32_t alu_sub(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_sub(src, dest, data_size);
#else
	// x - y = x + ~y + 1;
	// uint8_t ZF, SF, OF, CF;
	uint8_t PF = 0;
	uint8_t fn, cout = 0, cout_1 = 0;
	uint8_t sub = 1;
        uint8_t	cin = sub;
	uint32_t ans = 0;

	src = ~src;

	for (int i = 0; i < data_size; i++) {
		fn = (get_bit(i, src) + get_bit(i, dest) + cin) & 0x1;
		cout = (get_bit(i, src) + get_bit(i, dest) + cin) >> 1;
		cin = cout;

		(fn == 0) ? set_bit0(i, &ans) : set_bit1(i, &ans);
		if ((data_size - 2) == i)
			cout_1 = cout;
	}

	for (int i = 0; i < 8; i++) {
		PF += get_bit(i, ans) ? 1 : 0;
	}
	PF = (PF & 0x1) ? 0 : 1;

	cpu.eflags.ZF = (ans == 0) ? 1 : 0;
	cpu.eflags.SF = get_bit((data_size - 1), ans) ? 1 : 0;
	cpu.eflags.OF = cout ^ cout_1;
	cpu.eflags.CF = sub ^ cout;
	cpu.eflags.PF = PF;

	return ans;
#endif
}

/* 已知x-y=x+~y+1, 那么x-y-CF(带进位)在数值上是缺少1的, 所以cin的1可以根据CF的值减掉 */
uint32_t alu_sbb(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_sbb(src, dest, data_size);
#else
//	if (cpu.eflags.CF == 0)
//		return alu_sub(src, dest, data_size);

	uint8_t PF = 0;
	uint8_t fn, cout = 0, cout_1 = 0;
	uint8_t sub = 1;
        uint8_t	cin = (sub - cpu.eflags.CF);
	uint32_t ans = 0;

	src = ~src;

	for (int i = 0; i < data_size; i++) {
		fn = (get_bit(i, src) + get_bit(i, dest) + cin) & 0x1;
		cout = (get_bit(i, src) + get_bit(i, dest) + cin) >> 1;
		cin = cout;

		(fn == 0) ? set_bit0(i, &ans) : set_bit1(i, &ans);
		if ((data_size - 2) == i)
			cout_1 = cout;
	}

	for (int i = 0; i < 8; i++) {
		PF += get_bit(i, ans) ? 1 : 0;
	}
	PF = (PF & 0x1) ? 0 : 1;

	cpu.eflags.ZF = (ans == 0) ? 1 : 0;
	cpu.eflags.SF = get_bit((data_size - 1), ans) ? 1 : 0;
	cpu.eflags.OF = cout ^ cout_1;
	cpu.eflags.CF = sub ^ cout;
	cpu.eflags.PF = PF;

	return ans;
#endif
}

uint64_t alu_mul(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_mul(src, dest, data_size);
#else
	
	uint64_t ans = 0;
	uint64_t tmp;
	if (data_size == 32)
		tmp = 0xFFFFFFFF00000000;
	else if (data_size == 16)
		tmp = 0xFFFF0000;
	else
		tmp = 0x0000FF00;
	for (int i = 0; i < src; i++)
		ans += dest;

	if (ans & tmp) {
		cpu.eflags.CF = 1;
		cpu.eflags.OF = 1;
	} else {
		cpu.eflags.CF = 0;
		cpu.eflags.OF = 0;
	}

	// SF, ZF, AF, PF are undefined
	return ans; 
#endif
}

int64_t alu_imul(int32_t src, int32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_imul(src, dest, data_size);
#else
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	fflush(stdout);
	assert(0);
	return 0;
#endif
}

// need to implement alu_mod before testing
uint32_t alu_div(uint64_t src, uint64_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_div(src, dest, data_size);
#else
	// 看起来像是只需要返回商, 那么为什么需要实现余数?
	if (src == 0)
		return dest / src; // Exception Floating
	// 减法实现触发
	uint32_t ans = 0;
	while (dest >= src) {
		ans += 1;
		dest -= src;
	}
	
	return ans;
#endif
}

// need to implement alu_imod before testing
int32_t alu_idiv(int64_t src, int64_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_idiv(src, dest, data_size);
#else
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	fflush(stdout);
	assert(0);
	return 0;
#endif
}

uint32_t alu_mod(uint64_t src, uint64_t dest)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_mod(src, dest);
#else
	return 0;
	if (dest < src)
		return dest & 0xFFFFFFFF;
	while (dest >= src)
		dest -= src;
	return dest & 0xFFFFFFFF;
#endif
}

int32_t alu_imod(int64_t src, int64_t dest)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_imod(src, dest);
#else
	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	fflush(stdout);
	assert(0);
	return 0;
#endif
}

uint32_t alu_and(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_and(src, dest, data_size);
#else
	uint8_t PF = 0;	
	uint8_t fn;
	uint32_t ans = 0;
	for (int i = 0; i < data_size; i++) {
		fn = get_bit(i, src) & get_bit(i, dest);
		(fn == 1) ? set_bit1(i, &ans) : set_bit0(i, &ans);
	}

	for (int i = 0; i < 8; i++) {
		PF += get_bit(i, ans) ? 1 : 0;
	}
	PF = (PF & 0x1) ? 0 : 1;

	cpu.eflags.ZF = (ans == 0) ? 1 : 0;
	cpu.eflags.PF = PF;
	cpu.eflags.SF = 0x1 & (ans >> (data_size - 1)); // 得到符号位标志

	return ans;
#endif
}

uint32_t alu_xor(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_xor(src, dest, data_size);
#else
	uint32_t ans = 0 ;
	uint8_t PF = 0;
	uint8_t fn;
	for (int i = 0; i < data_size; i++) {
		fn = get_bit(i, src) ^ get_bit(i, dest);
		(fn == 1) ? set_bit1(i, &ans) : set_bit0(i, &ans);
	}

	for (int i = 0; i < 8; i++) {
		PF += get_bit(i, ans) ? 1 : 0;
	}
	PF = (PF & 0x1) ? 0 : 1;

	cpu.eflags.ZF = (ans == 0) ? 1 : 0;
	cpu.eflags.PF = PF;
	cpu.eflags.SF = 0x1 & (ans >> (data_size - 1));

	return ans;
#endif
}

uint32_t alu_or(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_or(src, dest, data_size);
#else
	uint32_t ans = 0;
	uint8_t PF = 0;
	uint8_t fn;
	for (int i = 0; i < data_size; i++) { 
		fn = get_bit(i, src) | get_bit(i, dest);
		(fn == 1) ? set_bit1(i, &ans) : set_bit0(i, &ans);
	}

	for (int i = 0; i < 8; i++) {
		PF += get_bit(i, ans) ? 1 : 0;
	}
	PF = (PF & 0x1) ? 0 : 1;

	cpu.eflags.SF = 0x1 & (ans >> (data_size - 1));
	cpu.eflags.ZF = (ans == 0) ? 1 : 0;
	cpu.eflags.PF = PF;

	return ans;
#endif
}

uint32_t alu_shl(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_shl(src, dest, data_size);
#else
	uint8_t CF = 0, PF = 0;
	uint32_t ans;

	if (src == 1)
		cpu.eflags.OF = ((0x1 & (dest >> (data_size - 1))) == 
				 (0x1 & (dest >> (data_size - 2)))) ? 0 : 1;
	
	for (int i = 0; i < src; i++) {
		CF = (dest >> (data_size - 1)) & 0x1;
		dest = dest << 1;
	}

	for (int i = 0; i < 8; i++) {
		PF += get_bit(i, dest) ? 1 : 0;
	}
	PF = (PF & 0x1) ? 0 : 1;

	// 1 << 32 会溢出
	ans = (data_size == 32) ? dest : dest & ((1 << data_size) - 1);

	cpu.eflags.CF = CF;
	cpu.eflags.SF = (dest >> (data_size - 1)) & 0x1;
	cpu.eflags.ZF = (ans == 0) ? 1 : 0;
	cpu.eflags.PF = PF;

	return ans;
#endif
}

uint32_t alu_shr(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_shr(src, dest, data_size);
#else
	uint8_t CF = 0, PF = 0;
	uint32_t ans;

	if (src == 1) 
		cpu.eflags.OF = (dest >> (data_size -1)) & 0x1; // OF 等于 源操作数的最高位

	for (int i = 0; i < src; i++) {
		CF = dest & 0x1;
		dest = dest >> 1;
		// 为了防止当 data_size<32 导致右移后最高位不是0, 强制设置为0
		if (data_size != 32)
			set_bit0(data_size - 1, &dest); 
	}

	for (int i = 0; i < 8; i++) {
		PF += get_bit(i, dest) ? 1 : 0;
	}
	PF = (PF & 0x1) ? 0 : 1;

	ans = (data_size == 32) ? dest : dest & ((1 << data_size) - 1); // 保留有效位

	cpu.eflags.CF = CF;
	cpu.eflags.SF = (dest >> (data_size - 1)) & 0x1;
	cpu.eflags.ZF = (ans == 0) ? 1 : 0;
	cpu.eflags.PF = PF;

	return ans;
#endif
}

uint32_t alu_sar(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_sar(src, dest, data_size);
#else
	uint8_t CF = 0, PF = 0, sign;
	uint32_t ans;

	// For the SAR instruction, the OF flag is cleared for all 1-bit shifts
	if (src == 1)
		cpu.eflags.OF = 0;

	sign = (dest >> (data_size - 1)) & 0x1; // 拿到original value的符号位
	for (int i = 0; i < src; i++) {
		CF = dest & 0x1;
		dest = dest >> 1;
		// sets or clears the most significant bit depends on sign
		sign ? set_bit1(data_size - 1, &dest) : set_bit0(data_size - 1, &dest); 
	}

	for (int i = 0; i < 8; i++) {
		PF += get_bit(i, dest) ? 1 : 0;
	}
	PF = (PF & 0x1) ? 0 : 1;

	ans = (data_size == 32) ? dest : dest & ((1 << data_size) - 1); // 保留有效位

	cpu.eflags.CF = CF;
	cpu.eflags.SF = sign;
	cpu.eflags.ZF = (ans == 0) ? 1 : 0;
	cpu.eflags.PF = PF;

	return ans;
#endif
}

// sal 和 shl 实现是一样的
uint32_t alu_sal(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_sal(src, dest, data_size);
#else
	uint8_t CF = 0, PF = 0;
	uint32_t ans;

	// For left shifts, 置OF规则一样
	if (src == 1)
		cpu.eflags.OF = ((0x1 & (dest >> (data_size - 1))) == 
				 (0x1 & (dest >> (data_size - 2)))) ? 0 : 1;

	for (int i = 0; i < src; i++) {
		CF = (dest >> (data_size - 1)) & 0x1;
		dest = dest << 1; // 最低位默认置0
	}

	for (int i = 0; i < 8; i++) {
		PF += get_bit(i, dest) ? 1 : 0;
	}
	PF = (PF & 0x1) ? 0 : 1;

	// 1 << 32 会溢出
	ans = (data_size == 32) ? dest : dest & ((1 << data_size) - 1);

	cpu.eflags.CF = CF;
	cpu.eflags.SF = (dest >> (data_size - 1)) & 0x1;
	cpu.eflags.ZF = (ans == 0) ? 1 : 0;
	cpu.eflags.PF = PF;

	return ans;
#endif
}
