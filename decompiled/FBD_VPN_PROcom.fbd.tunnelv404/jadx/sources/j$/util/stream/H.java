package j$.util.stream;

import java.util.function.LongConsumer;

/* loaded from: classes4.dex */
final class H extends J implements InterfaceC1419l2 {
    static final E c;
    static final E d;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // j$.util.stream.J, j$.util.stream.InterfaceC1424m2
    public final void accept(long j) {
        p(Long.valueOf(j));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return j$.util.E.d(((Long) this.b).longValue());
        }
        return null;
    }

    static {
        EnumC1370b3 enumC1370b3 = EnumC1370b3.LONG_VALUE;
        c = new E(true, enumC1370b3, j$.util.E.a(), new C1441q(7), new C1411k(8));
        d = new E(false, enumC1370b3, j$.util.E.a(), new C1441q(7), new C1411k(8));
    }
}
