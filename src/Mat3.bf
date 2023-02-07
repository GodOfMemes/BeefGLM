using System;
namespace BeefGLM;

static
{

	[LinkName("glmc_mat3_copy")]
	private static extern void glc_mat3_copy(Mat3 m, out Mat3 d);
	[LinkName("glmc_mat3_identity")]
	private static extern void glm_mat3_identity(out Mat3 m);
	[LinkName("glmc_mat3_zero")]
	private static extern void glm_mat3_zero(out Mat3 m);
	[LinkName("glmc_mat3_mul")]
	private static extern void glm_mat3_mul(Mat3 a, Mat3 b, out Mat3 c);
	[LinkName("glmc_mat3_transpose")]
	private static extern void glm_mat3_transpose(out Mat3 m);
	[LinkName("glmc_mat3_mulv")]
	private static extern void glm_mat3_mulv(Mat3 m, Vector3 v, out Vector3 d);
	[LinkName("glmc_mat3_trace")]
	private static extern float glm_mat3_trace(Mat3 m);
	[LinkName("glmc_mat3_quat")]
	private static extern void glm_mat3_quat(Mat3 m, out Quaterion q);
	[LinkName("glmc_mat3_scale")]
	private static extern void glm_mat3_scale(out Mat3 m,float s);
	[LinkName("glmc_mat3_det")]
	private static extern void glm_mat3_det(out Mat3 m);
	[LinkName("glmc_mat3_inv")]
	private static extern void glm_mat3_inv(Mat3 m, out Mat3 d);
	[LinkName("glmc_mat3_swap_col")]
	private static extern void glm_mat3_swap_col(Mat3 m, int c1, int c2);
	[LinkName("glmc_mat3_swap_row")]
	private static extern void glm_mat3_swap_row(Mat3 m, int r1, int r2);
	[LinkName("glmc_mat3_rmr")]
	private static extern float glm_mat3_rmr(Vector3 r, Mat3 m, Vector3 c);

}