package j$.util.stream;

import java.util.function.DoublePredicate;

/* loaded from: classes4.dex */
final class a4 extends AbstractC1389f2 {
    boolean b;
    final /* synthetic */ b4 c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a4(b4 b4Var, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.c = b4Var;
        this.b = true;
    }

    @Override // j$.util.stream.AbstractC1389f2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        this.a.l(-1L);
    }

    @Override // j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        if (this.b) {
            this.c.getClass();
            DoublePredicate doublePredicate = null;
            doublePredicate.test(d);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC1389f2, j$.util.stream.InterfaceC1424m2
    public final boolean n() {
        return !this.b || this.a.n();
    }
}
