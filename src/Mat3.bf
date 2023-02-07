using System;
namespace BeefGLM;

struct Mat3
{
	private Vector3[3] Value;

	public this()
	{
		this = .Zero;
	}

	public this(Self m)
	{
		glmc_mat3_copy(m,out this);
	}

	public this(Vector3[3] vecArray)
	{
		Value = vecArray;
	}

	public this(params float[9] vecArray)
	{
		Vector3 a = .(vecArray[0],vecArray[1],vecArray[2]);
		Vector3 b = .(vecArray[3],vecArray[4],vecArray[5]);
		Vector3 c = .(vecArray[6],vecArray[7],vecArray[8]);

		Value =  .(a,b,c);
	}

	public static Self Identity
	{
		get
		{
			Self m;
			glmc_mat3_identity(out m);
			return m;
		}
	}

	public static Self Zero
	{
		get
		{
			Self m;
			glmc_mat3_zero(out m);
			return m;
		}
	}

	public static Self operator -(Self v) => Inverse(v);

	public Self Inverse() mut => this = Inverse(this);

	public static Self Inverse(Self m)
	{
		Self i;
		glmc_mat3_inv(m,out i);
		return i;
	}
	public static Self Transpose(Self m)
	{
		var mt = m;
		glmc_mat3_transpose(out mt);
		return mt;
	}
	public static Self Multiply(Self a, Self b)
	{
		Self c;
		glmc_mat3_mul(a,b,out c);
		return c;
	}
	public static Vector3 Multiply(Self a, Vector3 b)
	{
		Vector3 c;
		glmc_mat3_mulv(a,b,out c);
		return c;
	}
	public static Self Scale(Self a, float s)
	{
		Self b = a;
		glmc_mat3_scale(out b,s);
		return b;
	}

	public static Quat ToQuaterion(Self m)
	{
		Quat q;
		glmc_mat3_quat(m,out q);
		return q;
	}

	[CLink]
	private static extern void glmc_mat3_copy(in Self m, out Self d);
	[CLink]
	private static extern void glmc_mat3_identity(out Self m);
	[CLink]
	private static extern void glmc_mat3_zero(out Self m);
	[CLink]
	private static extern void glmc_mat3_mul(in Self a, in Self b, out Self c);
	[CLink]
	private static extern void glmc_mat3_transpose(out Self m);
	[CLink]
	private static extern void glmc_mat3_mulv(in Self m, in Vector3 v, out Vector3 d);
	[CLink]
	private static extern float glmc_mat3_trace(in Self m);
	[CLink]
	private static extern void glmc_mat3_quat(in Self m, out Quat q);
	[CLink]
	private static extern void glmc_mat3_scale(out Self m,float s);
	[CLink]
	private static extern void glmc_mat3_det(out Self m);
	[CLink]
	private static extern void glmc_mat3_inv(in Self m, out Self d);
	[CLink]
	private static extern void glmc_mat3_swap_col(in Self m, int c1, int c2);
	[CLink]
	private static extern void glmc_mat3_swap_row(in Self m, int r1, int r2);
	[CLink]
	private static extern float glmc_mat3_rmr(in Vector3 r, in Self m, in Vector3 c);

	public static operator Mat3(Vector3[3] m) => .(m);
	public static operator Quat(Self m) => ToQuaterion(m);
	public static operator StringView(Self v) => v.Value.ToString(.. scope .());
}