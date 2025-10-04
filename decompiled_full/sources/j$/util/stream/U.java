package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntToDoubleFunction;
import java.util.function.IntToLongFunction;
import java.util.function.IntUnaryOperator;

/* loaded from: classes4.dex */
final class U extends AbstractC1394g2 {
    public final /* synthetic */ int b;
    final /* synthetic */ AbstractC1366b c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ U(AbstractC1366b abstractC1366b, InterfaceC1424m2 interfaceC1424m2, int i) {
        super(interfaceC1424m2);
        this.b = i;
        this.c = abstractC1366b;
    }

    @Override // j$.util.stream.AbstractC1394g2, j$.util.stream.InterfaceC1424m2
    public void l(long j) {
        switch (this.b) {
            case 5:
                this.a.l(-1L);
                return;
            default:
                super.l(j);
                return;
        }
    }

    @Override // j$.util.stream.InterfaceC1414k2, j$.util.stream.InterfaceC1424m2
    public final void accept(int i) {
        switch (this.b) {
            case 0:
                this.a.accept((InterfaceC1424m2) ((IntFunction) ((C1455t) this.c).o).apply(i));
                return;
            case 1:
                ((IntConsumer) ((V) this.c).o).accept(i);
                this.a.accept(i);
                return;
            case 2:
                ((C1465v) this.c).getClass();
                IntUnaryOperator intUnaryOperator = null;
                intUnaryOperator.applyAsInt(i);
                throw null;
            case 3:
                ((C1470w) this.c).getClass();
                IntToLongFunction intToLongFunction = null;
                intToLongFunction.applyAsLong(i);
                throw null;
            case 4:
                ((C1460u) this.c).getClass();
                IntToDoubleFunction intToDoubleFunction = null;
                intToDoubleFunction.applyAsDouble(i);
                throw null;
            default:
                ((C1465v) this.c).getClass();
                IntPredicate intPredicate = null;
                intPredicate.test(i);
                throw null;
        }
    }
}
