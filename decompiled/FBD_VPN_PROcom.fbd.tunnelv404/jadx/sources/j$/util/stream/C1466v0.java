package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: j$.util.stream.v0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1466v0 extends AbstractC1371c {
    private final C1461u0 j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1466v0(C1461u0 c1461u0, AbstractC1366b abstractC1366b, Spliterator spliterator) {
        super(abstractC1366b, spliterator);
        this.j = c1461u0;
    }

    C1466v0(C1466v0 c1466v0, Spliterator spliterator) {
        super(c1466v0, spliterator);
        this.j = c1466v0.j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public final AbstractC1381e e(Spliterator spliterator) {
        return new C1466v0(this, spliterator);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public final Object a() {
        boolean z;
        AbstractC1366b abstractC1366b = this.a;
        AbstractC1451s0 abstractC1451s0 = (AbstractC1451s0) this.j.b.get();
        abstractC1366b.V(this.b, abstractC1451s0);
        boolean z2 = abstractC1451s0.b;
        z = this.j.a.b;
        if (z2 == z) {
            Boolean valueOf = Boolean.valueOf(z2);
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, valueOf) && atomicReference.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.AbstractC1371c
    protected final Object j() {
        boolean z;
        z = this.j.a.b;
        return Boolean.valueOf(!z);
    }
}
