using System;
namespace BeefGLM;

struct Mat4
{
	private Vector4[4] Value;

	public this()
	{
		this = .Zero;
	}

	public this(Self m)
	{
		glmc_mat4_copy(m,out this);
	}

	public this(Vector3[3] vecArray)
	{
		Value = .(vecArray[0],vecArray[1],vecArray[2],.Zero);
	}

	public this(Vector4[4] vecArray)
	{
		Value = vecArray;
	}

	public this(params float[16] vecArray)
	{
		Vector4 a = .(vecArray[0],vecArray[1],vecArray[2],vecArray[3]);
		Vector4 b = .(vecArray[4],vecArray[5],vecArray[6],vecArray[7]);
		Vector4 c = .(vecArray[8],vecArray[9],vecArray[10],vecArray[11]);
		Vector4 d = .(vecArray[12],vecArray[13],vecArray[14],vecArray[15]);

		Value =  .(a,b,c,d);
	}

	public static Self Identity
	{
		get
		{
			Self m;
			glmc_mat4_identity(out m);
			return m;
		}
	}

	public static Self Zero
	{
		get
		{
			Self m;
			glmc_mat4_zero(out m);
			return m;
		}
	}

	public static Self operator -(Self v) => Inverse(v);

	public Self Inverse() mut => this = Inverse(this);

	public static Self Inverse(Self m)
	{
		Self i;
		glmc_mat4_inv(m,out i);
		return i;
	}
	public static Self Transpose(Self m)
	{
		var mt = m;
		glmc_mat4_transpose(out mt);
		return mt;
	}
	public static Self Multiply(Self a, Self b)
	{
		Self c;
		glmc_mat4_mul(a,b,out c);
		return c;
	}
	public static Vector3 Multiply(Self a, Vector3 b)
	{
		Vector3 c;
		glmc_mat4_mulv(a,b,out c);
		return c;
	}
	public static Self Scale(Self a, float s)
	{
		Self b = a;
		glmc_mat4_scale(out b,s);
		return b;
	}

	public static Quat ToQuaterion(Self m)
	{
		Quat q;
		glmc_mat4_quat(m,out q);
		return q;
	}

	[CLink]
	private static extern void glmc_mat4_copy(in Self m, out Self d);
	[CLink]
	private static extern void glmc_mat4_identity(out Self m);
	[CLink]
	private static extern void glmc_mat4_zero(out Self m);
	[CLink]
	private static extern void glmc_mat4_mul(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_mat4_transpose(out Self m);
	[CLink]
	private static extern void glmc_mat4_mulv(in Self m, in Vector3 v, out Vector3 d);
	[CLink]
	private static extern float glmc_mat4_trace(in Self m);
	[CLink]
	private static extern void glmc_mat4_quat(in Self m, out Quat q);
	[CLink]
	private static extern void glmc_mat4_scale(out Self m,float s);
	[CLink]
	private static extern void glmc_mat4_det(out Self m);
	[CLink]
	private static extern void glmc_mat4_inv(in Self m, out Self d);
	[CLink]
	private static extern void glmc_mat4_swap_col(in Self m, int c1, int c2);
	[CLink]
	private static extern void glmc_mat4_swap_row(in Self m, int r1, int r2);
	[CLink]
	private static extern float glmc_mat4_rmr(in Vector3 r, in Self m, in Vector3 c);

	public static operator Mat4(Vector4[4] m) => .(m);
	public static operator Quat(Self m) => ToQuaterion(m);
	public static operator StringView(Self v) => v.Value.ToString(.. scope .());
}