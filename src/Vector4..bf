using System;

namespace BeefGLM;

static
{
	[LinkName("glmc_copy")]
	private static extern void glm_copy(Vector4 a,out Vector4 dest);
	[LinkName("glmc_vec4_zero")]
	private static extern void glm_vec4_zero(out Vector4 v);
	[LinkName("glmc_vec4_one")]
	private static extern void glm_vec4_one(out Vector4 v);
	[LinkName("glmc_vec4_dot")]
	private static extern float glm_vec4_dot(Vector4 a,Vector4 b);
	[LinkName("glmc_vec4_cross")]
	private static extern void glm_vec4_cross(Vector4 a,Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_crossn")]
	private static extern void glm_vec4_crossn(Vector4 a,Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_norm")]
	private static extern float glm_vec4_norm(Vector4 v);
	[LinkName("glmc_vec4_norm2")]
	private static extern float glm_vec4_norm2(Vector4 v);
	[LinkName("glmc_vec4_norm_one")]
	private static extern float glm_vec4_norm_one(Vector4 v);
	[LinkName("glmc_vec4_norm_inf")]
	private static extern float glm_vec4_norm_inf(Vector4 v);
	[LinkName("glmc_vec4_add")]
	private static extern void glm_vec4_add(Vector4 a,Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_adds")]
	private static extern void glm_vec4_adds(Vector4 a, float s, out Vector4 c);
	[LinkName("glmc_vec4_sub")]
	private static extern void glm_vec4_sub(Vector4 a,Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_subs")]
	private static extern void glm_vec4_subs(Vector4 a, float s, out Vector4 c);
	[LinkName("glmc_vec4_mult")]
	private static extern void glm_vec4_mult(Vector4 a,Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_scale")]
	private static extern void glm_vec4_scale(Vector4 a,float s, out Vector4 c);
	[LinkName("glmc_vec4_scale_as")]
	private static extern void glm_vec4_scale_as(Vector4 a,float s, out Vector4 c);
	[LinkName("glmc_vec4_div")]
	private static extern void glm_vec4_div(Vector4 a,Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_divs")]
	private static extern void glm_vec4_divs(Vector4 a,float s, out Vector4 c);
	[LinkName("glmc_vec4_negate")]
	private static extern void glm_vec4_negate(Vector4 v);
	[LinkName("glmc_vec4_normalize")]
	private static extern void glm_vec4_normalize(Vector4 v);
	[LinkName("glmc_vec4_angle")]
	private static extern float glm_vec4_angle(Vector4 a, Vector4 b);
	[LinkName("glmc_vec4_rotate")]
	private static extern void glm_vec4_rotate(out Vector4 a, float angle, Vector4 axis);
	[LinkName("glmc_vec4_rotate_m4")]
	private static extern void glm_vec4_rotate_m4(Mat4 m,Vector4 v,out Vector4 c);
	[LinkName("glmc_vec4_rotate_m3")]
	private static extern void glm_vec4_rotate_m3(Mat3 m,Vector4 v,out Vector4 c);
	[LinkName("glmc_vec4_proj")]
	private static extern void glm_vec4_proj(Vector4 a, Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_center")]
	private static extern void glm_vec4_center(Vector4 a, Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_distance")]
	private static extern float glm_vec4_distance(Vector4 a, Vector4 b);
	[LinkName("glmc_vec4_distance2")]
	private static extern float glm_vec4_distance2(Vector4 a, Vector4 b);
	[LinkName("glmc_vec4_maxv")]
	private static extern void glm_vec4_maxv(Vector4 a, Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_minv")]
	private static extern void glm_vec4_minv(Vector4 a, Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_clamp")]
	private static extern void glm_vec4_clamp(out Vector4 a, float min, float max);
	[LinkName("glmc_vec4_abs")]
	private static extern void glm_vec4_abs(Vector4 a, out Vector4 b);
	[LinkName("glmc_vec4_lerp")]
	private static extern void glm_vec4_lerp(Vector4 a, Vector4 b, float t, out Vector4 c);
	[LinkName("glmc_vec4_lerpc")]
	private static extern void glm_vec4_lerpc(Vector4 a, Vector4 b, float t, out Vector4 c);
	[LinkName("glmc_vec4_complex_mul")]
	private static extern void glm_vec4_complex_mul(Vector4 a, Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_complex_div")]
	private static extern void glm_vec4_complex_div(Vector4 a, Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_complex_conjugate")]
	private static extern void glm_vec4_complex_conjugate(Vector4 a,out Vector4 b);
	[LinkName("glmc_vec4_addadd")]
	private static extern void glm_vec4_addadd(Vector4 a,Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_subadd")]
	private static extern void glm_vec4_subadd(Vector4 a,Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_muladd")]
	private static extern void glm_vec4_muladd(Vector4 a,Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_muladds")]
	private static extern void glm_vec4_muladds(Vector4 a,Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_maxadd")]
	private static extern void glm_vec4_maxadd(Vector4 a,Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_minadd")]
	private static extern void glm_vec4_minadd(Vector4 a,Vector4 b, out Vector4 c);
	[LinkName("glmc_vec4_step")]
	private static extern void glm_vec4_step(Vector4 e, Vector4 x, out Vector4 d);
	[LinkName("glmc_vec4_step_uni")]
	private static extern void glm_vec4_step_uni(float e, Vector4 x, out Vector4 d);
	[LinkName("glmc_vec4_smoothstep")]
	private static extern void glm_vec4_smoothstep(Vector4 e0,Vector4 e1, Vector4 x, out Vector4 d);
	[LinkName("glmc_vec4_smoothstep_uni")]
	private static extern void glm_vec4_smoothstep_uni(float e0,float e1, Vector4 x, out Vector4 d);
	[LinkName("glmc_vec4_smoothinterp")]
	private static extern void glm_vec4_smoothinterp(Vector4 from, Vector4 to,float t, out Vector4 d);
	[LinkName("glmc_vec4_smoothinterpc")]
	private static extern void glm_vec4_smoothinterpc(Vector4 from, Vector4 to,float t, out Vector4 d);
	[LinkName("glmc_vec4_eqv_eps")]
	private static extern bool glm_vec4_eqv_eps(Vector4 a, Vector4 b);
	[LinkName("glmc_vec4_sqrt")]
	private static extern bool glm_vec4_sqrt(Vector4 a, out Vector4 b);
	[LinkName("glmc_plane_normalize")]
	private static extern void glm_plane_normalize(out Vector4 v);
}