using System;
namespace BeefGLM;

static
{
	[LinkName("glmc_frustum_planes")]
	public static extern void glm_frustum_planes(Mat4 m, out Vector4[6] planes);
	[LinkName("glmc_frustum_corners")]
	public static extern void glm_frustum_corners(Mat4 invM, out Vector4[8] corners);
	[LinkName("glmc_frustum_center")]
	public static extern void glm_frustum_center(Vector4[8] corners, out Vector4 center);
	[LinkName("glmc_frustum_box")]
	public static extern void glm_frustum_box(Vector4[8] corners, Mat4 m, out AABB Box);
	[LinkName("glmc_frustum_corners_at")]
	public static extern void glm_frustum_corners_at(Vector4[8] corners, float splitDistance,float farDistance, Vector4[4] planeCorners);
}