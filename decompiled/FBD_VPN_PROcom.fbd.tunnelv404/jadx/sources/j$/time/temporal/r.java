package j$.time.temporal;

import j$.time.A;
import j$.time.z;

/* loaded from: classes4.dex */
final class r implements s {
    public final /* synthetic */ int a;

    public /* synthetic */ r(int i) {
        this.a = i;
    }

    @Override // j$.time.temporal.s
    public final Object a(n nVar) {
        switch (this.a) {
            case 0:
                return (z) nVar.v(m.a);
            case 1:
                return (j$.time.chrono.n) nVar.v(m.b);
            case 2:
                return (t) nVar.v(m.c);
            case 3:
                a aVar = a.OFFSET_SECONDS;
                if (nVar.f(aVar)) {
                    return A.L(nVar.k(aVar));
                }
                return null;
            case 4:
                z zVar = (z) nVar.v(m.a);
                return zVar != null ? zVar : (z) nVar.v(m.d);
            case 5:
                a aVar2 = a.EPOCH_DAY;
                if (nVar.f(aVar2)) {
                    return j$.time.h.P(nVar.s(aVar2));
                }
                return null;
            default:
                a aVar3 = a.NANO_OF_DAY;
                if (nVar.f(aVar3)) {
                    return j$.time.l.K(nVar.s(aVar3));
                }
                return null;
        }
    }

    public final String toString() {
        switch (this.a) {
            case 0:
                return "ZoneId";
            case 1:
                return "Chronology";
            case 2:
                return "Precision";
            case 3:
                return "ZoneOffset";
            case 4:
                return "Zone";
            case 5:
                return "LocalDate";
            default:
                return "LocalTime";
        }
    }
}
