package kotlin.random;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.AbstractC0362x4440ab85;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0006\b'\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u000bH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u000fH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0005H\u0016¨\u0006\u0019"}, d2 = {"Lkotlin/random/Random;", "", "<init>", "()V", "nextBits", "", "bitCount", "nextInt", "until", TypedValues.TransitionType.S_FROM, "nextLong", "", "nextBoolean", "", "nextDouble", "", "nextFloat", "", "nextBytes", "", "array", "fromIndex", "toIndex", "size", "Default", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/Random\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,383:1\n1#2:384\n*E\n"})
/* loaded from: classes3.dex */
public abstract class Random {

    /* renamed from: Default, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Random f1479xfbe0c504 = PlatformImplementationsKt.IMPLEMENTATIONS.defaultPlatformRandom();

    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001+J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u001f\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0013J\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001bJ\u001f\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u000e\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010\"\u001a\u00020 2\u0006\u0010$\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\"\u0010%J'\u0010\"\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0006\u0010&\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\"\u0010(R\u0014\u0010)\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006,"}, d2 = {"Lkotlin/random/Random$Default;", "Lkotlin/random/Random;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "()Ljava/lang/Object;", "", "bitCount", "nextBits", "(I)I", "nextInt", "()I", "until", TypedValues.TransitionType.S_FROM, "(II)I", "", "nextLong", "()J", "(J)J", "(JJ)J", "", "nextBoolean", "()Z", "", "nextDouble", "()D", "(D)D", "(DD)D", "", "nextFloat", "()F", "", "array", "nextBytes", "([B)[B", "size", "(I)[B", "fromIndex", "toIndex", "([BII)[B", "defaultRandom", "Lkotlin/random/Random;", "kotlin/random/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* renamed from: kotlin.random.Random$Default, reason: from kotlin metadata */
    /* loaded from: classes3.dex */
    public static final class Companion extends Random implements Serializable {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        private final Object writeReplace() {
            return C0293xfbe0c504.f1486xfbe0c504;
        }

        @Override // kotlin.random.Random
        public int nextBits(int bitCount) {
            return Random.f1479xfbe0c504.nextBits(bitCount);
        }

        @Override // kotlin.random.Random
        public boolean nextBoolean() {
            return Random.f1479xfbe0c504.nextBoolean();
        }

        @Override // kotlin.random.Random
        @NotNull
        public byte[] nextBytes(@NotNull byte[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            return Random.f1479xfbe0c504.nextBytes(array);
        }

        @Override // kotlin.random.Random
        public double nextDouble() {
            return Random.f1479xfbe0c504.nextDouble();
        }

        @Override // kotlin.random.Random
        public float nextFloat() {
            return Random.f1479xfbe0c504.nextFloat();
        }

        @Override // kotlin.random.Random
        public int nextInt() {
            return Random.f1479xfbe0c504.nextInt();
        }

        @Override // kotlin.random.Random
        public long nextLong() {
            return Random.f1479xfbe0c504.nextLong();
        }

        @Override // kotlin.random.Random
        @NotNull
        public byte[] nextBytes(int size) {
            return Random.f1479xfbe0c504.nextBytes(size);
        }

        @Override // kotlin.random.Random
        public double nextDouble(double until) {
            return Random.f1479xfbe0c504.nextDouble(until);
        }

        @Override // kotlin.random.Random
        public int nextInt(int until) {
            return Random.f1479xfbe0c504.nextInt(until);
        }

        @Override // kotlin.random.Random
        public long nextLong(long until) {
            return Random.f1479xfbe0c504.nextLong(until);
        }

        @Override // kotlin.random.Random
        @NotNull
        public byte[] nextBytes(@NotNull byte[] array, int fromIndex, int toIndex) {
            Intrinsics.checkNotNullParameter(array, "array");
            return Random.f1479xfbe0c504.nextBytes(array, fromIndex, toIndex);
        }

        @Override // kotlin.random.Random
        public double nextDouble(double from, double until) {
            return Random.f1479xfbe0c504.nextDouble(from, until);
        }

        @Override // kotlin.random.Random
        public int nextInt(int from, int until) {
            return Random.f1479xfbe0c504.nextInt(from, until);
        }

        @Override // kotlin.random.Random
        public long nextLong(long from, long until) {
            return Random.f1479xfbe0c504.nextLong(from, until);
        }
    }

    public static /* synthetic */ byte[] nextBytes$default(Random random, byte[] bArr, int i, int i2, int i3, Object obj) {
        if (obj == null) {
            if ((i3 & 2) != 0) {
                i = 0;
            }
            if ((i3 & 4) != 0) {
                i2 = bArr.length;
            }
            return random.nextBytes(bArr, i, i2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: nextBytes");
    }

    public abstract int nextBits(int bitCount);

    public boolean nextBoolean() {
        if (nextBits(1) != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public byte[] nextBytes(@NotNull byte[] array, int fromIndex, int toIndex) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (fromIndex < 0 || fromIndex > array.length || toIndex < 0 || toIndex > array.length) {
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2934x9d12c1f4(AbstractC0362x4440ab85.m2937x8c6fc18a(fromIndex, toIndex, "fromIndex (", ") or toIndex (", ") are out of range: 0.."), array.length, '.').toString());
        }
        if (fromIndex <= toIndex) {
            int i = (toIndex - fromIndex) / 4;
            for (int i2 = 0; i2 < i; i2++) {
                int nextInt = nextInt();
                array[fromIndex] = (byte) nextInt;
                array[fromIndex + 1] = (byte) (nextInt >>> 8);
                array[fromIndex + 2] = (byte) (nextInt >>> 16);
                array[fromIndex + 3] = (byte) (nextInt >>> 24);
                fromIndex += 4;
            }
            int i3 = toIndex - fromIndex;
            int nextBits = nextBits(i3 * 8);
            for (int i4 = 0; i4 < i3; i4++) {
                array[fromIndex + i4] = (byte) (nextBits >>> (i4 * 8));
            }
            return array;
        }
        throw new IllegalArgumentException(("fromIndex (" + fromIndex + ") must be not greater than toIndex (" + toIndex + ").").toString());
    }

    public double nextDouble() {
        return PlatformRandomKt.doubleFromParts(nextBits(26), nextBits(27));
    }

    public float nextFloat() {
        return nextBits(24) / 1.6777216E7f;
    }

    public int nextInt() {
        return nextBits(32);
    }

    public long nextLong() {
        return (nextInt() << 32) + nextInt();
    }

    public double nextDouble(double until) {
        return nextDouble(0.0d, until);
    }

    public int nextInt(int until) {
        return nextInt(0, until);
    }

    public long nextLong(long until) {
        return nextLong(0L, until);
    }

    public double nextDouble(double from, double until) {
        double nextDouble;
        RandomKt.checkRangeBounds(from, until);
        double d = until - from;
        if (Double.isInfinite(d) && Math.abs(from) <= Double.MAX_VALUE && Math.abs(until) <= Double.MAX_VALUE) {
            double d2 = 2;
            double nextDouble2 = ((until / d2) - (from / d2)) * nextDouble();
            nextDouble = from + nextDouble2 + nextDouble2;
        } else {
            nextDouble = from + (nextDouble() * d);
        }
        return nextDouble >= until ? Math.nextAfter(until, Double.NEGATIVE_INFINITY) : nextDouble;
    }

    public int nextInt(int from, int until) {
        int nextInt;
        int i;
        int i2;
        RandomKt.checkRangeBounds(from, until);
        int i3 = until - from;
        if (i3 > 0 || i3 == Integer.MIN_VALUE) {
            if (((-i3) & i3) == i3) {
                i2 = nextBits(RandomKt.fastLog2(i3));
                return from + i2;
            }
            do {
                nextInt = nextInt() >>> 1;
                i = nextInt % i3;
            } while ((i3 - 1) + (nextInt - i) < 0);
            i2 = i;
            return from + i2;
        }
        while (true) {
            int nextInt2 = nextInt();
            if (from <= nextInt2 && nextInt2 < until) {
                return nextInt2;
            }
        }
    }

    public long nextLong(long from, long until) {
        long nextLong;
        long j;
        long j2;
        int nextInt;
        RandomKt.checkRangeBounds(from, until);
        long j3 = until - from;
        if (j3 > 0) {
            if (((-j3) & j3) == j3) {
                int i = (int) j3;
                int i2 = (int) (j3 >>> 32);
                if (i != 0) {
                    nextInt = nextBits(RandomKt.fastLog2(i));
                } else if (i2 == 1) {
                    nextInt = nextInt();
                } else {
                    j2 = (nextBits(RandomKt.fastLog2(i2)) << 32) + (nextInt() & 4294967295L);
                    return from + j2;
                }
                j2 = nextInt & 4294967295L;
                return from + j2;
            }
            do {
                nextLong = nextLong() >>> 1;
                j = nextLong % j3;
            } while ((j3 - 1) + (nextLong - j) < 0);
            j2 = j;
            return from + j2;
        }
        while (true) {
            long nextLong2 = nextLong();
            if (from <= nextLong2 && nextLong2 < until) {
                return nextLong2;
            }
        }
    }

    @NotNull
    public byte[] nextBytes(@NotNull byte[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return nextBytes(array, 0, array.length);
    }

    @NotNull
    public byte[] nextBytes(int size) {
        return nextBytes(new byte[size]);
    }
}
