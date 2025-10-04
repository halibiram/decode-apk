package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class m4 implements Spliterator {
    final Spliterator a;
    final AtomicBoolean b;
    boolean c;
    int d;

    abstract Spliterator c(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1344b.e(this, i);
    }

    @Override // j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        do {
        } while (tryAdvance(consumer));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m4(Spliterator spliterator) {
        this.c = true;
        this.a = spliterator;
        this.b = new AtomicBoolean();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m4(Spliterator spliterator, m4 m4Var) {
        this.c = true;
        this.a = spliterator;
        m4Var.getClass();
        this.b = m4Var.b;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.a.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.a.characteristics() & (-16449);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return this.a.getComparator();
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        Spliterator trySplit = this.a.trySplit();
        if (trySplit != null) {
            return c(trySplit);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        return (this.d == 0 && this.b.get()) ? false : true;
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.W trySplit() {
        return (j$.util.W) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.Z trySplit() {
        return (j$.util.Z) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.T trySplit() {
        return (j$.util.T) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.c0 trySplit() {
        return (j$.util.c0) trySplit();
    }
}
