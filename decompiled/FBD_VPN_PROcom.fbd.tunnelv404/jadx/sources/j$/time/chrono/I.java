package j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes4.dex */
public final class I extends AbstractC1330a implements Serializable {
    public static final I d = new I();
    private static final long serialVersionUID = 2775954514031616474L;

    static {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        hashMap.put("en", new String[]{"BB", "BE"});
        hashMap.put("th", new String[]{"BB", "BE"});
        hashMap2.put("en", new String[]{"B.B.", "B.E."});
        hashMap2.put("th", new String[]{"พ.ศ.", "ปีก่อนคริสต์กาลที่"});
        hashMap3.put("en", new String[]{"Before Buddhist", "Budhhist Era"});
        hashMap3.put("th", new String[]{"พุทธศักราช", "ปีก่อนคริสต์กาลที่"});
    }

    @Override // j$.time.chrono.n
    public final o A(int i) {
        if (i == 0) {
            return L.BEFORE_BE;
        }
        if (i == 1) {
            return L.BE;
        }
        throw new RuntimeException("Invalid era: " + i);
    }

    private I() {
    }

    @Override // j$.time.chrono.n
    public final String i() {
        return "ThaiBuddhist";
    }

    @Override // j$.time.chrono.n
    public final String r() {
        return "buddhist";
    }

    @Override // j$.time.chrono.n
    public final InterfaceC1331b l(j$.time.temporal.n nVar) {
        if (nVar instanceof K) {
            return (K) nVar;
        }
        return new K(j$.time.h.E(nVar));
    }

    public final j$.time.temporal.v m(j$.time.temporal.a aVar) {
        int i = H.a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.v j = j$.time.temporal.a.PROLEPTIC_MONTH.j();
            return j$.time.temporal.v.j(j.e() + 6516, j.d() + 6516);
        }
        if (i == 2) {
            j$.time.temporal.v j2 = j$.time.temporal.a.YEAR.j();
            return j$.time.temporal.v.k((-(j2.e() + 543)) + 1, j2.d() + 543);
        }
        if (i == 3) {
            j$.time.temporal.v j3 = j$.time.temporal.a.YEAR.j();
            return j$.time.temporal.v.j(j3.e() + 543, j3.d() + 543);
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
