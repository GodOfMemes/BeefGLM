using System;
namespace BeefGLM;

static
{

	[LinkName("glmc_mat4_copy")]
	private static extern void glm_mat4_copy(Mat4 m, out Mat4 d);
	[LinkName("glmc_mat4_identity")]
	private static extern void glm_mat4_identity(out Mat4 m);
	[LinkName("glmc_mat4_zero")]
	private static extern void glm_mat4_zero(out Mat4 m);
	[LinkName("glmc_mat4_mul")]
	private static extern void glm_mat4_mul(Mat4 a, Mat4 b, out Mat4 c);
	[LinkName("glmc_mat4_transpose")]
	private static extern void glm_mat4_transpose(out Mat4 m);
	[LinkName("glmc_mat4_mulv")]
	private static extern void glm_mat4_mulv(Mat4 m, Vector3 v, out Vector3 d);
	[LinkName("glmc_mat4_trace")]
	private static extern float glm_mat4_trace(Mat4 m);
	[LinkName("glmc_mat4_quat")]
	private static extern void glm_mat4_quat(Mat4 m, out Quaterion q);
	[LinkName("glmc_mat4_scale")]
	private static extern void glm_mat4_scale(out Mat4 m,float s);
	[LinkName("glmc_mat4_det")]
	private static extern void glm_mat4_det(out Mat4 m);
	[LinkName("glmc_mat4_inv")]
	private static extern void glm_mat4_inv(Mat4 m, out Mat4 d);
	[LinkName("glmc_mat4_swap_col")]
	private static extern void glm_mat4_swap_col(Mat4 m, int c1, int c2);
	[LinkName("glmc_mat4_swap_row")]
	private static extern void glm_mat4_swap_row(Mat4 m, int r1, int r2);
	[LinkName("glmc_mat4_rmr")]
	private static extern float glc_mat4_rmr(Vector3 r, Mat4 m, Vector3 c);

}