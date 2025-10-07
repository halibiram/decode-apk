package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes4.dex */
final class J3 extends AbstractC1375c3 {
    @Override // j$.util.stream.AbstractC1375c3
    final AbstractC1375c3 e(Spliterator spliterator) {
        return new AbstractC1375c3(this.b, spliterator, this.a);
    }

    @Override // j$.util.stream.AbstractC1375c3
    final void d() {
        W2 w2 = new W2();
        this.h = w2;
        Objects.requireNonNull(w2);
        this.e = this.b.W(new I3(w2, 0));
        this.f = new C1361a(5, this);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean a = a();
        if (a) {
            W2 w2 = (W2) this.h;
            long j = this.g;
            if (w2.c != 0) {
                if (j >= w2.count()) {
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                for (int i = 0; i <= w2.c; i++) {
                    long j2 = w2.d[i];
                    Object[] objArr = w2.f[i];
                    if (j < objArr.length + j2) {
                        obj = objArr[(int) (j - j2)];
                    }
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            if (j < w2.b) {
                obj = w2.e[(int) j];
            } else {
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            consumer.p(obj);
        }
        return a;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.h == null && !this.i) {
            Objects.requireNonNull(consumer);
            c();
            Objects.requireNonNull(consumer);
            I3 i3 = new I3(consumer, 1);
            this.b.V(this.d, i3);
            this.i = true;
            return;
        }
        do {
        } while (tryAdvance(consumer));
    }
}
