using System;
namespace BeefGLM;

static
{
	[LinkName("glmc_sphere_radii")]
	public static extern float glm_sphere_radi(Vector4 s);
	[LinkName("glmc_sphere_radii")]
	public static extern void glm_sphere_transform(Vector4 s, Mat4 m, out Vector4 d);
	[LinkName("glmc_sphere_merge")]
	public static extern void glm_sphere_merge(Vector4 a, Vector4 b, out Vector4 r);
	[LinkName("glmc_sphere_sphere")]
	public static extern bool glm_sphere_sphere(Vector4 a, Vector4 b);
	[LinkName("glmc_sphere_point")]
	public static extern bool glm_sphere_point(Vector4 s, Vector3 p);
}