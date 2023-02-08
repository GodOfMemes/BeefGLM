using System;
namespace BeefGLM;

static
{
		[LinkName("glmc_translate2d_make")]
		public static extern void glm_translate2d_make(out Mat3 m, Vector2 v);
		[LinkName("glmc_translate2d_to")]
		public static extern void glm_translate2d_to(Mat3 m, Vector2 v, out Mat3 dest);
		[LinkName("glmc_translate2d")]
		public static extern void glm_translate2d(out Mat3 m, Vector2 v);
		[LinkName("glmc_translate2d_x")]
		public static extern void glm_translate2d_x(out Mat3 m, float to);
		[LinkName("glmc_translate2d_y")]
		public static extern void glm_translate2d_y(out Mat3 m, float to);
		[LinkName("glmc_scale2d_to")]
		public static extern void glm_scale2d_to(Mat3 m, Vector2 v, out Mat3 dest);
		[LinkName("glmc_scale2d_make")]
		public static extern void glm_scale2d_make(out Mat3 m, Vector2 v);
		[LinkName("glmc_scale2d")]
		public static extern void glm_scale2d(out Mat3 m, Vector2 v);
		[LinkName("glmc_scale2d_uni")]
		public static extern void glm_scale2d_uni(out Mat3 m, float s);
		[LinkName("glmc_rotate2d_make")]
		public static extern void glm_rotate2d_make(out Mat3 m, float angle);
		[LinkName("glmc_rotate2d")]
		public static extern void glm_rotate2d(out Mat3 m, float angle);
		[LinkName("glmc_rotate2d_to")]
		public static extern void glm_rotate2d_to(Mat3 m, float angle, out Mat3 dest);
}