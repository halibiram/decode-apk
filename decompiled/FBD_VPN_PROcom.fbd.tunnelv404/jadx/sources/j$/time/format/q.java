package j$.time.format;

import j$.time.Instant;
import j$.time.chrono.InterfaceC1331b;
import j$.time.z;
import j$.util.Objects;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class q {
    private j$.time.temporal.n a;
    private a b;
    private int c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [j$.time.format.p] */
    public q(Instant instant, a aVar) {
        j$.time.chrono.n b = aVar.b();
        if (b != null) {
            j$.time.chrono.n nVar = (j$.time.chrono.n) instant.v(j$.time.temporal.m.e());
            z zVar = (z) instant.v(j$.time.temporal.m.k());
            InterfaceC1331b interfaceC1331b = null;
            b = Objects.equals(b, nVar) ? null : b;
            Objects.equals(null, zVar);
            if (b != null) {
                j$.time.chrono.n nVar2 = b != null ? b : nVar;
                if (b != null) {
                    if (instant.f(j$.time.temporal.a.EPOCH_DAY)) {
                        interfaceC1331b = nVar2.l(instant);
                    } else if (b != j$.time.chrono.u.d || nVar != null) {
                        for (j$.time.temporal.a aVar2 : j$.time.temporal.a.values()) {
                            if (aVar2.v() && instant.f(aVar2)) {
                                throw new RuntimeException("Unable to apply override chronology '" + b + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + instant);
                            }
                        }
                    }
                }
                instant = new p(interfaceC1331b, instant, nVar2, zVar);
            }
        }
        this.a = instant;
        this.b = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final j$.time.temporal.n d() {
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Locale c() {
        return this.b.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final t b() {
        return this.b.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g() {
        this.c++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.c--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object f(b bVar) {
        j$.time.temporal.n nVar = this.a;
        Object v = nVar.v(bVar);
        if (v != null || this.c != 0) {
            return v;
        }
        throw new RuntimeException("Unable to extract " + bVar + " from temporal " + nVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Long e(j$.time.temporal.q qVar) {
        int i = this.c;
        j$.time.temporal.n nVar = this.a;
        if (i <= 0 || nVar.f(qVar)) {
            return Long.valueOf(nVar.s(qVar));
        }
        return null;
    }

    public final String toString() {
        return this.a.toString();
    }
}
