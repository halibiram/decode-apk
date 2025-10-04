package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.C1495y;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
public final /* synthetic */ class C implements DoubleStream {
    public final /* synthetic */ java.util.stream.DoubleStream a;

    private /* synthetic */ C(java.util.stream.DoubleStream doubleStream) {
        this.a = doubleStream;
    }

    public static /* synthetic */ DoubleStream j(java.util.stream.DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof D ? ((D) doubleStream).a : new C(doubleStream);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream a() {
        return j(this.a.takeWhile(null));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ j$.util.C average() {
        return AbstractC1344b.j(this.a.average());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream b() {
        return j(this.a.filter(null));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ Stream boxed() {
        return X2.j(this.a.boxed());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream c() {
        return j(this.a.dropWhile(null));
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.a.collect(supplier, objDoubleConsumer, biConsumer);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ long count() {
        return this.a.count();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream d() {
        return j(this.a.map(null));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream distinct() {
        return j(this.a.distinct());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.DoubleStream doubleStream = this.a;
        if (obj instanceof C) {
            obj = ((C) obj).a;
        }
        return doubleStream.equals(obj);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ j$.util.C findAny() {
        return AbstractC1344b.j(this.a.findAny());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ j$.util.C findFirst() {
        return AbstractC1344b.j(this.a.findFirst());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.a.forEach(doubleConsumer);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.a.forEachOrdered(doubleConsumer);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ boolean h() {
        return this.a.allMatch(null);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ LongStream i() {
        return C1412k0.j(this.a.mapToLong(null));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfDouble] */
    @Override // j$.util.stream.DoubleStream
    /* renamed from: iterator */
    public final /* synthetic */ Iterator<Double> iterator2() {
        return j$.util.G.a(this.a.iterator());
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    /* renamed from: iterator */
    public final /* synthetic */ Iterator<Double> iterator2() {
        return this.a.iterator();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream limit(long j) {
        return j(this.a.limit(j));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return X2.j(this.a.mapToObj(doubleFunction));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ j$.util.C max() {
        return AbstractC1344b.j(this.a.max());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ j$.util.C min() {
        return AbstractC1344b.j(this.a.min());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ boolean o() {
        return this.a.anyMatch(null);
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C1386f.j(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* synthetic */ BaseStream parallel() {
        return C1386f.j(this.a.parallel());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream parallel() {
        return j(this.a.parallel());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream peek(DoubleConsumer doubleConsumer) {
        return j(this.a.peek(doubleConsumer));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.a.reduce(d, doubleBinaryOperator);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ j$.util.C reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return AbstractC1344b.j(this.a.reduce(doubleBinaryOperator));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* synthetic */ BaseStream sequential() {
        return C1386f.j(this.a.sequential());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream sequential() {
        return j(this.a.sequential());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream skip(long j) {
        return j(this.a.skip(j));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream sorted() {
        return j(this.a.sorted());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.d0.a(this.a.spliterator());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfDouble] */
    @Override // j$.util.stream.DoubleStream, j$.util.stream.BaseStream
    public final /* synthetic */ j$.util.T spliterator() {
        return j$.util.Q.a(this.a.spliterator());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ double sum() {
        return this.a.sum();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ IntStream t() {
        return IntStream.VivifiedWrapper.convert(this.a.mapToInt(null));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ double[] toArray() {
        return this.a.toArray();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C1386f.j(this.a.unordered());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ boolean x() {
        return this.a.noneMatch(null);
    }

    @Override // j$.util.stream.DoubleStream
    public final C1495y summaryStatistics() {
        this.a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream e(C1361a c1361a) {
        java.util.stream.DoubleStream doubleStream = this.a;
        C1361a c1361a2 = new C1361a(7);
        c1361a2.b = c1361a;
        return j(doubleStream.flatMap(c1361a2));
    }
}
