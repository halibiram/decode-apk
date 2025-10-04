package j$.util.stream;

import java.util.function.DoublePredicate;

/* loaded from: classes4.dex */
final class c4 extends AbstractC1389f2 implements f4 {
    final /* synthetic */ d4 b;

    @Override // j$.util.stream.f4
    public final long f() {
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c4(d4 d4Var, InterfaceC1424m2 interfaceC1424m2, boolean z) {
        super(interfaceC1424m2);
        this.b = d4Var;
    }

    @Override // j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.b.getClass();
        DoublePredicate doublePredicate = null;
        doublePredicate.test(d);
        throw null;
    }
}
