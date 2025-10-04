package j$.util.stream;

import j$.util.C1348f;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;
import java.util.function.Predicate;
import java.util.stream.Collector;

/* renamed from: j$.util.stream.w0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract /* synthetic */ class AbstractC1471w0 implements L3 {
    private static final C1368b1 a = new Object();
    private static final E0 b = new Object();
    private static final G0 c = new Object();
    private static final C0 d = new Object();
    private static final int[] e = new int[0];
    private static final long[] f = new long[0];
    private static final double[] g = new double[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long B(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    public abstract S1 c0();

    @Override // j$.util.stream.L3
    public /* synthetic */ int d() {
        return 0;
    }

    public static C1361a R(Function function) {
        C1361a c1361a = new C1361a(8);
        c1361a.b = function;
        return c1361a;
    }

    public static Set Q(Set set) {
        if (set == null || set.isEmpty()) {
            return set;
        }
        HashSet hashSet = new HashSet();
        Object next = set.iterator().next();
        if (next instanceof EnumC1396h) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                try {
                    EnumC1396h enumC1396h = (EnumC1396h) it.next();
                    hashSet.add(enumC1396h == null ? null : enumC1396h == EnumC1396h.CONCURRENT ? Collector.Characteristics.CONCURRENT : enumC1396h == EnumC1396h.UNORDERED ? Collector.Characteristics.UNORDERED : Collector.Characteristics.IDENTITY_FINISH);
                } catch (ClassCastException e2) {
                    C1348f.a("java.util.stream.Collector.Characteristics", e2);
                    throw null;
                }
            }
            return hashSet;
        }
        if (!(next instanceof Collector.Characteristics)) {
            C1348f.a("java.util.stream.Collector.Characteristics", next.getClass());
            throw null;
        }
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            try {
                Collector.Characteristics characteristics = (Collector.Characteristics) it2.next();
                hashSet.add(characteristics == null ? null : characteristics == Collector.Characteristics.CONCURRENT ? EnumC1396h.CONCURRENT : characteristics == Collector.Characteristics.UNORDERED ? EnumC1396h.UNORDERED : EnumC1396h.IDENTITY_FINISH);
            } catch (ClassCastException e3) {
                C1348f.a("java.util.stream.Collector.Characteristics", e3);
                throw null;
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long A(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Spliterator C(EnumC1370b3 enumC1370b3, Spliterator spliterator, long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        long j4 = j3 >= 0 ? j3 : Long.MAX_VALUE;
        int i = AbstractC1468v2.a[enumC1370b3.ordinal()];
        if (i == 1) {
            return new C1489z3(spliterator, j, j4);
        }
        if (i == 2) {
            return new AbstractC1484y3((j$.util.W) spliterator, j, j4);
        }
        if (i == 3) {
            return new AbstractC1484y3((j$.util.Z) spliterator, j, j4);
        }
        if (i != 4) {
            throw new IllegalStateException("Unknown shape " + enumC1370b3);
        }
        return new AbstractC1484y3((j$.util.T) spliterator, j, j4);
    }

    public static C1461u0 a0(EnumC1456t0 enumC1456t0, Predicate predicate) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC1456t0);
        return new C1461u0(EnumC1370b3.REFERENCE, enumC1456t0, new C1427n0(0, enumC1456t0, predicate));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AbstractC1373c1 K(EnumC1370b3 enumC1370b3) {
        int i = J0.a[enumC1370b3.ordinal()];
        if (i == 1) {
            return a;
        }
        if (i == 2) {
            return (AbstractC1373c1) b;
        }
        if (i == 3) {
            return (AbstractC1373c1) c;
        }
        if (i == 4) {
            return (AbstractC1373c1) d;
        }
        throw new IllegalStateException("Unknown shape " + enumC1370b3);
    }

    public static C1461u0 X(EnumC1456t0 enumC1456t0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC1456t0);
        return new C1461u0(EnumC1370b3.INT_VALUE, enumC1456t0, new C1422m0(enumC1456t0, 1));
    }

    public static Stream b0(AbstractC1384e2 abstractC1384e2, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C1434o2(abstractC1384e2, L(j2), j, j2);
    }

    public static I0 w(I0 i0, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == i0.count()) {
            return i0;
        }
        Spliterator spliterator = i0.spliterator();
        long j3 = j2 - j;
        A0 D = D(j3, intFunction);
        D.l(j3);
        for (int i = 0; i < j && spliterator.tryAdvance(new C1372c0(2)); i++) {
        }
        if (j2 == i0.count()) {
            spliterator.forEachRemaining(D);
        } else {
            for (int i2 = 0; i2 < j3 && spliterator.tryAdvance(D); i2++) {
            }
        }
        D.k();
        return D.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static K0 I(EnumC1370b3 enumC1370b3, I0 i0, I0 i02) {
        int i = J0.a[enumC1370b3.ordinal()];
        if (i == 1) {
            return new K0(i0, i02);
        }
        if (i == 2) {
            return new K0((E0) i0, (E0) i02);
        }
        if (i == 3) {
            return new K0((G0) i0, (G0) i02);
        }
        if (i != 4) {
            throw new IllegalStateException("Unknown shape " + enumC1370b3);
        }
        return new K0((C0) i0, (C0) i02);
    }

    public static C1461u0 Z(EnumC1456t0 enumC1456t0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC1456t0);
        return new C1461u0(EnumC1370b3.LONG_VALUE, enumC1456t0, new C1422m0(enumC1456t0, 0));
    }

    public static void k() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static C1461u0 V(EnumC1456t0 enumC1456t0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC1456t0);
        return new C1461u0(EnumC1370b3.DOUBLE_VALUE, enumC1456t0, new C1422m0(enumC1456t0, 2));
    }

    public static void l() {
        throw new IllegalStateException("called wrong accept method");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r0v1, types: [j$.util.stream.A0, j$.util.stream.W2] */
    /* JADX WARN: Type inference failed for: r0v3, types: [j$.util.stream.L0, j$.util.stream.A0] */
    public static A0 D(long j, IntFunction intFunction) {
        if (j >= 0 && j < 2147483639) {
            return new L0(j, intFunction);
        }
        return new W2();
    }

    public static void a() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static void g(InterfaceC1414k2 interfaceC1414k2, Integer num) {
        if (O3.a) {
            O3.a(interfaceC1414k2.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        }
        interfaceC1414k2.accept(num.intValue());
    }

    public static void i(InterfaceC1419l2 interfaceC1419l2, Long l) {
        if (O3.a) {
            O3.a(interfaceC1419l2.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        }
        interfaceC1419l2.accept(l.longValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r0v1, types: [j$.util.stream.y0, j$.util.stream.V2] */
    /* JADX WARN: Type inference failed for: r0v3, types: [j$.util.stream.y0, j$.util.stream.e1] */
    public static InterfaceC1481y0 S(long j) {
        if (j < 0 || j >= 2147483639) {
            return new V2();
        }
        return new C1383e1(j);
    }

    public static void e(InterfaceC1409j2 interfaceC1409j2, Double d2) {
        if (O3.a) {
            O3.a(interfaceC1409j2.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        }
        interfaceC1409j2.accept(d2.doubleValue());
    }

    public static IntStream W(AbstractC1362a0 abstractC1362a0, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C1444q2(abstractC1362a0, L(j2), j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r0v1, types: [j$.util.stream.z0, j$.util.stream.V2] */
    /* JADX WARN: Type inference failed for: r0v3, types: [j$.util.stream.z0, j$.util.stream.n1] */
    public static InterfaceC1486z0 T(long j) {
        if (j < 0 || j >= 2147483639) {
            return new V2();
        }
        return new C1428n1(j);
    }

    public static Object[] m(H0 h0, IntFunction intFunction) {
        if (O3.a) {
            O3.a(h0.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        }
        if (h0.count() >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) h0.count());
        h0.i(objArr, 0);
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r0v1, types: [j$.util.stream.x0, j$.util.stream.V2] */
    /* JADX WARN: Type inference failed for: r0v3, types: [j$.util.stream.x0, j$.util.stream.V0] */
    public static InterfaceC1476x0 J(long j) {
        if (j < 0 || j >= 2147483639) {
            return new V2();
        }
        return new V0(j);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.function.LongFunction, java.lang.Object, j$.util.stream.O0] */
    public static I0 E(AbstractC1366b abstractC1366b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long F = abstractC1366b.F(spliterator);
        if (F < 0 || !spliterator.hasCharacteristics(16384)) {
            ?? obj = new Object();
            obj.a = intFunction;
            I0 i0 = (I0) new N0(abstractC1366b, spliterator, obj, new C1411k(16), 3).invoke();
            return z ? M(i0, intFunction) : i0;
        }
        if (F >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) F);
        new C1457t1(spliterator, abstractC1366b, objArr).invoke();
        return new L0(objArr);
    }

    public static void r(E0 e0, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            e0.e((IntConsumer) consumer);
        } else {
            if (O3.a) {
                O3.a(e0.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.W) e0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static LongStream Y(AbstractC1407j0 abstractC1407j0, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C1453s2(abstractC1407j0, L(j2), j, j2);
    }

    public static void o(E0 e0, Integer[] numArr, int i) {
        if (O3.a) {
            O3.a(e0.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) e0.d();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    public static E0 u(E0 e0, long j, long j2) {
        if (j == 0 && j2 == e0.count()) {
            return e0;
        }
        long j3 = j2 - j;
        j$.util.W w = (j$.util.W) e0.spliterator();
        InterfaceC1481y0 S = S(j3);
        S.l(j3);
        for (int i = 0; i < j && w.tryAdvance((IntConsumer) new D0(0)); i++) {
        }
        if (j2 == e0.count()) {
            w.forEachRemaining((IntConsumer) S);
        } else {
            for (int i2 = 0; i2 < j3 && w.tryAdvance((IntConsumer) S); i2++) {
            }
        }
        S.k();
        return S.a();
    }

    public static E0 G(AbstractC1366b abstractC1366b, Spliterator spliterator, boolean z) {
        long F = abstractC1366b.F(spliterator);
        if (F < 0 || !spliterator.hasCharacteristics(16384)) {
            E0 e0 = (E0) new N0(abstractC1366b, spliterator, new C1411k(12), new C1411k(13), 1).invoke();
            return z ? O(e0) : e0;
        }
        if (F >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) F];
        new C1447r1(spliterator, abstractC1366b, iArr).invoke();
        return new C1383e1(iArr);
    }

    public static G0 H(AbstractC1366b abstractC1366b, Spliterator spliterator, boolean z) {
        long F = abstractC1366b.F(spliterator);
        if (F < 0 || !spliterator.hasCharacteristics(16384)) {
            G0 g0 = (G0) new N0(abstractC1366b, spliterator, new C1411k(14), new C1411k(15), 2).invoke();
            return z ? P(g0) : g0;
        }
        if (F >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) F];
        new C1452s1(spliterator, abstractC1366b, jArr).invoke();
        return new C1428n1(jArr);
    }

    public static void s(G0 g0, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            g0.e((LongConsumer) consumer);
        } else {
            if (O3.a) {
                O3.a(g0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.Z) g0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void p(G0 g0, Long[] lArr, int i) {
        if (O3.a) {
            O3.a(g0.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) g0.d();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    public static G0 v(G0 g0, long j, long j2) {
        if (j == 0 && j2 == g0.count()) {
            return g0;
        }
        long j3 = j2 - j;
        j$.util.Z z = (j$.util.Z) g0.spliterator();
        InterfaceC1486z0 T = T(j3);
        T.l(j3);
        for (int i = 0; i < j && z.tryAdvance((LongConsumer) new F0(0)); i++) {
        }
        if (j2 == g0.count()) {
            z.forEachRemaining((LongConsumer) T);
        } else {
            for (int i2 = 0; i2 < j3 && z.tryAdvance((LongConsumer) T); i2++) {
            }
        }
        T.k();
        return T.a();
    }

    public static C0 F(AbstractC1366b abstractC1366b, Spliterator spliterator, boolean z) {
        long F = abstractC1366b.F(spliterator);
        if (F < 0 || !spliterator.hasCharacteristics(16384)) {
            C0 c0 = (C0) new N0(abstractC1366b, spliterator, new C1411k(10), new C1411k(11), 0).invoke();
            return z ? N(c0) : c0;
        }
        if (F >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) F];
        new C1443q1(spliterator, abstractC1366b, dArr).invoke();
        return new V0(dArr);
    }

    public static DoubleStream U(B b2, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C1463u2(b2, L(j2), j, j2);
    }

    public static I0 M(I0 i0, IntFunction intFunction) {
        if (i0.q() <= 0) {
            return i0;
        }
        long count = i0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) count);
        new C1477x1(i0, objArr, 1).invoke();
        return new L0(objArr);
    }

    public static void q(C0 c0, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            c0.e((DoubleConsumer) consumer);
        } else {
            if (O3.a) {
                O3.a(c0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.T) c0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static E0 O(E0 e0) {
        if (e0.q() <= 0) {
            return e0;
        }
        long count = e0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) count];
        new C1477x1(e0, iArr, 0).invoke();
        return new C1383e1(iArr);
    }

    public static void n(C0 c0, Double[] dArr, int i) {
        if (O3.a) {
            O3.a(c0.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) c0.d();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    public static C0 t(C0 c0, long j, long j2) {
        if (j == 0 && j2 == c0.count()) {
            return c0;
        }
        long j3 = j2 - j;
        j$.util.T t = (j$.util.T) c0.spliterator();
        InterfaceC1476x0 J = J(j3);
        J.l(j3);
        for (int i = 0; i < j && t.tryAdvance((DoubleConsumer) new B0(0)); i++) {
        }
        if (j2 == c0.count()) {
            t.forEachRemaining((DoubleConsumer) J);
        } else {
            for (int i2 = 0; i2 < j3 && t.tryAdvance((DoubleConsumer) J); i2++) {
            }
        }
        J.k();
        return J.a();
    }

    public static G0 P(G0 g0) {
        if (g0.q() <= 0) {
            return g0;
        }
        long count = g0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) count];
        new C1477x1(g0, jArr, 0).invoke();
        return new C1428n1(jArr);
    }

    private static int L(long j) {
        return (j != -1 ? EnumC1365a3.u : 0) | EnumC1365a3.t;
    }

    public static C0 N(C0 c0) {
        if (c0.q() <= 0) {
            return c0;
        }
        long count = c0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) count];
        new C1477x1(c0, dArr, 0).invoke();
        return new V0(dArr);
    }

    @Override // j$.util.stream.L3
    public Object b(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        S1 c0 = c0();
        abstractC1366b.V(spliterator, c0);
        return c0.get();
    }

    @Override // j$.util.stream.L3
    public Object c(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        return ((S1) new Z1(this, abstractC1366b, spliterator).invoke()).get();
    }
}
