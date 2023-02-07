using System;
namespace BeefGLM;

static
{
	[LinkName("glmc_bezier")]
	public static extern float glm_bezier(float s, float p0, float c0, float c1, float p1);
	[LinkName("glmc_hermite")]
	public static extern float glm_hermite(float s, float p0, float c0, float c1, float p1);
	[LinkName("glmc_decasteljau")]
	public static extern float glm_decasteljau(float s, float p0, float c0, float c1, float p1);
}