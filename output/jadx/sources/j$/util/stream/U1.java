package j$.util.stream;

import java.util.function.DoubleConsumer;

/* loaded from: classes4.dex */
final class U1 extends Y1 implements InterfaceC1409j2 {
    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void p(Object obj) {
        p((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC1409j2
    public final /* synthetic */ void p(Double d) {
        AbstractC1471w0.e(this, d);
    }

    @Override // j$.util.stream.T1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.b);
    }

    @Override // j$.util.stream.S1
    public final void g(S1 s1) {
        this.b += ((Y1) s1).b;
    }

    @Override // j$.util.stream.Y1, j$.util.stream.InterfaceC1424m2, j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.b++;
    }
}
