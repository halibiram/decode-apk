package j$.time.chrono;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import j$.time.AbstractC1342d;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;

/* renamed from: j$.time.chrono.i, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract /* synthetic */ class AbstractC1338i {
    public static boolean i(o oVar, j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.ERA : qVar != null && qVar.m(oVar);
    }

    public static n p(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        Object obj = (n) nVar.v(j$.time.temporal.m.e());
        u uVar = u.d;
        if (obj == null) {
            obj = Objects.requireNonNull(uVar, "defaultObj");
        }
        return (n) obj;
    }

    public static int e(InterfaceC1340k interfaceC1340k, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            int i = AbstractC1339j.a[((j$.time.temporal.a) qVar).ordinal()];
            if (i == 1) {
                throw new RuntimeException("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i == 2) {
                return interfaceC1340k.g().I();
            }
            return interfaceC1340k.y().k(qVar);
        }
        return j$.time.temporal.m.a(interfaceC1340k, qVar);
    }

    public static int f(o oVar, j$.time.temporal.a aVar) {
        if (aVar == j$.time.temporal.a.ERA) {
            return oVar.getValue();
        }
        return j$.time.temporal.m.a(oVar, aVar);
    }

    public static long g(o oVar, j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.ERA) {
            return oVar.getValue();
        }
        if (qVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        return qVar.k(oVar);
    }

    public static Object m(o oVar, j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.i()) {
            return ChronoUnit.ERAS;
        }
        return j$.time.temporal.m.c(oVar, sVar);
    }

    public static Object k(InterfaceC1334e interfaceC1334e, j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.k() || sVar == j$.time.temporal.m.j() || sVar == j$.time.temporal.m.h()) {
            return null;
        }
        if (sVar == j$.time.temporal.m.g()) {
            return interfaceC1334e.b();
        }
        if (sVar == j$.time.temporal.m.e()) {
            return interfaceC1334e.a();
        }
        if (sVar == j$.time.temporal.m.i()) {
            return ChronoUnit.NANOS;
        }
        return sVar.a(interfaceC1334e);
    }

    public static boolean h(InterfaceC1331b interfaceC1331b, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) qVar).v();
        }
        return qVar != null && qVar.m(interfaceC1331b);
    }

    public static long n(InterfaceC1334e interfaceC1334e, j$.time.A a) {
        Objects.requireNonNull(a, TypedValues.CycleType.S_WAVE_OFFSET);
        return ((interfaceC1334e.c().t() * 86400) + interfaceC1334e.b().T()) - a.I();
    }

    public static Object l(InterfaceC1340k interfaceC1340k, j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.j() || sVar == j$.time.temporal.m.k()) {
            return interfaceC1340k.q();
        }
        if (sVar == j$.time.temporal.m.h()) {
            return interfaceC1340k.g();
        }
        if (sVar == j$.time.temporal.m.g()) {
            return interfaceC1340k.b();
        }
        if (sVar == j$.time.temporal.m.e()) {
            return interfaceC1340k.a();
        }
        if (sVar == j$.time.temporal.m.i()) {
            return ChronoUnit.NANOS;
        }
        return sVar.a(interfaceC1340k);
    }

    public static int c(InterfaceC1334e interfaceC1334e, InterfaceC1334e interfaceC1334e2) {
        int compareTo = interfaceC1334e.c().compareTo(interfaceC1334e2.c());
        if (compareTo != 0) {
            return compareTo;
        }
        int compareTo2 = interfaceC1334e.b().compareTo(interfaceC1334e2.b());
        if (compareTo2 != 0) {
            return compareTo2;
        }
        return ((AbstractC1330a) interfaceC1334e.a()).i().compareTo(interfaceC1334e2.a().i());
    }

    public static Object j(InterfaceC1331b interfaceC1331b, j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.k() || sVar == j$.time.temporal.m.j() || sVar == j$.time.temporal.m.h() || sVar == j$.time.temporal.m.g()) {
            return null;
        }
        if (sVar == j$.time.temporal.m.e()) {
            return interfaceC1331b.a();
        }
        if (sVar == j$.time.temporal.m.i()) {
            return ChronoUnit.DAYS;
        }
        return sVar.a(interfaceC1331b);
    }

    public static j$.time.temporal.l a(InterfaceC1331b interfaceC1331b, j$.time.temporal.l lVar) {
        return lVar.d(interfaceC1331b.t(), j$.time.temporal.a.EPOCH_DAY);
    }

    public static long o(InterfaceC1340k interfaceC1340k) {
        return ((interfaceC1340k.c().t() * 86400) + interfaceC1340k.b().T()) - interfaceC1340k.g().I();
    }

    public static int d(InterfaceC1340k interfaceC1340k, InterfaceC1340k interfaceC1340k2) {
        int compare = Long.compare(interfaceC1340k.B(), interfaceC1340k2.B());
        if (compare != 0) {
            return compare;
        }
        int H = interfaceC1340k.b().H() - interfaceC1340k2.b().H();
        if (H != 0) {
            return H;
        }
        int compareTo = interfaceC1340k.y().compareTo(interfaceC1340k2.y());
        if (compareTo != 0) {
            return compareTo;
        }
        int compareTo2 = interfaceC1340k.q().i().compareTo(interfaceC1340k2.q().i());
        if (compareTo2 != 0) {
            return compareTo2;
        }
        return ((AbstractC1330a) interfaceC1340k.a()).i().compareTo(interfaceC1340k2.a().i());
    }

    public static int b(InterfaceC1331b interfaceC1331b, InterfaceC1331b interfaceC1331b2) {
        int compare = Long.compare(interfaceC1331b.t(), interfaceC1331b2.t());
        if (compare != 0) {
            return compare;
        }
        return ((AbstractC1330a) interfaceC1331b.a()).i().compareTo(interfaceC1331b2.a().i());
    }
}
