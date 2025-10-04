package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.LongSummaryStatistics;
import java.util.OptionalDouble;
import java.util.OptionalLong;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.LongPredicate;
import java.util.function.LongToDoubleFunction;
import java.util.function.LongToIntFunction;
import java.util.function.LongUnaryOperator;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.l0 */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1417l0 implements java.util.stream.LongStream {
    public final /* synthetic */ LongStream a;

    private /* synthetic */ C1417l0(LongStream longStream) {
        this.a = longStream;
    }

    public static /* synthetic */ java.util.stream.LongStream j(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C1412k0 ? ((C1412k0) longStream).a : new C1417l0(longStream);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ boolean allMatch(LongPredicate longPredicate) {
        return this.a.q();
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ boolean anyMatch(LongPredicate longPredicate) {
        return this.a.v();
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.DoubleStream asDoubleStream() {
        return D.j(this.a.asDoubleStream());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalDouble average() {
        return AbstractC1344b.n(this.a.average());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.Stream boxed() {
        return Stream.Wrapper.convert(this.a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.a.collect(supplier, objLongConsumer, biConsumer);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ long count() {
        return this.a.count();
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream distinct() {
        return j(this.a.distinct());
    }

    public final /* synthetic */ java.util.stream.LongStream dropWhile(LongPredicate longPredicate) {
        return j(this.a.c());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        LongStream longStream = this.a;
        if (obj instanceof C1417l0) {
            obj = ((C1417l0) obj).a;
        }
        return longStream.equals(obj);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream filter(LongPredicate longPredicate) {
        return j(this.a.b());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong findAny() {
        return AbstractC1344b.p(this.a.findAny());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong findFirst() {
        return AbstractC1344b.p(this.a.findFirst());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.a.forEach(longConsumer);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.a.forEachOrdered(longConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ Iterator<Long> iterator() {
        return this.a.iterator2();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [j$.util.PrimitiveIterator$OfLong] */
    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: iterator */
    public final /* synthetic */ Iterator<Long> iterator2() {
        return j$.util.N.a(this.a.iterator2());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream limit(long j) {
        return j(this.a.limit(j));
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream map(LongUnaryOperator longUnaryOperator) {
        return j(this.a.d());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.DoubleStream mapToDouble(LongToDoubleFunction longToDoubleFunction) {
        return D.j(this.a.k());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.IntStream mapToInt(LongToIntFunction longToIntFunction) {
        return IntStream.Wrapper.convert(this.a.w());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.Stream mapToObj(LongFunction longFunction) {
        return Stream.Wrapper.convert(this.a.mapToObj(longFunction));
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong max() {
        return AbstractC1344b.p(this.a.max());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong min() {
        return AbstractC1344b.p(this.a.min());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ boolean noneMatch(LongPredicate longPredicate) {
        return this.a.m();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.LongStream onClose(Runnable runnable) {
        return C1391g.j(this.a.onClose(runnable));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.LongStream parallel() {
        return C1391g.j(this.a.parallel());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: parallel */
    public final /* synthetic */ java.util.stream.LongStream parallel2() {
        return j(this.a.parallel());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream peek(LongConsumer longConsumer) {
        return j(this.a.peek(longConsumer));
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.a.reduce(j, longBinaryOperator);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong reduce(LongBinaryOperator longBinaryOperator) {
        return AbstractC1344b.p(this.a.reduce(longBinaryOperator));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.LongStream sequential() {
        return C1391g.j(this.a.sequential());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: sequential */
    public final /* synthetic */ java.util.stream.LongStream sequential2() {
        return j(this.a.sequential());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream skip(long j) {
        return j(this.a.skip(j));
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream sorted() {
        return j(this.a.sorted());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ Spliterator<Long> spliterator() {
        return j$.util.Y.a(this.a.spliterator());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* renamed from: spliterator */
    public final /* synthetic */ Spliterator<Long> spliterator2() {
        return Spliterator.Wrapper.convert(this.a.spliterator());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ long sum() {
        return this.a.sum();
    }

    public final /* synthetic */ java.util.stream.LongStream takeWhile(LongPredicate longPredicate) {
        return j(this.a.a());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ long[] toArray() {
        return this.a.toArray();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.stream.LongStream, java.util.stream.BaseStream] */
    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.LongStream unordered() {
        return C1391g.j(this.a.unordered());
    }

    @Override // java.util.stream.LongStream
    public final LongSummaryStatistics summaryStatistics() {
        this.a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.LongSummaryStatistics");
    }

    @Override // java.util.stream.LongStream
    public final java.util.stream.LongStream flatMap(LongFunction longFunction) {
        LongStream longStream = this.a;
        C1361a c1361a = new C1361a(9);
        c1361a.b = longFunction;
        return j(longStream.e(c1361a));
    }
}
