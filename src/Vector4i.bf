using System;
namespace BeefGLM;

static
{
	[LinkName("glmc_ivec4")]
	public static extern void glmc_vec4i(int* v, out Vector4i i);
	[LinkName("glmc_ivec4_copy")]
	public static extern void glmc_vec4i_copy(Vector4i a, out Vector4i b);
	[LinkName("glmc_ivec4_zero")]
	public static extern void glmc_vec4i_zero(out Vector4i v);
	[LinkName("glmc_ivec4_one")]
	public static extern void glmc_vec4i_one(out Vector4i v);
	[LinkName("glmc_ivec4_add")]
	public static extern void glmc_vec4i_add(Vector4i a, Vector4i b, out Vector4i c);
	[LinkName("glmc_ivec4_adds")]
	public static extern void glmc_vec4i_adds(Vector4i a, int s, out Vector4i c);
	[LinkName("glmc_ivec4_sub")]
	public static extern void glmc_vec4i_sub(Vector4i a, Vector4i b, out Vector4i c);
	[LinkName("glmc_ivec4_subs")]
	public static extern void glmc_vec4i_subs(Vector4i v, int s, out Vector4i i);
	[LinkName("glmc_ivec4_mul")]
	public static extern void glmc_vec4i_mult(Vector4i a, Vector4i b, out Vector4i c);
	[LinkName("glmc_ivec4_scale")]
	public static extern void glmc_vec4i_scale(Vector4i v, int s, out Vector4i i);
	[LinkName("glmc_ivec4_distance")]
	public static extern int glmc_vec4i_distance(Vector4i a, Vector4i b);
	[LinkName("glmc_ivec4_distance2")]
	public static extern int glmc_vec4i_distance2(Vector4i a, Vector4i b);
	[LinkName("glmc_ivec4_maxv")]
	public static extern void glmc_vec4i_maxv(Vector4i a, Vector4i b, out Vector4i c);
	[LinkName("glmc_ivec4_minv")]
	public static extern void glmc_vec4i_minv(Vector4i a, Vector4i b, out Vector4i c);
	[LinkName("glmc_ivec4_clamp")]
	public static extern void glmc_vec4i_clamp(out Vector4i v, int min, int max);
	[LinkName("glmc_ivec4_abs")]
	public static extern void glmc_vec4i_abs(Vector4i v, out Vector4i i);
}