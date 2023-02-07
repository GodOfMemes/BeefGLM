using System;
namespace BeefGLM;

static
{
	[LinkName("glmc_ivec2")]
	public static extern void glmc_vec2i(int* v, out Vector2i i);
	[LinkName("glmc_ivec2_copy")]
	public static extern void glmc_vec2i_copy(Vector2i a, out Vector2i b);
	[LinkName("glmc_ivec2_zero")]
	public static extern void glmc_vec2i_zero(out Vector2i v);
	[LinkName("glmc_ivec2_one")]
	public static extern void glmc_vec2i_one(out Vector2i v);
	[LinkName("glmc_ivec2_add")]
	public static extern void glmc_vec2i_add(Vector2i a, Vector2i b, out Vector2i c);
	[LinkName("glmc_ivec2_adds")]
	public static extern void glmc_vec2i_adds(Vector2i a, int s, out Vector2i c);
	[LinkName("glmc_ivec2_sub")]
	public static extern void glmc_vec2i_sub(Vector2i a, Vector2i b, out Vector2i c);
	[LinkName("glmc_ivec2_subs")]
	public static extern void glmc_vec2i_subs(Vector2i v, int s, out Vector2i i);
	[LinkName("glmc_ivec2_mul")]
	public static extern void glmc_vec2i_mult(Vector2i a, Vector2i b, out Vector2i c);
	[LinkName("glmc_ivec2_scale")]
	public static extern void glmc_vec2i_scale(Vector2i v, int s, out Vector2i i);
	[LinkName("glmc_ivec2_distance")]
	public static extern int glmc_vec2i_distance(Vector2i a, Vector2i b);
	[LinkName("glmc_ivec2_distance2")]
	public static extern int glmc_vec2i_distance2(Vector2i a, Vector2i b);
	[LinkName("glmc_ivec2_maxv")]
	public static extern void glmc_vec2i_maxv(Vector2i a, Vector2i b, out Vector2i c);
	[LinkName("glmc_ivec2_minv")]
	public static extern void glmc_vec2i_minv(Vector2i a, Vector2i b, out Vector2i c);
	[LinkName("glmc_ivec2_clamp")]
	public static extern void glmc_vec2i_clamp(out Vector2i v, int min, int max);
	[LinkName("glmc_ivec2_abs")]
	public static extern void glmc_vec2i_abs(Vector2i v, out Vector2i i);
}