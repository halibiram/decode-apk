package j$.util.stream;

import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.IntBinaryOperator;
import java.util.function.LongBinaryOperator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class A1 extends AbstractC1471w0 {
    public final /* synthetic */ int h;
    final /* synthetic */ Object i;

    public /* synthetic */ A1(EnumC1370b3 enumC1370b3, Object obj, int i) {
        this.h = i;
        this.i = obj;
    }

    @Override // j$.util.stream.AbstractC1471w0
    public final S1 c0() {
        switch (this.h) {
            case 0:
                return new R1((LongBinaryOperator) this.i);
            case 1:
                return new D1((DoubleBinaryOperator) this.i);
            case 2:
                return new I1((BinaryOperator) this.i);
            default:
                return new O1((IntBinaryOperator) this.i);
        }
    }
}
