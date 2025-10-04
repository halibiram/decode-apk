package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class L extends P implements InterfaceC1409j2 {
    final DoubleConsumer b;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void p(Object obj) {
        p((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.InterfaceC1409j2
    public final /* synthetic */ void p(Double d) {
        AbstractC1471w0.e(this, d);
    }

    @Override // j$.util.stream.L3
    public final Object b(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        abstractC1366b.V(spliterator, this);
        return null;
    }

    @Override // j$.util.stream.L3
    public final /* bridge */ /* synthetic */ Object c(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        e(abstractC1366b, spliterator);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public L(DoubleConsumer doubleConsumer, boolean z) {
        super(z);
        this.b = doubleConsumer;
    }

    @Override // j$.util.stream.P, j$.util.stream.InterfaceC1424m2, j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.b.accept(d);
    }
}
