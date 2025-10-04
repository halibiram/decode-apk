package j$.time.chrono;

import j$.time.AbstractC1342d;
import j$.time.temporal.ChronoUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes4.dex */
public final class z extends AbstractC1333d {
    static final j$.time.h d = j$.time.h.N(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;
    private final transient j$.time.h a;
    private transient A b;
    private transient int c;

    @Override // j$.time.chrono.AbstractC1333d
    public final o D() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(j$.time.h hVar) {
        if (hVar.K(d)) {
            throw new RuntimeException("JapaneseDate before Meiji 6 is not supported");
        }
        A i = A.i(hVar);
        this.b = i;
        this.c = (hVar.J() - i.o().J()) + 1;
        this.a = hVar;
    }

    @Override // j$.time.chrono.InterfaceC1331b
    public final n a() {
        return x.d;
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.chrono.InterfaceC1331b
    public final int hashCode() {
        x.d.getClass();
        return this.a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.chrono.InterfaceC1331b, j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH || qVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR || qVar == j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH || qVar == j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        if (qVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) qVar).v();
        }
        return qVar != null && qVar.m(this);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        int i;
        if (qVar instanceof j$.time.temporal.a) {
            if (f(qVar)) {
                j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
                int i2 = y.a[aVar.ordinal()];
                j$.time.h hVar = this.a;
                if (i2 == 1) {
                    return j$.time.temporal.v.j(1L, hVar.M());
                }
                A a = this.b;
                if (i2 != 2) {
                    if (i2 == 3) {
                        int J = a.o().J();
                        if (a.r() != null) {
                            return j$.time.temporal.v.j(1L, (r0.o().J() - J) + 1);
                        }
                        return j$.time.temporal.v.j(1L, 999999999 - J);
                    }
                    return x.d.m(aVar);
                }
                A r = a.r();
                if (r != null && r.o().J() == hVar.J()) {
                    i = r.o().H() - 1;
                } else {
                    i = hVar.L() ? 366 : 365;
                }
                if (this.c == 1) {
                    i -= a.o().H() - 1;
                }
                return j$.time.temporal.v.j(1L, i);
            }
            throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        return qVar.s(this);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            int i = y.a[((j$.time.temporal.a) qVar).ordinal()];
            int i2 = this.c;
            A a = this.b;
            j$.time.h hVar = this.a;
            switch (i) {
                case 2:
                    if (i2 == 1) {
                        return (hVar.H() - a.o().H()) + 1;
                    }
                    return hVar.H();
                case 3:
                    return i2;
                case 4:
                case 5:
                case 6:
                case 7:
                    throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
                case 8:
                    return a.getValue();
                default:
                    return hVar.s(qVar);
            }
        }
        return qVar.k(this);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.l
    /* renamed from: J, reason: merged with bridge method [inline-methods] */
    public final z d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            if (s(aVar) == j) {
                return this;
            }
            int[] iArr = y.a;
            int i = iArr[aVar.ordinal()];
            j$.time.h hVar = this.a;
            if (i == 3 || i == 8 || i == 9) {
                int a = x.d.m(aVar).a(j, aVar);
                int i2 = iArr[aVar.ordinal()];
                if (i2 == 3) {
                    return L(this.b, a);
                }
                if (i2 == 8) {
                    return L(A.A(a), this.c);
                }
                if (i2 == 9) {
                    return K(hVar.Y(a));
                }
            }
            return K(hVar.d(j, qVar));
        }
        return (z) super.d(j, qVar);
    }

    @Override // j$.time.chrono.AbstractC1333d
    /* renamed from: I */
    public final InterfaceC1331b m(j$.time.temporal.o oVar) {
        return (z) super.m(oVar);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.l
    public final j$.time.temporal.l m(j$.time.h hVar) {
        return (z) super.m(hVar);
    }

    private z L(A a, int i) {
        x.d.getClass();
        if (!(a instanceof A)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        int J = (a.o().J() + i) - 1;
        if (i != 1 && (J < -999999999 || J > 999999999 || J < a.o().J() || a != A.i(j$.time.h.N(J, 1, 1)))) {
            throw new RuntimeException("Invalid yearOfEra value");
        }
        return K(this.a.Y(J));
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.chrono.InterfaceC1331b
    public final InterfaceC1334e u(j$.time.l lVar) {
        return C1336g.D(this, lVar);
    }

    @Override // j$.time.chrono.AbstractC1333d
    final InterfaceC1331b H(long j) {
        return K(this.a.T(j));
    }

    @Override // j$.time.chrono.AbstractC1333d
    final InterfaceC1331b G(long j) {
        return K(this.a.S(j));
    }

    @Override // j$.time.chrono.AbstractC1333d
    final InterfaceC1331b F(long j) {
        return K(this.a.R(j));
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.chrono.InterfaceC1331b, j$.time.temporal.l
    public final InterfaceC1331b e(long j, j$.time.temporal.t tVar) {
        return (z) super.e(j, tVar);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.l
    public final j$.time.temporal.l e(long j, j$.time.temporal.t tVar) {
        return (z) super.e(j, tVar);
    }

    @Override // j$.time.chrono.AbstractC1333d
    /* renamed from: E */
    public final InterfaceC1331b j(long j, j$.time.temporal.t tVar) {
        return (z) super.j(j, tVar);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.l
    public final j$.time.temporal.l j(long j, ChronoUnit chronoUnit) {
        return (z) super.j(j, chronoUnit);
    }

    private z K(j$.time.h hVar) {
        return hVar.equals(this.a) ? this : new z(hVar);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.chrono.InterfaceC1331b
    public final long t() {
        return this.a.t();
    }

    @Override // j$.time.chrono.AbstractC1333d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof z) {
            return this.a.equals(((z) obj).a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new G((byte) 4, this);
    }
}
