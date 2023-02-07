using System;
namespace BeefGLM;

static
{
	[LinkName("glmc_ivec3")]
	public static extern void glmc_vec3i(int* v, out Vector3i i);
	[LinkName("glmc_ivec3_copy")]
	public static extern void glmc_vec3i_copy(Vector3i a, out Vector3i b);
	[LinkName("glmc_ivec3_zero")]
	public static extern void glmc_vec3i_zero(out Vector3i v);
	[LinkName("glmc_ivec3_one")]
	public static extern void glmc_vec3i_one(out Vector3i v);
	[LinkName("glmc_ivec3_add")]
	public static extern void glmc_vec3i_add(Vector3i a, Vector3i b, out Vector3i c);
	[LinkName("glmc_ivec3_adds")]
	public static extern void glmc_vec3i_adds(Vector3i a, int s, out Vector3i c);
	[LinkName("glmc_ivec3_sub")]
	public static extern void glmc_vec3i_sub(Vector3i a, Vector3i b, out Vector3i c);
	[LinkName("glmc_ivec3_subs")]
	public static extern void glmc_vec3i_subs(Vector3i v, int s, out Vector3i i);
	[LinkName("glmc_ivec3_mul")]
	public static extern void glmc_vec3i_mult(Vector3i a, Vector3i b, out Vector3i c);
	[LinkName("glmc_ivec3_scale")]
	public static extern void glmc_vec3i_scale(Vector3i v, int s, out Vector3i i);
	[LinkName("glmc_ivec3_distance")]
	public static extern int glmc_vec3i_distance(Vector3i a, Vector3i b);
	[LinkName("glmc_ivec3_distance2")]
	public static extern int glmc_vec3i_distance2(Vector3i a, Vector3i b);
	[LinkName("glmc_ivec3_maxv")]
	public static extern void glmc_vec3i_maxv(Vector3i a, Vector3i b, out Vector3i c);
	[LinkName("glmc_ivec3_minv")]
	public static extern void glmc_vec3i_minv(Vector3i a, Vector3i b, out Vector3i c);
	[LinkName("glmc_ivec3_clamp")]
	public static extern void glmc_vec3i_clamp(out Vector3i v, int min, int max);
	[LinkName("glmc_ivec3_abs")]
	public static extern void glmc_vec3i_abs(Vector3i v, out Vector3i i);
}