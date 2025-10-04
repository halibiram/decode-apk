package j$.util.stream;

import java.util.function.DoubleBinaryOperator;

/* loaded from: classes4.dex */
final class G1 extends AbstractC1471w0 {
    final /* synthetic */ DoubleBinaryOperator h;
    final /* synthetic */ double i;

    @Override // j$.util.stream.AbstractC1471w0
    public final S1 c0() {
        return new B1(this.i, this.h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public G1(EnumC1370b3 enumC1370b3, DoubleBinaryOperator doubleBinaryOperator, double d) {
        this.h = doubleBinaryOperator;
        this.i = d;
    }
}
