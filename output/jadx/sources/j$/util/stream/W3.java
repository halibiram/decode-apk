package j$.util.stream;

import java.util.function.LongPredicate;

/* loaded from: classes4.dex */
final class W3 extends AbstractC1399h2 {
    boolean b;
    final /* synthetic */ X3 c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W3(X3 x3, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.c = x3;
        this.b = true;
    }

    @Override // j$.util.stream.AbstractC1399h2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        this.a.l(-1L);
    }

    @Override // j$.util.stream.InterfaceC1419l2, j$.util.stream.InterfaceC1424m2
    public final void accept(long j) {
        if (this.b) {
            this.c.getClass();
            LongPredicate longPredicate = null;
            longPredicate.test(j);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC1399h2, j$.util.stream.InterfaceC1424m2
    public final boolean n() {
        return !this.b || this.a.n();
    }
}
