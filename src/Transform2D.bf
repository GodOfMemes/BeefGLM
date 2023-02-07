using System;
namespace BeefGLM;

static
{
		[LinkName("glmc_translate2d_make")]
		public static extern void glm_translate2d_make(out Transform2D m, Vector2 v);
		[LinkName("glmc_translate2d_to")]
		public static extern void glm_translate2d_to(Transform2D m, Vector2 v, out Transform2D dest);
		[LinkName("glmc_translate2d")]
		public static extern void glm_translate2d(out Mat3 m, Vector2 v);
		[LinkName("glmc_translate2d_x")]
		public static extern void glm_translate2d_x(out Transform2D m, float to);
		[LinkName("glmc_translate2d_y")]
		public static extern void glm_translate2d_y(out Transform2D m, float to);
		[LinkName("glmc_scale2d_to")]
		public static extern void glm_scale2d_to(Transform2D m, Vector2 v, out Transform2D dest);
		[LinkName("glmc_scale2d_make")]
		public static extern void glm_scale2d_make(out Transform2D m, Vector2 v);
		[LinkName("glmc_scale2d")]
		public static extern void glm_scale2d(out Transform2D m, Vector2 v);
		[LinkName("glmc_scale2d_uni")]
		public static extern void glm_scale2d_uni(out Transform2D m, float s);
		[LinkName("glmc_rotate2d_make")]
		public static extern void glm_rotate2d_make(out Transform2D m, float angle);
		[LinkName("glmc_rotate2d")]
		public static extern void glm_rotate2d(out Transform2D m, float angle);
		[LinkName("glmc_rotate2d_to")]
		public static extern void glm_rotate2d_to(Transform2D m, float angle, out Transform2D dest);
}