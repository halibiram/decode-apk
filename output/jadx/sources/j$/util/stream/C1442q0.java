package j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongPredicate;

/* renamed from: j$.util.stream.q0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1442q0 extends AbstractC1451s0 implements InterfaceC1419l2 {
    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        j((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC1419l2
    public final /* synthetic */ void j(Long l) {
        AbstractC1471w0.i(this, l);
    }

    @Override // j$.util.stream.AbstractC1451s0, j$.util.stream.InterfaceC1424m2
    public final void accept(long j) {
        if (this.a) {
            return;
        }
        LongPredicate longPredicate = null;
        longPredicate.test(j);
        throw null;
    }
}
