package j$.util.stream;

/* loaded from: classes4.dex */
final class Q3 extends AbstractC1404i2 implements f4 {
    long b;
    boolean c;
    final /* synthetic */ boolean d;
    final /* synthetic */ R3 e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q3(R3 r3, InterfaceC1424m2 interfaceC1424m2, boolean z) {
        super(interfaceC1424m2);
        this.e = r3;
        this.d = z;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        boolean z;
        boolean z2;
        if (!this.c) {
            boolean test = this.e.n.test(obj);
            this.c = !test;
            if (test) {
                z = false;
                z2 = this.d;
                if (z2 && !z) {
                    this.b++;
                }
                if (!z2 || z) {
                    this.a.accept((InterfaceC1424m2) obj);
                }
                return;
            }
        }
        z = true;
        z2 = this.d;
        if (z2) {
            this.b++;
        }
        if (z2) {
        }
        this.a.accept((InterfaceC1424m2) obj);
    }

    @Override // j$.util.stream.f4
    public final long f() {
        return this.b;
    }
}
