package j$.util.stream;

import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
public interface LongStream extends BaseStream<Long, LongStream> {
    LongStream a();

    DoubleStream asDoubleStream();

    j$.util.C average();

    LongStream b();

    Stream boxed();

    LongStream c();

    Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer);

    long count();

    LongStream d();

    LongStream distinct();

    LongStream e(C1361a c1361a);

    j$.util.E findAny();

    j$.util.E findFirst();

    void forEach(LongConsumer longConsumer);

    void forEachOrdered(LongConsumer longConsumer);

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    Iterator<Long> iterator();

    DoubleStream k();

    LongStream limit(long j);

    boolean m();

    Stream mapToObj(LongFunction longFunction);

    j$.util.E max();

    j$.util.E min();

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    LongStream parallel();

    LongStream peek(LongConsumer longConsumer);

    boolean q();

    long reduce(long j, LongBinaryOperator longBinaryOperator);

    j$.util.E reduce(LongBinaryOperator longBinaryOperator);

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    LongStream sequential();

    LongStream skip(long j);

    LongStream sorted();

    @Override // j$.util.stream.BaseStream
    j$.util.Z spliterator();

    long sum();

    j$.util.B summaryStatistics();

    long[] toArray();

    boolean v();

    IntStream w();
}
