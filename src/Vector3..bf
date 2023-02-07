using System;

namespace BeefGLM;

static
{
	[LinkName("glmc_vec3")]
	public static extern void glm_vec3(Vector4 v,out Vector3 dest);
	[LinkName("glmc_copy")]
	public static extern void glm_copy(Vector3 a,out Vector3 dest);
	[LinkName("glmc_vec3_zero")]
	public static extern void glm_vec3_zero(out Vector3 v);
	[LinkName("glmc_vec3_one")]
	public static extern void glm_vec3_one(out Vector3 v);
	[LinkName("glmc_vec3_dot")]
	public static extern float glm_vec3_dot(Vector3 a,Vector3 b);
	[LinkName("glmc_vec3_cross")]
	public static extern void glm_vec3_cross(Vector3 a,Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_crossn")]
	public static extern void glm_vec3_crossn(Vector3 a,Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_norm")]
	public static extern float glm_vec3_norm(Vector3 v);
	[LinkName("glmc_vec3_norm2")]
	public static extern float glm_vec3_norm2(Vector3 v);
	[LinkName("glmc_vec3_norm_one")]
	public static extern float glm_vec3_norm_one(Vector3 v);
	[LinkName("glmc_vec3_norm_inf")]
	public static extern float glm_vec3_norm_inf(Vector3 v);
	[LinkName("glmc_vec3_add")]
	public static extern void glm_vec3_add(Vector3 a,Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_adds")]
	public static extern void glm_vec3_adds(Vector3 a, float s, out Vector3 c);
	[LinkName("glmc_vec3_sub")]
	public static extern void glm_vec3_sub(Vector3 a,Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_subs")]
	public static extern void glm_vec3_subs(Vector3 a, float s, out Vector3 c);
	[LinkName("glmc_vec3_mult")]
	public static extern void glm_vec3_mult(Vector3 a,Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_scale")]
	public static extern void glm_vec3_scale(Vector3 a,float s, out Vector3 c);
	[LinkName("glmc_vec3_scale_as")]
	public static extern void glm_vec3_scale_as(Vector3 a,float s, out Vector3 c);
	[LinkName("glmc_vec3_div")]
	public static extern void glm_vec3_div(Vector3 a,Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_divs")]
	public static extern void glm_vec3_divs(Vector3 a,float s, out Vector3 c);
	[LinkName("glmc_vec3_negate")]
	public static extern void glm_vec3_negate(Vector3 v);
	[LinkName("glmc_vec3_normalize")]
	public static extern void glm_vec3_normalize(Vector3 v);
	[LinkName("glmc_vec3_angle")]
	public static extern float glm_vec3_angle(Vector3 a, Vector3 b);
	[LinkName("glmc_vec3_rotate")]
	public static extern void glm_vec3_rotate(out Vector3 a, float angle, Vector3 axis);
	[LinkName("glmc_vec3_rotate_m4")]
	public static extern void glm_vec3_rotate_m4(Mat4 m,Vector3 v,out Vector3 c);
	[LinkName("glmc_vec3_rotate_m3")]
	public static extern void glm_vec3_rotate_m3(Mat3 m,Vector3 v,out Vector3 c);
	[LinkName("glmc_vec3_proj")]
	public static extern void glm_vec3_proj(Vector3 a, Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_center")]
	public static extern void glm_vec3_center(Vector3 a, Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_distance")]
	public static extern float glm_vec3_distance(Vector3 a, Vector3 b);
	[LinkName("glmc_vec3_distance2")]
	public static extern float glm_vec3_distance2(Vector3 a, Vector3 b);
	[LinkName("glmc_vec3_maxv")]
	public static extern void glm_vec3_maxv(Vector3 a, Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_minv")]
	public static extern void glm_vec3_minv(Vector3 a, Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_clamp")]
	public static extern void glm_vec3_clamp(out Vector3 a, float min, float max);
	[LinkName("glmc_vec3_abs")]
	public static extern void glm_vec3_abs(Vector3 a, out Vector3 b);
	[LinkName("glmc_vec3_lerp")]
	public static extern void glm_vec3_lerp(Vector3 a, Vector3 b, float t, out Vector3 c);
	[LinkName("glmc_vec3_lerpc")]
	public static extern void glm_vec3_lerpc(Vector3 a, Vector3 b, float t, out Vector3 c);
	[LinkName("glmc_vec3_complex_mul")]
	public static extern void glm_vec3_complex_mul(Vector3 a, Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_complex_div")]
	public static extern void glm_vec3_complex_div(Vector3 a, Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_complex_conjugate")]
	public static extern void glm_vec3_complex_conjugate(Vector3 a,out Vector3 b);
	[LinkName("glmc_vec3_addadd")]
	public static extern void glm_vec3_addadd(Vector3 a,Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_subadd")]
	public static extern void glm_vec3_subadd(Vector3 a,Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_muladd")]
	public static extern void glm_vec3_muladd(Vector3 a,Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_muladds")]
	public static extern void glm_vec3_muladds(Vector3 a,Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_maxadd")]
	public static extern void glm_vec3_maxadd(Vector3 a,Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_minadd")]
	public static extern void glm_vec3_minadd(Vector3 a,Vector3 b, out Vector3 c);
	[LinkName("glmc_vec3_step")]
	public static extern void glm_vec3_step(Vector3 e, Vector3 x, out Vector3 d);
	[LinkName("glmc_vec3_step_uni")]
	public static extern void glm_vec3_step_uni(float e, Vector3 x, out Vector3 d);
	[LinkName("glmc_vec3_smoothstep")]
	public static extern void glm_vec3_smoothstep(Vector3 e0,Vector3 e1, Vector3 x, out Vector3 d);
	[LinkName("glmc_vec3_smoothstep_uni")]
	public static extern void glm_vec3_smoothstep_uni(float e0,float e1, Vector3 x, out Vector3 d);
	[LinkName("glmc_vec3_smoothinterp")]
	public static extern void glm_vec3_smoothinterp(Vector3 from, Vector3 to,float t, out Vector3 d);
	[LinkName("glmc_vec3_smoothinterpc")]
	public static extern void glm_vec3_smoothinterpc(Vector3 from, Vector3 to,float t, out Vector3 d);
	[LinkName("glmc_vec3_eqv_eps")]
	public static extern bool glm_vec3_eqv_eps(Vector3 a, Vector3 b);
	[LinkName("glmc_vec3_sqrt")]
	public static extern bool glm_vec3_sqrt(Vector3 a, out Vector3 b);
}