using System;

namespace BeefGLM;

public struct Vector2
{
	internal float[2] Value;

	public float X
	{
		get => Value[0];
		set mut => Value[0] = value;
	}

	public float Y
	{
		get => Value[1];
		set mut => Value[1] = value;
	}

	public this()
	{
		this = Self.Zero;
	}

	public this(float s)
	{
		Value = .(s,s);
	}
	public this(float x, float y)
	{
		Value = .(x,y);
	}

	public this(Self vec)
	{
		var c = vec;
		glmc_vec2((.)(&c), out this);
	}

	public this(Vector3 vec)
	{
		var c = vec;
		glmc_vec2((.)(&c), out this);
	}

	public this(Vector4 vec)
	{
		var c = vec;
		glmc_vec2((.)(&c), out this);
	}

	public static Self Zero
	{
		get
		{
			Self a;
			glmc_vec2_zero(out a);
			return a;
		}
	}

	public static Self One
	{
		get
		{
			Vector2 a;
			glmc_vec2_one(out a);
			return a;
		}
	}

	public float Length => glmc_vec2_norm(this);
	public float LengthSq => glmc_vec2_norm2(this);

	public static Self operator -(Self v) => Negate(v);

	public static Self operator +(Self a, Self b) => Add(a,b);
	public static Self operator +(Self a, float s) => Add(a,s);
	public void operator +=(Self v) mut => Add(v);
	public void operator +=(float s) mut => Add(s);

	public static Self operator -(Self a, Self b) => Subtract(a,b);
	public static Self operator -(Self a, float s) => Subtract(a,s);
	public void operator -=(Self v) mut => Subtract(v);
	public void operator -=(float s) mut => Subtract(s);

	public static Self operator *(Self a, Self b) => Multiply(a,b);
	public static Self operator *(Self a, float s) => Scale(a,s);
	public void operator *=(Self v) mut => Multiply(v);
	public void operator *=(float s) mut => Scale(s);

	public static Self operator /(Self a, Self b) => Divide(a,b);
	public static Self operator /(Self a, float s) => Divide(a,s);
	public void operator /=(Self v) mut => Divide(v);
	public void operator /=(float s) mut => Divide(s);

	public static bool operator ==(Self a, Self b) => Equal(a,b);

	public float Dot(Self b) => glmc_vec2_dot(this,b);
	public float Cross(Self b) => glmc_vec2_cross(this,b);
	public Self Add(Self b) mut => Add(this,b);
	public Self Add(float s) mut => Add(this,s);
	public Self Subtract(Self b) mut => Subtract(this,b);
	public Self Subtract(float s) mut  => Subtract(this,s);
	public Self Multiply(Self b) mut => Multiply(this,b);
	public Self Scale(float s) mut => Scale(this,s);
	public Self ScaleVector(float s) mut => ScaleVector(this,s);
	public Self Divide(Self b) mut => Divide(this,b);
	public Self Divide(float s) mut => Divide(this,s);
	public Self Negate() mut => this = Negate(this);
	public Self Normalize() mut => this = Normalize(this);
	public Self Rotate(float angle) mut => this = Rotate(this,angle);
	public float Distance(Self b) => Distance(this,b);
	public float DistanceSquared(Self b) => DistanceSquared(this,b);
	public Self Max(Self b) => Max(this,b);
	public Self Min(Self b) => Min(this,b);
	public Self Clamp(float min, float max) mut => this = Clamp(this,min,max);
	public Self Abs() mut => this = Abs(this);
	public Self Lerp(Self to, float time) => Lerp(this,to,time);

	public static bool Equal(Self a, Self b) => Vector3.Equal(a,b);
	public static float Dot(Self a,Self b) => glmc_vec2_dot(a,b);
	public static float Cross(Self a,Self b) => glmc_vec2_cross(a,b);
	public static Self Add(Self a, Self b)
	{
		Self c = .Zero;
		glmc_vec2_add(a,b,out c);
		return c;
	}
	public static Self Add(Self a, float s)
	{
		Self c = .Zero;
		glmc_vec2_adds(a,s,out c);
		return c;
	}
	public static Self Subtract(Self a, Self b)
	{
		Self c = .();
		glmc_vec2_sub(a,b,out c);
		return c;
	}
	public static Self Subtract(Self a, float s)
	{
		Self c = .();
		glmc_vec2_subs(a,s,out c);
		return c;
	}
	public static Self Multiply(Self a, Self b)
	{
		Self c = .();
		glmc_vec2_mult(a,b,out c);
		return c;
	}
	public static Self Scale(Self a, float s)
	{
		Self c = .();
		glmc_vec2_scale(a,s,out c);
		return c;
	}
	public static Self ScaleVector(Self a, float s)
	{
		Self c = .();
		glmc_vec2_scale_as(a,s,out c);
		return c;
	}
	public static Self Divide(Self a, Self b)
	{
		Self c = .();
		glmc_vec2_div(a,b,out c);
		return c;
	}
	public static Self Divide(Self a, float s)
	{
		Self c = .();
		glmc_vec2_divs(a,s,out c);
		return c;
	}
	public static Self Negate(Self v)
	{
		glmc_vec2_negate(v);
		return v;
	}
	public static Self Normalize(Self v)
	{
		glmc_vec2_normalize(v);
		return v;
	}
	public static Self Rotate(Self v, float angle)
	{
		Vector2 c;
		glmc_vec2_rotate(v, angle, out c);
		return c;
	}
	public static float Distance(Self a, Self b) => glmc_vec2_distance(a,b);
	public static float DistanceSquared(Self a,Self b) => glmc_vec2_distance2(a,b);
	public static Self Max(Self a, Self b)
	{
		Self c;
		glmc_vec2_maxv(a,b,out c);
		return c;
	}
	public static Self Min(Self a, Self b)
	{
		Self c;
		glmc_vec2_minv(a,b,out c);
		return c;
	}
	public static Self Clamp(Self a, float min, float max)
	{
		Self c = .(a);
		glmc_vec2_clamp(out c,min,max);
		return c;
	}
	public static Self Abs(Self v)
	{
		Self b;
		glmc_vec2_abs(v, out b);
		return b;
	}
	public static Self Lerp(Self from, Self to, float time)
	{
		Self c;
		glmc_vec2_lerp(from,to,time,out c);
		return c;
	}
	public static Self ComplexMultiply(Self a, Self b)
	{
		Self c;
		glmc_vec2_complex_mul(a,b,out c);
		return c;
	}
	public static Self ComplexDivide(Self a, Self b)
	{
		Self c;
		glmc_vec2_complex_div(a,b,out c);
		return c;
	}
	public static Self ComplexConjugate(Self a)
	{
		Self b;
		glmc_vec2_complex_conjugate(a,out b);
		return b;
	}

	[CLink]
	private static extern void glmc_vec2(float* v,out Self dest);
	[CLink]
	private static extern void glmc_copy(in Self a,out Self dest);
	[CLink]
	private static extern void glmc_vec2_zero(out Self v);
	[CLink]
	private static extern void glmc_vec2_one(out Self v);
	[CLink]
	private static extern float glmc_vec2_dot(in Self a,in Self b);
	[CLink]
	private static extern float glmc_vec2_cross(in Self a,in Self b);
	[CLink]
	private static extern float glmc_vec2_norm(in Self v);
	[CLink]
	private static extern float glmc_vec2_norm2(in Self v);
	[CLink]
	private static extern void glmc_vec2_add(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec2_adds(in Self a, float s, out Self c);
	[CLink]
	private static extern void glmc_vec2_sub(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec2_subs(in Self a, float s, out Self c);
	[CLink]
	private static extern void glmc_vec2_mult(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec2_scale(in Self a,float s, out Self c);
	[CLink]
	private static extern void glmc_vec2_scale_as(in Self a,float s, out Self c);
	[CLink]
	private static extern void glmc_vec2_div(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec2_divs(in Self a,float s, out Self c);
	[CLink]
	private static extern void glmc_vec2_negate(in Self v);
	[CLink]
	private static extern void glmc_vec2_normalize(in Self v);
	[CLink]
	private static extern void glmc_vec2_rotate(in Self v, float angle, out Self c);
	[CLink]
	private static extern float glmc_vec2_distance(in Self a, in Self b);
	[CLink]
	private static extern float glmc_vec2_distance2(in Self a, in Self b);
	[CLink]
	private static extern void glmc_vec2_maxv(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec2_minv(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec2_clamp(out Self a, float min, float max);
	[CLink]
	private static extern void glmc_vec2_abs(in Self a, out Self b);
	[CLink]
	private static extern void glmc_vec2_lerp(in Self a, in Self b, float t, out Self c);
	[CLink]
	private static extern void glmc_vec2_complex_mul(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec2_complex_div(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec2_complex_conjugate(in Self a,out Self b);
	[CLink]
	private static extern void glmc_vec2_addadd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec2_subadd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec2_muladd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec2_muladds(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec2_maxadd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec2_minadd(in Self a,in Self b, out Self c);

	public static operator float[2](Self v) => v.Value;
	public static operator float[3](Self v)
	{
		float[3] c = .(v.X,v.Y,0);

		return c;
	}
	public static operator float[4](Self v)
	{
		float[4] c = .(v.X,v.Y,0,0);

		return c;
	}

	public static operator Vector3(Self v) => (.)v;
	public static operator Vector4(Self v) => (.)v;

	public static operator StringView(Self v) => v.Value.ToString(.. scope .());
}