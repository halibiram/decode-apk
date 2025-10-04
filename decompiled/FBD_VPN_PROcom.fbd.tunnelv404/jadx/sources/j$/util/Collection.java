package j$.util;

import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* loaded from: classes4.dex */
public interface Collection<E> {
    void forEach(Consumer<? super E> consumer);

    Stream<E> parallelStream();

    boolean removeIf(Predicate<? super E> predicate);

    Spliterator<E> spliterator();

    Stream<E> stream();

    <T> T[] toArray(IntFunction<T[]> intFunction);

    /* renamed from: j$.util.Collection$-CC, reason: invalid class name */
    /* loaded from: classes4.dex */
    public final /* synthetic */ class CC {
        public static Object[] $default$toArray(java.util.Collection collection, IntFunction intFunction) {
            return collection.toArray((Object[]) intFunction.apply(0));
        }

        public static boolean $default$removeIf(java.util.Collection collection, Predicate predicate) {
            Objects.requireNonNull(predicate);
            Iterator<E> it = collection.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (predicate.test(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        public static Spliterator $default$spliterator(java.util.Collection collection) {
            return Spliterators.spliterator(collection, 0);
        }

        public static Stream $default$stream(java.util.Collection collection) {
            return StreamSupport.d(AbstractC1344b.x(collection), false);
        }

        public static Stream $default$parallelStream(java.util.Collection collection) {
            return StreamSupport.d(AbstractC1344b.x(collection), true);
        }
    }
}
