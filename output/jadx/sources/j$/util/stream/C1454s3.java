package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.s3, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1454s3 extends AbstractC1375c3 implements j$.util.W {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1344b.b(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1344b.g(this, consumer);
    }

    @Override // j$.util.stream.AbstractC1375c3
    final AbstractC1375c3 e(Spliterator spliterator) {
        return new AbstractC1375c3(this.b, spliterator, this.a);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.function.IntConsumer, java.lang.Object, j$.util.stream.V2, j$.util.stream.d] */
    @Override // j$.util.stream.AbstractC1375c3
    final void d() {
        ?? v2 = new V2();
        this.h = v2;
        Objects.requireNonNull(v2);
        this.e = this.b.W(new C1449r3(v2, 0));
        this.f = new C1361a(3, this);
    }

    @Override // j$.util.stream.AbstractC1375c3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.W) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC1375c3, j$.util.Spliterator
    public final j$.util.W trySplit() {
        return (j$.util.W) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC1375c3, j$.util.Spliterator
    public final j$.util.c0 trySplit() {
        return (j$.util.W) super.trySplit();
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(IntConsumer intConsumer) {
        int i;
        Objects.requireNonNull(intConsumer);
        boolean a = a();
        if (a) {
            R2 r2 = (R2) this.h;
            long j = this.g;
            int u = r2.u(j);
            if (r2.c == 0 && u == 0) {
                i = ((int[]) r2.e)[(int) j];
            } else {
                i = ((int[][]) r2.f)[u][(int) (j - r2.d[u])];
            }
            intConsumer.accept(i);
        }
        return a;
    }

    @Override // j$.util.c0
    public final void forEachRemaining(IntConsumer intConsumer) {
        if (this.h == null && !this.i) {
            Objects.requireNonNull(intConsumer);
            c();
            Objects.requireNonNull(intConsumer);
            C1449r3 c1449r3 = new C1449r3(intConsumer, 1);
            this.b.V(this.d, c1449r3);
            this.i = true;
            return;
        }
        do {
        } while (tryAdvance(intConsumer));
    }
}
