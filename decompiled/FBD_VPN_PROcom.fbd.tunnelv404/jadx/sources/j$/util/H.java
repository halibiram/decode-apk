package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes4.dex */
public final /* synthetic */ class H implements PrimitiveIterator.OfDouble {
    public final /* synthetic */ PrimitiveIterator$OfDouble a;

    private /* synthetic */ H(PrimitiveIterator$OfDouble primitiveIterator$OfDouble) {
        this.a = primitiveIterator$OfDouble;
    }

    public static /* synthetic */ PrimitiveIterator.OfDouble a(PrimitiveIterator$OfDouble primitiveIterator$OfDouble) {
        if (primitiveIterator$OfDouble == null) {
            return null;
        }
        return primitiveIterator$OfDouble instanceof G ? ((G) primitiveIterator$OfDouble).a : new H(primitiveIterator$OfDouble);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator$OfDouble primitiveIterator$OfDouble = this.a;
        if (obj instanceof H) {
            obj = ((H) obj).a;
        }
        return primitiveIterator$OfDouble.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.a.forEachRemaining((Object) doubleConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.a.forEachRemaining(consumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    /* renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ Double next() {
        return this.a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    public final /* synthetic */ double nextDouble() {
        return this.a.nextDouble();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.a.remove();
    }
}
