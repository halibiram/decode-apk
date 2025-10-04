package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes4.dex */
public final /* synthetic */ class M implements PrimitiveIterator$OfLong, A {
    public final /* synthetic */ PrimitiveIterator.OfLong a;

    private /* synthetic */ M(PrimitiveIterator.OfLong ofLong) {
        this.a = ofLong;
    }

    public static /* synthetic */ PrimitiveIterator$OfLong a(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof N ? ((N) ofLong).a : new M(ofLong);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfLong ofLong = this.a;
        if (obj instanceof M) {
            obj = ((M) obj).a;
        }
        return ofLong.equals(obj);
    }

    @Override // j$.util.O
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // j$.util.PrimitiveIterator$OfLong, java.util.Iterator, j$.util.A
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.a.forEachRemaining((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.PrimitiveIterator$OfLong
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.PrimitiveIterator$OfLong, java.util.Iterator
    public final /* synthetic */ Long next() {
        return this.a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.a.next();
    }

    @Override // j$.util.PrimitiveIterator$OfLong
    public final /* synthetic */ long nextLong() {
        return this.a.nextLong();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.a.remove();
    }
}
