using System;

namespace BeefGLM;

static
{

	[LinkName("glmc_quat_identity")]
	private static extern void glm_quat_identity(out Quaterion q);
	[LinkName("glmc_quat_init")]
	private static extern void glm_quat_init(out Quaterion q,float x,float y, float z, float w);
	[LinkName("glmc_quat")]
	private static extern void glm_quat(out Quaterion q,float angle,float x,float y, float z);
	[LinkName("glmc_quatv")]
	private static extern void glm_quatv(out Quaterion q,float angle,Vector3 axis);
	[LinkName("glmc_quat_from_vecs")]
	private static extern void glm_quat_from_vecs(Vector3 a, Vector3 b,out Quaterion q);
	[LinkName("glmc_quat_norm")]
	private static extern float glm_quat_norm(Quaterion q);
	[LinkName("glmc_quat_normalize")]
	private static extern void glm_quat_normalize(out Quaterion q);
	[LinkName("glmc_quat_dot")]
	private static extern float glm_quat_dot(Quaterion q1, Quaterion q2);
	[LinkName("glmc_quat_conjugate")]
	private static extern void glm_quat_conjugate(Quaterion q, out Quaterion p);
	[LinkName("glmc_quat_inv")]
	private static extern void glm_quat_inv(Quaterion q,out Quaterion p);
	[LinkName("glmc_quat_add")]
	private static extern void glm_quat_add(Quaterion q1, Quaterion q2, out Quaterion q3);
	[LinkName("glmc_quat_sub")]
	private static extern void glm_quat_sub(Quaterion q1, Quaterion q2, out Quaterion q3);
	[LinkName("glmc_quat_real")]
	private static extern float glm_quat_real(Quaterion q1);
	[LinkName("glmc_quat_angle")]
	private static extern float glm_quat_angle(Quaterion q1);
	[LinkName("glmc_quat_axis")]
	private static extern void glm_quat_axis(Quaterion q, out Vector3 ax);
	[LinkName("glmc_quat_mul")]
	private static extern void glm_quat_mul(Quaterion q, Quaterion p, out Quaterion qp);
	[LinkName("glmc_quat_mat4")]
	private static extern void glm_quat_mat4(Quaterion q, out Mat4 m);
	[LinkName("glmc_quat_mat4t")]
	private static extern void glm_quat_mat4t(Quaterion q, out Mat4 m);
	[LinkName("glmc_quat_mat3")]
	private static extern void glm_quat_mat3(Quaterion q, out Mat3 m);
	[LinkName("glmc_quat_mat3t")]
	private static extern void glm_quat_mat3t(Quaterion q, out Mat3 m);
	[LinkName("glmc_quat_lerp")]
	private static extern void glm_quat_lerp(Quaterion from, Quaterion to, float t, out Quaterion d);
	[LinkName("glmc_quat_lerpc")]
	private static extern void glm_quat_lerpc(Quaterion from, Quaterion to, float t, out Quaterion d);
	[LinkName("glmc_quat_nlerp")]
	private static extern void glm_quat_nlerp(Quaterion from, Quaterion to, float t, out Quaterion d);
	[LinkName("glmc_quat_slerp")]
	private static extern void glm_quat_slerp(Quaterion from, Quaterion to, float t, out Quaterion d);
	[LinkName("glmc_quat_look")]
	private static extern void glm_quat_look(Vector3 e, Quaterion o, out Mat4 d);
	[LinkName("glmc_quat_for")]
	private static extern void glm_quat_for(Vector3 d, Vector3 u, out Quaterion q);
	[LinkName("glmc_quat_forp")]
	private static extern void glm_quat_forp(Vector3 f,Vector3 t, Vector3 u, out Quaterion q);
	[LinkName("glmc_quat_rotatev")]
	private static extern void glm_quat_rotatev(Quaterion q,Vector3 v, out Vector3 d);
	[LinkName("glmc_quat_rotate")]
	private static extern void glm_quat_rotate(Mat4 m, Quaterion q, out Mat4 d);
	[LinkName("glmc_quat_rotate_at")]
	private static extern void glm_quat_rotate_at(Mat4 m, Quaterion q, out Vector3 p);
	[LinkName("glmc_quat_rotate_atm")]
	private static extern void glm_quat_rotate_atm(out Mat4 m, Quaterion q, Vector3 p);
}