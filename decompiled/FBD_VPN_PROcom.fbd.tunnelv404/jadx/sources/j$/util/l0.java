package j$.util;

import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes4.dex */
final class l0 extends AbstractC1344b implements W {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1344b.b(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC1344b.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1344b.e(this, i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1344b.g(this, consumer);
    }

    @Override // j$.util.AbstractC1344b, j$.util.T, j$.util.c0, j$.util.Spliterator
    public final /* bridge */ /* synthetic */ W trySplit() {
        return null;
    }

    @Override // j$.util.AbstractC1344b, j$.util.T, j$.util.c0, j$.util.Spliterator
    public final /* bridge */ /* synthetic */ c0 trySplit() {
        return null;
    }

    @Override // j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // j$.util.W
    public final boolean tryAdvance(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return false;
    }

    @Override // j$.util.W
    public final void forEachRemaining(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
    }
}
