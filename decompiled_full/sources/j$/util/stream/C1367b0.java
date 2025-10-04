package j$.util.stream;

import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.b0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1367b0 implements LongConsumer {
    public final /* synthetic */ InterfaceC1424m2 a;

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.a.accept(j);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }
}
