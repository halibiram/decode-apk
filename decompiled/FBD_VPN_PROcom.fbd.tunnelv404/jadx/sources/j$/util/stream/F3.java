package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.Comparator;
import java.util.function.Consumer;

/* loaded from: classes4.dex */
final class F3 extends H3 implements Spliterator, Consumer {
    Object f;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
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
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f = obj;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (d() != G3.NO_MORE && this.a.tryAdvance(this)) {
            if (b(1L) == 1) {
                consumer.accept(this.f);
                this.f = null;
                return true;
            }
        }
        return false;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C1400h3 c1400h3 = null;
        while (true) {
            G3 d = d();
            if (d == G3.NO_MORE) {
                return;
            }
            G3 g3 = G3.MAYBE_MORE;
            Spliterator spliterator = this.a;
            if (d == g3) {
                int i = this.c;
                if (c1400h3 == null) {
                    c1400h3 = new C1400h3(i);
                } else {
                    c1400h3.a = 0;
                }
                long j = 0;
                while (spliterator.tryAdvance(c1400h3)) {
                    j++;
                    if (j >= i) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long b = b(j);
                for (int i2 = 0; i2 < b; i2++) {
                    consumer.accept(c1400h3.b[i2]);
                }
            } else {
                spliterator.forEachRemaining(consumer);
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Spliterator, j$.util.stream.H3] */
    @Override // j$.util.stream.H3
    protected final Spliterator c(Spliterator spliterator) {
        return new H3(spliterator, this);
    }
}
