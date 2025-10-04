package j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.LongPredicate;
import java.util.function.LongToDoubleFunction;
import java.util.function.LongToIntFunction;
import java.util.function.LongUnaryOperator;

/* renamed from: j$.util.stream.d0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1377d0 extends AbstractC1399h2 {
    public final /* synthetic */ int b;
    final /* synthetic */ AbstractC1366b c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1377d0(AbstractC1366b abstractC1366b, InterfaceC1424m2 interfaceC1424m2, int i) {
        super(interfaceC1424m2);
        this.b = i;
        this.c = abstractC1366b;
    }

    @Override // j$.util.stream.AbstractC1399h2, j$.util.stream.InterfaceC1424m2
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

    @Override // j$.util.stream.InterfaceC1419l2, j$.util.stream.InterfaceC1424m2
    public final void accept(long j) {
        switch (this.b) {
            case 0:
                this.a.accept((InterfaceC1424m2) ((LongFunction) ((C1455t) this.c).o).apply(j));
                return;
            case 1:
                ((C1470w) this.c).getClass();
                LongUnaryOperator longUnaryOperator = null;
                longUnaryOperator.applyAsLong(j);
                throw null;
            case 2:
                ((C1465v) this.c).getClass();
                LongToIntFunction longToIntFunction = null;
                longToIntFunction.applyAsInt(j);
                throw null;
            case 3:
                ((C1460u) this.c).getClass();
                LongToDoubleFunction longToDoubleFunction = null;
                longToDoubleFunction.applyAsDouble(j);
                throw null;
            case 4:
                ((C1470w) this.c).getClass();
                LongPredicate longPredicate = null;
                longPredicate.test(j);
                throw null;
            default:
                ((LongConsumer) ((C1392g0) this.c).o).accept(j);
                this.a.accept(j);
                return;
        }
    }
}
