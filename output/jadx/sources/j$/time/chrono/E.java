package j$.time.chrono;

import j$.time.AbstractC1342d;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes4.dex */
public final class E extends AbstractC1333d {
    private static final long serialVersionUID = 1300372329181994526L;
    private final transient j$.time.h a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public E(j$.time.h hVar) {
        Objects.requireNonNull(hVar, "isoDate");
        this.a = hVar;
    }

    @Override // j$.time.chrono.InterfaceC1331b
    public final n a() {
        return C.d;
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.chrono.InterfaceC1331b
    public final int hashCode() {
        C.d.getClass();
        return this.a.hashCode() ^ (-1990173233);
    }

    @Override // j$.time.chrono.AbstractC1333d
    public final o D() {
        return J() >= 1 ? F.ROC : F.BEFORE_ROC;
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.s(this);
        }
        if (AbstractC1338i.h(this, qVar)) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            int i = D.a[aVar.ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                return this.a.n(qVar);
            }
            if (i == 4) {
                j$.time.temporal.v j = j$.time.temporal.a.YEAR.j();
                return j$.time.temporal.v.j(1L, J() <= 0 ? (-j.e()) + 1912 : j.d() - 1911);
            }
            return C.d.m(aVar);
        }
        throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            int i = D.a[((j$.time.temporal.a) qVar).ordinal()];
            if (i == 4) {
                int J = J();
                if (J < 1) {
                    J = 1 - J;
                }
                return J;
            }
            j$.time.h hVar = this.a;
            if (i == 5) {
                return ((J() * 12) + hVar.I()) - 1;
            }
            if (i == 6) {
                return J();
            }
            if (i != 7) {
                return hVar.s(qVar);
            }
            return J() < 1 ? 0 : 1;
        }
        return qVar.k(this);
    }

    private int J() {
        return this.a.J() - 1911;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
    
        if (r2 != 7) goto L20;
     */
    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.l
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final E d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
            if (s(aVar) == j) {
                return this;
            }
            int[] iArr = D.a;
            int i = iArr[aVar.ordinal()];
            j$.time.h hVar = this.a;
            if (i != 4) {
                if (i == 5) {
                    C.d.m(aVar).b(j, aVar);
                    return L(hVar.S(j - (((J() * 12) + hVar.I()) - 1)));
                }
                if (i != 6) {
                }
            }
            int a = C.d.m(aVar).a(j, aVar);
            int i2 = iArr[aVar.ordinal()];
            if (i2 == 4) {
                return L(hVar.Y(J() >= 1 ? a + 1911 : 1912 - a));
            }
            if (i2 == 6) {
                return L(hVar.Y(a + 1911));
            }
            if (i2 == 7) {
                return L(hVar.Y(1912 - J()));
            }
            return L(hVar.d(j, qVar));
        }
        return (E) super.d(j, qVar);
    }

    @Override // j$.time.chrono.AbstractC1333d
    /* renamed from: I */
    public final InterfaceC1331b m(j$.time.temporal.o oVar) {
        return (E) super.m(oVar);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.l
    public final j$.time.temporal.l m(j$.time.h hVar) {
        return (E) super.m(hVar);
    }

    @Override // j$.time.chrono.AbstractC1333d
    final InterfaceC1331b H(long j) {
        return L(this.a.T(j));
    }

    @Override // j$.time.chrono.AbstractC1333d
    final InterfaceC1331b G(long j) {
        return L(this.a.S(j));
    }

    @Override // j$.time.chrono.AbstractC1333d
    final InterfaceC1331b F(long j) {
        return L(this.a.R(j));
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.chrono.InterfaceC1331b, j$.time.temporal.l
    public final InterfaceC1331b e(long j, j$.time.temporal.t tVar) {
        return (E) super.e(j, tVar);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.l
    public final j$.time.temporal.l e(long j, j$.time.temporal.t tVar) {
        return (E) super.e(j, tVar);
    }

    @Override // j$.time.chrono.AbstractC1333d
    /* renamed from: E */
    public final InterfaceC1331b j(long j, j$.time.temporal.t tVar) {
        return (E) super.j(j, tVar);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.temporal.l
    public final j$.time.temporal.l j(long j, ChronoUnit chronoUnit) {
        return (E) super.j(j, chronoUnit);
    }

    private E L(j$.time.h hVar) {
        return hVar.equals(this.a) ? this : new E(hVar);
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
        if (obj instanceof E) {
            return this.a.equals(((E) obj).a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new G((byte) 7, this);
    }

    @Override // j$.time.chrono.AbstractC1333d, j$.time.chrono.InterfaceC1331b
    public final InterfaceC1334e u(j$.time.l lVar) {
        return C1336g.D(this, lVar);
    }
}
