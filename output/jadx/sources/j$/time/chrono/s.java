package j$.time.chrono;

import j$.time.AbstractC1342d;
import j$.time.temporal.ChronoUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;

/* loaded from: classes4.dex */
public final class s extends AbstractC1333d {
    private static final long serialVersionUID = -5207853542612002020L;
    private final transient q a;
    private final transient int b;
    private final transient int c;
    private final transient int d;

    @Override // j$.time.chrono.InterfaceC1331b
    public final n a() {
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static s K(q qVar, int i, int i2, int i3) {
        return new s(qVar, i, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static s L(q qVar, long j) {
        return new s(qVar, j);
    }

    private s(q qVar, int i, int i2, int i3) {
        qVar.w(i, i2, i3);
        this.a = qVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    private s(q qVar, long j) {
        int[] C = qVar.C((int) j);
        this.a = qVar;
        this.b = C[0];
        this.c = C[1];
        this.d = C[2];
    }

    @Override // j$.time.chrono.AbstractC1333d
    public final o D() {
        return t.AH;
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.s(this);
        }
        if (AbstractC1338i.h(this, qVar)) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            int i = r.a[aVar.ordinal()];
            int i2 = this.b;
            q qVar2 = this.a;
            if (i == 1) {
                return j$.time.temporal.v.j(1L, qVar2.D(i2, this.c));
            }
            if (i == 2) {
                return j$.time.temporal.v.j(1L, qVar2.E(i2));
            }
            if (i == 3) {
                return j$.time.temporal.v.j(1L, 5L);
            }
            return qVar2.G(aVar);
        }
        throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            int i = r.a[((j$.time.temporal.a) qVar).ordinal()];
            int i2 = this.c;
            int i3 = this.d;
            int i4 = this.b;
            switch (i) {
                case 1:
                    return i3;
                case 2:
                    return J();
                case 3:
                    return ((i3 - 1) / 7) + 1;
                case 4:
                    return ((int) j$.com.android.tools.r8.a.i(t() + 3, 7)) + 1;
                case 5:
                    return ((i3 - 1) % 7) + 1;
                case 6:
                    return ((J() - 1) % 7) + 1;
                case 7:
                    return t();
                case 8:
                    return ((J() - 1) / 7) + 1;
                case 9:
                    return i2;
                case 10:
                    return ((i4 * 12) + i2) - 1;
                case 11:
                    return i4;
                case 12:
                    return i4;
                case 13:
                    return i4 <= 1 ? 0 : 1;
                default:
                    throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
            }
        }
        return qVar.k(this);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.l
    /* renamed from: P, reason: merged with bridge method [inline-methods] */
    public final s d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            q qVar2 = this.a;
            qVar2.G(aVar).b(j, aVar);
            int i = (int) j;
            int i2 = r.a[aVar.ordinal()];
            int i3 = this.d;
            int i4 = this.c;
            int i5 = this.b;
            switch (i2) {
                case 1:
                    return O(i5, i4, i);
                case 2:
                    return F(Math.min(i, qVar2.E(i5)) - J());
                case 3:
                    return F((j - s(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH)) * 7);
                case 4:
                    return F(j - (((int) j$.com.android.tools.r8.a.i(t() + 3, 7)) + 1));
                case 5:
                    return F(j - s(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
                case 6:
                    return F(j - s(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
                case 7:
                    return new s(qVar2, j);
                case 8:
                    return F((j - s(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR)) * 7);
                case 9:
                    return O(i5, i, i3);
                case 10:
                    return G(j - (((i5 * 12) + i4) - 1));
                case 11:
                    if (i5 < 1) {
                        i = 1 - i;
                    }
                    return O(i, i4, i3);
                case 12:
                    return O(i, i4, i3);
                case 13:
                    return O(1 - i5, i4, i3);
                default:
                    throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
            }
        }
        return (s) super.d(j, qVar);
    }

    private s O(int i, int i2, int i3) {
        q qVar = this.a;
        int D = qVar.D(i, i2);
        if (i3 > D) {
            i3 = D;
        }
        return new s(qVar, i, i2, i3);
    }

    @Override // j$.time.chrono.AbstractC1333d
    /* renamed from: I */
    public final InterfaceC1331b m(j$.time.temporal.o oVar) {
        return (s) super.m(oVar);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.l
    public final j$.time.temporal.l m(j$.time.h hVar) {
        return (s) super.m(hVar);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.chrono.InterfaceC1331b
    public final long t() {
        return this.a.w(this.b, this.c, this.d);
    }

    private int J() {
        return this.a.v(this.b, this.c) + this.d;
    }

    @Override // j$.time.chrono.AbstractC1333d
    final InterfaceC1331b H(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.b + ((int) j);
        int i = (int) j2;
        if (j2 == i) {
            return O(i, this.c, this.d);
        }
        throw new ArithmeticException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.time.chrono.AbstractC1333d
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public final s G(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.b * 12) + (this.c - 1) + j;
        return O(this.a.n(j$.com.android.tools.r8.a.j(j2, 12L)), ((int) j$.com.android.tools.r8.a.i(j2, 12L)) + 1, this.d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.time.chrono.AbstractC1333d
    /* renamed from: M, reason: merged with bridge method [inline-methods] */
    public final s F(long j) {
        return new s(this.a, t() + j);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.chrono.InterfaceC1331b, j$.time.temporal.l
    public final InterfaceC1331b e(long j, j$.time.temporal.t tVar) {
        return (s) super.e(j, tVar);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.l
    public final j$.time.temporal.l e(long j, j$.time.temporal.t tVar) {
        return (s) super.e(j, tVar);
    }

    @Override // j$.time.chrono.AbstractC1333d
    /* renamed from: E */
    public final InterfaceC1331b j(long j, j$.time.temporal.t tVar) {
        return (s) super.j(j, tVar);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.l
    public final j$.time.temporal.l j(long j, ChronoUnit chronoUnit) {
        return (s) super.j(j, chronoUnit);
    }

    @Override // j$.time.chrono.AbstractC1333d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return this.b == sVar.b && this.c == sVar.c && this.d == sVar.d && this.a.equals(sVar.a);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.chrono.InterfaceC1331b
    public final int hashCode() {
        int hashCode = this.a.i().hashCode();
        int i = this.b;
        return (hashCode ^ (i & (-2048))) ^ (((i << 11) + (this.c << 6)) + this.d);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.chrono.InterfaceC1331b
    public final InterfaceC1334e u(j$.time.l lVar) {
        return C1336g.D(this, lVar);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new G((byte) 6, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeObject(this.a);
        objectOutput.writeInt(j$.time.temporal.m.a(this, j$.time.temporal.a.YEAR));
        objectOutput.writeByte(j$.time.temporal.m.a(this, j$.time.temporal.a.MONTH_OF_YEAR));
        objectOutput.writeByte(j$.time.temporal.m.a(this, j$.time.temporal.a.DAY_OF_MONTH));
    }
}
