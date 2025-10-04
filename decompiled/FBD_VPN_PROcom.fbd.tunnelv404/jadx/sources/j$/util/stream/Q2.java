package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes4.dex */
final class Q2 extends U2 implements j$.util.W {
    final /* synthetic */ R2 g;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1344b.b(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1344b.g(this, consumer);
    }

    @Override // j$.util.stream.U2
    final void a(int i, Object obj, Object obj2) {
        ((IntConsumer) obj2).accept(((int[]) obj)[i]);
    }

    @Override // j$.util.stream.U2
    final j$.util.c0 b(Object obj, int i, int i2) {
        return Spliterators.k((int[]) obj, i, i2 + i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q2(R2 r2, int i, int i2, int i3, int i4) {
        super(r2, i, i2, i3, i4);
        this.g = r2;
    }

    @Override // j$.util.stream.U2
    final j$.util.c0 c(int i, int i2, int i3, int i4) {
        return new Q2(this.g, i, i2, i3, i4);
    }
}
