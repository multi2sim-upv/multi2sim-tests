# 1 "for.cl"
# 1 "<interno>"
# 1 "<línea-de-orden>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-orden>" 2
# 1 "for.cl"
__kernel void vector_add(
 __read_only __global int *src1,
 __read_only __global int *src2,
 __write_only __global int *dst)
{
 int i;
 int x;
 int id = get_global_id(0);

 x = 0;
 for (i = 0; i < id; i++)
 {
  x++;
 }
 dst[id] = x;
}
