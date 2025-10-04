package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class E implements L3 {
    final int a;
    final Object b;
    final Predicate c;
    final Supplier d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public E(boolean z, EnumC1370b3 enumC1370b3, Object obj, Predicate predicate, Supplier supplier) {
        this.a = (z ? 0 : EnumC1365a3.r) | EnumC1365a3.u;
        this.b = obj;
        this.c = predicate;
        this.d = supplier;
    }

    @Override // j$.util.stream.L3
    public final int d() {
        return this.a;
    }

    @Override // j$.util.stream.L3
    public final Object b(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        M3 m3 = (M3) this.d.get();
        abstractC1366b.V(spliterator, m3);
        Object obj = m3.get();
        return obj != null ? obj : this.b;
    }

    @Override // j$.util.stream.L3
    public final Object c(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        return new K(this, EnumC1365a3.ORDERED.n(abstractC1366b.J()), abstractC1366b, spliterator).invoke();
    }
}
