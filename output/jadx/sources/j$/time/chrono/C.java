package j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes4.dex */
public final class C extends AbstractC1330a implements Serializable {
    public static final C d = new C();
    private static final long serialVersionUID = 1039765215346859963L;

    private C() {
    }

    @Override // j$.time.chrono.n
    public final String i() {
        return "Minguo";
    }

    @Override // j$.time.chrono.n
    public final o A(int i) {
        if (i == 0) {
            return F.BEFORE_ROC;
        }
        if (i == 1) {
            return F.ROC;
        }
        throw new RuntimeException("Invalid era: " + i);
    }

    @Override // j$.time.chrono.n
    public final String r() {
        return "roc";
    }

    @Override // j$.time.chrono.n
    public final InterfaceC1331b l(j$.time.temporal.n nVar) {
        if (nVar instanceof E) {
            return (E) nVar;
        }
        return new E(j$.time.h.E(nVar));
    }

    public final j$.time.temporal.v m(j$.time.temporal.a aVar) {
        int i = B.a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.v j = j$.time.temporal.a.PROLEPTIC_MONTH.j();
            return j$.time.temporal.v.j(j.e() - 22932, j.d() - 22932);
        }
        if (i == 2) {
            j$.time.temporal.v j2 = j$.time.temporal.a.YEAR.j();
            return j$.time.temporal.v.k(j2.d() - 1911, (-j2.e()) + 1912);
        }
        if (i == 3) {
            j$.time.temporal.v j3 = j$.time.temporal.a.YEAR.j();
            return j$.time.temporal.v.j(j3.e() - 1911, j3.d() - 1911);
        }
        return aVar.j();
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    Object writeReplace() {
        return new G((byte) 1, this);
    }
}
