package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.q3, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1445q3 extends AbstractC1375c3 implements j$.util.T {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1344b.a(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1344b.f(this, consumer);
    }

    @Override // j$.util.stream.AbstractC1375c3
    final AbstractC1375c3 e(Spliterator spliterator) {
        return new AbstractC1375c3(this.b, spliterator, this.a);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.function.DoubleConsumer, j$.util.stream.V2, j$.util.stream.d] */
    @Override // j$.util.stream.AbstractC1375c3
    final void d() {
        ?? v2 = new V2();
        this.h = v2;
        Objects.requireNonNull(v2);
        this.e = this.b.W(new C1440p3(v2, 0));
        this.f = new C1361a(2, this);
    }

    @Override // j$.util.stream.AbstractC1375c3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.T) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC1375c3, j$.util.Spliterator
    public final j$.util.T trySplit() {
        return (j$.util.T) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC1375c3, j$.util.Spliterator
    public final j$.util.c0 trySplit() {
        return (j$.util.T) super.trySplit();
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        double d;
        Objects.requireNonNull(doubleConsumer);
        boolean a = a();
        if (a) {
            P2 p2 = (P2) this.h;
            long j = this.g;
            int u = p2.u(j);
            if (p2.c == 0 && u == 0) {
                d = ((double[]) p2.e)[(int) j];
            } else {
                d = ((double[][]) p2.f)[u][(int) (j - p2.d[u])];
            }
            doubleConsumer.accept(d);
        }
        return a;
    }

    @Override // j$.util.c0
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        if (this.h == null && !this.i) {
            Objects.requireNonNull(doubleConsumer);
            c();
            Objects.requireNonNull(doubleConsumer);
            C1440p3 c1440p3 = new C1440p3(doubleConsumer, 1);
            this.b.V(this.d, c1440p3);
            this.i = true;
            return;
        }
        do {
        } while (tryAdvance(doubleConsumer));
    }
}
