using System;
namespace BeefGLM;

static
{
	enum glm_euler_seq
	{
		GLM_EULER_XYZ = 0 << 0 | 1 << 2 | 2 << 4,
		GLM_EULER_XZY = 0 << 0 | 2 << 2 | 1 << 4,
		GLM_EULER_YZX = 1 << 0 | 2 << 2 | 0 << 4,
		GLM_EULER_YXZ = 1 << 0 | 0 << 2 | 2 << 4,
		GLM_EULER_ZXY = 2 << 0 | 0 << 2 | 1 << 4,
		GLM_EULER_ZYX = 2 << 0 | 1 << 2 | 0 << 4
	}

	[LinkName("glmc_euler_angles")]
	public static extern void glm_euler_angles(Mat4 m, out Vector3 angle);
	[LinkName("glmc_euler")]
	public static extern void glm_euler(Vector3 angle, out Mat4 rotation);
	[LinkName("glmc_euler_xyz")]
	public static extern void glm_euler_xyz(Vector3 angles, out Mat4 rotation);
	[LinkName("glmc_euler_zyx")]
	public static extern void glm_euler_zyx(Vector3 angles, out Mat4 rotation);
	[LinkName("glmc_euler_zxy")]
	public static extern void glm_euler_zxy(Vector3 angles, out Mat4 rotation);
	[LinkName("glmc_euler_xzy")]
	public static extern void glm_euler_xzy(Vector3 angles, out Mat4 rotation);
	[LinkName("glmc_euler_yzx")]
	public static extern void glm_euler_yzx(Vector3 angles, out Mat4 rotation);
	[LinkName("glmc_euler_yxz")]
	public static extern void glm_euler_yxz(Vector3 angles, out Mat4 rotation);
	[LinkName("glmc_euler_by_order")]
	public static extern void glm_euler_by_order(Vector3 angles,glm_euler_seq axis, out Mat4 rotation);
}