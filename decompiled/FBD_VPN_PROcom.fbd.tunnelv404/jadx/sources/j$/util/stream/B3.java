package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes4.dex */
final class B3 extends E3 implements j$.util.T, DoubleConsumer {
    double f;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1344b.a(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1344b.f(this, consumer);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Spliterator, j$.util.stream.H3] */
    @Override // j$.util.stream.H3
    protected final Spliterator c(Spliterator spliterator) {
        return new H3((j$.util.T) spliterator, this);
    }

    @Override // j$.util.stream.E3
    protected final void e(Object obj) {
        ((DoubleConsumer) obj).accept(this.f);
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.f = d;
    }

    @Override // j$.util.stream.E3
    protected final AbstractC1395g3 h(int i) {
        return new C1380d3(i);
    }
}
