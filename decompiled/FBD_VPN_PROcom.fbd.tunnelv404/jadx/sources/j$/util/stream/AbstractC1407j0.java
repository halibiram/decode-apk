package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.j0 */
/* loaded from: classes4.dex */
public abstract class AbstractC1407j0 extends AbstractC1366b implements LongStream {
    public static /* bridge */ /* synthetic */ j$.util.Z Y(Spliterator spliterator) {
        return Z(spliterator);
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.E findAny() {
        return (j$.util.E) C(H.d);
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.E findFirst() {
        return (j$.util.E) C(H.c);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream sorted() {
        return new AbstractC1402i0(this, EnumC1365a3.q | EnumC1365a3.o, 0);
    }

    public void forEach(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        C(new N(longConsumer, false));
    }

    public void forEachOrdered(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        C(new N(longConsumer, true));
    }

    public static j$.util.Z Z(Spliterator spliterator) {
        if (spliterator instanceof j$.util.Z) {
            return (j$.util.Z) spliterator;
        }
        if (O3.a) {
            O3.a(AbstractC1366b.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // j$.util.stream.AbstractC1366b
    public final EnumC1370b3 H() {
        return EnumC1370b3.LONG_VALUE;
    }

    @Override // j$.util.stream.AbstractC1366b
    final I0 E(AbstractC1366b abstractC1366b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC1471w0.H(abstractC1366b, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC1366b
    final Spliterator U(AbstractC1366b abstractC1366b, Supplier supplier, boolean z) {
        return new AbstractC1375c3(abstractC1366b, supplier, z);
    }

    @Override // j$.util.stream.AbstractC1366b
    final boolean G(Spliterator spliterator, InterfaceC1424m2 interfaceC1424m2) {
        LongConsumer c1367b0;
        boolean n;
        j$.util.Z Z = Z(spliterator);
        if (interfaceC1424m2 instanceof LongConsumer) {
            c1367b0 = (LongConsumer) interfaceC1424m2;
        } else {
            if (O3.a) {
                O3.a(AbstractC1366b.class, "using LongStream.adapt(Sink<Long> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC1424m2);
            c1367b0 = new C1367b0(interfaceC1424m2);
        }
        do {
            n = interfaceC1424m2.n();
            if (n) {
                break;
            }
        } while (Z.tryAdvance(c1367b0));
        return n;
    }

    @Override // j$.util.stream.AbstractC1366b
    public final A0 N(long j, IntFunction intFunction) {
        return AbstractC1471w0.T(j);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    /* renamed from: iterator */
    public final Iterator<Long> iterator2() {
        return Spliterators.h(spliterator());
    }

    @Override // j$.util.stream.AbstractC1366b, j$.util.stream.BaseStream
    public final j$.util.Z spliterator() {
        return Z(super.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final DoubleStream asDoubleStream() {
        return new C1460u(this, EnumC1365a3.n, 5);
    }

    @Override // j$.util.stream.LongStream
    public final Stream boxed() {
        return new C1455t(this, 0, new C1441q(26), 2);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream d() {
        Objects.requireNonNull(null);
        return new C1470w(this, EnumC1365a3.p | EnumC1365a3.n, 3);
    }

    @Override // j$.util.stream.LongStream
    public final Stream mapToObj(LongFunction longFunction) {
        Objects.requireNonNull(longFunction);
        return new C1455t(this, EnumC1365a3.p | EnumC1365a3.n, longFunction, 2);
    }

    @Override // j$.util.stream.LongStream
    public final IntStream w() {
        Objects.requireNonNull(null);
        return new C1465v(this, EnumC1365a3.p | EnumC1365a3.n, 4);
    }

    @Override // j$.util.stream.LongStream
    public final DoubleStream k() {
        Objects.requireNonNull(null);
        return new C1460u(this, EnumC1365a3.p | EnumC1365a3.n, 6);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream e(C1361a c1361a) {
        Objects.requireNonNull(c1361a);
        return new C1392g0(this, EnumC1365a3.p | EnumC1365a3.n | EnumC1365a3.t, c1361a, 0);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream b() {
        Objects.requireNonNull(null);
        return new C1470w(this, EnumC1365a3.t, 5);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream peek(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return new C1392g0(this, longConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return AbstractC1471w0.Y(this, 0L, j);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC1471w0.Y(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.LongStream
    public final LongStream a() {
        int i = n4.a;
        Objects.requireNonNull(null);
        return new AbstractC1402i0(this, n4.a, 0);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream c() {
        int i = n4.a;
        Objects.requireNonNull(null);
        return new AbstractC1402i0(this, n4.b, 0);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream distinct() {
        return ((AbstractC1384e2) boxed()).distinct().mapToLong(new C1441q(23));
    }

    @Override // j$.util.stream.LongStream
    public final long sum() {
        return reduce(0L, new C1372c0(1));
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.E min() {
        return reduce(new C1441q(22));
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.E max() {
        return reduce(new C1372c0(0));
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.C average() {
        long j = ((long[]) collect(new C1441q(27), new C1441q(28), new C1441q(29)))[0];
        return j > 0 ? j$.util.C.d(r0[1] / j) : j$.util.C.a();
    }

    @Override // j$.util.stream.LongStream
    public final long reduce(long j, LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return ((Long) C(new C1482y1(EnumC1370b3.LONG_VALUE, longBinaryOperator, j))).longValue();
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.B summaryStatistics() {
        return (j$.util.B) collect(new C1411k(22), new C1441q(21), new C1441q(24));
    }

    @Override // j$.util.stream.LongStream
    public final Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        r rVar = new r(biConsumer, 2);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objLongConsumer);
        Objects.requireNonNull(rVar);
        return C(new C1(EnumC1370b3.LONG_VALUE, rVar, objLongConsumer, supplier, 0));
    }

    @Override // j$.util.stream.LongStream
    public final boolean v() {
        return ((Boolean) C(AbstractC1471w0.Z(EnumC1456t0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final boolean q() {
        return ((Boolean) C(AbstractC1471w0.Z(EnumC1456t0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.E reduce(LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return (j$.util.E) C(new A1(EnumC1370b3.LONG_VALUE, longBinaryOperator, 0));
    }

    @Override // j$.util.stream.LongStream
    public final boolean m() {
        return ((Boolean) C(AbstractC1471w0.Z(EnumC1456t0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final long[] toArray() {
        return (long[]) AbstractC1471w0.P((G0) D(new C1441q(25))).d();
    }

    @Override // j$.util.stream.LongStream
    public final long count() {
        return ((Long) C(new E1(0))).longValue();
    }
}
