package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Optional;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* loaded from: classes4.dex */
public final /* synthetic */ class X2 implements Stream {
    public final /* synthetic */ java.util.stream.Stream a;

    private /* synthetic */ X2(java.util.stream.Stream stream) {
        this.a = stream;
    }

    public static /* synthetic */ Stream j(java.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof Stream.Wrapper ? Stream.this : new X2(stream);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ boolean allMatch(Predicate predicate) {
        return this.a.allMatch(predicate);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ boolean anyMatch(Predicate predicate) {
        return this.a.anyMatch(predicate);
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Object collect(Collector collector) {
        return this.a.collect(C1406j.a(collector));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.a.collect(supplier, biConsumer, biConsumer2);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ long count() {
        return this.a.count();
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream distinct() {
        return j(this.a.distinct());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream dropWhile(Predicate predicate) {
        return j(this.a.dropWhile(predicate));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream e(C1361a c1361a) {
        return j(this.a.flatMap(AbstractC1471w0.R(c1361a)));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.Stream stream = this.a;
        if (obj instanceof X2) {
            obj = ((X2) obj).a;
        }
        return stream.equals(obj);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream filter(Predicate predicate) {
        return j(this.a.filter(predicate));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Optional findAny() {
        return AbstractC1344b.i(this.a.findAny());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Optional findFirst() {
        return AbstractC1344b.i(this.a.findFirst());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ void forEach(Consumer consumer) {
        this.a.forEach(consumer);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ void forEachOrdered(Consumer consumer) {
        this.a.forEachOrdered(consumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    /* renamed from: iterator */
    public final /* synthetic */ Iterator iterator2() {
        return this.a.iterator();
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream limit(long j) {
        return j(this.a.limit(j));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream map(Function function) {
        return j(this.a.map(function));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ DoubleStream mapToDouble(ToDoubleFunction toDoubleFunction) {
        return C.j(this.a.mapToDouble(toDoubleFunction));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ IntStream mapToInt(ToIntFunction toIntFunction) {
        return IntStream.VivifiedWrapper.convert(this.a.mapToInt(toIntFunction));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ LongStream mapToLong(ToLongFunction toLongFunction) {
        return C1412k0.j(this.a.mapToLong(toLongFunction));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC1344b.i(this.a.max(comparator));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC1344b.i(this.a.min(comparator));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ LongStream n(C1361a c1361a) {
        return C1412k0.j(this.a.flatMapToLong(AbstractC1471w0.R(c1361a)));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ boolean noneMatch(Predicate predicate) {
        return this.a.noneMatch(predicate);
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C1386f.j(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* synthetic */ BaseStream parallel() {
        return C1386f.j(this.a.parallel());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream peek(Consumer consumer) {
        return j(this.a.peek(consumer));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Optional reduce(BinaryOperator binaryOperator) {
        return AbstractC1344b.i(this.a.reduce(binaryOperator));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        return this.a.reduce(obj, biFunction, binaryOperator);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Object reduce(Object obj, BinaryOperator binaryOperator) {
        return this.a.reduce(obj, binaryOperator);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ IntStream s(C1361a c1361a) {
        return IntStream.VivifiedWrapper.convert(this.a.flatMapToInt(AbstractC1471w0.R(c1361a)));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* synthetic */ BaseStream sequential() {
        return C1386f.j(this.a.sequential());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream skip(long j) {
        return j(this.a.skip(j));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream sorted() {
        return j(this.a.sorted());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream sorted(Comparator comparator) {
        return j(this.a.sorted(comparator));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.d0.a(this.a.spliterator());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream takeWhile(Predicate predicate) {
        return j(this.a.takeWhile(predicate));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Object[] toArray() {
        return this.a.toArray();
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return this.a.toArray(intFunction);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ List toList() {
        return this.a.toList();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C1386f.j(this.a.unordered());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ DoubleStream y(C1361a c1361a) {
        return C.j(this.a.flatMapToDouble(AbstractC1471w0.R(c1361a)));
    }
}
