package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.k0 */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1412k0 implements LongStream {
    public final /* synthetic */ java.util.stream.LongStream a;

    private /* synthetic */ C1412k0(java.util.stream.LongStream longStream) {
        this.a = longStream;
    }

    public static /* synthetic */ LongStream j(java.util.stream.LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C1417l0 ? ((C1417l0) longStream).a : new C1412k0(longStream);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream a() {
        return j(this.a.takeWhile(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ DoubleStream asDoubleStream() {
        return C.j(this.a.asDoubleStream());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ j$.util.C average() {
        return AbstractC1344b.j(this.a.average());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream b() {
        return j(this.a.filter(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Stream boxed() {
        return X2.j(this.a.boxed());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream c() {
        return j(this.a.dropWhile(null));
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.a.collect(supplier, objLongConsumer, biConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long count() {
        return this.a.count();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream d() {
        return j(this.a.map(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream distinct() {
        return j(this.a.distinct());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.LongStream longStream = this.a;
        if (obj instanceof C1412k0) {
            obj = ((C1412k0) obj).a;
        }
        return longStream.equals(obj);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ j$.util.E findAny() {
        return AbstractC1344b.l(this.a.findAny());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ j$.util.E findFirst() {
        return AbstractC1344b.l(this.a.findFirst());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.a.forEach(longConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.a.forEachOrdered(longConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfLong] */
    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    /* renamed from: iterator */
    public final /* synthetic */ Iterator<Long> iterator2() {
        return j$.util.M.a(this.a.iterator());
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    /* renamed from: iterator */
    public final /* synthetic */ Iterator<Long> iterator2() {
        return this.a.iterator();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ DoubleStream k() {
        return C.j(this.a.mapToDouble(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream limit(long j) {
        return j(this.a.limit(j));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean m() {
        return this.a.noneMatch(null);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Stream mapToObj(LongFunction longFunction) {
        return X2.j(this.a.mapToObj(longFunction));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ j$.util.E max() {
        return AbstractC1344b.l(this.a.max());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ j$.util.E min() {
        return AbstractC1344b.l(this.a.min());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C1386f.j(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* synthetic */ BaseStream parallel() {
        return C1386f.j(this.a.parallel());
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* synthetic */ LongStream parallel() {
        return j(this.a.parallel());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream peek(LongConsumer longConsumer) {
        return j(this.a.peek(longConsumer));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean q() {
        return this.a.allMatch(null);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.a.reduce(j, longBinaryOperator);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ j$.util.E reduce(LongBinaryOperator longBinaryOperator) {
        return AbstractC1344b.l(this.a.reduce(longBinaryOperator));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* synthetic */ BaseStream sequential() {
        return C1386f.j(this.a.sequential());
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* synthetic */ LongStream sequential() {
        return j(this.a.sequential());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream skip(long j) {
        return j(this.a.skip(j));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream sorted() {
        return j(this.a.sorted());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.d0.a(this.a.spliterator());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfLong] */
    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream
    public final /* synthetic */ j$.util.Z spliterator() {
        return j$.util.X.a(this.a.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long sum() {
        return this.a.sum();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long[] toArray() {
        return this.a.toArray();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C1386f.j(this.a.unordered());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean v() {
        return this.a.anyMatch(null);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ IntStream w() {
        return IntStream.VivifiedWrapper.convert(this.a.mapToInt(null));
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.B summaryStatistics() {
        this.a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // j$.util.stream.LongStream
    public final LongStream e(C1361a c1361a) {
        java.util.stream.LongStream longStream = this.a;
        C1361a c1361a2 = new C1361a(9);
        c1361a2.b = c1361a;
        return j(longStream.flatMap(c1361a2));
    }
}
