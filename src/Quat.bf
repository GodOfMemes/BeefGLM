using System;

namespace BeefGLM;

struct Quat
{
	internal float[4] Value;

	public this()
	{
		Value = .Identity;
	}

	public this(float x, float y, float z, float w = 1)
	{
		glmc_quat_init(out this,x,y,z,w);
	}

	public static Self CreateWithAngle(float x, float y, float z, float angle)
	{
		Self q;
		glmc_quat(out q,angle,x,y,z);
		return q;
	}

	public static Self CreateFromTwoVec(Vector3 a, Vector3 b)
	{
		Self q;
		glmc_quat_from_vecs(a,b,out q);
		return q;
	}

	public static Self CreateFromAxisVec(Vector3 axis,float angle)
	{
		Self q;
		glmc_quatv(out q,angle,axis);
		return q;
	}

	public static Self Identity
	{
		get
		{
			Self m;
			glmc_quat_identity(out m);
			return m;
		}
	}

	public float Length => glmc_quat_norm(this);

	public void Normalize() mut => this = Normalize(this);
	public float Dot(Self b) => Dot(this,b);
	public Quat Invert() mut => this = Invert(this);
	public Quat Add(Self b) mut => this = Add(this,b);
	public Quat Subtract(Self b) mut => this = Subtract(this,b);
	public Quat Multiply(Self b) mut => this = Multiply(this,b);
	public float GetReal() => GetReal(this);
	public float GetAngle() => GetAngle(this);
	public Vector3 GetAxis() => GetAxis(this);

	public static Self Normalize(Self q)
	{
		Self qu;
		glmc_quat_normalize(out qu);
		return qu;
	}

	public static float Dot(Self a, Self b) => glmc_quat_dot(a,b);
	public Quat Add(Self a,Self b)
	{
		Self c;
		glmc_quat_add(a,b,out c);
		return c;
	}
	public Quat Subtract(Self a,Self b)
	{
		Self c;
		glmc_quat_sub(a,b,out c);
		return c;
	}
	public Quat Multiply(Self a,Self b)
	{
		Self c;
		glmc_quat_mul(a,b,out c);
		return c;
	}
	public static Quat Invert(Self q)
	{
		Self p;
		glmc_quat_inv(q,out p);
		return p;
	}
	public static float GetReal(Self q) => glmc_quat_real(q);
	public static float GetAngle(Self q) => glmc_quat_angle(q);
	public static Vector3 GetAxis(Self q)
	{
		Vector3 a;
		glmc_quat_axis(q,out a);
		return a;
	}
	public static Mat4 ToTransposedMat4(Self q)
	{
		Mat4 a;
		glmc_quat_mat4t(q,out a);
		return a;
	}
	public static Mat3 ToTransposedMat3(Self q)
	{
		Mat3 a;
		glmc_quat_mat3t(q,out a);
		return a;
	}

	public static Self Lerp(Self from,Self to, float time)
	{
		Self a;
		glmc_quat_lerp(from,to,time,out a);
		return a;
	}
	public static Self LerpClamped(Self from,Self to, float time)
	{
		Self a;
		glmc_quat_lerpc(from,to,time,out a);
		return a;
	}
	public static Self NLerp(Self from,Self to, float time)
	{
		Self a;
		glmc_quat_nlerp(from,to,time,out a);
		return a;
	}
	public static Self SLerp(Self from,Self to, float time)
	{
		Self a;
		glmc_quat_slerp(from,to,time,out a);
		return a;
	}

	public static Mat4 Look(Vector3 eye, Self orientation)
	{
		Mat4 a;
		glmc_quat_look(eye, orientation,out a);
		return a;
	}

	public static Self CreateLookRotationQuat(Vector3 dir,Vector3 up)
	{
		Self a;
		glmc_quat_for(dir, up,out a);
		return a;
	}

	public static Self CreateLookRotationQuat(Vector3 from,Vector3 to,Vector3 up)
	{
		Self a;
		glmc_quat_forp(from,to,up,out a);
		return a;
	}

	public static Vector3 Rotate(Self q, Vector3 v)
	{
		Vector3 d;
		glmc_quat_rotatev(q,v, out d);
		return d;
	}
	public static Mat4 Rotate(Self q, Mat4 m)
	{
		Mat4 d;
		glmc_quat_rotate(m,q, out d);
		return d;
	}

	public static Vector3 RotateAt(Self q, ref Mat4 m)
	{
		Vector3 d;
		glmc_quat_rotate_at(m,q, out d);
		return d;
	}

	public static Mat4 RotateAt(Self q, Vector3 pivot)
	{
		Mat4 m;
		glmc_quat_rotate_atm(out m,q, pivot);
		return m;
	}

	[CLink]
	private static extern void glmc_quat_identity(out Self q);
	[CLink]
	private static extern void glmc_quat_init(out Self q,float x,float y, float z, float w);
	[CLink]
	private static extern void glmc_quat(out Self q,float angle,float x,float y, float z);
	[CLink]
	private static extern void glmc_quatv(out Self q,float angle,in Vector3 axis);
	[CLink]
	private static extern void glmc_quat_from_vecs(in Vector3 a, in Vector3 b,out Self q);
	[CLink]
	private static extern float glmc_quat_norm(in Self q);
	[CLink]
	private static extern void glmc_quat_normalize(out Self q);
	[CLink]
	private static extern float glmc_quat_dot(in Self q1, in Self q2);
	[CLink]
	private static extern void glmc_quat_conjugate(in Self q, out Self p);
	[CLink]
	private static extern void glmc_quat_inv(in Self q,out Self p);
	[CLink]
	private static extern void glmc_quat_add(in Self q1, in Self q2, out Self q3);
	[CLink]
	private static extern void glmc_quat_sub(in Self q1, in Self q2, out Self q3);
	[CLink]
	private static extern float glmc_quat_real(in Self q1);
	[CLink]
	private static extern float glmc_quat_angle(in Self q1);
	[CLink]
	private static extern void glmc_quat_axis(in Self q, out Vector3 ax);
	[CLink]
	private static extern void glmc_quat_mul(in Self q, in Self p, out Self qp);
	[CLink]
	private static extern void glmc_quat_mat4(in Self q, out Mat4 m);
	[CLink]
	private static extern void glmc_quat_mat4t(in Self q, out Mat4 m);
	[CLink]
	private static extern void glmc_quat_mat3(in Self q, out Mat3 m);
	[CLink]
	private static extern void glmc_quat_mat3t(in Self q, out Mat3 m);
	[CLink]
	private static extern void glmc_quat_lerp(in Self from, in Self to, float t, out Self d);
	[CLink]
	private static extern void glmc_quat_lerpc(in Self from, in Self to, float t, out Self d);
	[CLink]
	private static extern void glmc_quat_nlerp(in Self from, in Self to, float t, out Self d);
	[CLink]
	private static extern void glmc_quat_slerp(in Self from, in Self to, float t, out Self d);
	[CLink]
	private static extern void glmc_quat_look(in Vector3 e, in Self o, out Mat4 d);
	[CLink]
	private static extern void glmc_quat_for(in Vector3 d, in Vector3 u, out Self q);
	[CLink]
	private static extern void glmc_quat_forp(in Vector3 f,in Vector3 t, in Vector3 u, out Self q);
	[CLink]
	private static extern void glmc_quat_rotatev(in Self q,in Vector3 v, out Vector3 d);
	[CLink]
	private static extern void glmc_quat_rotate(in Mat4 m, in Self q, out Mat4 d);
	[CLink]
	private static extern void glmc_quat_rotate_at(in Mat4 m, in Self q, out Vector3 p);
	[CLink]
	private static extern void glmc_quat_rotate_atm(out Mat4 m, in Self q, in Vector3 p);

	public static operator float[4](Self v) => v.Value;
	public static operator Vector4(Self v) => (.)v;
	public static operator Mat4(Self v)
	{
		Mat4 m;
		glmc_quat_mat4(v,out m);
		return m;
	}
	public static operator Mat3(Self v)
	{
		Mat3 m;
		glmc_quat_mat3(v,out m);
		return m;
	}
}