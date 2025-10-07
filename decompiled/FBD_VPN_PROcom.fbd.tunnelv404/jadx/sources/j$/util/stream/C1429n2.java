package j$.util.stream;

/* renamed from: j$.util.stream.n2, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1429n2 extends AbstractC1404i2 {
    long b;
    long c;
    final /* synthetic */ C1434o2 d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1429n2(C1434o2 c1434o2, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.d = c1434o2;
        this.b = c1434o2.n;
        long j = c1434o2.o;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.AbstractC1404i2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        this.a.l(AbstractC1471w0.A(j, this.d.n, this.c));
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void p(Object obj) {
        long j = this.b;
        if (j == 0) {
            long j2 = this.c;
            if (j2 > 0) {
                this.c = j2 - 1;
                this.a.p((InterfaceC1424m2) obj);
                return;
            }
            return;
        }
        this.b = j - 1;
    }

    @Override // j$.util.stream.AbstractC1404i2, j$.util.stream.InterfaceC1424m2
    public final boolean n() {
        return this.c == 0 || this.a.n();
    }
}
