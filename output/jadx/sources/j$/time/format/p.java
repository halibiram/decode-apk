package j$.time.format;

import j$.time.Instant;
import j$.time.chrono.InterfaceC1331b;
import j$.time.z;

/* loaded from: classes4.dex */
final class p implements j$.time.temporal.n {
    final /* synthetic */ InterfaceC1331b a;
    final /* synthetic */ Instant b;
    final /* synthetic */ j$.time.chrono.n c;
    final /* synthetic */ z d;

    @Override // j$.time.temporal.n
    public final /* synthetic */ int k(j$.time.temporal.q qVar) {
        return j$.time.temporal.m.a(this, qVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(InterfaceC1331b interfaceC1331b, Instant instant, j$.time.chrono.n nVar, z zVar) {
        this.a = interfaceC1331b;
        this.b = instant;
        this.c = nVar;
        this.d = zVar;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        InterfaceC1331b interfaceC1331b = this.a;
        if (interfaceC1331b != null && qVar.v()) {
            return interfaceC1331b.f(qVar);
        }
        return this.b.f(qVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        InterfaceC1331b interfaceC1331b = this.a;
        if (interfaceC1331b != null && qVar.v()) {
            return interfaceC1331b.n(qVar);
        }
        return j$.time.temporal.m.d(this.b, qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        InterfaceC1331b interfaceC1331b = this.a;
        if (interfaceC1331b != null && qVar.v()) {
            return interfaceC1331b.s(qVar);
        }
        return this.b.s(qVar);
    }

    @Override // j$.time.temporal.n
    public final Object v(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.m.e()) {
            return this.c;
        }
        if (sVar == j$.time.temporal.m.k()) {
            return this.d;
        }
        if (sVar == j$.time.temporal.m.i()) {
            return this.b.v(sVar);
        }
        return sVar.a(this);
    }

    public final String toString() {
        String str;
        String str2 = "";
        j$.time.chrono.n nVar = this.c;
        if (nVar != null) {
            str = " with chronology " + nVar;
        } else {
            str = "";
        }
        z zVar = this.d;
        if (zVar != null) {
            str2 = " with zone " + zVar;
        }
        return this.b + str + str2;
    }
}
