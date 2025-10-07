package j$.time;

import j$.time.chrono.AbstractC1338i;
import j$.time.temporal.ChronoUnit;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes4.dex */
public final class y implements j$.time.temporal.l, j$.time.temporal.o, Comparable, Serializable {
    private static final long serialVersionUID = 4183400860270640070L;
    private final int a;
    private final int b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        y yVar = (y) obj;
        int i = this.a - yVar.a;
        return i == 0 ? this.b - yVar.b : i;
    }

    static {
        j$.time.format.o oVar = new j$.time.format.o();
        oVar.l(j$.time.temporal.a.YEAR, 4, 10, j$.time.format.v.EXCEEDS_PAD);
        oVar.e('-');
        oVar.k(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        oVar.v();
    }

    private y(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    private y H(int i, int i2) {
        return (this.a == i && this.b == i2) ? this : new y(i, i2);
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.YEAR || qVar == j$.time.temporal.a.MONTH_OF_YEAR || qVar == j$.time.temporal.a.PROLEPTIC_MONTH || qVar == j$.time.temporal.a.YEAR_OF_ERA || qVar == j$.time.temporal.a.ERA : qVar != null && qVar.m(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.v.j(1L, this.a <= 0 ? 1000000000L : 999999999L);
        }
        return j$.time.temporal.m.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final int k(j$.time.temporal.q qVar) {
        return n(qVar).a(s(qVar), qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            int i = x.a[((j$.time.temporal.a) qVar).ordinal()];
            if (i == 1) {
                return this.b;
            }
            if (i == 2) {
                return C();
            }
            int i2 = this.a;
            if (i == 3) {
                if (i2 < 1) {
                    i2 = 1 - i2;
                }
                return i2;
            }
            if (i == 4) {
                return i2;
            }
            if (i == 5) {
                return i2 < 1 ? 0 : 1;
            }
            throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        return qVar.k(this);
    }

    private long C() {
        return ((this.a * 12) + this.b) - 1;
    }

    @Override // j$.time.temporal.l
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public final y d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            aVar.C(j);
            int i = x.a[aVar.ordinal()];
            int i2 = this.a;
            if (i == 1) {
                int i3 = (int) j;
                j$.time.temporal.a.MONTH_OF_YEAR.C(i3);
                return H(i2, i3);
            }
            if (i == 2) {
                return E(j - C());
            }
            int i4 = this.b;
            if (i == 3) {
                if (i2 < 1) {
                    j = 1 - j;
                }
                int i5 = (int) j;
                j$.time.temporal.a.YEAR.C(i5);
                return H(i5, i4);
            }
            if (i == 4) {
                int i6 = (int) j;
                j$.time.temporal.a.YEAR.C(i6);
                return H(i6, i4);
            }
            if (i != 5) {
                throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
            }
            if (s(j$.time.temporal.a.ERA) == j) {
                return this;
            }
            int i7 = 1 - i2;
            j$.time.temporal.a.YEAR.C(i7);
            return H(i7, i4);
        }
        return (y) qVar.n(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final y e(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof ChronoUnit) {
            switch (x.b[((ChronoUnit) tVar).ordinal()]) {
                case 1:
                    return E(j);
                case 2:
                    return F(j);
                case 3:
                    return F(j$.com.android.tools.r8.a.k(j, 10));
                case 4:
                    return F(j$.com.android.tools.r8.a.k(j, 100));
                case 5:
                    return F(j$.com.android.tools.r8.a.k(j, 1000));
                case 6:
                    j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                    return d(j$.com.android.tools.r8.a.e(s(aVar), j), aVar);
                default:
                    throw new RuntimeException("Unsupported unit: " + tVar);
            }
        }
        return (y) tVar.j(this, j);
    }

    public final y F(long j) {
        return j == 0 ? this : H(j$.time.temporal.a.YEAR.w(this.a + j), this.b);
    }

    public final y E(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.a * 12) + (this.b - 1) + j;
        long j3 = 12;
        return H(j$.time.temporal.a.YEAR.w(j$.com.android.tools.r8.a.j(j2, j3)), ((int) j$.com.android.tools.r8.a.i(j2, j3)) + 1);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l j(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? e(Long.MAX_VALUE, chronoUnit).e(1L, chronoUnit) : e(-j, chronoUnit);
    }

    @Override // j$.time.temporal.n
    public final Object v(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.e()) {
            return j$.time.chrono.u.d;
        }
        if (sVar == j$.time.temporal.m.i()) {
            return ChronoUnit.MONTHS;
        }
        return j$.time.temporal.m.c(this, sVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        if (!AbstractC1338i.p(lVar).equals(j$.time.chrono.u.d)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        return lVar.d(C(), j$.time.temporal.a.PROLEPTIC_MONTH);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return this.a == yVar.a && this.b == yVar.b;
    }

    public final int hashCode() {
        return (this.b << 27) ^ this.a;
    }

    public final String toString() {
        int i = this.a;
        int abs = Math.abs(i);
        StringBuilder sb = new StringBuilder(9);
        if (abs >= 1000) {
            sb.append(i);
        } else if (i < 0) {
            sb.append(i - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        int i2 = this.b;
        sb.append(i2 < 10 ? "-0" : "-");
        sb.append(i2);
        return sb.toString();
    }

    private Object writeReplace() {
        return new u((byte) 12, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void J(DataOutput dataOutput) {
        dataOutput.writeInt(this.a);
        dataOutput.writeByte(this.b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y G(ObjectInput objectInput) {
        int readInt = objectInput.readInt();
        byte readByte = objectInput.readByte();
        j$.time.temporal.a.YEAR.C(readInt);
        j$.time.temporal.a.MONTH_OF_YEAR.C(readByte);
        return new y(readInt, readByte);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l m(h hVar) {
        return (y) AbstractC1338i.a(hVar, this);
    }
}
