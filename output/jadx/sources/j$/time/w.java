package j$.time;

import j$.time.chrono.AbstractC1338i;
import j$.time.temporal.ChronoUnit;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes4.dex */
public final class w implements j$.time.temporal.l, j$.time.temporal.o, Comparable, Serializable {
    public static final /* synthetic */ int b = 0;
    private static final long serialVersionUID = -23038383694477807L;
    private final int a;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.a - ((w) obj).a;
    }

    static {
        j$.time.format.o oVar = new j$.time.format.o();
        oVar.l(j$.time.temporal.a.YEAR, 4, 10, j$.time.format.v.EXCEEDS_PAD);
        oVar.v();
    }

    public static w C(int i) {
        j$.time.temporal.a.YEAR.C(i);
        return new w(i);
    }

    private w(int i) {
        this.a = i;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.YEAR || qVar == j$.time.temporal.a.YEAR_OF_ERA || qVar == j$.time.temporal.a.ERA : qVar != null && qVar.m(this);
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
            int i = v.a[((j$.time.temporal.a) qVar).ordinal()];
            int i2 = this.a;
            if (i == 1) {
                if (i2 < 1) {
                    i2 = 1 - i2;
                }
                return i2;
            }
            if (i == 2) {
                return i2;
            }
            if (i == 3) {
                return i2 < 1 ? 0 : 1;
            }
            throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        return qVar.k(this);
    }

    @Override // j$.time.temporal.l
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public final w d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            aVar.C(j);
            int i = v.a[aVar.ordinal()];
            int i2 = this.a;
            if (i == 1) {
                if (i2 < 1) {
                    j = 1 - j;
                }
                return C((int) j);
            }
            if (i == 2) {
                return C((int) j);
            }
            if (i == 3) {
                return s(j$.time.temporal.a.ERA) == j ? this : C(1 - i2);
            }
            throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        return (w) qVar.n(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final w e(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof ChronoUnit) {
            int i = v.b[((ChronoUnit) tVar).ordinal()];
            if (i == 1) {
                return E(j);
            }
            if (i == 2) {
                return E(j$.com.android.tools.r8.a.k(j, 10));
            }
            if (i == 3) {
                return E(j$.com.android.tools.r8.a.k(j, 100));
            }
            if (i == 4) {
                return E(j$.com.android.tools.r8.a.k(j, 1000));
            }
            if (i == 5) {
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return d(j$.com.android.tools.r8.a.e(s(aVar), j), aVar);
            }
            throw new RuntimeException("Unsupported unit: " + tVar);
        }
        return (w) tVar.j(this, j);
    }

    public final w E(long j) {
        return j == 0 ? this : C(j$.time.temporal.a.YEAR.w(this.a + j));
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
            return ChronoUnit.YEARS;
        }
        return j$.time.temporal.m.c(this, sVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        if (!AbstractC1338i.p(lVar).equals(j$.time.chrono.u.d)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        return lVar.d(this.a, j$.time.temporal.a.YEAR);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof w) {
            return this.a == ((w) obj).a;
        }
        return false;
    }

    public final int hashCode() {
        return this.a;
    }

    public final String toString() {
        return Integer.toString(this.a);
    }

    private Object writeReplace() {
        return new u((byte) 11, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void G(DataOutput dataOutput) {
        dataOutput.writeInt(this.a);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l m(h hVar) {
        return (w) AbstractC1338i.a(hVar, this);
    }
}
