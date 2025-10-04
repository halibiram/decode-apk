package j$.util.concurrent;

import j$.util.AbstractC1344b;
import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.util.Iterator;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* loaded from: classes4.dex */
public final class i extends b implements Set, j$.util.Set {
    private static final long serialVersionUID = 7249069246763182397L;

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ Stream parallelStream() {
        Stream d;
        d = StreamSupport.d(AbstractC1344b.x(this), true);
        return d;
    }

    @Override // java.util.Collection
    public final /* synthetic */ java.util.stream.Stream parallelStream() {
        Stream d;
        d = StreamSupport.d(AbstractC1344b.x(this), true);
        return Stream.Wrapper.convert(d);
    }

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ boolean removeIf(Predicate predicate) {
        return Collection.CC.$default$removeIf(this, predicate);
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ Stream stream() {
        Stream d;
        d = StreamSupport.d(AbstractC1344b.x(this), false);
        return d;
    }

    @Override // java.util.Collection
    public final /* synthetic */ java.util.stream.Stream stream() {
        Stream d;
        d = StreamSupport.d(AbstractC1344b.x(this), false);
        return Stream.Wrapper.convert(d);
    }

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
        Object[] array;
        array = toArray((Object[]) intFunction.apply(0));
        return array;
    }

    @Override // j$.util.concurrent.b, java.util.Collection
    public final boolean contains(Object obj) {
        return this.a.containsKey(obj);
    }

    @Override // j$.util.concurrent.b, java.util.Collection
    public final boolean remove(Object obj) {
        return this.a.remove(obj) != null;
    }

    @Override // j$.util.concurrent.b, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        ConcurrentHashMap concurrentHashMap = this.a;
        l[] lVarArr = concurrentHashMap.a;
        int length = lVarArr == null ? 0 : lVarArr.length;
        return new h(lVarArr, length, length, concurrentHashMap, 0);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        Object it = iterator();
        int i = 0;
        while (((a) it).hasNext()) {
            i += ((h) it).next().hashCode();
        }
        return i;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        Set set;
        return (obj instanceof Set) && ((set = (Set) obj) == this || (containsAll(set) && set.containsAll(this)));
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set, j$.util.Collection
    public final j$.util.Spliterator spliterator() {
        ConcurrentHashMap concurrentHashMap = this.a;
        long j = concurrentHashMap.j();
        l[] lVarArr = concurrentHashMap.a;
        int length = lVarArr == null ? 0 : lVarArr.length;
        return new j(lVarArr, length, 0, length, j < 0 ? 0L : j, 0);
    }

    @Override // java.lang.Iterable, j$.util.Collection
    public final void forEach(Consumer consumer) {
        consumer.getClass();
        l[] lVarArr = this.a.a;
        if (lVarArr == null) {
            return;
        }
        p pVar = new p(lVarArr, lVarArr.length, 0, lVarArr.length);
        while (true) {
            l a = pVar.a();
            if (a == null) {
                return;
            } else {
                consumer.p(a.b);
            }
        }
    }
}
