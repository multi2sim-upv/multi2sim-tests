# 1 "if.cl"
# 1 "<interno>"
# 1 "<línea-de-orden>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-orden>" 2
# 1 "if.cl"
__kernel void vector_add(
 __read_only __global int *src1,
 __read_only __global int *src2,
 __write_only __global int *dst)
{
 int id = get_global_id(0);

 if (id < 6)
 {
  if (id >= 3)
  {
   dst[id] = src1[id] - 10;
  }
  else
  {
   dst[id] = src1[id];
  }
 }
 else
 {
  dst[id] = src1[id] + 10;
 }
}
