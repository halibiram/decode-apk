package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: classes4.dex */
abstract class A3 {
    final long a;
    final long b;
    Spliterator c;
    long d;
    long e;

    protected abstract Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4);

    /* JADX INFO: Access modifiers changed from: package-private */
    public A3(Spliterator spliterator, long j, long j2, long j3, long j4) {
        this.c = spliterator;
        this.a = j;
        this.b = j2;
        this.d = j3;
        this.e = j4;
    }

    public final Spliterator trySplit() {
        long j = this.e;
        if (this.a >= j || this.d >= j) {
            return null;
        }
        while (true) {
            Spliterator trySplit = this.c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.d;
            long min = Math.min(estimateSize, this.b);
            long j2 = this.a;
            if (j2 >= min) {
                this.d = min;
            } else {
                long j3 = this.b;
                if (min >= j3) {
                    this.c = trySplit;
                    this.e = min;
                } else {
                    long j4 = this.d;
                    if (j4 >= j2 && estimateSize <= j3) {
                        this.d = min;
                        return trySplit;
                    }
                    this.d = min;
                    return a(trySplit, j2, j3, j4, min);
                }
            }
        }
    }

    public final long estimateSize() {
        long j = this.e;
        long j2 = this.a;
        if (j2 < j) {
            return j - Math.max(j2, this.d);
        }
        return 0L;
    }

    public final int characteristics() {
        return this.c.characteristics();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.c0 m1752trySplit() {
        return (j$.util.c0) trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.W m1750trySplit() {
        return (j$.util.W) trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.Z m1751trySplit() {
        return (j$.util.Z) trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.T m1749trySplit() {
        return (j$.util.T) trySplit();
    }
}
