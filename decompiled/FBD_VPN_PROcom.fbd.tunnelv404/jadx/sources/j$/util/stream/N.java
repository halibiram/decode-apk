package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class N extends P implements InterfaceC1419l2 {
    final LongConsumer b;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void p(Object obj) {
        j((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.InterfaceC1419l2
    public final /* synthetic */ void j(Long l) {
        AbstractC1471w0.i(this, l);
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
    public N(LongConsumer longConsumer, boolean z) {
        super(z);
        this.b = longConsumer;
    }

    @Override // j$.util.stream.P, j$.util.stream.InterfaceC1424m2
    public final void accept(long j) {
        this.b.accept(j);
    }
}
