package j$.util.stream;

import java.util.function.IntPredicate;

/* loaded from: classes4.dex */
final class U3 extends AbstractC1394g2 implements f4 {
    final /* synthetic */ V3 b;

    @Override // j$.util.stream.f4
    public final long f() {
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U3(V3 v3, InterfaceC1424m2 interfaceC1424m2, boolean z) {
        super(interfaceC1424m2);
        this.b = v3;
    }

    @Override // j$.util.stream.InterfaceC1414k2, j$.util.stream.InterfaceC1424m2
    public final void accept(int i) {
        this.b.getClass();
        IntPredicate intPredicate = null;
        intPredicate.test(i);
        throw null;
    }
}
