package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoublePredicate;

/* renamed from: j$.util.stream.r0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1446r0 extends AbstractC1451s0 implements InterfaceC1409j2 {
    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        p((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC1409j2
    public final /* synthetic */ void p(Double d) {
        AbstractC1471w0.e(this, d);
    }

    @Override // j$.util.stream.AbstractC1451s0, j$.util.stream.InterfaceC1424m2, j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        if (this.a) {
            return;
        }
        DoublePredicate doublePredicate = null;
        doublePredicate.test(d);
        throw null;
    }
}
