package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
final class P1 extends T1 implements S1, InterfaceC1414k2 {
    final /* synthetic */ Supplier b;
    final /* synthetic */ ObjIntConsumer c;
    final /* synthetic */ r d;

    @Override // j$.util.stream.InterfaceC1424m2, j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        AbstractC1471w0.a();
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
        m((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void k() {
    }

    @Override // j$.util.stream.InterfaceC1414k2
    public final /* synthetic */ void m(Integer num) {
        AbstractC1471w0.g(this, num);
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ boolean n() {
        return false;
    }

    @Override // j$.util.stream.S1
    public final void g(S1 s1) {
        this.a = this.d.apply(this.a, ((P1) s1).a);
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        this.a = this.b.get();
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final void accept(int i) {
        this.c.accept(this.a, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public P1(Supplier supplier, ObjIntConsumer objIntConsumer, r rVar) {
        this.b = supplier;
        this.c = objIntConsumer;
        this.d = rVar;
    }
}
