package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes4.dex */
final class S2 extends U2 implements j$.util.Z {
    final /* synthetic */ T2 g;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1344b.c(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1344b.h(this, consumer);
    }

    @Override // j$.util.stream.U2
    final void a(int i, Object obj, Object obj2) {
        ((LongConsumer) obj2).accept(((long[]) obj)[i]);
    }

    @Override // j$.util.stream.U2
    final j$.util.c0 b(Object obj, int i, int i2) {
        return Spliterators.l((long[]) obj, i, i2 + i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S2(T2 t2, int i, int i2, int i3, int i4) {
        super(t2, i, i2, i3, i4);
        this.g = t2;
    }

    @Override // j$.util.stream.U2
    final j$.util.c0 c(int i, int i2, int i3, int i4) {
        return new S2(this.g, i, i2, i3, i4);
    }
}
