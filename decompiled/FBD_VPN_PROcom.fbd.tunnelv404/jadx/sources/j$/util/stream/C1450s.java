package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoublePredicate;
import java.util.function.DoubleToIntFunction;
import java.util.function.DoubleToLongFunction;
import java.util.function.DoubleUnaryOperator;

/* renamed from: j$.util.stream.s, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1450s extends AbstractC1389f2 {
    public final /* synthetic */ int b;
    final /* synthetic */ AbstractC1366b c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1450s(AbstractC1366b abstractC1366b, InterfaceC1424m2 interfaceC1424m2, int i) {
        super(interfaceC1424m2);
        this.b = i;
        this.c = abstractC1366b;
    }

    @Override // j$.util.stream.AbstractC1389f2, j$.util.stream.InterfaceC1424m2
    public void l(long j) {
        switch (this.b) {
            case 4:
                this.a.l(-1L);
                return;
            default:
                super.l(j);
                return;
        }
    }

    @Override // j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        switch (this.b) {
            case 0:
                this.a.accept((InterfaceC1424m2) ((DoubleFunction) ((C1455t) this.c).o).apply(d));
                return;
            case 1:
                ((C1460u) this.c).getClass();
                DoubleUnaryOperator doubleUnaryOperator = null;
                doubleUnaryOperator.applyAsDouble(d);
                throw null;
            case 2:
                ((C1465v) this.c).getClass();
                DoubleToIntFunction doubleToIntFunction = null;
                doubleToIntFunction.applyAsInt(d);
                throw null;
            case 3:
                ((C1470w) this.c).getClass();
                DoubleToLongFunction doubleToLongFunction = null;
                doubleToLongFunction.applyAsLong(d);
                throw null;
            case 4:
                ((C1460u) this.c).getClass();
                DoublePredicate doublePredicate = null;
                doublePredicate.test(d);
                throw null;
            default:
                ((DoubleConsumer) ((C1480y) this.c).o).accept(d);
                this.a.accept(d);
                return;
        }
    }
}
