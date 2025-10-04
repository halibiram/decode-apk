package j$.time.chrono;

import androidx.exifinterface.media.ExifInterface;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.chrono.g, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1336g implements InterfaceC1334e, j$.time.temporal.l, j$.time.temporal.o, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;
    private final transient InterfaceC1331b a;
    private final transient j$.time.l b;

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object v(j$.time.temporal.s sVar) {
        return AbstractC1338i.k(this, sVar);
    }

    @Override // java.lang.Comparable
    /* renamed from: x */
    public final /* synthetic */ int compareTo(InterfaceC1334e interfaceC1334e) {
        return AbstractC1338i.c(this, interfaceC1334e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static C1336g D(InterfaceC1331b interfaceC1331b, j$.time.l lVar) {
        return new C1336g(interfaceC1331b, lVar);
    }

    static C1336g C(n nVar, j$.time.temporal.l lVar) {
        C1336g c1336g = (C1336g) lVar;
        if (nVar.equals(c1336g.a.a())) {
            return c1336g;
        }
        throw new ClassCastException("Chronology mismatch, required: " + nVar.i() + ", actual: " + c1336g.a.a().i());
    }

    @Override // j$.time.chrono.InterfaceC1334e
    public final n a() {
        return this.a.a();
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l j(long j, ChronoUnit chronoUnit) {
        return C(this.a.a(), j$.time.temporal.m.b(this, j, chronoUnit));
    }

    private C1336g(InterfaceC1331b interfaceC1331b, j$.time.l lVar) {
        Objects.requireNonNull(interfaceC1331b, "date");
        Objects.requireNonNull(lVar, "time");
        this.a = interfaceC1331b;
        this.b = lVar;
    }

    private C1336g I(j$.time.temporal.l lVar, j$.time.l lVar2) {
        InterfaceC1331b interfaceC1331b = this.a;
        return (interfaceC1331b == lVar && this.b == lVar2) ? this : new C1336g(AbstractC1333d.C(interfaceC1331b.a(), lVar), lVar2);
    }

    @Override // j$.time.chrono.InterfaceC1334e
    public final InterfaceC1331b c() {
        return this.a;
    }

    @Override // j$.time.chrono.InterfaceC1334e
    public final j$.time.l b() {
        return this.b;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar != null && qVar.m(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        return aVar.v() || aVar.D();
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            if (!((j$.time.temporal.a) qVar).D()) {
                return this.a.n(qVar);
            }
            j$.time.l lVar = this.b;
            lVar.getClass();
            return j$.time.temporal.m.d(lVar, qVar);
        }
        return qVar.s(this);
    }

    @Override // j$.time.temporal.n
    public final int k(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) qVar).D() ? this.b.k(qVar) : this.a.k(qVar);
        }
        return n(qVar).a(s(qVar), qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) qVar).D() ? this.b.s(qVar) : this.a.s(qVar);
        }
        return qVar.k(this);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l m(j$.time.h hVar) {
        return I(hVar, this.b);
    }

    @Override // j$.time.temporal.l
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public final C1336g d(long j, j$.time.temporal.q qVar) {
        boolean z = qVar instanceof j$.time.temporal.a;
        InterfaceC1331b interfaceC1331b = this.a;
        if (z) {
            boolean D = ((j$.time.temporal.a) qVar).D();
            j$.time.l lVar = this.b;
            if (D) {
                return I(interfaceC1331b, lVar.d(j, qVar));
            }
            return I(interfaceC1331b.d(j, qVar), lVar);
        }
        return C(interfaceC1331b.a(), qVar.n(this, j));
    }

    @Override // j$.time.temporal.l
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public final C1336g e(long j, j$.time.temporal.t tVar) {
        boolean z = tVar instanceof ChronoUnit;
        InterfaceC1331b interfaceC1331b = this.a;
        if (z) {
            int i = AbstractC1335f.a[((ChronoUnit) tVar).ordinal()];
            j$.time.l lVar = this.b;
            switch (i) {
                case 1:
                    return G(this.a, 0L, 0L, 0L, j);
                case 2:
                    C1336g I = I(interfaceC1331b.e(j / 86400000000L, (j$.time.temporal.t) ChronoUnit.DAYS), lVar);
                    return I.G(I.a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
                case 3:
                    C1336g I2 = I(interfaceC1331b.e(j / 86400000, (j$.time.temporal.t) ChronoUnit.DAYS), lVar);
                    return I2.G(I2.a, 0L, 0L, 0L, (j % 86400000) * 1000000);
                case 4:
                    return F(j);
                case 5:
                    return G(this.a, 0L, j, 0L, 0L);
                case 6:
                    return G(this.a, j, 0L, 0L, 0L);
                case 7:
                    C1336g I3 = I(interfaceC1331b.e(j / 256, (j$.time.temporal.t) ChronoUnit.DAYS), lVar);
                    return I3.G(I3.a, (j % 256) * 12, 0L, 0L, 0L);
                default:
                    return I(interfaceC1331b.e(j, tVar), lVar);
            }
        }
        return C(interfaceC1331b.a(), tVar.j(this, j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final C1336g F(long j) {
        return G(this.a, 0L, 0L, j, 0L);
    }

    private C1336g G(InterfaceC1331b interfaceC1331b, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        j$.time.l lVar = this.b;
        if (j5 == 0) {
            return I(interfaceC1331b, lVar);
        }
        long j6 = j2 / 1440;
        long j7 = j / 24;
        long j8 = (j2 % 1440) * 60000000000L;
        long j9 = ((j % 24) * 3600000000000L) + j8 + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L);
        long S = lVar.S();
        long j10 = j9 + S;
        long j11 = j$.com.android.tools.r8.a.j(j10, 86400000000000L) + j7 + j6 + (j3 / 86400) + (j4 / 86400000000000L);
        long i = j$.com.android.tools.r8.a.i(j10, 86400000000000L);
        if (i != S) {
            lVar = j$.time.l.K(i);
        }
        return I(interfaceC1331b.e(j11, (j$.time.temporal.t) ChronoUnit.DAYS), lVar);
    }

    @Override // j$.time.chrono.InterfaceC1334e
    public final InterfaceC1340k p(j$.time.A a) {
        return m.C(a, null, this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        return lVar.d(c().t(), j$.time.temporal.a.EPOCH_DAY).d(b().S(), j$.time.temporal.a.NANO_OF_DAY);
    }

    private Object writeReplace() {
        return new G((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeObject(this.a);
        objectOutput.writeObject(this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC1334e) && AbstractC1338i.c(this, (InterfaceC1334e) obj) == 0;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        return this.a.toString() + ExifInterface.GPS_DIRECTION_TRUE + this.b.toString();
    }
}
