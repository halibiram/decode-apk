package j$.util.stream;

import java.util.function.IntConsumer;

/* loaded from: classes4.dex */
final class G extends J implements InterfaceC1414k2 {
    static final E c;
    static final E d;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // j$.util.stream.J, j$.util.stream.InterfaceC1424m2
    public final void accept(int i) {
        p(Integer.valueOf(i));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return j$.util.D.d(((Integer) this.b).intValue());
        }
        return null;
    }

    static {
        EnumC1370b3 enumC1370b3 = EnumC1370b3.INT_VALUE;
        c = new E(true, enumC1370b3, j$.util.D.a(), new C1441q(6), new C1411k(7));
        d = new E(false, enumC1370b3, j$.util.D.a(), new C1441q(6), new C1411k(7));
    }
}
