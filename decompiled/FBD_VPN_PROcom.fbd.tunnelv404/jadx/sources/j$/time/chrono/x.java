package j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes4.dex */
public final class x extends AbstractC1330a implements Serializable {
    public static final x d = new x();
    private static final long serialVersionUID = 459996390165777884L;

    private x() {
    }

    @Override // j$.time.chrono.n
    public final String i() {
        return "Japanese";
    }

    @Override // j$.time.chrono.n
    public final String r() {
        return "japanese";
    }

    @Override // j$.time.chrono.n
    public final InterfaceC1331b l(j$.time.temporal.n nVar) {
        if (nVar instanceof z) {
            return (z) nVar;
        }
        return new z(j$.time.h.E(nVar));
    }

    @Override // j$.time.chrono.n
    public final o A(int i) {
        return A.A(i);
    }

    public final j$.time.temporal.v m(j$.time.temporal.a aVar) {
        switch (w.a[aVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                throw new RuntimeException("Unsupported field: " + aVar);
            case 5:
                return j$.time.temporal.v.k(A.D(), 999999999 - A.l().o().J());
            case 6:
                return j$.time.temporal.v.k(A.C(), j$.time.temporal.a.DAY_OF_YEAR.j().d());
            case 7:
                return j$.time.temporal.v.j(z.d.J(), 999999999L);
            case 8:
                return j$.time.temporal.v.j(A.d.getValue(), A.l().getValue());
            default:
                return aVar.j();
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    Object writeReplace() {
        return new G((byte) 1, this);
    }
}
