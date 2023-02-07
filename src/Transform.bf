using System;
namespace BeefGLM;

static
{
	[LinkName("glmc_translate_make")]
	public static extern void glm_translate_make(out Transform t, Vector3 translateVec);
	[LinkName("glmc_translate_to")]
	public static extern void glm_translate_to(Transform t, Vector3 translateVec,out Transform result);
	[LinkName("glmc_translate")]
	public static extern void glm_translate(out Transform t, Vector3 translateVec);
	[LinkName("glmc_translate_x")]
	public static extern void glm_translate_x(out Transform t, float to);
	[LinkName("glmc_translate_y")]
	public static extern void glm_translate_y(out Transform t, float to);
	[LinkName("glmc_translate_z")]
	public static extern void glm_translate_z(out Transform t, float to);
	[LinkName("glmc_translated_to")]
	public static extern void glm_translated_to(Transform t, Vector3 factor,out Transform result);
	[LinkName("glmc_translated")]
	public static extern void glm_translated(out Transform t, Vector3 factor);
	[LinkName("glmc_translated_x")]
	public static extern void glm_translated_x(out Transform t, float xfactor);
	[LinkName("glmc_translated_y")]
	public static extern void glm_translated_y(out Transform t, float yfactor);
	[LinkName("glmc_translated_z")]
	public static extern void glm_translated_z(out Transform t, float zfactor);
	[LinkName("glmc_scale_make")]
	public static extern void glm_scale_make(out Transform t, Vector3 scaleVec);
	[LinkName("glmc_scale_to")]
	public static extern void glm_scale_to(Transform t, Vector3 scaleVec, out Transform result);
	[LinkName("glmc_scale")]
	public static extern void glm_scale(out Transform t, Vector3 scaleVec);
	[LinkName("glmc_scale_uni")]
	public static extern void glm_scale_uni(out Transform t, float s);
	[LinkName("glmc_rotate_x")]
	public static extern void glm_rotate_x(Transform t, float rad, out Transform result);
	[LinkName("glmc_rotate_y")]
	public static extern void glm_rotate_y(Transform t, float rad, out Transform result);
	[LinkName("glmc_rotate_z")]
	public static extern void glm_rotate_z(Transform t, float rad, out Transform result);
	[LinkName("glmc_rotate")]
	public static extern void glm_rotate(out Transform t,float angle, Vector3 axis);
	[LinkName("glmc_rotate_at")]
	public static extern void glm_rotate_at(out Transform t,Vector3 pivot, float angle, Vector3 axis);
	[LinkName("glmc_rotate_atm")]
	public static extern void glm_rotate_atm(out Transform t,Vector3 pivot, float angle, Vector3 axis);
	[LinkName("glmc_spin")]
	public static extern void glm_spin(out Transform t, float angle, Vector3 axis);
	[LinkName("glmc_rotated_x")]
	public static extern void glm_rotated_x(Transform t, float rad, out Transform result);
	[LinkName("glmc_rotated_y")]
	public static extern void glm_rotated_y(Transform t, float rad, out Transform result);
	[LinkName("glmc_rotated_z")]
	public static extern void glm_rotated_z(Transform t, float rad, out Transform result);
	[LinkName("glmc_rotated")]
	public static extern void glm_rotated(out Transform t,float angle, Vector3 axis);
	[LinkName("glmc_rotated_at")]
	public static extern void glm_rotated_at(out Transform t,Vector3 pivot, float angle, Vector3 axis);
	[LinkName("glmc_spinnied")]
	public static extern void glm_spinnied(out Transform t, float angle, Vector3 axis);
	[LinkName("glmc_decompose_scalev")]
	public static extern void glm_decompose_scalev(Transform t, out Vector3 scale);
	[LinkName("glmc_decompose_rs")]
	public static extern void glm_decompose_rs(Transform t,out Mat4 rotation, out Vector3 scale);
	[LinkName("glmc_decompose")]
	public static extern void glm_decompose(Transform t,out Vector4 translation,out Mat4 rotation, out Vector3 scale);
	[LinkName("glmc_uniscaled")]
	public static extern bool glm_uniscaled(Transform t);
	[LinkName("glmc_mul")]
	public static extern void glm_mul(Transform t,Transform other,out Mat4 result);
	[LinkName("glmc_mul_rot")]
	public static extern void glm_mul_rot(Transform t,Transform other,out Mat4 result);
	[LinkName("glmc_inv_tr")]
	public static extern void glm_inv_tr(out Transform t);
}