package j$.time;

import j$.time.chrono.AbstractC1338i;
import j$.time.chrono.InterfaceC1331b;
import j$.time.chrono.InterfaceC1334e;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes4.dex */
public final class h implements j$.time.temporal.l, j$.time.temporal.o, InterfaceC1331b, Serializable {
    public static final h d = N(-999999999, 1, 1);
    public static final h e = N(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;
    private final int a;
    private final short b;
    private final short c;

    static {
        N(1970, 1, 1);
    }

    public static h O(int i, n nVar, int i2) {
        j$.time.temporal.a.YEAR.C(i);
        Objects.requireNonNull(nVar, "month");
        j$.time.temporal.a.DAY_OF_MONTH.C(i2);
        return D(i, nVar.getValue(), i2);
    }

    public static h N(int i, int i2, int i3) {
        j$.time.temporal.a.YEAR.C(i);
        j$.time.temporal.a.MONTH_OF_YEAR.C(i2);
        j$.time.temporal.a.DAY_OF_MONTH.C(i3);
        return D(i, i2, i3);
    }

    public static h P(long j) {
        long j2;
        j$.time.temporal.a.EPOCH_DAY.C(j);
        long j3 = 719468 + j;
        if (j3 < 0) {
            long j4 = ((j + 719469) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((j5 / 400) + (((j5 / 4) + (j5 * 365)) - (j5 / 100)));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((j5 / 400) + (((j5 / 4) + (365 * j5)) - (j5 / 100)));
        }
        int i = (int) j6;
        int i2 = ((i * 5) + 2) / 153;
        return new h(j$.time.temporal.a.YEAR.w(j5 + j2 + (i2 / 10)), ((i2 + 2) % 12) + 1, (i - (((i2 * 306) + 5) / 10)) + 1);
    }

    public static h E(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        h hVar = (h) nVar.v(j$.time.temporal.m.f());
        if (hVar != null) {
            return hVar;
        }
        throw new RuntimeException("Unable to obtain LocalDate from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName());
    }

    private static h D(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else {
                j$.time.chrono.u.d.getClass();
                if (j$.time.chrono.u.m(i)) {
                    i4 = 29;
                }
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    throw new RuntimeException("Invalid date 'February 29' as '" + i + "' is not a leap year");
                }
                throw new RuntimeException("Invalid date '" + n.F(i2).name() + " " + i3 + "'");
            }
        }
        return new h(i, i2, i3);
    }

    private static h U(int i, int i2, int i3) {
        if (i2 == 2) {
            j$.time.chrono.u.d.getClass();
            i3 = Math.min(i3, j$.time.chrono.u.m((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new h(i, i2, i3);
    }

    private h(int i, int i2, int i3) {
        this.a = i;
        this.b = (short) i2;
        this.c = (short) i3;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        return AbstractC1338i.h(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            if (aVar.v()) {
                int i = g.a[aVar.ordinal()];
                if (i == 1) {
                    return j$.time.temporal.v.j(1L, M());
                }
                if (i == 2) {
                    return j$.time.temporal.v.j(1L, L() ? 366 : 365);
                }
                if (i == 3) {
                    return j$.time.temporal.v.j(1L, (n.F(this.b) != n.FEBRUARY || L()) ? 5L : 4L);
                }
                if (i != 4) {
                    return ((j$.time.temporal.a) qVar).j();
                }
                return j$.time.temporal.v.j(1L, this.a <= 0 ? 1000000000L : 999999999L);
            }
            throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        return qVar.s(this);
    }

    @Override // j$.time.temporal.n
    public final int k(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            return F(qVar);
        }
        return j$.time.temporal.m.a(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            if (qVar == j$.time.temporal.a.EPOCH_DAY) {
                return t();
            }
            if (qVar != j$.time.temporal.a.PROLEPTIC_MONTH) {
                return F(qVar);
            }
            return ((this.a * 12) + this.b) - 1;
        }
        return qVar.k(this);
    }

    private int F(j$.time.temporal.q qVar) {
        int i;
        int i2 = g.a[((j$.time.temporal.a) qVar).ordinal()];
        short s = this.c;
        int i3 = this.a;
        switch (i2) {
            case 1:
                return s;
            case 2:
                return H();
            case 3:
                i = (s - 1) / 7;
                break;
            case 4:
                return i3 >= 1 ? i3 : 1 - i3;
            case 5:
                return G().getValue();
            case 6:
                i = (s - 1) % 7;
                break;
            case 7:
                return ((H() - 1) % 7) + 1;
            case 8:
                throw new RuntimeException("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((H() - 1) / 7) + 1;
            case 10:
                return this.b;
            case 11:
                throw new RuntimeException("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return i3;
            case 13:
                return i3 >= 1 ? 1 : 0;
            default:
                throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        return i + 1;
    }

    @Override // j$.time.chrono.InterfaceC1331b
    public final j$.time.chrono.n a() {
        return j$.time.chrono.u.d;
    }

    public final int J() {
        return this.a;
    }

    public final int I() {
        return this.b;
    }

    public final int H() {
        return (n.F(this.b).C(L()) + this.c) - 1;
    }

    public final e G() {
        return e.C(((int) j$.com.android.tools.r8.a.i(t() + 3, 7)) + 1);
    }

    public final boolean L() {
        j$.time.chrono.u uVar = j$.time.chrono.u.d;
        long j = this.a;
        uVar.getClass();
        return j$.time.chrono.u.m(j);
    }

    public final int M() {
        short s = this.b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : L() ? 29 : 28;
    }

    @Override // j$.time.temporal.l
    /* renamed from: W, reason: merged with bridge method [inline-methods] */
    public final h m(j$.time.temporal.o oVar) {
        if (oVar instanceof h) {
            return (h) oVar;
        }
        return (h) oVar.w(this);
    }

    @Override // j$.time.temporal.l
    /* renamed from: V, reason: merged with bridge method [inline-methods] */
    public final h d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            aVar.C(j);
            int i = g.a[aVar.ordinal()];
            short s = this.c;
            short s2 = this.b;
            int i2 = this.a;
            switch (i) {
                case 1:
                    int i3 = (int) j;
                    return s == i3 ? this : N(i2, s2, i3);
                case 2:
                    return X((int) j);
                case 3:
                    return R(j$.com.android.tools.r8.a.k(j - s(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH), 7));
                case 4:
                    if (i2 < 1) {
                        j = 1 - j;
                    }
                    return Y((int) j);
                case 5:
                    return R(j - G().getValue());
                case 6:
                    return R(j - s(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
                case 7:
                    return R(j - s(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
                case 8:
                    return P(j);
                case 9:
                    return R(j$.com.android.tools.r8.a.k(j - s(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR), 7));
                case 10:
                    int i4 = (int) j;
                    if (s2 == i4) {
                        return this;
                    }
                    j$.time.temporal.a.MONTH_OF_YEAR.C(i4);
                    return U(i2, i4, s);
                case 11:
                    return S(j - (((i2 * 12) + s2) - 1));
                case 12:
                    return Y((int) j);
                case 13:
                    return s(j$.time.temporal.a.ERA) == j ? this : Y(1 - i2);
                default:
                    throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
            }
        }
        return (h) qVar.n(this, j);
    }

    public final h Y(int i) {
        if (this.a == i) {
            return this;
        }
        j$.time.temporal.a.YEAR.C(i);
        return U(i, this.b, this.c);
    }

    public final h X(int i) {
        if (H() == i) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int i2 = this.a;
        long j = i2;
        aVar.C(j);
        j$.time.temporal.a.DAY_OF_YEAR.C(i);
        j$.time.chrono.u.d.getClass();
        boolean m = j$.time.chrono.u.m(j);
        if (i == 366 && !m) {
            throw new RuntimeException("Invalid date 'DayOfYear 366' as '" + i2 + "' is not a leap year");
        }
        n F = n.F(((i - 1) / 31) + 1);
        if (i > (F.D(m) + F.C(m)) - 1) {
            F = F.G();
        }
        return new h(i2, F.getValue(), (i - F.C(m)) + 1);
    }

    @Override // j$.time.temporal.l
    /* renamed from: Q, reason: merged with bridge method [inline-methods] */
    public final h e(long j, j$.time.temporal.t tVar) {
        if (!(tVar instanceof ChronoUnit)) {
            return (h) tVar.j(this, j);
        }
        switch (g.b[((ChronoUnit) tVar).ordinal()]) {
            case 1:
                return R(j);
            case 2:
                return R(j$.com.android.tools.r8.a.k(j, 7));
            case 3:
                return S(j);
            case 4:
                return T(j);
            case 5:
                return T(j$.com.android.tools.r8.a.k(j, 10));
            case 6:
                return T(j$.com.android.tools.r8.a.k(j, 100));
            case 7:
                return T(j$.com.android.tools.r8.a.k(j, 1000));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return d(j$.com.android.tools.r8.a.e(s(aVar), j), aVar);
            default:
                throw new RuntimeException("Unsupported unit: " + tVar);
        }
    }

    public final h T(long j) {
        return j == 0 ? this : U(j$.time.temporal.a.YEAR.w(this.a + j), this.b, this.c);
    }

    public final h S(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.a * 12) + (this.b - 1) + j;
        long j3 = 12;
        return U(j$.time.temporal.a.YEAR.w(j$.com.android.tools.r8.a.j(j2, j3)), ((int) j$.com.android.tools.r8.a.i(j2, j3)) + 1, this.c);
    }

    public final h R(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.c + j;
        if (j2 > 0) {
            short s = this.b;
            int i = this.a;
            if (j2 <= 28) {
                return new h(i, s, (int) j2);
            }
            if (j2 <= 59) {
                long M = M();
                if (j2 <= M) {
                    return new h(i, s, (int) j2);
                }
                if (s < 12) {
                    return new h(i, s + 1, (int) (j2 - M));
                }
                int i2 = i + 1;
                j$.time.temporal.a.YEAR.C(i2);
                return new h(i2, 1, (int) (j2 - M));
            }
        }
        return P(j$.com.android.tools.r8.a.e(t(), j));
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l j(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? e(Long.MAX_VALUE, chronoUnit).e(1L, chronoUnit) : e(-j, chronoUnit);
    }

    @Override // j$.time.temporal.n
    public final Object v(j$.time.temporal.s sVar) {
        return sVar == j$.time.temporal.m.f() ? this : AbstractC1338i.j(this, sVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        return AbstractC1338i.a(this, lVar);
    }

    @Override // j$.time.chrono.InterfaceC1331b
    public final InterfaceC1334e u(l lVar) {
        return j.K(this, lVar);
    }

    @Override // j$.time.chrono.InterfaceC1331b
    public final long t() {
        long j = this.a;
        long j2 = this.b;
        long j3 = 365 * j;
        long j4 = (((367 * j2) - 362) / 12) + (j >= 0 ? ((j + 399) / 400) + (((3 + j) / 4) - ((99 + j) / 100)) + j3 : j3 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + (this.c - 1);
        if (j2 > 2) {
            j4 = !L() ? j4 - 2 : j4 - 1;
        }
        return j4 - 719528;
    }

    @Override // java.lang.Comparable
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC1331b interfaceC1331b) {
        if (interfaceC1331b instanceof h) {
            return C((h) interfaceC1331b);
        }
        return AbstractC1338i.b(this, interfaceC1331b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int C(h hVar) {
        int i = this.a - hVar.a;
        if (i != 0) {
            return i;
        }
        int i2 = this.b - hVar.b;
        return i2 == 0 ? this.c - hVar.c : i2;
    }

    public final boolean K(h hVar) {
        return hVar instanceof h ? C(hVar) < 0 : t() < hVar.t();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h) && C((h) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC1331b
    public final int hashCode() {
        int i = this.a;
        return (((i << 11) + (this.b << 6)) + this.c) ^ (i & (-2048));
    }

    @Override // j$.time.chrono.InterfaceC1331b
    public final String toString() {
        int i = this.a;
        int abs = Math.abs(i);
        StringBuilder sb = new StringBuilder(10);
        if (abs >= 1000) {
            if (i > 9999) {
                sb.append('+');
            }
            sb.append(i);
        } else if (i < 0) {
            sb.append(i - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        short s = this.b;
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        short s2 = this.c;
        sb.append(s2 < 10 ? "-0" : "-");
        sb.append((int) s2);
        return sb.toString();
    }

    private Object writeReplace() {
        return new u((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void Z(DataOutput dataOutput) {
        dataOutput.writeInt(this.a);
        dataOutput.writeByte(this.b);
        dataOutput.writeByte(this.c);
    }
}
