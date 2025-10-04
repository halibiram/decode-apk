package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* loaded from: classes4.dex */
final class P3 extends AbstractC1379d2 {
    final /* synthetic */ Predicate n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P3(AbstractC1384e2 abstractC1384e2, int i, Predicate predicate) {
        super(abstractC1384e2, i, 0);
        this.n = predicate;
    }

    @Override // j$.util.stream.AbstractC1366b
    final Spliterator P(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        if (EnumC1365a3.ORDERED.n(abstractC1366b.J())) {
            return O(abstractC1366b, spliterator, new C1372c0(3)).spliterator();
        }
        return new l4(abstractC1366b.X(spliterator), this.n, 1);
    }

    @Override // j$.util.stream.AbstractC1366b
    final I0 O(AbstractC1366b abstractC1366b, Spliterator spliterator, IntFunction intFunction) {
        return (I0) new h4(this, abstractC1366b, spliterator, intFunction).invoke();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        return new C1421m(this, interfaceC1424m2);
    }
}
