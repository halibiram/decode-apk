package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class N0 extends P0 {
    public final /* synthetic */ int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ N0(AbstractC1366b abstractC1366b, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator, int i) {
        super(abstractC1366b, spliterator, longFunction, binaryOperator);
        this.k = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.P0, j$.util.stream.AbstractC1381e
    public final AbstractC1381e e(Spliterator spliterator) {
        switch (this.k) {
            case 0:
                return new P0(this, spliterator);
            case 1:
                return new P0(this, spliterator);
            case 2:
                return new P0(this, spliterator);
            default:
                return new P0(this, spliterator);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.P0, j$.util.stream.AbstractC1381e
    public final /* bridge */ /* synthetic */ Object a() {
        switch (this.k) {
            case 0:
                return a();
            case 1:
                return a();
            case 2:
                return a();
            default:
                return a();
        }
    }
}
