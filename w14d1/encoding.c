#include <math.h>
#include <stdio.h>

union Reinterpret {
  float f;
  int i;
};

void normalized_value() {
  printf("======= Normalized Value =======\n");
  float a = 33.0;
  union Reinterpret r;
  r.f = a;
  printf("value %f\n", r.f);
  printf("mantissa %d\n", r.i & 0x7fffff);
  printf("exponent %d\n", (r.i >> 23) & 0xff);
  printf("sign %d\n", (r.i >> 31) & 0x1);
}

void neg_pos_zero() {
  printf("======= Negative and Positive Zero =======\n");
  float pos_zero = 0.0;
  float neg_zero = -0.0;
  union Reinterpret r_pos, r_neg;
  r_pos.f = pos_zero;
  r_neg.f = neg_zero;
  printf("Positive zero sign bit: %f %d\n", pos_zero, (r_pos.i >> 31) & 0x1);
  printf("Negative zero sign bit: %f %d\n", neg_zero, (r_neg.i >> 31) & 0x1);
  printf("Are they equal in binaries? %d\n", r_pos.i == r_neg.i);
  printf("Are they equal numerically? %d\n", neg_zero == pos_zero);
}

void inf_demo() {
  printf("======= Positive and Negative Infinity =======\n");
  float inf = 1.0 / 0.0;
  float neg_inf = -1.0 / 0.0;
  union Reinterpret r_inf, r_neg_inf;
  r_inf.f = inf;
  r_neg_inf.f = neg_inf;
  printf("Pos Inf sign bit: %f %d\n", inf, (r_inf.i >> 31) & 0x1);
  printf("Neg Inf sign bit: %f %d\n", neg_inf, (r_neg_inf.i >> 31) & 0x1);
  printf("Pos Inf mantissa: %d\n", r_inf.i & 0x7fffff);
  printf("Neg Inf mantissa: %d\n", r_neg_inf.i & 0x7fffff);
}

void nan_demo() {
  printf("======= NaN Demonstration =======\n");
  float nan_value = sqrt(-1.0);
  union Reinterpret r_nan;
  r_nan.f = nan_value;
  printf("NaN value: %f %d\n", nan_value, isnan(nan_value));
  printf("NaN mantissa: %d\n", r_nan.i & 0x7fffff);
  printf("NaN exponent: %d\n", (r_nan.i >> 23) & 0xff);
  printf("NaN sign: %d\n", (r_nan.i >> 31) & 0x1);
}

int main() {
  normalized_value();
  neg_pos_zero();
  inf_demo();
  nan_demo();
  return 0;
}
