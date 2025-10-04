package j$.util.stream;

/* renamed from: j$.util.stream.t2, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1458t2 extends AbstractC1389f2 {
    long b;
    long c;
    final /* synthetic */ C1463u2 d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1458t2(C1463u2 c1463u2, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.d = c1463u2;
        this.b = c1463u2.n;
        long j = c1463u2.o;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.AbstractC1389f2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        this.a.l(AbstractC1471w0.A(j, this.d.n, this.c));
    }

    @Override // j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        long j = this.b;
        if (j == 0) {
            long j2 = this.c;
            if (j2 > 0) {
                this.c = j2 - 1;
                this.a.accept(d);
                return;
            }
            return;
        }
        this.b = j - 1;
    }

    @Override // j$.util.stream.AbstractC1389f2, j$.util.stream.InterfaceC1424m2
    public final boolean n() {
        return this.c == 0 || this.a.n();
    }
}
