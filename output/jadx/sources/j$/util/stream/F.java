package j$.util.stream;

import java.util.function.DoubleConsumer;

/* loaded from: classes4.dex */
final class F extends J implements InterfaceC1409j2 {
    static final E c;
    static final E d;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.J, j$.util.stream.InterfaceC1424m2, j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        p(Double.valueOf(d2));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return j$.util.C.d(((Double) this.b).doubleValue());
        }
        return null;
    }

    static {
        EnumC1370b3 enumC1370b3 = EnumC1370b3.DOUBLE_VALUE;
        c = new E(true, enumC1370b3, j$.util.C.a(), new C1441q(5), new C1411k(6));
        d = new E(false, enumC1370b3, j$.util.C.a(), new C1441q(5), new C1411k(6));
    }
}
