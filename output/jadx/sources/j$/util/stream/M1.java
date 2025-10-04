package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;

/* loaded from: classes4.dex */
final class M1 implements S1, InterfaceC1414k2 {
    private int a;
    final /* synthetic */ int b;
    final /* synthetic */ IntBinaryOperator c;

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

    /* JADX INFO: Access modifiers changed from: package-private */
    public M1(int i, IntBinaryOperator intBinaryOperator) {
        this.b = i;
        this.c = intBinaryOperator;
    }

    @Override // j$.util.stream.S1
    public final void g(S1 s1) {
        accept(((M1) s1).a);
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        this.a = this.b;
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final void accept(int i) {
        this.a = this.c.applyAsInt(this.a, i);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return Integer.valueOf(this.a);
    }
}
