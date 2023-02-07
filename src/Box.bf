using System;
namespace BeefGLM;

static
{
	[LinkName("glm_aabb_transform")]
	public static extern void glm_aabb_transform(AABB Box, Mat4 m, out AABB result);
	[LinkName("glmc_aabb_merge")]
	public static extern void glm_aabb_merge(AABB Box, AABB other, out AABB result);
	[LinkName("glm_aabb_crop")]
	public static extern void glm_aabb_crop(AABB Box, AABB cropBox, out AABB result);
	[LinkName("glmc_aabb_crop_until")]
	public static extern void glm_aabb_crop_until(AABB Box, AABB cropBox, AABB clampBox, out AABB result);
	[LinkName("glmc_aabb_frustum")]
	public static extern void glm_aabb_frustum(AABB Box, Vector4[6] planes);
	[LinkName("glmc_aabb_invalidate")]
	public static extern void glm_aabb_invalidate(AABB Box);
	[LinkName("glmc_aabb_isvalid")]
	public static extern void glm_aabb_isvalid(AABB Box);
	[LinkName("glmc_aabb_size")]
	public static extern float glm_aabb_size(AABB Box);
	[LinkName("glmc_aabb_radius")]
	public static extern float glm_aabb_radius(AABB Box);
	[LinkName("glmc_aabb_center")]
	public static extern void glm_aabb_center(AABB boxes, out Vector3 dest);
	[LinkName("glmc_aabb_aabb")]
	public static extern bool glm_aabb_aabb(AABB Box,AABB other);
	[LinkName("glmc_aabb_point")]
	public static extern bool glm_aabb_point(AABB Box,Vector3 point);
	[LinkName("glmc_aabb_contains")]
	public static extern bool glm_aabb_contains(AABB Box, AABB other);
	[LinkName("glmc_aabb_sphere")]
	public static extern bool glm_aabb_sphere(AABB Box, Vector4 sphere);
}