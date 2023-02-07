using System;
namespace BeefGLM;

/*static
{
	typealias vec2 = Vector2;
	typealias vec3 = Vector3;
	typealias vec4 = Vector4;
}*/

static class Project
{
	public static Vector3 Project(Vector3 pos, Mat4 m, Vector4 viewPort)
	{
		Vector3 d;
		glmc_project(pos,m,viewPort,out d);
		return d;
	}

	public static float ProjectZCoord(Vector3 v, Mat4 m) => glmc_project_z(v,m);

	public static Mat4 CreatePickMatrix(Vector2 center, Vector2 size, Vector4 viewPort)
	{
		Mat4 m;
		glmc_pickmatrix(center,size,viewPort,out m);
		return m;
	}

	public static Vector3 UnProject(Vector3 pos, Mat4 m, Vector4 viewPort)
	{
		Vector3 d;
		glmc_unproject(pos,m,viewPort,out d);
		return d;
	}

	public static Vector3 UnProjectInv(Vector3 pos, Mat4 InvM, Vector4 viewPort)
	{
		Vector3 d;
		glmc_unprojecti(pos,InvM,viewPort,out d);
		return d;
	}

	[CLink]
	private static extern void glmc_project(in Vector3 p, in Mat4 m, in Vector4 vp, out Vector3 d);
	[CLink]
	private static extern float glmc_project_z(in Vector3 p, in Mat4 m);
	[CLink]
	private static extern void glmc_pickmatrix(in Vector2 p, in Vector2 s, in Vector4 vp, out Mat4 d);
	[CLink]
	private static extern void glmc_unprojecti(in Vector3 p, in Mat4 m, in Vector4 vp, out Vector3 d);
	[CLink]
	private static extern void glmc_unproject(in Vector3 p, in Mat4 m, in Vector4 vp, out Vector3 d);
}