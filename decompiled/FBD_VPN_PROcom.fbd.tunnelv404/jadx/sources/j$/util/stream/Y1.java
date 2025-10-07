package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* loaded from: classes4.dex */
abstract class Y1 extends T1 implements S1 {
    long b;

    public /* synthetic */ void accept(double d) {
        AbstractC1471w0.a();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC1471w0.k();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC1471w0.l();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void k() {
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ boolean n() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        this.b = 0L;
    }
}
