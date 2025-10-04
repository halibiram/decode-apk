package j$.util.stream;

import java.util.function.IntPredicate;

/* loaded from: classes4.dex */
final class S3 extends AbstractC1394g2 {
    boolean b;
    final /* synthetic */ T3 c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S3(T3 t3, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.c = t3;
        this.b = true;
    }

    @Override // j$.util.stream.AbstractC1394g2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        this.a.l(-1L);
    }

    @Override // j$.util.stream.InterfaceC1414k2, j$.util.stream.InterfaceC1424m2
    public final void accept(int i) {
        if (this.b) {
            this.c.getClass();
            IntPredicate intPredicate = null;
            intPredicate.test(i);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC1394g2, j$.util.stream.InterfaceC1424m2
    public final boolean n() {
        return !this.b || this.a.n();
    }
}
