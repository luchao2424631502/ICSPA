#include "nemu.h"
#include "cpu/fpu.h"

#include "cpu/alu.h"

FPU fpu;
// special values
FLOAT p_zero, n_zero, p_inf, n_inf, p_nan, n_nan;

static inline uint8_t get_bit(uint8_t index, uint64_t num)
{
	return (num >> index) & 0x1U;
}

static inline void set_bit0(uint8_t index, uint64_t *num)
{
	*num = *num & (~(0x1 << index));
}

static inline void set_bit1(uint8_t index, uint64_t *num)
{
	*num = *num | (0x1 << index);
}

// the last three bits of the significand are reserved for the GRS bits
inline uint32_t internal_normalize(uint32_t sign, int32_t exp, uint64_t sig_grs)
{

	// normalization
	bool overflow = false; // true if the result is INFINITY or 0 during normalize

	/* sig_grs>>(23+3)>1说明尾数运算超过规格化表示,需要向右移动来规格化,所以需要右规
	 * exp传入的时候已经用int_t值来接收, 但是对于add/sub运算, 这里exp一样是移码0~254
	 * exp < 0可能是表示的是mul/div运算情况下
	 * exp < 0是当前mul乘法得到的结果
	 */
	if ((sig_grs >> (23 + 3)) > 1 || exp < 0)
	{
		uint32_t sticky = 0;
		// normalize toward right
		while ((((sig_grs >> (23 + 3)) > 1) && exp < 0xff) // condition 1
			   ||					   // or
			   (sig_grs > 0x04 && exp < 0))		   // condition 2
		{
			/* TODO: shift right, pay attention to sticky bit*/
			sticky = sticky | (sig_grs & 0x1);
			sig_grs = sig_grs >> 1;
			sig_grs |= sticky; // 保留sticky bit
			
			exp += 1; // 右移, 尾数变小,阶码变大
		}

		if (exp >= 0xff)
		{
			/* TODO: assign the number to infinity */

			// exp == 0xff 说明上溢出了, 当前exp最大,并且尾数也>1
			// 赋值为infinity, 那么尾数全部都赋值为0
			
			// sig_grs = sig_grs & 0x7; // 保留3bit的 grs
			sig_grs = 0x0;
			exp = 0xFF;

			overflow = true;
		}
		if (exp == 0)
		{
			// we have a denormal here, the exponent is 0, but means 2^-126,
			// as a result, the significand should shift right once more
			/* TODO: shift right, pay attention to sticky bit*/

			uint32_t sticky = 0;
			sticky = sticky | (sig_grs & 0x1);
			sig_grs = sig_grs >> 1;
			sig_grs |= sticky;
		}
		if (exp < 0) // 经过右规后, 尾数的值没了, 并且阶数还是<0, 说明乘法的结果等于0
		{
			/* TODO: assign the number to zero */
			// printf("\e[0;31mPlease implement me at fpu.c\e[0m\n");
			// fflush(stdout);
			// assert(0);

			sig_grs = 0x0;
			exp = 0x0;

			overflow = true;
		}
	}
	else if (((sig_grs >> (23 + 3)) == 0) && exp > 0)
	{
		// normalize toward left
		while (((sig_grs >> (23 + 3)) == 0) && exp > 0)
		{
			/* TODO: shift left */
			sig_grs = sig_grs << 1;
			exp -= 1;
		}
		if (exp == 0) // 左规到, 出现阶码等于0, 但是最高位还是为0, 所以处理成非规格化数
		{
			// denormal
			/* TODO: shift right, pay attention to sticky bit*/
			uint8_t sticky = 0;
			sticky = sticky | (sig_grs & 0x1);
			sig_grs = sig_grs >> 1;
			sig_grs |= sticky; // 保留sticky bit

		}
	}
	else if (exp == 0 && sig_grs >> (23 + 3) == 1)
	{
		// two denormals result in a normal
		exp++;
	}

	if (!overflow) // 规格化没有发生溢出, 进行就近舍入
	{
		/* TODO: round up and remove the GRS bits */
		uint32_t grs = sig_grs & 0x7;
		if (grs < 0x4 || (grs == 0x4 && (((sig_grs >> 0x3)&0x1) == 0x0))) {
			// 舍 0, 并且丢弃最高隐藏位
			sig_grs = sig_grs >> 3;
			sig_grs = (~(0x1 << 23)) & sig_grs;
		} else if (grs > 0x4 || (grs == 0x4 && (((sig_grs >> 0x3)&0x1) == 0x1))) {
			// 入 1, 判断是否破坏规格化(继续右规)，并且丢弃最高隐藏位
			uint8_t cin = 1, fn;
			for (int i = 3; i < 25+3; i++) {
				fn = (cin + get_bit(i, sig_grs)) & 0x1;
				cin = (cin + get_bit(i, sig_grs)) >> 1;

				(fn == 1) ? set_bit1(i, &sig_grs) : set_bit0(i, &sig_grs);
			}
			
			// 移除最后3bit保留的GRS bits
			sig_grs = sig_grs & ~0x7;

			// 判断是否破坏规格化
			if ((sig_grs >> (23 + 3)) > 1) {
				uint32_t sticky = 0;
				// normalize toward right
				while ((((sig_grs >> (23 + 3)) > 1) && exp < 0xff) // condition 1
						||					   // or
						(sig_grs > 0x04 && exp < 0))		   // condition 2
				{
					sticky = sticky | (sig_grs & 0x1);
					sig_grs = sig_grs >> 1;
					sig_grs |= sticky; // 保留sticky bit

					exp += 1; // 右移, 尾数变小,阶码变大
				}

				if (exp == 0xff) { // 溢出了, 赋值为无穷格式
					sig_grs = 0x0;
					exp = 0xFF;
					overflow = true;
				}
			}

			if (!overflow) { // 没有溢出一样来
				sig_grs = sig_grs >> 3;
				sig_grs = (~(0x1 << 23)) & sig_grs;
			}
		}
	}

	FLOAT f;
	f.sign = sign;
	f.exponent = (uint32_t)(exp & 0xff);
	f.fraction = sig_grs; // here only the lowest 23 bits are kept
	return f.val;
}

CORNER_CASE_RULE corner_add[] = {
	{P_ZERO_F, P_ZERO_F, P_ZERO_F},
	{N_ZERO_F, P_ZERO_F, P_ZERO_F},
	{P_ZERO_F, N_ZERO_F, P_ZERO_F},
	{N_ZERO_F, N_ZERO_F, N_ZERO_F},
	{P_INF_F, N_INF_F, N_NAN_F},
	{N_INF_F, P_INF_F, N_NAN_F},
	{P_INF_F, P_NAN_F, P_NAN_F},
	{P_INF_F, N_NAN_F, N_NAN_F},
	{N_INF_F, P_NAN_F, P_NAN_F},
	{N_INF_F, N_NAN_F, N_NAN_F},
	{N_NAN_F, P_NAN_F, P_NAN_F},
};

// a + b
uint32_t internal_float_add(uint32_t b, uint32_t a)
{

	// corner cases
	int i = 0;
	for (; i < sizeof(corner_add) / sizeof(CORNER_CASE_RULE); i++)
	{
		if (a == corner_add[i].a && b == corner_add[i].b)
			return corner_add[i].res;
	}
	if (a == P_ZERO_F || a == N_ZERO_F)
	{
		return b;
	}
	if (b == P_ZERO_F || b == N_ZERO_F)
	{
		return a;
	}

	FLOAT f, fa, fb;
	fa.val = a;
	fb.val = b;
	// infity, NaN
	if (fa.exponent == 0xff)
	{
		return a;
	}
	if (fb.exponent == 0xff)
	{
		return b;
	}

	if (fa.exponent > fb.exponent) // 保证fa是阶数小的浮点数, fa向fb进行对阶
	{
		fa.val = b;
		fb.val = a;
	}

	uint32_t sig_a, sig_b, sig_res;
	sig_a = fa.fraction;
	if (fa.exponent != 0) // 阶码全0表示非规格化小数
		sig_a |= 0x800000; // the implied 1
	sig_b = fb.fraction;
	if (fb.exponent != 0)
		sig_b |= 0x800000; // the implied 1

	// alignment shift for fa
	uint32_t shift = 0;

	/* TODO: shift = ? */
// 	printf("\e[0;31mPlease implement me at fpu.c\e[0m\n");
// 	fflush(stdout);
// 	assert(0);
// 	assert(shift >= 0);
	/* 小阶向大阶对齐: 小阶的尾数还要变小(所以小阶尾数右移)
	 * 注意到阶码(移码)=1时,实际的exp=-126,
	 * 当阶码全0时,实际的exp并不等于=-127, 因为规格化浮点数的原因,仍为-126,
	 * 所以exp=0时,实际exp值需要+1
	 */
	shift = (fb.exponent == 0 ? fb.exponent + 1 : fb.exponent) - 
		(fa.exponent == 0 ? fa.exponent + 1 : fa.exponent);
	
	sig_a = (sig_a << 3); // guard, round, sticky
	sig_b = (sig_b << 3);

	uint32_t sticky = 0;
	while (shift > 0) // 对阶的时候保留sticky bit
	{
		sticky = sticky | (sig_a & 0x1);
		sig_a = sig_a >> 1;
		sig_a |= sticky;
		shift--;
	}

	// significand add
	if (fa.sign)
	{
		sig_a *= -1;
	}
	if (fb.sign)
	{
		sig_b *= -1;
	}

	sig_res = sig_a + sig_b; // 尾数M以补码形式相加

	if (sign(sig_res))
	{
		f.sign = 1;
		sig_res *= -1; // 因为是负数,将补码还原成原码表示尾数
	}
	else
	{
		f.sign = 0;
	}

	uint32_t exp_res = fb.exponent; 
	return internal_normalize(f.sign, exp_res, sig_res);
}

CORNER_CASE_RULE corner_sub[] = {
	{P_ZERO_F, P_ZERO_F, P_ZERO_F},
	{N_ZERO_F, P_ZERO_F, N_ZERO_F},
	{P_ZERO_F, N_ZERO_F, P_ZERO_F},
	{N_ZERO_F, N_ZERO_F, P_ZERO_F},
	{P_NAN_F, P_NAN_F, P_NAN_F},
	{N_NAN_F, P_NAN_F, P_NAN_F},
	{P_NAN_F, N_NAN_F, P_NAN_F},
	{N_NAN_F, N_NAN_F, N_NAN_F},
};

// a - b
uint32_t internal_float_sub(uint32_t b, uint32_t a)
{
	// change the sign of b
	int i = 0;
	for (; i < sizeof(corner_sub) / sizeof(CORNER_CASE_RULE); i++)
	{
		if (a == corner_sub[i].a && b == corner_sub[i].b)
			return corner_sub[i].res;
	}
	if (a == P_NAN_F || a == N_NAN_F)
		return a;
	if (b == P_NAN_F || b == N_NAN_F)
		return b;
	FLOAT fb;
	fb.val = b;
	fb.sign = ~fb.sign;
	return internal_float_add(fb.val, a);
}

CORNER_CASE_RULE corner_mul[] = {
	{P_ZERO_F, P_INF_F, N_NAN_F},
	{P_ZERO_F, N_INF_F, N_NAN_F},
	{N_ZERO_F, P_INF_F, N_NAN_F},
	{N_ZERO_F, N_INF_F, N_NAN_F},
	{P_INF_F, P_ZERO_F, N_NAN_F},
	{P_INF_F, N_ZERO_F, N_NAN_F},
	{N_INF_F, P_ZERO_F, N_NAN_F},
	{N_INF_F, N_ZERO_F, N_NAN_F},
};

// a * b
uint32_t internal_float_mul(uint32_t b, uint32_t a)
{
	int i = 0;
	for (; i < sizeof(corner_mul) / sizeof(CORNER_CASE_RULE); i++)
	{
		if (a == corner_mul[i].a && b == corner_mul[i].b)
			return corner_mul[i].res;
	}

	if (a == P_NAN_F || a == N_NAN_F || b == P_NAN_F || b == N_NAN_F)
		return a == P_NAN_F || b == P_NAN_F ? P_NAN_F : N_NAN_F;

	FLOAT fa, fb, f;
	fa.val = a;
	fb.val = b;
	f.sign = fa.sign ^ fb.sign;

	if (a == P_ZERO_F || a == N_ZERO_F)
		return fa.sign ^ fb.sign ? N_ZERO_F : P_ZERO_F;
	if (b == P_ZERO_F || b == N_ZERO_F)
		return fa.sign ^ fb.sign ? N_ZERO_F : P_ZERO_F;
	if (a == P_INF_F || a == N_INF_F)
		return fa.sign ^ fb.sign ? N_INF_F : P_INF_F;
	if (b == P_INF_F || b == N_INF_F)
		return fa.sign ^ fb.sign ? N_INF_F : P_INF_F;

	uint64_t sig_a, sig_b, sig_res;
	sig_a = fa.fraction;
	if (fa.exponent != 0)
		sig_a |= 0x800000; // the implied 1
	sig_b = fb.fraction;
	if (fb.exponent != 0)
		sig_b |= 0x800000; // the implied 1

	if (fa.exponent == 0)
		fa.exponent++;
	if (fb.exponent == 0)
		fb.exponent++;

	sig_res = sig_a * sig_b; // 24b * 24b
	uint32_t exp_res = 0;

	/* TODO: exp_res = ? leave space for GRS bits. */
	exp_res = fa.exponent + fb.exponent - 127 - 23 + 3;

	return internal_normalize(f.sign, exp_res, sig_res);
}

CORNER_CASE_RULE corner_div[] = {
	{P_ZERO_F, P_ZERO_F, N_NAN_F},
	{N_ZERO_F, P_ZERO_F, N_NAN_F},
	{P_ZERO_F, N_ZERO_F, N_NAN_F},
	{N_ZERO_F, N_ZERO_F, N_NAN_F},
	{P_INF_F, P_ZERO_F, P_INF_F},
	{N_INF_F, P_ZERO_F, N_INF_F},
	{P_INF_F, N_ZERO_F, N_INF_F},
	{N_INF_F, N_ZERO_F, P_INF_F},
	{P_INF_F, P_INF_F, N_NAN_F},
	{N_INF_F, P_INF_F, N_NAN_F},
	{P_INF_F, N_INF_F, N_NAN_F},
	{N_INF_F, N_INF_F, N_NAN_F},
};
// a / b
uint32_t internal_float_div(uint32_t b, uint32_t a)
{

	int i = 0;
	for (; i < sizeof(corner_div) / sizeof(CORNER_CASE_RULE); i++)
	{
		if (a == corner_div[i].a && b == corner_div[i].b)
			return corner_div[i].res;
	}

	FLOAT f, fa, fb;
	fa.val = a;
	fb.val = b;

	if (a == P_NAN_F || a == N_NAN_F || b == P_NAN_F || b == N_NAN_F)
		return a == P_NAN_F || b == P_NAN_F ? P_NAN_F : N_NAN_F;
	if (a == P_INF_F || a == N_INF_F)
	{
		return fa.sign ^ fb.sign ? N_INF_F : P_INF_F;
	}
	if (b == P_ZERO_F || b == N_ZERO_F)
	{
		return fa.sign ^ fb.sign ? N_INF_F : P_INF_F;
	}
	if (a == P_ZERO_F || a == N_ZERO_F)
	{
		fa.sign = fa.sign ^ fb.sign;
		return fa.val;
	}
	if (b == P_INF_F || b == N_INF_F)
	{
		return fa.sign ^ fb.sign ? N_ZERO_F : P_ZERO_F;
	}

	f.sign = fa.sign ^ fb.sign;

	uint64_t sig_a, sig_b, sig_res;
	sig_a = fa.fraction;
	if (fa.exponent != 0)
		sig_a |= 0x800000; // the implied 1
	sig_b = fb.fraction;
	if (fb.exponent != 0)
		sig_b |= 0x800000; // the implied 1

	// efforts to maintain the precision of the result
	int shift = 0;
	while (sig_a >> 63 == 0)
	{
		sig_a <<= 1;
		shift++;
	}
	while ((sig_b & 0x1) == 0)
	{
		sig_b >>= 1;
		shift++;
	}

	sig_res = sig_a / sig_b;

	if (fa.exponent == 0)
		fa.exponent++;
	if (fb.exponent == 0)
		fb.exponent++;
	uint32_t exp_res = fa.exponent - fb.exponent + 127 - (shift - 23 - 3);
	return internal_normalize(f.sign, exp_res, sig_res);
}

void fpu_load(uint32_t val)
{
	fpu.status.top = fpu.status.top == 0 ? 7 : fpu.status.top - 1;
	fpu.regStack[fpu.status.top].val = val;
}

uint32_t fpu_store()
{
	uint32_t val = fpu.regStack[fpu.status.top].val;
	fpu.status.top = (fpu.status.top + 1) % 8;
	return val;
}

uint32_t fpu_peek()
{
	uint32_t val = fpu.regStack[fpu.status.top].val;
	return val;
}

void fpu_add(uint32_t val)
{
	/*
	float *a = (float*)&fpu.regStack[fpu.status.top].val;
	float *b = (float*)&val;
	float c = *a + *b;
	uint32_t *d = (uint32_t *)&c;
	fpu.regStack[fpu.status.top].val = *d;
	*/
	fpu.regStack[fpu.status.top].val = internal_float_add(val, fpu.regStack[fpu.status.top].val);
}

void fpu_add_idx(uint32_t idx, uint32_t store_idx)
{
	/*
	float *a = (float*)&fpu.regStack[fpu.status.top].val;
	float *b = (float*)&fpu.regStack[(fpu.status.top + idx) % 8].val;
	float c = *a + *b;
	uint32_t *d = (uint32_t *)&c;
	fpu.regStack[(fpu.status.top + store_idx) % 8].val = *d;
	*/
	uint32_t a = fpu.regStack[fpu.status.top].val;
	uint32_t b = fpu.regStack[(fpu.status.top + idx) % 8].val;
	fpu.regStack[(fpu.status.top + store_idx) % 8].val = internal_float_add(b, a);
}

void fpu_sub(uint32_t val)
{
	/*
	float *a = (float*)&fpu.regStack[fpu.status.top].val;
	float *b = (float*)&val;
	float c = *a - *b;
	//printf("f %f - %f = %f\n", *a, *b, c);
	uint32_t *d = (uint32_t *)&c;
	fpu.regStack[fpu.status.top].val = *d;
	*/
	fpu.regStack[fpu.status.top].val = internal_float_sub(val, fpu.regStack[fpu.status.top].val);
}

void fpu_mul(uint32_t val)
{
	/*
	float *a = (float*)&fpu.regStack[fpu.status.top].val;
	float *b = (float*)&val;
	float c = *a * *b;
	uint32_t *d = (uint32_t *)&c;
	fpu.regStack[fpu.status.top].val = *d;
	*/
	fpu.regStack[fpu.status.top].val = internal_float_mul(val, fpu.regStack[fpu.status.top].val);
}

void fpu_mul_idx(uint32_t idx, uint32_t store_idx)
{
	/*
	float *a = (float*)&fpu.regStack[fpu.status.top].val;
	float *b = (float*)&fpu.regStack[(fpu.status.top + idx) % 8].val;
	float c = *a * *b;
	uint32_t *d = (uint32_t *)&c;
	fpu.regStack[(fpu.status.top + store_idx) % 8].val = *d;
	*/
	uint32_t a = fpu.regStack[fpu.status.top].val;
	uint32_t b = fpu.regStack[(fpu.status.top + idx) % 8].val;
	fpu.regStack[(fpu.status.top + store_idx) % 8].val = internal_float_mul(b, a);
}

void fpu_div(uint32_t val)
{
	/*
	float *a = (float*)&fpu.regStack[fpu.status.top].val;
	float *b = (float*)&val;
	float c = *a / *b;
	// printf("f %f / %f = %f\n", *a, *b, c);
	uint32_t *d = (uint32_t *)&c;
	fpu.regStack[fpu.status.top].val = *d;
	*/
	fpu.regStack[fpu.status.top].val = internal_float_div(val, fpu.regStack[fpu.status.top].val);
}

void fpu_xch(uint32_t idx)
{
	idx = (fpu.status.top + idx) % 8;
	uint32_t temp = fpu.regStack[fpu.status.top].val;
	fpu.regStack[fpu.status.top].val = fpu.regStack[idx].val;
	fpu.regStack[idx].val = temp;
}

void fpu_copy(uint32_t idx)
{
	idx = (fpu.status.top + idx) % 8;
	fpu.regStack[idx].val = fpu.regStack[fpu.status.top].val;
}

void fpu_cmp(uint32_t idx)
{
	idx = (fpu.status.top + idx) % 8;
	float *a = (float *)&fpu.regStack[fpu.status.top].val;
	float *b = (float *)&fpu.regStack[idx].val;
	if (*a > *b)
	{
		fpu.status.c0 = fpu.status.c2 = fpu.status.c3 = 0;
		//printf("f %f > %f\n", *a, *b);
		//printf("f %x > %x\n", *((uint32_t *)a), *((uint32_t *)b));
	}
	else if (*a < *b)
	{
		fpu.status.c0 = 1;
		fpu.status.c2 = fpu.status.c3 = 0;
		//printf("f %f < %f\n", *a, *b);
	}
	else
	{
		fpu.status.c0 = fpu.status.c2 = 0;
		fpu.status.c3 = 1;
		//printf("f %f == %f\n", *a, *b);
	}
}

void fpu_cmpi(uint32_t idx)
{
	idx = (fpu.status.top + idx) % 8;
	float *a = (float *)&fpu.regStack[fpu.status.top].val;
	float *b = (float *)&fpu.regStack[idx].val;
	if (*a > *b)
	{
		cpu.eflags.ZF = cpu.eflags.PF = cpu.eflags.CF = 0;
	}
	else if (*a < *b)
	{
		cpu.eflags.ZF = cpu.eflags.PF = 0;
		cpu.eflags.CF = 1;
	}
	else
	{
		cpu.eflags.CF = cpu.eflags.PF = 0;
		cpu.eflags.ZF = 1;
	}
}
