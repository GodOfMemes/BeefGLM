using System;

namespace BeefGLM;

static
{
	[LinkName("glmc_vec2")]
	public static extern void glm_vec2(float* v,out Vector2 dest);
	[LinkName("glmc_copy")]
	public static extern void glm_copy(Vector2 a,out Vector2 dest);
	[LinkName("glmc_vec2_zero")]
	public static extern void glm_vec2_zero(out Vector2 v);
	[LinkName("glmc_vec2_one")]
	public static extern void glm_vec2_one(out Vector2 v);
	[LinkName("glmc_vec2_dot")]
	public static extern float glm_vec2_dot(Vector2 a,Vector2 b);
	[LinkName("glmc_vec2_cross")]
	public static extern float glm_vec2_cross(Vector2 a,Vector2 b);
	[LinkName("glmc_vec2_norm")]
	public static extern float glm_vec2_norm(Vector2 v);
	[LinkName("glmc_vec2_norm2")]
	public static extern float glm_vec2_norm2(Vector2 v);
	[LinkName("glmc_vec2_add")]
	public static extern void glm_vec2_add(Vector2 a,Vector2 b, out Vector2 c);
	[LinkName("glmc_vec2_adds")]
	public static extern void glm_vec2_adds(Vector2 a, float s, out Vector2 c);
	[LinkName("glmc_vec2_sub")]
	public static extern void glm_vec2_sub(Vector2 a,Vector2 b, out Vector2 c);
	[LinkName("glmc_vec2_subs")]
	public static extern void glm_vec2_subs(Vector2 a, float s, out Vector2 c);
	[LinkName("glmc_vec2_mult")]
	public static extern void glm_vec2_mult(Vector2 a,Vector2 b, out Vector2 c);
	[LinkName("glmc_vec2_scale")]
	public static extern void glm_vec2_scale(Vector2 a,float s, out Vector2 c);
	[LinkName("glmc_vec2_scale_as")]
	public static extern void glm_vec2_scale_as(Vector2 a,float s, out Vector2 c);
	[LinkName("glmc_vec2_div")]
	public static extern void glm_vec2_div(Vector2 a,Vector2 b, out Vector2 c);
	[LinkName("glmc_vec2_divs")]
	public static extern void glm_vec2_divs(Vector2 a,float s, out Vector2 c);
	[LinkName("glmc_vec2_negate")]
	public static extern void glm_vec2_negate(Vector2 v);
	[LinkName("glmc_vec2_normalize")]
	public static extern void glm_vec2_normalize(Vector2 v);
	[LinkName("glmc_vec2_rotate")]
	public static extern void glm_vec2_rotate(Vector2 v, float angle, out Vector2 c);
	[LinkName("glmc_vec2_distance")]
	public static extern float glm_vec2_distance(Vector2 a, Vector2 b);
	[LinkName("glmc_vec2_distance2")]
	public static extern float glm_vec2_distance2(Vector2 a, Vector2 b);
	[LinkName("glmc_vec2_maxv")]
	public static extern void glm_vec2_maxv(Vector2 a, Vector2 b, out Vector2 c);
	[LinkName("glmc_vec2_minv")]
	public static extern void glm_vec2_minv(Vector2 a, Vector2 b, out Vector2 c);
	[LinkName("glmc_vec2_clamp")]
	public static extern void glm_vec2_clamp(out Vector2 a, float min, float max);
	[LinkName("glmc_vec2_abs")]
	public static extern void glm_vec2_abs(Vector2 a, out Vector2 b);
	[LinkName("glmc_vec2_lerp")]
	public static extern void glm_vec2_lerp(Vector2 a, Vector2 b, float t, out Vector2 c);
	[LinkName("glmc_vec2_complex_mul")]
	public static extern void glm_vec2_complex_mul(Vector2 a, Vector2 b, out Vector2 c);
	[LinkName("glmc_vec2_complex_div")]
	public static extern void glm_vec2_complex_div(Vector2 a, Vector2 b, out Vector2 c);
	[LinkName("glmc_vec2_complex_conjugate")]
	public static extern void glm_vec2_complex_conjugate(Vector2 a,out Vector2 b);
	[LinkName("glmc_vec2_addadd")]
	public static extern void glm_vec2_addadd(Vector2 a,Vector2 b, out Vector2 c);
	[LinkName("glmc_vec2_subadd")]
	public static extern void glm_vec2_subadd(Vector2 a,Vector2 b, out Vector2 c);
	[LinkName("glmc_vec2_muladd")]
	public static extern void glm_vec2_muladd(Vector2 a,Vector2 b, out Vector2 c);
	[LinkName("glmc_vec2_muladds")]
	public static extern void glm_vec2_muladds(Vector2 a,Vector2 b, out Vector2 c);
	[LinkName("glmc_vec2_maxadd")]
	public static extern void glm_vec2_maxadd(Vector2 a,Vector2 b, out Vector2 c);
	[LinkName("glmc_vec2_minadd")]
	public static extern void glm_vec2_minadd(Vector2 a,Vector2 b, out Vector2 c);
}