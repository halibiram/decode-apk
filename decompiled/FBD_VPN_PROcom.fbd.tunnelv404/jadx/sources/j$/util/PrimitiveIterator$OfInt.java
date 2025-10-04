package j$.util;

import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes4.dex */
public interface PrimitiveIterator$OfInt extends O {
    @Override // java.util.Iterator, j$.util.A
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(IntConsumer intConsumer);

    @Override // java.util.Iterator
    Integer next();

    int nextInt();
}
