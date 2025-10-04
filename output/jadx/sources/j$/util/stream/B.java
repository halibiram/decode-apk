package j$.util.stream;

import j$.util.C1495y;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Iterator;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
public abstract class B extends AbstractC1366b implements DoubleStream {
    public static /* bridge */ /* synthetic */ j$.util.T Y(Spliterator spliterator) {
        return Z(spliterator);
    }

    @Override // j$.util.stream.DoubleStream
    public final j$.util.C findAny() {
        return (j$.util.C) C(F.d);
    }

    @Override // j$.util.stream.DoubleStream
    public final j$.util.C findFirst() {
        return (j$.util.C) C(F.c);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream sorted() {
        return new A(this, EnumC1365a3.q | EnumC1365a3.o, 0);
    }

    public static j$.util.T Z(Spliterator spliterator) {
        if (spliterator instanceof j$.util.T) {
            return (j$.util.T) spliterator;
        }
        if (O3.a) {
            O3.a(AbstractC1366b.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // j$.util.stream.DoubleStream
    public void forEach(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        C(new L(doubleConsumer, false));
    }

    @Override // j$.util.stream.DoubleStream
    public void forEachOrdered(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        C(new L(doubleConsumer, true));
    }

    @Override // j$.util.stream.AbstractC1366b
    public final EnumC1370b3 H() {
        return EnumC1370b3.DOUBLE_VALUE;
    }

    @Override // j$.util.stream.AbstractC1366b
    final I0 E(AbstractC1366b abstractC1366b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC1471w0.F(abstractC1366b, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC1366b
    final Spliterator U(AbstractC1366b abstractC1366b, Supplier supplier, boolean z) {
        return new AbstractC1375c3(abstractC1366b, supplier, z);
    }

    @Override // j$.util.stream.AbstractC1366b
    final boolean G(Spliterator spliterator, InterfaceC1424m2 interfaceC1424m2) {
        DoubleConsumer c1436p;
        boolean n;
        j$.util.T Z = Z(spliterator);
        if (interfaceC1424m2 instanceof DoubleConsumer) {
            c1436p = (DoubleConsumer) interfaceC1424m2;
        } else {
            if (O3.a) {
                O3.a(AbstractC1366b.class, "using DoubleStream.adapt(Sink<Double> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC1424m2);
            c1436p = new C1436p(interfaceC1424m2);
        }
        do {
            n = interfaceC1424m2.n();
            if (n) {
                break;
            }
        } while (Z.tryAdvance(c1436p));
        return n;
    }

    @Override // j$.util.stream.AbstractC1366b
    public final A0 N(long j, IntFunction intFunction) {
        return AbstractC1471w0.J(j);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    /* renamed from: iterator */
    public final Iterator<Double> iterator2() {
        return Spliterators.f(spliterator());
    }

    @Override // j$.util.stream.AbstractC1366b, j$.util.stream.BaseStream
    public final j$.util.T spliterator() {
        return Z(super.spliterator());
    }

    @Override // j$.util.stream.DoubleStream
    public final Stream boxed() {
        return new C1455t(this, 0, new C1441q(0), 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream d() {
        Objects.requireNonNull(null);
        return new C1460u(this, EnumC1365a3.p | EnumC1365a3.n, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final Stream mapToObj(DoubleFunction doubleFunction) {
        Objects.requireNonNull(doubleFunction);
        return new C1455t(this, EnumC1365a3.p | EnumC1365a3.n, doubleFunction, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final IntStream t() {
        Objects.requireNonNull(null);
        return new C1465v(this, EnumC1365a3.p | EnumC1365a3.n, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final LongStream i() {
        Objects.requireNonNull(null);
        return new C1470w(this, EnumC1365a3.p | EnumC1365a3.n, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream e(C1361a c1361a) {
        Objects.requireNonNull(c1361a);
        return new C1480y(this, EnumC1365a3.p | EnumC1365a3.n | EnumC1365a3.t, c1361a, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream b() {
        Objects.requireNonNull(null);
        return new C1460u(this, EnumC1365a3.t, 2);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream peek(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return new C1480y(this, doubleConsumer);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return AbstractC1471w0.U(this, 0L, j);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC1471w0.U(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream a() {
        int i = n4.a;
        Objects.requireNonNull(null);
        return new A(this, n4.a, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream c() {
        int i = n4.a;
        Objects.requireNonNull(null);
        return new A(this, n4.b, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream distinct() {
        return ((AbstractC1384e2) boxed()).distinct().mapToDouble(new C1441q(1));
    }

    @Override // j$.util.stream.DoubleStream
    public final double sum() {
        double[] dArr = (double[]) collect(new C1441q(4), new C1411k(5), new C1411k(2));
        Set set = Collectors.a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    @Override // j$.util.stream.DoubleStream
    public final j$.util.C min() {
        return reduce(new C1411k(26));
    }

    @Override // j$.util.stream.DoubleStream
    public final j$.util.C max() {
        return reduce(new C1441q(3));
    }

    @Override // j$.util.stream.DoubleStream
    public final j$.util.C average() {
        double[] dArr = (double[]) collect(new C1411k(27), new C1411k(3), new C1411k(4));
        if (dArr[2] <= 0.0d) {
            return j$.util.C.a();
        }
        Set set = Collectors.a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        if (Double.isNaN(d) && Double.isInfinite(d2)) {
            d = d2;
        }
        return j$.util.C.d(d / dArr[2]);
    }

    @Override // j$.util.stream.DoubleStream
    public final C1495y summaryStatistics() {
        return (C1495y) collect(new C1411k(18), new C1411k(28), new C1411k(29));
    }

    @Override // j$.util.stream.DoubleStream
    public final Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        r rVar = new r(biConsumer, 0);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objDoubleConsumer);
        Objects.requireNonNull(rVar);
        return C(new C1(EnumC1370b3.DOUBLE_VALUE, rVar, objDoubleConsumer, supplier, 1));
    }

    @Override // j$.util.stream.DoubleStream
    public final boolean o() {
        return ((Boolean) C(AbstractC1471w0.V(EnumC1456t0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.DoubleStream
    public final boolean h() {
        return ((Boolean) C(AbstractC1471w0.V(EnumC1456t0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.DoubleStream
    public final boolean x() {
        return ((Boolean) C(AbstractC1471w0.V(EnumC1456t0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.DoubleStream
    public final double[] toArray() {
        return (double[]) AbstractC1471w0.N((C0) D(new C1441q(2))).d();
    }

    @Override // j$.util.stream.DoubleStream
    public final double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return ((Double) C(new G1(EnumC1370b3.DOUBLE_VALUE, doubleBinaryOperator, d))).doubleValue();
    }

    @Override // j$.util.stream.DoubleStream
    public final j$.util.C reduce(DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return (j$.util.C) C(new A1(EnumC1370b3.DOUBLE_VALUE, doubleBinaryOperator, 1));
    }

    @Override // j$.util.stream.DoubleStream
    public final long count() {
        return ((Long) C(new E1(1))).longValue();
    }
}
