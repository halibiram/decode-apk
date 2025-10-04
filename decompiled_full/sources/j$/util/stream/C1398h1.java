package j$.util.stream;

import j$.util.AbstractC1344b;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.h1, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1398h1 extends AbstractC1413k1 implements j$.util.T {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1344b.a(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1344b.f(this, consumer);
    }
}
