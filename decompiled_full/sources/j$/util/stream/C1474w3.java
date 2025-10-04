package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.w3, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1474w3 extends AbstractC1484y3 implements j$.util.W {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1344b.b(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1344b.g(this, consumer);
    }

    /* JADX WARN: Type inference failed for: r10v0, types: [j$.util.stream.A3, j$.util.Spliterator] */
    @Override // j$.util.stream.A3
    protected final Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new A3((j$.util.W) spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.stream.AbstractC1484y3
    protected final Object b() {
        return new D0(1);
    }
}
