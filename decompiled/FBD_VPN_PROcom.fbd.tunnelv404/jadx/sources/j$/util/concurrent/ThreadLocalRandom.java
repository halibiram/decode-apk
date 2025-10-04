package j$.util.concurrent;

import j$.util.stream.C1417l0;
import j$.util.stream.D;
import j$.util.stream.IntStream;
import j$.util.stream.StreamSupport;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.SecureRandom;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;

/* loaded from: classes4.dex */
public class ThreadLocalRandom extends Random {
    private static final long serialVersionUID = -5851777807851030925L;
    long a;
    int b;
    boolean c;
    private static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField("rnd", Long.TYPE), new ObjectStreamField("initialized", Boolean.TYPE)};
    private static final ThreadLocal d = new ThreadLocal();
    private static final AtomicInteger e = new AtomicInteger();
    private static final ThreadLocal f = new ThreadLocal();
    private static final AtomicLong g = new AtomicLong(h(System.currentTimeMillis()) ^ h(System.nanoTime()));

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ThreadLocalRandom(int i) {
        this();
    }

    private static int g(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        return (int) (((j2 ^ (j2 >>> 33)) * (-4265267296055464877L)) >>> 32);
    }

    private static long h(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
        return j3 ^ (j3 >>> 33);
    }

    private ThreadLocalRandom() {
        this.c = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void f() {
        int addAndGet = e.addAndGet(-1640531527);
        if (addAndGet == 0) {
            addAndGet = 1;
        }
        long h = h(g.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f.get();
        threadLocalRandom.a = h;
        threadLocalRandom.b = addAndGet;
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f.get();
        if (threadLocalRandom.b == 0) {
            f();
        }
        return threadLocalRandom;
    }

    @Override // java.util.Random
    public final void setSeed(long j) {
        if (this.c) {
            throw new UnsupportedOperationException();
        }
    }

    final long i() {
        long j = this.a - 7046029254386353131L;
        this.a = j;
        return j;
    }

    @Override // java.util.Random
    protected final int next(int i) {
        return nextInt() >>> (32 - i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long e(long j, long j2) {
        long h = h(i());
        if (j >= j2) {
            return h;
        }
        long j3 = j2 - j;
        long j4 = j3 - 1;
        if ((j3 & j4) == 0) {
            return (h & j4) + j;
        }
        if (j3 > 0) {
            while (true) {
                long j5 = h >>> 1;
                long j6 = j5 + j4;
                long j7 = j5 % j3;
                if (j6 - j7 >= 0) {
                    return j7 + j;
                }
                h = h(i());
            }
        } else {
            while (true) {
                if (h >= j && h < j2) {
                    return h;
                }
                h = h(i());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d(int i, int i2) {
        int i3;
        int g2 = g(i());
        if (i >= i2) {
            return g2;
        }
        int i4 = i2 - i;
        int i5 = i4 - 1;
        if ((i4 & i5) == 0) {
            i3 = g2 & i5;
        } else if (i4 > 0) {
            int i6 = g2 >>> 1;
            while (true) {
                int i7 = i6 + i5;
                i3 = i6 % i4;
                if (i7 - i3 >= 0) {
                    break;
                }
                i6 = g(i()) >>> 1;
            }
        } else {
            while (true) {
                if (g2 >= i && g2 < i2) {
                    return g2;
                }
                g2 = g(i());
            }
        }
        return i3 + i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final double c(double d2, double d3) {
        double nextLong = (nextLong() >>> 11) * 1.1102230246251565E-16d;
        if (d2 >= d3) {
            return nextLong;
        }
        double d4 = ((d3 - d2) * nextLong) + d2;
        return d4 >= d3 ? Double.longBitsToDouble(Double.doubleToLongBits(d3) - 1) : d4;
    }

    @Override // java.util.Random
    public int nextInt() {
        return g(i());
    }

    @Override // java.util.Random
    public final int nextInt(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        int g2 = g(i());
        int i2 = i - 1;
        if ((i & i2) == 0) {
            return g2 & i2;
        }
        while (true) {
            int i3 = g2 >>> 1;
            int i4 = i3 + i2;
            int i5 = i3 % i;
            if (i4 - i5 >= 0) {
                return i5;
            }
            g2 = g(i());
        }
    }

    public int nextInt(int i, int i2) {
        if (i >= i2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return d(i, i2);
    }

    @Override // java.util.Random
    public final long nextLong() {
        return h(i());
    }

    public long nextLong(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        long h = h(i());
        long j2 = j - 1;
        if ((j & j2) == 0) {
            return h & j2;
        }
        while (true) {
            long j3 = h >>> 1;
            long j4 = j3 + j2;
            long j5 = j3 % j;
            if (j4 - j5 >= 0) {
                return j5;
            }
            h = h(i());
        }
    }

    public long nextLong(long j, long j2) {
        if (j >= j2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return e(j, j2);
    }

    @Override // java.util.Random
    public final double nextDouble() {
        return (h(i()) >>> 11) * 1.1102230246251565E-16d;
    }

    public double nextDouble(double d2) {
        if (d2 <= 0.0d) {
            throw new IllegalArgumentException("bound must be positive");
        }
        double h = (h(i()) >>> 11) * 1.1102230246251565E-16d * d2;
        return h < d2 ? h : Double.longBitsToDouble(Double.doubleToLongBits(d2) - 1);
    }

    public final double nextDouble(double d2, double d3) {
        if (d2 >= d3) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return c(d2, d3);
    }

    @Override // java.util.Random
    public final boolean nextBoolean() {
        return g(i()) < 0;
    }

    @Override // java.util.Random
    public final float nextFloat() {
        return (g(i()) >>> 8) * 5.9604645E-8f;
    }

    @Override // java.util.Random
    public final double nextGaussian() {
        ThreadLocal threadLocal = d;
        Double d2 = (Double) threadLocal.get();
        if (d2 != null) {
            threadLocal.set(null);
            return d2.doubleValue();
        }
        while (true) {
            double nextDouble = (nextDouble() * 2.0d) - 1.0d;
            double nextDouble2 = (nextDouble() * 2.0d) - 1.0d;
            double d3 = (nextDouble2 * nextDouble2) + (nextDouble * nextDouble);
            if (d3 < 1.0d && d3 != 0.0d) {
                double sqrt = StrictMath.sqrt((StrictMath.log(d3) * (-2.0d)) / d3);
                threadLocal.set(Double.valueOf(nextDouble2 * sqrt));
                return nextDouble * sqrt;
            }
        }
    }

    @Override // java.util.Random
    public final IntStream ints(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        return IntStream.Wrapper.convert(StreamSupport.b(new y(0L, j, Integer.MAX_VALUE, 0)));
    }

    @Override // java.util.Random
    public final java.util.stream.IntStream ints() {
        return IntStream.Wrapper.convert(StreamSupport.b(new y(0L, Long.MAX_VALUE, Integer.MAX_VALUE, 0)));
    }

    @Override // java.util.Random
    public final java.util.stream.IntStream ints(long j, int i, int i2) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (i >= i2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return IntStream.Wrapper.convert(StreamSupport.b(new y(0L, j, i, i2)));
    }

    @Override // java.util.Random
    public final java.util.stream.IntStream ints(int i, int i2) {
        if (i >= i2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return IntStream.Wrapper.convert(StreamSupport.b(new y(0L, Long.MAX_VALUE, i, i2)));
    }

    @Override // java.util.Random
    public final LongStream longs(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        return C1417l0.j(StreamSupport.c(new z(0L, j, Long.MAX_VALUE, 0L)));
    }

    @Override // java.util.Random
    public final LongStream longs() {
        return C1417l0.j(StreamSupport.c(new z(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L)));
    }

    @Override // java.util.Random
    public final LongStream longs(long j, long j2, long j3) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (j2 >= j3) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return C1417l0.j(StreamSupport.c(new z(0L, j, j2, j3)));
    }

    @Override // java.util.Random
    public final LongStream longs(long j, long j2) {
        if (j >= j2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return C1417l0.j(StreamSupport.c(new z(0L, Long.MAX_VALUE, j, j2)));
    }

    @Override // java.util.Random
    public final DoubleStream doubles(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        return D.j(StreamSupport.a(new x(0L, j, Double.MAX_VALUE, 0.0d)));
    }

    @Override // java.util.Random
    public final DoubleStream doubles() {
        return D.j(StreamSupport.a(new x(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d)));
    }

    @Override // java.util.Random
    public final DoubleStream doubles(long j, double d2, double d3) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (d2 >= d3) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return D.j(StreamSupport.a(new x(0L, j, d2, d3)));
    }

    @Override // java.util.Random
    public final DoubleStream doubles(double d2, double d3) {
        if (d2 >= d3) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return D.j(StreamSupport.a(new x(0L, Long.MAX_VALUE, d2, d3)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final int b() {
        return ((ThreadLocalRandom) f.get()).b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final int a(int i) {
        int i2 = i ^ (i << 13);
        int i3 = i2 ^ (i2 >>> 17);
        int i4 = i3 ^ (i3 << 5);
        ((ThreadLocalRandom) f.get()).b = i4;
        return i4;
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object, java.security.PrivilegedAction] */
    static {
        if (((Boolean) AccessController.doPrivileged((PrivilegedAction) new Object())).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            long j = seed[0] & 255;
            for (int i = 1; i < 8; i++) {
                j = (j << 8) | (seed[i] & 255);
            }
            g.set(j);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        ObjectOutputStream.PutField putFields = objectOutputStream.putFields();
        putFields.put("rnd", this.a);
        putFields.put("initialized", true);
        objectOutputStream.writeFields();
    }

    private Object readResolve() {
        return current();
    }
}
