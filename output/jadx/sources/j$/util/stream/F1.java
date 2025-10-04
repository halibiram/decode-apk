package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
final class F1 extends T1 implements S1, InterfaceC1409j2 {
    final /* synthetic */ Supplier b;
    final /* synthetic */ ObjDoubleConsumer c;
    final /* synthetic */ r d;

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void accept(int i) {
        AbstractC1471w0.k();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void accept(long j) {
        AbstractC1471w0.l();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void p(Object obj) {
        p((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void k() {
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ boolean n() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC1409j2
    public final /* synthetic */ void p(Double d) {
        AbstractC1471w0.e(this, d);
    }

    @Override // j$.util.stream.S1
    public final void g(S1 s1) {
        this.a = this.d.apply(this.a, ((F1) s1).a);
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        this.a = this.b.get();
    }

    @Override // j$.util.stream.InterfaceC1424m2, j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.c.accept(this.a, d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public F1(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, r rVar) {
        this.b = supplier;
        this.c = objDoubleConsumer;
        this.d = rVar;
    }
}
