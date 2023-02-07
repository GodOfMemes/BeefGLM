using System;
namespace BeefGLM;

static
{
	enum Easing
	{
		case Linear;

		case SineIn;
		case QuadIn;
		case CubicIn;
		case QuartIn;
		case QuintIn;
		case ExpIn;
		case CircleIn;
		case BackIn;
		case ElastIn;
		case BounceIn;

		case SineOut;
		case QuadOut;
		case CubicOut;
		case QuartOut;
		case QuintOut;
		case ExpOut;
		case CircleOut;
		case BackOut;
		case ElastOut;
		case BounceOut;

		case SineInOut;
		case QuadInOut;
		case CubicInOut;
		case QuartInOut;
		case QuintInOut;
		case ExpInOut;
		case CircleInOut;
		case BackInOut;
		case ElastInOut;
		case BounceInOut;

		public float Ease(float t)
		{
			float e = 0;
			switch(this)
			{
			case Linear:
				e = glm_ease_linear(t);
			case SineIn:
				e = glm_ease_sine_in(t);
			case QuadIn:
				e = glm_ease_quad_in(t);
			case CubicIn:
				e = glm_ease_cubic_in(t);
			case QuartIn:
				e = glm_ease_quart_in(t);
			case QuintIn:
				e = glm_ease_quint_in(t);
			case ExpIn:
				e = glm_ease_exp_in(t);
			case CircleIn:
				e = glm_ease_circ_in(t);
			case BackIn:
				e = glm_ease_back_in(t);
			case ElastIn:
				e = glm_ease_elast_in(t);
			case BounceIn:
				e = glm_ease_bounce_in(t);

			case SineOut:
				e = glm_ease_sine_out(t);
			case QuadOut:
				e = glm_ease_quad_out(t);
			case CubicOut:
				e = glm_ease_cubic_out(t);
			case QuartOut:
				e = glm_ease_quart_out(t);
			case QuintOut:
				e = glm_ease_quint_out(t);
			case ExpOut:
				e = glm_ease_exp_out(t);
			case CircleOut:
				e = glm_ease_circ_out(t);
			case BackOut:
				e = glm_ease_back_out(t);
			case ElastOut:
				e = glm_ease_elast_out(t);
			case BounceOut:
				e = glm_ease_bounce_out(t);

			case SineInOut:
				e = glm_ease_sine_inout(t);
			case QuadInOut:
				e = glm_ease_quad_inout(t);
			case CubicInOut:
				e = glm_ease_cubic_inout(t);
			case QuartInOut:
				e = glm_ease_quart_inout(t);
			case QuintInOut:
				e = glm_ease_quint_inout(t);
			case ExpInOut:
				e = glm_ease_exp_inout(t);
			case CircleInOut:
				e = glm_ease_circ_inout(t);
			case BackInOut:
				e = glm_ease_back_inout(t);
			case ElastInOut:
				e = glm_ease_elast_inout(t);
			case BounceInOut:
				e = glm_ease_bounce_inout(t);
			}
			return e;
		}
	}

	[LinkName("glmc_ease_linear")]
	public static extern float glm_ease_linear(float t);
	[LinkName("glmc_ease_sine_in")]
	public static extern float glm_ease_sine_in(float t);
	[LinkName("glmc_ease_sine_out")]
	public static extern float glm_ease_sine_out(float t);
	[LinkName("glmc_ease_sine_inout")]
	public static extern float glm_ease_sine_inout(float t);
	[LinkName("glmc_ease_quad_in")]
	public static extern float glm_ease_quad_in(float t);
	[LinkName("glmc_ease_quad_out")]
	public static extern float glm_ease_quad_out(float t);
	[LinkName("glmc_ease_quad_inout")]
	public static extern float glm_ease_quad_inout(float t);
	[LinkName("glmc_ease_cubic_in")]
	public static extern float glm_ease_cubic_in(float t);
	[LinkName("glmc_ease_cubic_out")]
	public static extern float glm_ease_cubic_out(float t);
	[LinkName("glmc_ease_cubic_inout")]
	public static extern float glm_ease_cubic_inout(float t);
	[LinkName("glmc_ease_quart_in")]
	public static extern float glm_ease_quart_in(float t);
	[LinkName("glmc_ease_quart_out")]
	public static extern float glm_ease_quart_out(float t);
	[LinkName("glmc_ease_quart_inout")]
	public static extern float glm_ease_quart_inout(float t);
	[LinkName("glmc_ease_quint_in")]
	public static extern float glm_ease_quint_in(float t);
	[LinkName("glmc_ease_quint_out")]
	public static extern float glm_ease_quint_out(float t);
	[LinkName("glmc_ease_quint_inout")]
	public static extern float glm_ease_quint_inout(float t);
	[LinkName("glmc_ease_exp_in")]
	public static extern float glm_ease_exp_in(float t);
	[LinkName("glmc_ease_exp_out")]
	public static extern float glm_ease_exp_out(float t);
	[LinkName("glmc_ease_exp_inout")]
	public static extern float glm_ease_exp_inout(float t);
	[LinkName("glmc_ease_circ_in")]
	public static extern float glm_ease_circ_in(float t);
	[LinkName("glmc_ease_circ_out")]
	public static extern float glm_ease_circ_out(float t);
	[LinkName("glmc_ease_circ_inout")]
	public static extern float glm_ease_circ_inout(float t);
	[LinkName("glmc_ease_back_in")]
	public static extern float glm_ease_back_in(float t);
	[LinkName("glmc_ease_back_out")]
	public static extern float glm_ease_back_out(float t);
	[LinkName("glmc_ease_back_inout")]
	public static extern float glm_ease_back_inout(float t);
	[LinkName("glmc_ease_elast_in")]
	public static extern float glm_ease_elast_in(float t);
	[LinkName("glmc_ease_elast_out")]
	public static extern float glm_ease_elast_out(float t);
	[LinkName("glmc_ease_elast_inout")]
	public static extern float glm_ease_elast_inout(float t);
	[LinkName("glmc_ease_bounce_in")]
	public static extern float glm_ease_bounce_in(float t);
	[LinkName("glmc_ease_bounce_out")]
	public static extern float glm_ease_bounce_out(float t);
	[LinkName("glmc_ease_bounce_inout")]
	public static extern float glm_ease_bounce_inout(float t);
}