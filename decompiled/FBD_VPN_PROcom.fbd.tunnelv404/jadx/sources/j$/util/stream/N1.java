package j$.util.stream;

import java.util.function.IntBinaryOperator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class N1 extends AbstractC1471w0 {
    final /* synthetic */ IntBinaryOperator h;
    final /* synthetic */ int i;

    @Override // j$.util.stream.AbstractC1471w0
    public final S1 c0() {
        return new M1(this.i, this.h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public N1(EnumC1370b3 enumC1370b3, IntBinaryOperator intBinaryOperator, int i) {
        this.h = intBinaryOperator;
        this.i = i;
    }
}
