package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntPredicate;

/* renamed from: j$.util.stream.p0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1437p0 extends AbstractC1451s0 implements InterfaceC1414k2 {
    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        m((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC1414k2
    public final /* synthetic */ void m(Integer num) {
        AbstractC1471w0.g(this, num);
    }

    @Override // j$.util.stream.AbstractC1451s0, j$.util.stream.InterfaceC1424m2
    public final void accept(int i) {
        if (this.a) {
            return;
        }
        IntPredicate intPredicate = null;
        intPredicate.test(i);
        throw null;
    }
}
