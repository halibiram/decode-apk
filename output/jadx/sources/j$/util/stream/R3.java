package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class R3 extends AbstractC1379d2 implements e4 {
    final /* synthetic */ Predicate n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public R3(AbstractC1384e2 abstractC1384e2, int i, Predicate predicate) {
        super(abstractC1384e2, i, 0);
        this.n = predicate;
    }

    @Override // j$.util.stream.AbstractC1366b
    final Spliterator P(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        if (EnumC1365a3.ORDERED.n(abstractC1366b.J())) {
            return O(abstractC1366b, spliterator, new C1372c0(3)).spliterator();
        }
        return new l4(abstractC1366b.X(spliterator), this.n, 0);
    }

    @Override // j$.util.stream.AbstractC1366b
    final I0 O(AbstractC1366b abstractC1366b, Spliterator spliterator, IntFunction intFunction) {
        return (I0) new g4(this, abstractC1366b, spliterator, intFunction).invoke();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        return new Q3(this, interfaceC1424m2, false);
    }

    @Override // j$.util.stream.e4
    public final f4 j(A0 a0, boolean z) {
        return new Q3(this, a0, z);
    }
}
