package j$.util.stream;

import java.util.function.LongPredicate;

/* loaded from: classes4.dex */
final class Y3 extends AbstractC1399h2 implements f4 {
    final /* synthetic */ Z3 b;

    @Override // j$.util.stream.f4
    public final long f() {
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Y3(Z3 z3, InterfaceC1424m2 interfaceC1424m2, boolean z) {
        super(interfaceC1424m2);
        this.b = z3;
    }

    @Override // j$.util.stream.InterfaceC1419l2, j$.util.stream.InterfaceC1424m2
    public final void accept(long j) {
        this.b.getClass();
        LongPredicate longPredicate = null;
        longPredicate.test(j);
        throw null;
    }
}
