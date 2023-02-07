using System;
namespace BeefGLM;

static
{
	[LinkName("glmc_frustum")]
	public static extern void glm_frustum(float left, float right, float bottom, float top, float nearZ, float farZ, out Mat4 frust);
	[LinkName("glmc_ortho")]
	public static extern void glm_ortho(float left, float right, float bottom, float top, float nearZ, float farZ, out Mat4 frust);
	[LinkName("glmc_ortho_aabb")]
	public static extern void glm_ortho_aabb(AABB Box, out Mat4 result);
	[LinkName("glmc_ortho_aabb_p")]
	public static extern void glm_ortho_aabb_p(AABB Box,float padding, out Mat4 result);
	[LinkName("glmc_ortho_aabb_pz")]
	public static extern void glm_ortho_aabb_pz(AABB Box,float padding, out Mat4 result);
	[LinkName("glmc_ortho_default")]
	public static extern void glm_ortho_default(float aspect, out Mat4 result);
	[LinkName("glmc_ortho_default_s")]
	public static extern void glm_ortho_default_s(float aspect, float size, out Mat4 result);
	[LinkName("glmc_perspective")]
	public static extern void glm_perspective(float fov,float aspect, float nearZ, float farZ, out Mat4 result);
	[LinkName("glmc_persp_move_far")]
	public static extern void glm_perspective_move_far(out Mat4 perspective, float deltaFar);
	[LinkName("glmc_perspective_default")]
	public static extern void glm_perspective_default(float aspect,out Mat4 perspective);
	[LinkName("glmc_perspective_resize")]
	public static extern void glm_perspective_resize(float aspect,out Mat4 perspective);
	[LinkName("glmc_lookat")]
	public static extern void glm_lookat(Vector3 eye, Vector3 center, Vector3 up,out Mat4 perspective);
	[LinkName("glmc_look")]
	public static extern void glm_look(Vector3 eye, Vector3 dir, Vector3 up,out Mat4 perspective);
	[LinkName("glmc_look_anyup")]
	public static extern void glm_look_anyup(Vector3 eye, Vector3 center,out Mat4 perspective);
	[LinkName("glmc_persp_decomp")]
	public static extern void glm_perspective_decompose(Mat4 perspective, float* nearZ, float* farZ,float* top, float* bottom, float* left, float right);
	[LinkName("glmc_persp_decompv")]
	public static extern void glm_perspective_decompose_frust(Mat4 perspective, out float[6] frust);
	[LinkName("glmc_persp_decomp_x")]
	public static extern void glm_perspective_decompose_x(Mat4 perspective, float* left, float* right);
	[LinkName("glmc_persp_decomp_y")]
	public static extern void glm_perspective_decompose_y(Mat4 perspective, float* top, float* bottom);
	[LinkName("glmc_persp_decomp_z")]
	public static extern void glm_perspective_decompose_z(Mat4 perspective, float* nearZ, float* farZ);
	[LinkName("glmc_persp_decomp_far")]
	public static extern void glm_perspective_decompose_far(Mat4 perspective, float* farZ);
	[LinkName("glmc_persp_decomp_near")]
	public static extern void glm_perspective_decompose_near(Mat4 perspective, float* nearZ);
	[LinkName("glmc_persp_fovy")]
	public static extern float glm_perspective_fov(Mat4 perspective);
	[LinkName("glmc_persp_aspect")]
	public static extern float glm_perspective_aspect(Mat4 perspective);
	[LinkName("glmc_persp_sizes")]
	public static extern void glm_perspective_size(Mat4 perspective, out float fov, out Vector4 dest);
}