package defpackage;

import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 둘딜됐땤땝돴땦돝땬돵뎽뒬뒀드땃돴따딐땄땬땣뎽뒨듨듰듟뒵땵땵딝딄됫둣딠딐뒋땬딅뎽듟뒵땬뒤됨땯든딽뒻딸돨딜땸돸둘뒐뒼됩돰땵뎬둬돠듨딸돶뎽돵됩뒼돶듸뎰됐뒼돛뒘뎨딸듸땟땧도들듐딝땹듼딝듌뒉뒘뎸뒹듟뎻땳딃듼듽돸딄땅둔둔듼듼듐뎻될딎돷둠딎둥땡돨딸뒈뒹뎡땹딃땋땍뒾듔돵땡땃땝, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0614x40cbcac5 extends AbstractC0613x9f5dff2a {
    @SinceKotlin(version = "1.1")
    @NotNull
    public static <T extends Comparable<? super T>> T maxOf(@NotNull T a, @NotNull T b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return a.compareTo(b) >= 0 ? a : b;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T extends Comparable<? super T>> T minOf(@NotNull T a, @NotNull T b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return a.compareTo(b) <= 0 ? a : b;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T extends Comparable<? super T>> T maxOf(@NotNull T a, @NotNull T b, @NotNull T c) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        Intrinsics.checkNotNullParameter(c, "c");
        return (T) maxOf(a, maxOf(b, c));
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T extends Comparable<? super T>> T minOf(@NotNull T a, @NotNull T b, @NotNull T c) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        Intrinsics.checkNotNullParameter(c, "c");
        return (T) minOf(a, minOf(b, c));
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    public static final <T extends Comparable<? super T>> T maxOf(@NotNull T a, @NotNull T... other) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(other, "other");
        for (T t : other) {
            a = (T) maxOf(a, t);
        }
        return a;
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    public static final <T extends Comparable<? super T>> T minOf(@NotNull T a, @NotNull T... other) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(other, "other");
        for (T t : other) {
            a = (T) minOf(a, t);
        }
        return a;
    }

    @SinceKotlin(version = "1.4")
    public static final byte maxOf(byte b, @NotNull byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (byte b2 : other) {
            b = (byte) Math.max((int) b, (int) b2);
        }
        return b;
    }

    @SinceKotlin(version = "1.4")
    public static final byte minOf(byte b, @NotNull byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (byte b2 : other) {
            b = (byte) Math.min((int) b, (int) b2);
        }
        return b;
    }

    @SinceKotlin(version = "1.4")
    public static final short maxOf(short s, @NotNull short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (short s2 : other) {
            s = (short) Math.max((int) s, (int) s2);
        }
        return s;
    }

    @SinceKotlin(version = "1.4")
    public static final short minOf(short s, @NotNull short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (short s2 : other) {
            s = (short) Math.min((int) s, (int) s2);
        }
        return s;
    }

    @SinceKotlin(version = "1.4")
    public static final int maxOf(int i, @NotNull int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i2 : other) {
            i = Math.max(i, i2);
        }
        return i;
    }

    @SinceKotlin(version = "1.4")
    public static final int minOf(int i, @NotNull int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i2 : other) {
            i = Math.min(i, i2);
        }
        return i;
    }

    @SinceKotlin(version = "1.4")
    public static final long maxOf(long j, @NotNull long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (long j2 : other) {
            j = Math.max(j, j2);
        }
        return j;
    }

    @SinceKotlin(version = "1.4")
    public static final long minOf(long j, @NotNull long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (long j2 : other) {
            j = Math.min(j, j2);
        }
        return j;
    }

    @SinceKotlin(version = "1.4")
    public static final float maxOf(float f, @NotNull float... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (float f2 : other) {
            f = Math.max(f, f2);
        }
        return f;
    }

    @SinceKotlin(version = "1.4")
    public static final float minOf(float f, @NotNull float... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (float f2 : other) {
            f = Math.min(f, f2);
        }
        return f;
    }

    @SinceKotlin(version = "1.4")
    public static final double maxOf(double d, @NotNull double... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (double d2 : other) {
            d = Math.max(d, d2);
        }
        return d;
    }

    @SinceKotlin(version = "1.4")
    public static final double minOf(double d, @NotNull double... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (double d2 : other) {
            d = Math.min(d, d2);
        }
        return d;
    }
}
