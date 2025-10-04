package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class O extends P {
    final Consumer b;

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
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
    public O(Consumer consumer, boolean z) {
        super(z);
        this.b = consumer;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.b.accept(obj);
    }
}
