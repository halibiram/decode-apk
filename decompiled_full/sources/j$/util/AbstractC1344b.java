package j$.util;

import j$.util.Collection;
import j$.util.Comparator;
import j$.util.List;
import j$.util.Map;
import j$.util.concurrent.ConcurrentMap;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.RandomAccess;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.b, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract /* synthetic */ class AbstractC1344b {
    public static /* synthetic */ void r(java.util.Map map, BiConsumer biConsumer) {
        if (map instanceof Map) {
            ((Map) map).forEach(biConsumer);
        } else if (map instanceof ConcurrentMap) {
            ConcurrentMap.CC.$default$forEach((java.util.concurrent.ConcurrentMap) map, biConsumer);
        } else {
            Map.CC.$default$forEach(map, biConsumer);
        }
    }

    public static /* synthetic */ Object t(java.util.Map map, Object obj, Object obj2) {
        return map instanceof Map ? ((Map) map).getOrDefault(obj, obj2) : map instanceof java.util.concurrent.ConcurrentMap ? ConcurrentMap.CC.$default$getOrDefault((java.util.concurrent.ConcurrentMap) map, obj, obj2) : Map.CC.$default$getOrDefault(map, obj, obj2);
    }

    public static /* synthetic */ Stream u(java.util.Collection collection) {
        return collection instanceof Collection ? ((Collection) collection).parallelStream() : Collection.CC.$default$parallelStream(collection);
    }

    public static /* synthetic */ Object v(java.util.Map map, Object obj, Object obj2) {
        return map instanceof Map ? ((Map) map).putIfAbsent(obj, obj2) : Map.CC.$default$putIfAbsent(map, obj, obj2);
    }

    public static /* synthetic */ void w(java.util.List list, java.util.Comparator comparator) {
        if (list instanceof List) {
            ((List) list).sort(comparator);
        } else {
            List.CC.$default$sort(list, comparator);
        }
    }

    public static /* synthetic */ Stream y(java.util.Collection collection) {
        return collection instanceof Collection ? ((Collection) collection).stream() : Collection.CC.$default$stream(collection);
    }

    public static /* synthetic */ java.util.Comparator z(java.util.Comparator comparator, java.util.Comparator comparator2) {
        return comparator instanceof Comparator ? ((Comparator) comparator).thenComparing(comparator2) : Comparator.CC.$default$thenComparing(comparator, comparator2);
    }

    public static java.util.Optional m(Optional optional) {
        if (optional == null) {
            return null;
        }
        if (optional.isPresent()) {
            return java.util.Optional.of(optional.get());
        }
        return java.util.Optional.empty();
    }

    public static Optional i(java.util.Optional optional) {
        if (optional == null) {
            return null;
        }
        if (optional.isPresent()) {
            return Optional.b(optional.get());
        }
        return Optional.a();
    }

    public static OptionalDouble n(C c) {
        if (c == null) {
            return null;
        }
        if (c.c()) {
            return OptionalDouble.of(c.b());
        }
        return OptionalDouble.empty();
    }

    public static C j(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        if (optionalDouble.isPresent()) {
            return C.d(optionalDouble.getAsDouble());
        }
        return C.a();
    }

    public static OptionalLong p(E e) {
        if (e == null) {
            return null;
        }
        if (e.c()) {
            return OptionalLong.of(e.b());
        }
        return OptionalLong.empty();
    }

    public static E l(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        if (optionalLong.isPresent()) {
            return E.d(optionalLong.getAsLong());
        }
        return E.a();
    }

    public static OptionalInt o(D d) {
        if (d == null) {
            return null;
        }
        if (d.c()) {
            return OptionalInt.of(d.b());
        }
        return OptionalInt.empty();
    }

    public static D k(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        if (optionalInt.isPresent()) {
            return D.d(optionalInt.getAsInt());
        }
        return D.a();
    }

    public static void s(Iterator it, Consumer consumer) {
        if (it instanceof A) {
            ((A) it).forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    public static Spliterator x(java.util.Collection collection) {
        if (collection instanceof Collection) {
            return ((Collection) collection).spliterator();
        }
        if (collection instanceof LinkedHashSet) {
            return Spliterators.spliterator((LinkedHashSet) collection, 17);
        }
        if (collection instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) collection;
            return new P(sortedSet, sortedSet);
        }
        if (collection instanceof java.util.Set) {
            return Spliterators.spliterator((java.util.Set) collection, 1);
        }
        if (!(collection instanceof java.util.List)) {
            return Collection.CC.$default$spliterator(collection);
        }
        java.util.List list = (java.util.List) collection;
        return list instanceof RandomAccess ? new C1343a(list) : Spliterators.spliterator(list, 16);
    }

    public static long d(Spliterator spliterator) {
        if ((spliterator.characteristics() & 64) == 0) {
            return -1L;
        }
        return spliterator.estimateSize();
    }

    public static boolean e(Spliterator spliterator, int i) {
        return (spliterator.characteristics() & i) == i;
    }

    public static void q(java.util.Collection collection, Consumer consumer) {
        if (collection instanceof Collection) {
            ((Collection) collection).forEach(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    public static boolean g(W w, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            return w.tryAdvance((IntConsumer) consumer);
        }
        if (s0.a) {
            s0.a(w.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return w.tryAdvance((IntConsumer) new I(consumer));
    }

    public static void b(W w, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            w.forEachRemaining((IntConsumer) consumer);
        } else {
            if (s0.a) {
                s0.a(w.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            w.forEachRemaining((IntConsumer) new I(consumer));
        }
    }

    public static boolean h(Z z, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            return z.tryAdvance((LongConsumer) consumer);
        }
        if (s0.a) {
            s0.a(z.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return z.tryAdvance((LongConsumer) new L(consumer));
    }

    public static void c(Z z, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            z.forEachRemaining((LongConsumer) consumer);
        } else {
            if (s0.a) {
                s0.a(z.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            z.forEachRemaining((LongConsumer) new L(consumer));
        }
    }

    public static boolean f(T t, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            return t.tryAdvance((DoubleConsumer) consumer);
        }
        if (s0.a) {
            s0.a(t.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return t.tryAdvance((DoubleConsumer) new F(consumer));
    }

    public static void a(T t, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            t.forEachRemaining((DoubleConsumer) consumer);
        } else {
            if (s0.a) {
                s0.a(t.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            t.forEachRemaining((DoubleConsumer) new F(consumer));
        }
    }

    public Spliterator trySplit() {
        return null;
    }

    public boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        return false;
    }

    public void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
    }

    public long estimateSize() {
        return 0L;
    }

    public int characteristics() {
        return 16448;
    }
}
