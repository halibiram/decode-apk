package j$.time.chrono;

import j$.time.AbstractC1342d;
import j$.time.temporal.ChronoUnit;
import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.chrono.d, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1333d implements InterfaceC1331b, j$.time.temporal.l, j$.time.temporal.o, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    abstract InterfaceC1331b F(long j);

    abstract InterfaceC1331b G(long j);

    abstract InterfaceC1331b H(long j);

    @Override // j$.time.chrono.InterfaceC1331b, j$.time.temporal.n
    public /* synthetic */ boolean f(j$.time.temporal.q qVar) {
        return AbstractC1338i.h(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int k(j$.time.temporal.q qVar) {
        return j$.time.temporal.m.a(this, qVar);
    }

    @Override // j$.time.temporal.n
    public /* synthetic */ j$.time.temporal.v n(j$.time.temporal.q qVar) {
        return j$.time.temporal.m.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object v(j$.time.temporal.s sVar) {
        return AbstractC1338i.j(this, sVar);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ j$.time.temporal.l w(j$.time.temporal.l lVar) {
        return AbstractC1338i.a(this, lVar);
    }

    @Override // java.lang.Comparable
    /* renamed from: z */
    public final /* synthetic */ int compareTo(InterfaceC1331b interfaceC1331b) {
        return AbstractC1338i.b(this, interfaceC1331b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InterfaceC1331b C(n nVar, j$.time.temporal.l lVar) {
        InterfaceC1331b interfaceC1331b = (InterfaceC1331b) lVar;
        if (nVar.equals(interfaceC1331b.a())) {
            return interfaceC1331b;
        }
        throw new ClassCastException("Chronology mismatch, expected: " + nVar.i() + ", actual: " + interfaceC1331b.a().i());
    }

    @Override // j$.time.temporal.l
    public InterfaceC1331b e(long j, j$.time.temporal.t tVar) {
        boolean z = tVar instanceof ChronoUnit;
        if (!z) {
            if (!z) {
                return C(a(), tVar.j(this, j));
            }
            throw new RuntimeException("Unsupported unit: " + tVar);
        }
        switch (AbstractC1332c.a[((ChronoUnit) tVar).ordinal()]) {
            case 1:
                return F(j);
            case 2:
                return F(j$.com.android.tools.r8.a.k(j, 7));
            case 3:
                return G(j);
            case 4:
                return H(j);
            case 5:
                return H(j$.com.android.tools.r8.a.k(j, 10));
            case 6:
                return H(j$.com.android.tools.r8.a.k(j, 100));
            case 7:
                return H(j$.com.android.tools.r8.a.k(j, 1000));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return d(j$.com.android.tools.r8.a.e(s(aVar), j), (j$.time.temporal.q) aVar);
            default:
                throw new RuntimeException("Unsupported unit: " + tVar);
        }
    }

    public o D() {
        return a().A(j$.time.temporal.m.a(this, j$.time.temporal.a.ERA));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC1331b) && AbstractC1338i.b(this, (InterfaceC1331b) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC1331b
    public int hashCode() {
        long t = t();
        return a().hashCode() ^ ((int) (t ^ (t >>> 32)));
    }

    @Override // j$.time.temporal.l
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public InterfaceC1331b m(j$.time.temporal.o oVar) {
        return C(a(), oVar.w(this));
    }

    @Override // j$.time.chrono.InterfaceC1331b
    public String toString() {
        long s = s(j$.time.temporal.a.YEAR_OF_ERA);
        long s2 = s(j$.time.temporal.a.MONTH_OF_YEAR);
        long s3 = s(j$.time.temporal.a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(a().toString());
        sb.append(" ");
        sb.append(D());
        sb.append(" ");
        sb.append(s);
        sb.append(s2 < 10 ? "-0" : "-");
        sb.append(s2);
        sb.append(s3 < 10 ? "-0" : "-");
        sb.append(s3);
        return sb.toString();
    }

    @Override // j$.time.temporal.l
    public InterfaceC1331b d(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        return C(a(), qVar.n(this, j));
    }

    @Override // j$.time.temporal.l
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public InterfaceC1331b j(long j, j$.time.temporal.t tVar) {
        return C(a(), j$.time.temporal.m.b(this, j, tVar));
    }

    @Override // j$.time.chrono.InterfaceC1331b
    public InterfaceC1334e u(j$.time.l lVar) {
        return C1336g.D(this, lVar);
    }

    @Override // j$.time.chrono.InterfaceC1331b
    public long t() {
        return s(j$.time.temporal.a.EPOCH_DAY);
    }
}
