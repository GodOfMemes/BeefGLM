using System;

namespace BeefGLM;

public struct Vector3
{
	internal float[3] Value;

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

	public float Z
	{
		get => Value[2];
		set mut => Value[2] = value;
	}

	public this()
	{
		this = Self.Zero;
	}

	public this(float s) : this(s,s,s)
	{
		
	}
	public this(float x, float y) : this(x,y,0)
	{
	}

	public this(float x, float y, float z)
	{
		Value = .(x,y,z);
	}

	public this(Vector2 vec)
	{
		this = vec;
	}

	public this(Vector3 vec)
	{
		this = vec;
	}

	public this(Vector4 vec)
	{
		glmc_vec3(vec, out this);
	}
	
	public static Self Zero
	{
		get
		{
			Self a;
			glmc_vec3_zero(out a);
			return a;
		}
	}

	public static Self One
	{
		get
		{
			Self a;
			glmc_vec3_one(out a);
			return a;
		}
	}

	public float Length => glmc_vec3_norm(this);
	public float LengthSq => glmc_vec3_norm2(this);

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

	public float Dot(Self b) => Dot(this,b);
	public Self Cross(Self b) => Cross(this,b);
	public Self CrossNormalize(Self b) => Cross(this,b);
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
	public Self Rotate(float angle,Self axis) mut => this = Rotate(this,angle,axis);
	public float Distance(Self b) => Distance(this,b);
	public float DistanceSquared(Self b) => DistanceSquared(this,b);
	public Self Max(Self b) => Max(this,b);
	public Self Min(Self b) => Min(this,b);
	public Self Clamp(float min, float max) mut => this = Clamp(this,min,max);
	public Self Abs() mut => this = Abs(this);
	public Self Lerp(Self to, float time) => Lerp(this,to,time);
	public bool Equal(Self b) => Equal(this,b);

	public static float Dot(Self a,Self b) => glmc_vec3_dot(a,b);
	public static Self Cross(Self a,Self b)
	{
		Self c;
		glmc_vec3_cross(a,b,out c);
		return c;
	}
	public static Self CrossNormalize(Self a,Self b)
	{
		Self c;
		glmc_vec3_crossn(a,b,out c);
		return c;
	}
	public static Self Add(Self a, Self b)
	{
		Self c = .Zero;
		glmc_vec3_add(a,b,out c);
		return c;
	}
	public static Self Add(Self a, float s)
	{
		Self c = .Zero;
		glmc_vec3_adds(a,s,out c);
		return c;
	}
	public static Self Subtract(Self a, Self b)
	{
		Self c = .();
		glmc_vec3_sub(a,b,out c);
		return c;
	}
	public static Self Subtract(Self a, float s)
	{
		Self c = .();
		glmc_vec3_subs(a,s,out c);
		return c;
	}
	public static Self Multiply(Self a, Self b)
	{
		Self c = .();
		glmc_vec3_mult(a,b,out c);
		return c;
	}
	public static Self Scale(Self a, float s)
	{
		Self c = .();
		glmc_vec3_scale(a,s,out c);
		return c;
	}
	public static Self ScaleVector(Self a, float s)
	{
		Self c = .();
		glmc_vec3_scale_as(a,s,out c);
		return c;
	}
	public static Self Divide(Self a, Self b)
	{
		Self c = .();
		glmc_vec3_div(a,b,out c);
		return c;
	}
	public static Self Divide(Self a, float s)
	{
		Self c = .();
		glmc_vec3_divs(a,s,out c);
		return c;
	}
	public static Self Negate(Self v)
	{
		glmc_vec3_negate(v);
		return v;
	}
	public static Self Normalize(Self v)
	{
		glmc_vec3_normalize(v);
		return v;
	}
	public static Self Rotate(Self v, float angle, Self axis)
	{
		Self c = v;
		glmc_vec3_rotate(out c, angle,axis);
		return c;
	}
	public static Self Rotate(Mat4 m, Self v)
	{
		Self c;
		glmc_vec3_rotate_m4(m,v,out c);
		return c;
	}
	public static Self Rotate(Mat3 m, Self v)
	{
		Self c;
		glmc_vec3_rotate_m3(m,v,out c);
		return c;
	}
	public static Self Project(Self a, Self b)
	{
		Self c;
		glmc_vec3_proj(a,b,out c);
		return c;
	}
	public static Self Center(Self a, Self b)
	{
		Self c;
		glmc_vec3_center(a,b,out c);
		return c;
	}
	public static float Angle(Self a, Self b) => glmc_vec3_angle(a,b);
	public static float Distance(Self a, Self b) => glmc_vec3_distance(a,b);
	public static float DistanceSquared(Self a,Self b) => glmc_vec3_distance2(a,b);
	public static Self Max(Self a, Self b)
	{
		Self c;
		glmc_vec3_maxv(a,b,out c);
		return c;
	}
	public static Self Min(Self a, Self b)
	{
		Self c;
		glmc_vec3_minv(a,b,out c);
		return c;
	}
	public static Self Clamp(Self a, float min, float max)
	{
		Self c = .(a);
		glmc_vec3_clamp(out c,min,max);
		return c;
	}
	public static Self Abs(Self v)
	{
		Self b;
		glmc_vec3_abs(v, out b);
		return b;
	}
	public static Self Lerp(Self from, Self to, float time)
	{
		Self c;
		glmc_vec3_lerp(from,to,time,out c);
		return c;
	}
	public static Self LerpClamp(Self from, Self to, float time)
	{
		Self c;
		glmc_vec3_lerp(from,to,time,out c);
		return c;
	}
	public static Self ComplexMultiply(Self a, Self b)
	{
		Self c;
		glmc_vec3_complex_mul(a,b,out c);
		return c;
	}
	public static Self ComplexDivide(Self a, Self b)
	{
		Self c;
		glmc_vec3_complex_div(a,b,out c);
		return c;
	}
	public static Self ComplexConjugate(Self a)
	{
		Self b;
		glmc_vec3_complex_conjugate(a,out b);
		return b;
	}
	public static float ManhattanDistance (Self v) => glmc_vec3_norm_one(v);
	public static float InfinityNorm (Self v) => glmc_vec3_norm_inf(v);
	public static bool Equal(Self a, Self b) => glmc_vec3_eqv_eps(a,b);
	public static Self SquareRoot(Self v)
	{
		Self b;
		glmc_vec3_sqrt(v,out b);
		return b;
	}

	[CLink]
	private static extern void glmc_vec3(Vector4 v,out Self dest);
	[CLink]
	private static extern void glmc_copy(in Self a,out Self dest);
	[CLink]
	private static extern void glmc_vec3_zero(out Self v);
	[CLink]
	private static extern void glmc_vec3_one(out Self v);
	[CLink]
	private static extern float glmc_vec3_dot(in Self a,in Self b);
	[CLink]
	private static extern void glmc_vec3_cross(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_crossn(in Self a,in Self b, out Self c);
	[CLink]
	private static extern float glmc_vec3_norm(in Self v);
	[CLink]
	private static extern float glmc_vec3_norm2(in Self v);
	[CLink]
	private static extern float glmc_vec3_norm_one(in Self v);
	[CLink]
	private static extern float glmc_vec3_norm_inf(in Self v);
	[CLink]
	private static extern void glmc_vec3_add(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_adds(in Self a, float s, out Self c);
	[CLink]
	private static extern void glmc_vec3_sub(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_subs(in Self a, float s, out Self c);
	[CLink]
	private static extern void glmc_vec3_mult(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_scale(in Self a,float s, out Self c);
	[CLink]
	private static extern void glmc_vec3_scale_as(in Self a,float s, out Self c);
	[CLink]
	private static extern void glmc_vec3_div(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_divs(in Self a,float s, out Self c);
	[CLink]
	private static extern void glmc_vec3_negate(in Self v);
	[CLink]
	private static extern void glmc_vec3_normalize(in Self v);
	[CLink]
	private static extern float glmc_vec3_angle(in Self a, in Self b);
	[CLink]
	private static extern void glmc_vec3_rotate(out Self a, float angle, in Self axis);
	[CLink]
	private static extern void glmc_vec3_rotate_m4(in Mat4 m,in Self v,out Self c);
	[CLink]
	private static extern void glmc_vec3_rotate_m3(in Mat3 m,in Self v,out Self c);
	[CLink]
	private static extern void glmc_vec3_proj(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_center(in Self a, in Self b, out Self c);
	[CLink]
	private static extern float glmc_vec3_distance(in Self a, in Self b);
	[CLink]
	private static extern float glmc_vec3_distance2(in Self a, in Self b);
	[CLink]
	private static extern void glmc_vec3_maxv(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_minv(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_clamp(out Self a, float min, float max);
	[CLink]
	private static extern void glmc_vec3_abs(in Self a, out Self b);
	[CLink]
	private static extern void glmc_vec3_lerp(in Self a, in Self b, float t, out Self c);
	[CLink]
	private static extern void glmc_vec3_lerpc(in Self a, in Self b, float t, out Self c);
	[CLink]
	private static extern void glmc_vec3_complex_mul(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_complex_div(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_complex_conjugate(in Self a,out Self b);
	[CLink]
	private static extern void glmc_vec3_addadd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_subadd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_muladd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_muladds(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_maxadd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_minadd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec3_step(in Self e, in Self x, out Self d);
	[CLink]
	private static extern void glmc_vec3_step_uni(float e, in Self x, out Self d);
	[CLink]
	private static extern void glmc_vec3_smoothstep(in Self e0,in Self e1, in Self x, out Self d);
	[CLink]
	private static extern void glmc_vec3_smoothstep_uni(float e0,float e1, in Self x, out Self d);
	[CLink]
	private static extern void glmc_vec3_smoothinterp(in Self from, in Self to,float t, out Self d);
	[CLink]
	private static extern void glmc_vec3_smoothinterpc(in Self from, in Self to,float t, out Self d);
	[CLink]
	private static extern bool glmc_vec3_eqv_eps(in Self a, in Self b);
	[CLink]
	private static extern bool glmc_vec3_sqrt(in Self a, out Self b);

	public static operator float[2](Self v)
	{
		float[2] c = .(v.X,v.Y);

		return c;
	}
	public static operator float[3](Self v) => v.Value;
	public static operator float[4](Self v)
	{
		float[4] c = .(v.X,v.Y,v.Z,0);

		return c;
	}

	public static operator Vector2(Self v) => (.)v;
	public static operator Vector4(Self v) => (.)v;
	public static operator StringView(Self v) => v.Value.ToString(.. scope .());
}