package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;

/* loaded from: classes4.dex */
final class H1 extends T1 implements S1 {
    final /* synthetic */ Object b;
    final /* synthetic */ BiFunction c;
    final /* synthetic */ BinaryOperator d;

    @Override // j$.util.stream.InterfaceC1424m2, j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        AbstractC1471w0.a();
        throw null;
    }

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

    @Override // j$.util.stream.S1
    public final void g(S1 s1) {
        this.a = this.d.apply(this.a, ((H1) s1).a);
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        this.a = this.b;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void p(Object obj) {
        this.a = this.c.apply(this.a, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public H1(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        this.b = obj;
        this.c = biFunction;
        this.d = binaryOperator;
    }
}
