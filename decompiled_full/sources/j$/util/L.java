package j$.util;

import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes4.dex */
public final /* synthetic */ class L implements LongConsumer {
    public final /* synthetic */ Consumer a;

    public /* synthetic */ L(Consumer consumer) {
        this.a = consumer;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.a.accept(Long.valueOf(j));
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }
}
