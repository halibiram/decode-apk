package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class C1 extends AbstractC1471w0 {
    public final /* synthetic */ int h;
    final /* synthetic */ Object i;
    final /* synthetic */ Object j;
    final /* synthetic */ Object k;

    public /* synthetic */ C1(EnumC1370b3 enumC1370b3, Object obj, Object obj2, Object obj3, int i) {
        this.h = i;
        this.j = obj;
        this.k = obj2;
        this.i = obj3;
    }

    @Override // j$.util.stream.AbstractC1471w0
    public final S1 c0() {
        switch (this.h) {
            case 0:
                return new C1487z1((Supplier) this.i, (ObjLongConsumer) this.k, (r) this.j);
            case 1:
                return new F1((Supplier) this.i, (ObjDoubleConsumer) this.k, (r) this.j);
            case 2:
                return new H1(this.i, (BiFunction) this.k, (BinaryOperator) this.j);
            case 3:
                return new L1((Supplier) this.i, (BiConsumer) this.k, (BiConsumer) this.j);
            default:
                return new P1((Supplier) this.i, (ObjIntConsumer) this.k, (r) this.j);
        }
    }
}
