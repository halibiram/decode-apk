package j$.util;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes4.dex */
public interface PrimitiveIterator$OfDouble extends O {
    @Override // java.util.Iterator, j$.util.A
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(DoubleConsumer doubleConsumer);

    @Override // java.util.Iterator
    Double next();

    double nextDouble();
}
