using System;

namespace BeefGLM;

public struct Vector4
{
	internal float[4] Value;

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

	public float W
	{
		get => Value[3];
		set mut => Value[3] = value;
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

	public this(float x, float y, float z) : this(x,y,z,0)
	{
	}

	public this(float x, float y, float z, float w)
	{
		Value = .(x,y,z,w);
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
		this = vec;
	}
	
	public static Self Zero
	{
		get
		{
			Self a;
			glmc_vec4_zero(out a);
			return a;
		}
	}

	public static Self One
	{
		get
		{
			Self a;
			glmc_vec4_one(out a);
			return a;
		}
	}

	public float Length => glmc_vec4_norm(this);
	public float LengthSq => glmc_vec4_norm2(this);

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

	public static float Dot(Self a,Self b) => glmc_vec4_dot(a,b);
	public static Self Cross(Self a,Self b)
	{
		Self c;
		glmc_vec4_cross(a,b,out c);
		return c;
	}
	public static Self CrossNormalize(Self a,Self b)
	{
		Self c;
		glmc_vec4_crossn(a,b,out c);
		return c;
	}
	public static Self Add(Self a, Self b)
	{
		Self c = .Zero;
		glmc_vec4_add(a,b,out c);
		return c;
	}
	public static Self Add(Self a, float s)
	{
		Self c = .Zero;
		glmc_vec4_adds(a,s,out c);
		return c;
	}
	public static Self Subtract(Self a, Self b)
	{
		Self c = .();
		glmc_vec4_sub(a,b,out c);
		return c;
	}
	public static Self Subtract(Self a, float s)
	{
		Self c = .();
		glmc_vec4_subs(a,s,out c);
		return c;
	}
	public static Self Multiply(Self a, Self b)
	{
		Self c = .();
		glmc_vec4_mult(a,b,out c);
		return c;
	}
	public static Self Scale(Self a, float s)
	{
		Self c = .();
		glmc_vec4_scale(a,s,out c);
		return c;
	}
	public static Self ScaleVector(Self a, float s)
	{
		Self c = .();
		glmc_vec4_scale_as(a,s,out c);
		return c;
	}
	public static Self Divide(Self a, Self b)
	{
		Self c = .();
		glmc_vec4_div(a,b,out c);
		return c;
	}
	public static Self Divide(Self a, float s)
	{
		Self c = .();
		glmc_vec4_divs(a,s,out c);
		return c;
	}
	public static Self Negate(Self v)
	{
		glmc_vec4_negate(v);
		return v;
	}
	public static Self Normalize(Self v)
	{
		glmc_vec4_normalize(v);
		return v;
	}
	public static Self Rotate(Self v, float angle, Self axis)
	{
		Self c = v;
		glmc_vec4_rotate(out c, angle,axis);
		return c;
	}
	public static Self Rotate(Mat4 m, Self v)
	{
		Self c;
		glmc_vec4_rotate_m4(m,v,out c);
		return c;
	}
	public static Self Rotate(Mat3 m, Self v)
	{
		Self c;
		glmc_vec4_rotate_m3(m,v,out c);
		return c;
	}
	public static Self Project(Self a, Self b)
	{
		Self c;
		glmc_vec4_proj(a,b,out c);
		return c;
	}
	public static Self Center(Self a, Self b)
	{
		Self c;
		glmc_vec4_center(a,b,out c);
		return c;
	}
	public static float Angle(Self a, Self b) => glmc_vec4_angle(a,b);
	public static float Distance(Self a, Self b) => glmc_vec4_distance(a,b);
	public static float DistanceSquared(Self a,Self b) => glmc_vec4_distance2(a,b);
	public static Self Max(Self a, Self b)
	{
		Self c;
		glmc_vec4_maxv(a,b,out c);
		return c;
	}
	public static Self Min(Self a, Self b)
	{
		Self c;
		glmc_vec4_minv(a,b,out c);
		return c;
	}
	public static Self Clamp(Self a, float min, float max)
	{
		Self c = .(a);
		glmc_vec4_clamp(out c,min,max);
		return c;
	}
	public static Self Abs(Self v)
	{
		Self b;
		glmc_vec4_abs(v, out b);
		return b;
	}
	public static Self Lerp(Self from, Self to, float time)
	{
		Self c;
		glmc_vec4_lerp(from,to,time,out c);
		return c;
	}
	public static Self LerpClamp(Self from, Self to, float time)
	{
		Self c;
		glmc_vec4_lerp(from,to,time,out c);
		return c;
	}
	public static Self ComplexMultiply(Self a, Self b)
	{
		Self c;
		glmc_vec4_complex_mul(a,b,out c);
		return c;
	}
	public static Self ComplexDivide(Self a, Self b)
	{
		Self c;
		glmc_vec4_complex_div(a,b,out c);
		return c;
	}
	public static Self ComplexConjugate(Self a)
	{
		Self b;
		glmc_vec4_complex_conjugate(a,out b);
		return b;
	}
	public static float ManhattanDistance (Self v) => glmc_vec4_norm_one(v);
	public static float InfinityNorm (Self v) => glmc_vec4_norm_inf(v);
	public static bool Equal(Self a, Self b) => glmc_vec4_eqv_eps(a,b);
	public static Self SquareRoot(Self v)
	{
		Self b;
		glmc_vec4_sqrt(v,out b);
		return b;
	}

	public static Self NormalizePlane(Self v)
	{
		var d = v;
		glmc_plane_normalize(v);
		return d;
	}

	[CLink]
	private static extern void glmc_copy(in Self a,out Self dest);
	[CLink]
	private static extern void glmc_vec4_zero(out Self v);
	[CLink]
	private static extern void glmc_vec4_one(out Self v);
	[CLink]
	private static extern float glmc_vec4_dot(in Self a,in Self b);
	[CLink]
	private static extern void glmc_vec4_cross(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_crossn(in Self a,in Self b, out Self c);
	[CLink]
	private static extern float glmc_vec4_norm(in Self v);
	[CLink]
	private static extern float glmc_vec4_norm2(in Self v);
	[CLink]
	private static extern float glmc_vec4_norm_one(in Self v);
	[CLink]
	private static extern float glmc_vec4_norm_inf(in Self v);
	[CLink]
	private static extern void glmc_vec4_add(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_adds(in Self a, float s, out Self c);
	[CLink]
	private static extern void glmc_vec4_sub(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_subs(in Self a, float s, out Self c);
	[CLink]
	private static extern void glmc_vec4_mult(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_scale(in Self a,float s, out Self c);
	[CLink]
	private static extern void glmc_vec4_scale_as(in Self a,float s, out Self c);
	[CLink]
	private static extern void glmc_vec4_div(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_divs(in Self a,float s, out Self c);
	[CLink]
	private static extern void glmc_vec4_negate(in Self v);
	[CLink]
	private static extern void glmc_vec4_normalize(in Self v);
	[CLink]
	private static extern float glmc_vec4_angle(in Self a, in Self b);
	[CLink]
	private static extern void glmc_vec4_rotate(out Self a, float angle, in Self axis);
	[CLink]
	private static extern void glmc_vec4_rotate_m4(in Mat4 m,in Self v,out Self c);
	[CLink]
	private static extern void glmc_vec4_rotate_m3(in Mat3 m,in Self v,out Self c);
	[CLink]
	private static extern void glmc_vec4_proj(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_center(in Self a, in Self b, out Self c);
	[CLink]
	private static extern float glmc_vec4_distance(in Self a, in Self b);
	[CLink]
	private static extern float glmc_vec4_distance2(in Self a, in Self b);
	[CLink]
	private static extern void glmc_vec4_maxv(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_minv(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_clamp(out Self a, float min, float max);
	[CLink]
	private static extern void glmc_vec4_abs(in Self a, out Self b);
	[CLink]
	private static extern void glmc_vec4_lerp(in Self a, in Self b, float t, out Self c);
	[CLink]
	private static extern void glmc_vec4_lerpc(in Self a, in Self b, float t, out Self c);
	[CLink]
	private static extern void glmc_vec4_complex_mul(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_complex_div(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_complex_conjugate(in Self a,out Self b);
	[CLink]
	private static extern void glmc_vec4_addadd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_subadd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_muladd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_muladds(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_maxadd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_minadd(in Self a,in Self b, out Self c);
	[CLink]
	private static extern void glmc_vec4_step(in Self e, in Self x, out Self d);
	[CLink]
	private static extern void glmc_vec4_step_uni(float e, in Self x, out Self d);
	[CLink]
	private static extern void glmc_vec4_smoothstep(in Self e0,in Self e1, in Self x, out Self d);
	[CLink]
	private static extern void glmc_vec4_smoothstep_uni(float e0,float e1, in Self x, out Self d);
	[CLink]
	private static extern void glmc_vec4_smoothinterp(in Self from, in Self to,float t, out Self d);
	[CLink]
	private static extern void glmc_vec4_smoothinterpc(in Self from, in Self to,float t, out Self d);
	[CLink]
	private static extern bool glmc_vec4_eqv_eps(in Self a, in Self b);
	[CLink]
	private static extern bool glmc_vec4_sqrt(in Self a, out Self b);
	[CLink]
	private static extern void glmc_plane_normalize(out Self v);

	public static operator float[2](Self v)
	{
		float[2] c = .(v.X,v.Y);

		return c;
	}
	public static operator float[3](Self v)
	{
		float[3] c = .(v.X,v.Y,0);

		return c;
	}
	public static operator float[4](Self v) => v.Value;

	public static operator Vector2(Self v) => (.)v;
	public static operator Vector3(Self v) => (.)v;
	public static operator StringView(Self v) => v.Value.ToString(.. scope .());
}