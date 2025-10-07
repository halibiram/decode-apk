package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes4.dex */
public final /* synthetic */ class N implements PrimitiveIterator.OfLong {
    public final /* synthetic */ PrimitiveIterator$OfLong a;

    private /* synthetic */ N(PrimitiveIterator$OfLong primitiveIterator$OfLong) {
        this.a = primitiveIterator$OfLong;
    }

    public static /* synthetic */ PrimitiveIterator.OfLong a(PrimitiveIterator$OfLong primitiveIterator$OfLong) {
        if (primitiveIterator$OfLong == null) {
            return null;
        }
        return primitiveIterator$OfLong instanceof M ? ((M) primitiveIterator$OfLong).a : new N(primitiveIterator$OfLong);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator$OfLong primitiveIterator$OfLong = this.a;
        if (obj instanceof N) {
            obj = ((N) obj).a;
        }
        return primitiveIterator$OfLong.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.a.forEachRemaining((Object) longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.a.forEachRemaining(consumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ Long next() {
        return this.a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong
    public final /* synthetic */ long nextLong() {
        return this.a.nextLong();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.a.remove();
    }
}
