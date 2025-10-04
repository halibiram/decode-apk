package j$.util.stream;

import j$.util.C1495y;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
public interface DoubleStream extends BaseStream<Double, DoubleStream> {
    DoubleStream a();

    j$.util.C average();

    DoubleStream b();

    Stream boxed();

    DoubleStream c();

    Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer);

    long count();

    DoubleStream d();

    DoubleStream distinct();

    DoubleStream e(C1361a c1361a);

    j$.util.C findAny();

    j$.util.C findFirst();

    void forEach(DoubleConsumer doubleConsumer);

    void forEachOrdered(DoubleConsumer doubleConsumer);

    boolean h();

    LongStream i();

    @Override // 
    Iterator<Double> iterator();

    DoubleStream limit(long j);

    Stream mapToObj(DoubleFunction doubleFunction);

    j$.util.C max();

    j$.util.C min();

    boolean o();

    @Override // 
    DoubleStream parallel();

    DoubleStream peek(DoubleConsumer doubleConsumer);

    double reduce(double d, DoubleBinaryOperator doubleBinaryOperator);

    j$.util.C reduce(DoubleBinaryOperator doubleBinaryOperator);

    @Override // 
    DoubleStream sequential();

    DoubleStream skip(long j);

    DoubleStream sorted();

    @Override // j$.util.stream.BaseStream
    j$.util.T spliterator();

    double sum();

    C1495y summaryStatistics();

    IntStream t();

    double[] toArray();

    boolean x();
}
