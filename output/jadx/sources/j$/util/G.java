package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes4.dex */
public final /* synthetic */ class G implements PrimitiveIterator$OfDouble, A {
    public final /* synthetic */ PrimitiveIterator.OfDouble a;

    private /* synthetic */ G(PrimitiveIterator.OfDouble ofDouble) {
        this.a = ofDouble;
    }

    public static /* synthetic */ PrimitiveIterator$OfDouble a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof H ? ((H) ofDouble).a : new G(ofDouble);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfDouble ofDouble = this.a;
        if (obj instanceof G) {
            obj = ((G) obj).a;
        }
        return ofDouble.equals(obj);
    }

    @Override // j$.util.O
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // j$.util.PrimitiveIterator$OfDouble, java.util.Iterator, j$.util.A
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.a.forEachRemaining((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.PrimitiveIterator$OfDouble
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.PrimitiveIterator$OfDouble, java.util.Iterator
    public final /* synthetic */ Double next() {
        return this.a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.a.next();
    }

    @Override // j$.util.PrimitiveIterator$OfDouble
    public final /* synthetic */ double nextDouble() {
        return this.a.nextDouble();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.a.remove();
    }
}
