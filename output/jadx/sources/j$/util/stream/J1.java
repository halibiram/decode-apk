package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
final class J1 extends AbstractC1471w0 {
    final /* synthetic */ BinaryOperator h;
    final /* synthetic */ BiConsumer i;
    final /* synthetic */ Supplier j;
    final /* synthetic */ Collector k;

    @Override // j$.util.stream.AbstractC1471w0
    public final S1 c0() {
        return new K1(this.j, this.i, this.h);
    }

    @Override // j$.util.stream.AbstractC1471w0, j$.util.stream.L3
    public final int d() {
        if (this.k.characteristics().contains(EnumC1396h.UNORDERED)) {
            return EnumC1365a3.r;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public J1(EnumC1370b3 enumC1370b3, BinaryOperator binaryOperator, BiConsumer biConsumer, Supplier supplier, Collector collector) {
        this.h = binaryOperator;
        this.i = biConsumer;
        this.j = supplier;
        this.k = collector;
    }
}
