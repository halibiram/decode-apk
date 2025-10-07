package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.u3, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1464u3 extends AbstractC1375c3 implements j$.util.Z {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1344b.c(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1344b.h(this, consumer);
    }

    @Override // j$.util.stream.AbstractC1375c3
    final AbstractC1375c3 e(Spliterator spliterator) {
        return new AbstractC1375c3(this.b, spliterator, this.a);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, j$.util.stream.V2, j$.util.stream.d, java.util.function.LongConsumer] */
    @Override // j$.util.stream.AbstractC1375c3
    final void d() {
        ?? v2 = new V2();
        this.h = v2;
        Objects.requireNonNull(v2);
        this.e = this.b.W(new C1459t3(v2, 0));
        this.f = new C1361a(4, this);
    }

    @Override // j$.util.stream.AbstractC1375c3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.Z) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC1375c3, j$.util.Spliterator
    public final j$.util.Z trySplit() {
        return (j$.util.Z) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC1375c3, j$.util.Spliterator
    public final j$.util.c0 trySplit() {
        return (j$.util.Z) super.trySplit();
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(LongConsumer longConsumer) {
        long j;
        Objects.requireNonNull(longConsumer);
        boolean a = a();
        if (a) {
            T2 t2 = (T2) this.h;
            long j2 = this.g;
            int u = t2.u(j2);
            if (t2.c == 0 && u == 0) {
                j = ((long[]) t2.e)[(int) j2];
            } else {
                j = ((long[][]) t2.f)[u][(int) (j2 - t2.d[u])];
            }
            longConsumer.accept(j);
        }
        return a;
    }

    @Override // j$.util.c0
    public final void forEachRemaining(LongConsumer longConsumer) {
        if (this.h == null && !this.i) {
            Objects.requireNonNull(longConsumer);
            c();
            Objects.requireNonNull(longConsumer);
            C1459t3 c1459t3 = new C1459t3(longConsumer, 1);
            this.b.V(this.d, c1459t3);
            this.i = true;
            return;
        }
        do {
        } while (tryAdvance(longConsumer));
    }
}
