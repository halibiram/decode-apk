package j$.util;

import java.util.function.DoubleConsumer;

/* loaded from: classes4.dex */
public interface T extends c0 {
    void forEachRemaining(DoubleConsumer doubleConsumer);

    boolean tryAdvance(DoubleConsumer doubleConsumer);

    @Override // j$.util.c0, j$.util.Spliterator
    T trySplit();
}
