package j$.util;

import java.util.function.IntConsumer;

/* renamed from: j$.util.z, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1496z implements IntConsumer {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    public final void b(C1496z c1496z) {
        this.count += c1496z.count;
        this.sum += c1496z.sum;
        this.min = Math.min(this.min, c1496z.min);
        this.max = Math.max(this.max, c1496z.max);
    }

    public final String toString() {
        String simpleName = C1496z.class.getSimpleName();
        Long valueOf = Long.valueOf(this.count);
        Long valueOf2 = Long.valueOf(this.sum);
        Integer valueOf3 = Integer.valueOf(this.min);
        long j = this.count;
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", simpleName, valueOf, valueOf2, valueOf3, Double.valueOf(j > 0 ? this.sum / j : 0.0d), Integer.valueOf(this.max));
    }
}
