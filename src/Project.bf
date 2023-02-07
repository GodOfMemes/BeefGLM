using System;

namespace BeefGLM;

static
{
	[LinkName("glmc_project")]
	private static extern void glm_project(in Vector3 p, in Mat4 m, in Vector4 vp, out Vector3 d);
	[LinkName("glmc_project_z")]
	private static extern float glm_project_z(in Vector3 p, in Mat4 m);
	[LinkName("glmc_pickmatrix")]
	private static extern void glm_pickmatrix(in Vector2 p, in Vector2 s, in Vector4 vp, out Mat4 d);
	[LinkName("glmc_unprojecti")]
	private static extern void glm_unprojecti(in Vector3 p, in Mat4 m, in Vector4 vp, out Vector3 d);
	[LinkName("glmc_unproject")]
	private static extern void glm_unproject(in Vector3 p, in Mat4 m, in Vector4 vp, out Vector3 d);
}