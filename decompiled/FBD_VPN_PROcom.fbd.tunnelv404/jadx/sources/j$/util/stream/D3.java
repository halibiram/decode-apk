package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes4.dex */
final class D3 extends E3 implements j$.util.Z, LongConsumer {
    long f;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1344b.c(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1344b.h(this, consumer);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Spliterator, j$.util.stream.H3] */
    @Override // j$.util.stream.H3
    protected final Spliterator c(Spliterator spliterator) {
        return new H3((j$.util.Z) spliterator, this);
    }

    @Override // j$.util.stream.E3
    protected final void e(Object obj) {
        ((LongConsumer) obj).accept(this.f);
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f = j;
    }

    @Override // j$.util.stream.E3
    protected final AbstractC1395g3 h(int i) {
        return new C1390f3(i);
    }
}
