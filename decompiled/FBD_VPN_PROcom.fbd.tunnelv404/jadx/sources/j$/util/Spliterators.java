package j$.util;

import java.util.Iterator;

/* loaded from: classes4.dex */
public final class Spliterators {
    private static final Spliterator a = new Object();
    private static final W b = new Object();
    private static final Z c = new Object();
    private static final T d = new Object();

    public static Spliterator e() {
        return a;
    }

    public static W c() {
        return b;
    }

    public static Z d() {
        return c;
    }

    public static T b() {
        return d;
    }

    public static Spliterator m(Object[] objArr, int i, int i2) {
        a(((Object[]) Objects.requireNonNull(objArr)).length, i, i2);
        return new i0(objArr, i, i2, 1040);
    }

    public static W k(int[] iArr, int i, int i2) {
        a(((int[]) Objects.requireNonNull(iArr)).length, i, i2);
        return new o0(iArr, i, i2, 1040);
    }

    public static Z l(long[] jArr, int i, int i2) {
        a(((long[]) Objects.requireNonNull(jArr)).length, i, i2);
        return new q0(jArr, i, i2, 1040);
    }

    public static T j(double[] dArr, int i, int i2) {
        a(((double[]) Objects.requireNonNull(dArr)).length, i, i2);
        return new j0(dArr, i, i2, 1040);
    }

    private static void a(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i2 < 0) {
                throw new ArrayIndexOutOfBoundsException(i2);
            }
            if (i3 > i) {
                throw new ArrayIndexOutOfBoundsException(i3);
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException("origin(" + i2 + ") > fence(" + i3 + ")");
    }

    public static <T> Spliterator<T> spliterator(java.util.Collection<? extends T> collection, int i) {
        return new p0((java.util.Collection) Objects.requireNonNull(collection), i);
    }

    public static <T> Spliterator<T> spliteratorUnknownSize(Iterator<? extends T> it, int i) {
        return new p0((Iterator) Objects.requireNonNull(it), i);
    }

    public static Iterator i(Spliterator spliterator) {
        Objects.requireNonNull(spliterator);
        return new e0(spliterator);
    }

    public static PrimitiveIterator$OfInt g(W w) {
        Objects.requireNonNull(w);
        return new f0(w);
    }

    public static PrimitiveIterator$OfLong h(Z z) {
        Objects.requireNonNull(z);
        return new g0(z);
    }

    public static PrimitiveIterator$OfDouble f(T t) {
        Objects.requireNonNull(t);
        return new h0(t);
    }
}
