package j$.util.stream;

import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.f3, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1390f3 extends AbstractC1395g3 implements LongConsumer {
    final long[] c;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1390f3(int i) {
        this.c = new long[i];
    }

    @Override // j$.util.stream.AbstractC1395g3
    public final void b(Object obj, long j) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i = 0; i < j; i++) {
            longConsumer.accept(this.c[i]);
        }
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.b;
        this.b = i + 1;
        this.c[i] = j;
    }
}
