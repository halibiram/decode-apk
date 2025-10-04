package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes4.dex */
public final /* synthetic */ class K implements PrimitiveIterator.OfInt {
    public final /* synthetic */ PrimitiveIterator$OfInt a;

    private /* synthetic */ K(PrimitiveIterator$OfInt primitiveIterator$OfInt) {
        this.a = primitiveIterator$OfInt;
    }

    public static /* synthetic */ PrimitiveIterator.OfInt a(PrimitiveIterator$OfInt primitiveIterator$OfInt) {
        if (primitiveIterator$OfInt == null) {
            return null;
        }
        return primitiveIterator$OfInt instanceof J ? ((J) primitiveIterator$OfInt).a : new K(primitiveIterator$OfInt);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator$OfInt primitiveIterator$OfInt = this.a;
        if (obj instanceof K) {
            obj = ((K) obj).a;
        }
        return primitiveIterator$OfInt.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.a.forEachRemaining((Object) intConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.a.forEachRemaining(consumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt
    /* renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ Integer next() {
        return this.a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt
    public final /* synthetic */ int nextInt() {
        return this.a.nextInt();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.a.remove();
    }
}
