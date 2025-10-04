package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes4.dex */
abstract class H3 {
    protected final Spliterator a;
    protected final boolean b;
    protected final int c;
    private final long d;
    private final AtomicLong e;

    protected abstract Spliterator c(Spliterator spliterator);

    /* JADX INFO: Access modifiers changed from: package-private */
    public H3(Spliterator spliterator, long j, long j2) {
        this.a = spliterator;
        this.b = j2 < 0;
        this.d = j2 >= 0 ? j2 : 0L;
        this.c = 128;
        this.e = new AtomicLong(j2 >= 0 ? j + j2 : j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public H3(Spliterator spliterator, H3 h3) {
        this.a = spliterator;
        this.b = h3.b;
        this.e = h3.e;
        this.d = h3.d;
        this.c = h3.c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long b(long j) {
        AtomicLong atomicLong;
        long j2;
        boolean z;
        long min;
        do {
            atomicLong = this.e;
            j2 = atomicLong.get();
            z = this.b;
            if (j2 != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else {
                if (z) {
                    return j;
                }
                return 0L;
            }
        } while (!atomicLong.compareAndSet(j2, j2 - min));
        if (z) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.d;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final G3 d() {
        if (this.e.get() > 0) {
            return G3.MAYBE_MORE;
        }
        return this.b ? G3.UNLIMITED : G3.NO_MORE;
    }

    public final Spliterator trySplit() {
        Spliterator trySplit;
        if (this.e.get() == 0 || (trySplit = this.a.trySplit()) == null) {
            return null;
        }
        return c(trySplit);
    }

    public final long estimateSize() {
        return this.a.estimateSize();
    }

    public final int characteristics() {
        return this.a.characteristics() & (-16465);
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.c0 m1756trySplit() {
        return (j$.util.c0) trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.W m1754trySplit() {
        return (j$.util.W) trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.Z m1755trySplit() {
        return (j$.util.Z) trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.T m1753trySplit() {
        return (j$.util.T) trySplit();
    }
}
