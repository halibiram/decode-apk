package j$.util.stream;

import j$.util.C1496z;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.a0 */
/* loaded from: classes4.dex */
public abstract class AbstractC1362a0 extends AbstractC1366b implements IntStream {
    public static /* bridge */ /* synthetic */ j$.util.W Y(Spliterator spliterator) {
        return Z(spliterator);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.D findAny() {
        return (j$.util.D) C(G.d);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.D findFirst() {
        return (j$.util.D) C(G.c);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream sorted() {
        return new Z(this, EnumC1365a3.q | EnumC1365a3.o, 0);
    }

    public void forEach(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        C(new M(intConsumer, false));
    }

    public void forEachOrdered(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        C(new M(intConsumer, true));
    }

    public static j$.util.W Z(Spliterator spliterator) {
        if (spliterator instanceof j$.util.W) {
            return (j$.util.W) spliterator;
        }
        if (O3.a) {
            O3.a(AbstractC1366b.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // j$.util.stream.AbstractC1366b
    public final EnumC1370b3 H() {
        return EnumC1370b3.INT_VALUE;
    }

    @Override // j$.util.stream.AbstractC1366b
    final I0 E(AbstractC1366b abstractC1366b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC1471w0.G(abstractC1366b, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC1366b
    final Spliterator U(AbstractC1366b abstractC1366b, Supplier supplier, boolean z) {
        return new AbstractC1375c3(abstractC1366b, supplier, z);
    }

    @Override // j$.util.stream.AbstractC1366b
    final boolean G(Spliterator spliterator, InterfaceC1424m2 interfaceC1424m2) {
        IntConsumer t;
        boolean n;
        j$.util.W Z = Z(spliterator);
        if (interfaceC1424m2 instanceof IntConsumer) {
            t = (IntConsumer) interfaceC1424m2;
        } else {
            if (O3.a) {
                O3.a(AbstractC1366b.class, "using IntStream.adapt(Sink<Integer> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC1424m2);
            t = new T(interfaceC1424m2);
        }
        do {
            n = interfaceC1424m2.n();
            if (n) {
                break;
            }
        } while (Z.tryAdvance(t));
        return n;
    }

    @Override // j$.util.stream.AbstractC1366b
    public final A0 N(long j, IntFunction intFunction) {
        return AbstractC1471w0.S(j);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    /* renamed from: iterator */
    public final Iterator<Integer> iterator2() {
        return Spliterators.g(spliterator());
    }

    @Override // j$.util.stream.AbstractC1366b, j$.util.stream.BaseStream
    public final j$.util.W spliterator() {
        return Z(super.spliterator());
    }

    @Override // j$.util.stream.IntStream
    public final LongStream asLongStream() {
        return new C1470w(this, 0, 1);
    }

    @Override // j$.util.stream.IntStream
    public final DoubleStream asDoubleStream() {
        return new C1460u(this, 0, 3);
    }

    @Override // j$.util.stream.IntStream
    public final Stream boxed() {
        return new C1455t(this, 0, new C1441q(12), 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream d() {
        Objects.requireNonNull(null);
        return new C1465v(this, EnumC1365a3.p | EnumC1365a3.n, 1);
    }

    @Override // j$.util.stream.IntStream
    public final Stream mapToObj(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new C1455t(this, EnumC1365a3.p | EnumC1365a3.n, intFunction, 1);
    }

    @Override // j$.util.stream.IntStream
    public final LongStream l() {
        Objects.requireNonNull(null);
        return new C1470w(this, EnumC1365a3.p | EnumC1365a3.n, 2);
    }

    @Override // j$.util.stream.IntStream
    public final DoubleStream f() {
        Objects.requireNonNull(null);
        return new C1460u(this, EnumC1365a3.p | EnumC1365a3.n, 4);
    }

    @Override // j$.util.stream.IntStream
    public final int reduce(int i, IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return ((Integer) C(new N1(EnumC1370b3.INT_VALUE, intBinaryOperator, i))).intValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream p(O0 o0) {
        Objects.requireNonNull(o0);
        return new V(this, EnumC1365a3.p | EnumC1365a3.n | EnumC1365a3.t, o0, 1);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.D reduce(IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return (j$.util.D) C(new A1(EnumC1370b3.INT_VALUE, intBinaryOperator, 3));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream b() {
        Objects.requireNonNull(null);
        return new C1465v(this, EnumC1365a3.t, 3);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream peek(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return new V(this, intConsumer);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return AbstractC1471w0.W(this, 0L, j);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC1471w0.W(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream a() {
        int i = n4.a;
        Objects.requireNonNull(null);
        return new Z(this, n4.a, 0);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream c() {
        int i = n4.a;
        Objects.requireNonNull(null);
        return new Z(this, n4.b, 0);
    }

    @Override // j$.util.stream.IntStream
    public final long count() {
        return ((Long) C(new E1(3))).longValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC1384e2) boxed()).distinct().mapToInt(new C1441q(11));
    }

    @Override // j$.util.stream.IntStream
    public final int sum() {
        return reduce(0, new C1441q(16));
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.D min() {
        return reduce(new C1441q(13));
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.D max() {
        return reduce(new C1441q(17));
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.C average() {
        long j = ((long[]) collect(new C1441q(18), new C1441q(19), new C1441q(20)))[0];
        return j > 0 ? j$.util.C.d(r0[1] / j) : j$.util.C.a();
    }

    @Override // j$.util.stream.IntStream
    public final C1496z summaryStatistics() {
        return (C1496z) collect(new C1411k(21), new C1441q(14), new C1441q(15));
    }

    @Override // j$.util.stream.IntStream
    public final Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        r rVar = new r(biConsumer, 1);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objIntConsumer);
        Objects.requireNonNull(rVar);
        return C(new C1(EnumC1370b3.INT_VALUE, rVar, objIntConsumer, supplier, 4));
    }

    @Override // j$.util.stream.IntStream
    public final boolean r() {
        return ((Boolean) C(AbstractC1471w0.X(EnumC1456t0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final boolean u() {
        return ((Boolean) C(AbstractC1471w0.X(EnumC1456t0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final boolean g() {
        return ((Boolean) C(AbstractC1471w0.X(EnumC1456t0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC1471w0.O((E0) D(new C1441q(10))).d();
    }
}
