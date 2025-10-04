package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class M extends P implements InterfaceC1414k2 {
    final IntConsumer b;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void p(Object obj) {
        m((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.InterfaceC1414k2
    public final /* synthetic */ void m(Integer num) {
        AbstractC1471w0.g(this, num);
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
    public M(IntConsumer intConsumer, boolean z) {
        super(z);
        this.b = intConsumer;
    }

    @Override // j$.util.stream.P, j$.util.stream.InterfaceC1424m2
    public final void accept(int i) {
        this.b.accept(i);
    }
}
