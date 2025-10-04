package j$.util.stream;

import j$.util.Objects;
import j$.util.Optional;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
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

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e2, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1384e2 extends AbstractC1366b implements Stream {
    @Override // j$.util.stream.Stream
    public final Stream sorted() {
        return new H2(this);
    }

    @Override // j$.util.stream.Stream
    public final Stream distinct() {
        return new AbstractC1379d2(this, EnumC1365a3.m | EnumC1365a3.t, 0);
    }

    @Override // j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.a(1, comparator));
    }

    @Override // j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) C(I.d);
    }

    @Override // j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) C(I.c);
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new H2(this, comparator);
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(binaryOperator);
        return C(new C1(EnumC1370b3.REFERENCE, binaryOperator, biFunction, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        Objects.requireNonNull(binaryOperator);
        return C(new C1(EnumC1370b3.REFERENCE, binaryOperator, binaryOperator, obj, 2));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C(new O(consumer, false));
    }

    public void forEachOrdered(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C(new O(consumer, true));
    }

    @Override // j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.a(0, comparator));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final EnumC1370b3 H() {
        return EnumC1370b3.REFERENCE;
    }

    @Override // j$.util.stream.Stream
    public final Optional reduce(BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        return (Optional) C(new A1(EnumC1370b3.REFERENCE, binaryOperator, 2));
    }

    @Override // j$.util.stream.AbstractC1366b
    final I0 E(AbstractC1366b abstractC1366b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC1471w0.E(abstractC1366b, spliterator, z, intFunction);
    }

    @Override // j$.util.stream.AbstractC1366b
    final Spliterator U(AbstractC1366b abstractC1366b, Supplier supplier, boolean z) {
        return new AbstractC1375c3(abstractC1366b, supplier, z);
    }

    @Override // j$.util.stream.AbstractC1366b
    final Spliterator M(Supplier supplier) {
        return new C1430n3(supplier);
    }

    @Override // j$.util.stream.AbstractC1366b
    final boolean G(Spliterator spliterator, InterfaceC1424m2 interfaceC1424m2) {
        boolean n;
        do {
            n = interfaceC1424m2.n();
            if (n) {
                break;
            }
        } while (spliterator.tryAdvance(interfaceC1424m2));
        return n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final A0 N(long j, IntFunction intFunction) {
        return AbstractC1471w0.D(j, intFunction);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    /* renamed from: iterator */
    public final Iterator iterator2() {
        return Spliterators.i(spliterator());
    }

    @Override // j$.util.stream.Stream
    public final Stream filter(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C1455t(this, EnumC1365a3.t, predicate, 4);
    }

    @Override // j$.util.stream.Stream
    public final Stream map(Function function) {
        Objects.requireNonNull(function);
        return new C1455t(this, EnumC1365a3.p | EnumC1365a3.n, function, 5);
    }

    @Override // j$.util.stream.Stream
    public final IntStream mapToInt(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new V(this, EnumC1365a3.p | EnumC1365a3.n, toIntFunction, 2);
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return C(new C1(EnumC1370b3.REFERENCE, biConsumer2, biConsumer, supplier, 3));
    }

    @Override // j$.util.stream.Stream
    public final LongStream mapToLong(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C1392g0(this, EnumC1365a3.p | EnumC1365a3.n, toLongFunction, 3);
    }

    @Override // j$.util.stream.Stream
    public final DoubleStream mapToDouble(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C1480y(this, EnumC1365a3.p | EnumC1365a3.n, toDoubleFunction, 2);
    }

    @Override // j$.util.stream.Stream
    public final long count() {
        return ((Long) C(new E1(2))).longValue();
    }

    @Override // j$.util.stream.Stream
    public final Stream e(C1361a c1361a) {
        Objects.requireNonNull(c1361a);
        return new C1455t(this, EnumC1365a3.p | EnumC1365a3.n | EnumC1365a3.t, c1361a, 6);
    }

    @Override // j$.util.stream.Stream
    public final IntStream s(C1361a c1361a) {
        Objects.requireNonNull(c1361a);
        return new V(this, EnumC1365a3.p | EnumC1365a3.n | EnumC1365a3.t, c1361a, 3);
    }

    @Override // j$.util.stream.Stream
    public final DoubleStream y(C1361a c1361a) {
        Objects.requireNonNull(c1361a);
        return new C1480y(this, EnumC1365a3.p | EnumC1365a3.n | EnumC1365a3.t, c1361a, 3);
    }

    @Override // j$.util.stream.Stream
    public final LongStream n(C1361a c1361a) {
        Objects.requireNonNull(c1361a);
        return new C1392g0(this, EnumC1365a3.p | EnumC1365a3.n | EnumC1365a3.t, c1361a, 2);
    }

    @Override // j$.util.stream.Stream
    public final Stream peek(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C1455t(this, consumer);
    }

    @Override // j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return AbstractC1471w0.b0(this, 0L, j);
    }

    @Override // j$.util.stream.Stream
    public final Stream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC1471w0.b0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.Stream
    public final Stream takeWhile(Predicate predicate) {
        int i = n4.a;
        Objects.requireNonNull(predicate);
        return new P3(this, n4.a, predicate);
    }

    @Override // j$.util.stream.Stream
    public final Stream dropWhile(Predicate predicate) {
        int i = n4.a;
        Objects.requireNonNull(predicate);
        return new R3(this, n4.b, predicate);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return AbstractC1471w0.M(D(intFunction), intFunction).o(intFunction);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray() {
        return toArray(new C1372c0(4));
    }

    @Override // j$.util.stream.Stream
    public final boolean anyMatch(Predicate predicate) {
        return ((Boolean) C(AbstractC1471w0.a0(EnumC1456t0.ANY, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final boolean allMatch(Predicate predicate) {
        return ((Boolean) C(AbstractC1471w0.a0(EnumC1456t0.ALL, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final boolean noneMatch(Predicate predicate) {
        return ((Boolean) C(AbstractC1471w0.a0(EnumC1456t0.NONE, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Collector collector) {
        Object C;
        if (!isParallel() || !collector.characteristics().contains(EnumC1396h.CONCURRENT) || (K() && !collector.characteristics().contains(EnumC1396h.UNORDERED))) {
            Supplier supplier = ((Collector) Objects.requireNonNull(collector)).supplier();
            C = C(new J1(EnumC1370b3.REFERENCE, collector.combiner(), collector.accumulator(), supplier, collector));
        } else {
            C = collector.supplier().get();
            forEach(new C1427n0(3, collector.accumulator(), C));
        }
        return collector.characteristics().contains(EnumC1396h.IDENTITY_FINISH) ? C : collector.finisher().apply(C);
    }

    @Override // j$.util.stream.Stream
    public final List toList() {
        return Collections.unmodifiableList(new ArrayList(Arrays.asList(toArray())));
    }
}
