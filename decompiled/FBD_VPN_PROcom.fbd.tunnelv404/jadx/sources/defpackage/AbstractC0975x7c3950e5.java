package defpackage;

import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;

/* renamed from: 딝뎻따될뎠둣땝땩돵둘뎬뎨따땀들딅듻뒀돛든땦땱딸됩됩뒋땐땩뎡딤땁뒉딐든땜뒷듸딝둘뒵땔땁뎸됨뎽딹뎹딸듬득땍딀땹땡듟따땮뒀돝됨땻듻둘딀듸딃뎬땀뒝돶둡땡땅듰뒐듨딠딄뒀뒬딸돳땠듰땬뒛돝땧땲땫뒀땬뒛땄돨딄땤땦뎽딀뒝돳땦둡땨돨둬땡땪땯땵땪둥돰딻딜뒼딌둡듌뒤뒉뒐뎬뒈딐땧뎠땋땩, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0975x7c3950e5 extends AbstractC0974x3091b97d {
    @SinceKotlin(version = "1.2")
    public static final double acosh(double d) {
        if (d < 1.0d) {
            return Double.NaN;
        }
        if (d > AbstractC0638x32d347bd.f4422x75d576dc) {
            return Math.log(d) + AbstractC0638x32d347bd.f4419xfbe0c504;
        }
        double d2 = 1;
        double d3 = d - d2;
        if (d3 >= AbstractC0638x32d347bd.f4421x1378447b) {
            return Math.log(Math.sqrt((d * d) - d2) + d);
        }
        double sqrt = Math.sqrt(d3);
        if (sqrt >= AbstractC0638x32d347bd.f4420x3271d0aa) {
            sqrt -= ((sqrt * sqrt) * sqrt) / 12;
        }
        return sqrt * Math.sqrt(2.0d);
    }

    @SinceKotlin(version = "1.2")
    public static final double asinh(double d) {
        double d2 = AbstractC0638x32d347bd.f4421x1378447b;
        if (d >= d2) {
            if (d > AbstractC0638x32d347bd.f4423x9738a56c) {
                if (d > AbstractC0638x32d347bd.f4422x75d576dc) {
                    return Math.log(d) + AbstractC0638x32d347bd.f4419xfbe0c504;
                }
                double d3 = d * 2;
                return Math.log((1 / d3) + d3);
            }
            return Math.log(Math.sqrt((d * d) + 1) + d);
        }
        if (d <= (-d2)) {
            return -asinh(-d);
        }
        if (Math.abs(d) >= AbstractC0638x32d347bd.f4420x3271d0aa) {
            return d - (((d * d) * d) / 6);
        }
        return d;
    }

    @SinceKotlin(version = "1.2")
    public static final double atanh(double d) {
        if (Math.abs(d) < AbstractC0638x32d347bd.f4421x1378447b) {
            if (Math.abs(d) > AbstractC0638x32d347bd.f4420x3271d0aa) {
                return d + (((d * d) * d) / 3);
            }
            return d;
        }
        double d2 = 1;
        return Math.log((d2 + d) / (d2 - d)) / 2;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(double d) {
    }

    public static int getSign(int i) {
        return Integer.signum(i);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getSign$annotations(double d) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getUlp$annotations(double d) {
    }

    @SinceKotlin(version = "1.2")
    public static final double log(double d, double d2) {
        if (d2 <= 0.0d || d2 == 1.0d) {
            return Double.NaN;
        }
        return Math.log(d) / Math.log(d2);
    }

    @SinceKotlin(version = "1.2")
    public static final double log2(double d) {
        return Math.log(d) / AbstractC0638x32d347bd.f4419xfbe0c504;
    }

    @SinceKotlin(version = "1.2")
    public static int roundToInt(double d) {
        if (Double.isNaN(d)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        if (d > 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        if (d < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d);
    }

    @SinceKotlin(version = "1.2")
    public static long roundToLong(double d) {
        if (Double.isNaN(d)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(d);
    }

    @SinceKotlin(version = "1.2")
    public static final double truncate(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            return d;
        }
        if (d > 0.0d) {
            return Math.floor(d);
        }
        return Math.ceil(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(float f) {
    }

    public static int getSign(long j) {
        return Long.signum(j);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getSign$annotations(float f) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getUlp$annotations(float f) {
    }

    @SinceKotlin(version = "1.2")
    public static final float log(float f, float f2) {
        if (f2 <= 0.0f || f2 == 1.0f) {
            return Float.NaN;
        }
        return (float) (Math.log(f) / Math.log(f2));
    }

    @SinceKotlin(version = "1.2")
    public static final float log2(float f) {
        return (float) (Math.log(f) / AbstractC0638x32d347bd.f4419xfbe0c504);
    }

    @SinceKotlin(version = "1.2")
    public static final long roundToLong(float f) {
        return roundToLong(f);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(int i) {
    }

    @SinceKotlin(version = "1.2")
    public static /* synthetic */ void getSign$annotations(int i) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(long j) {
    }

    @SinceKotlin(version = "1.2")
    public static /* synthetic */ void getSign$annotations(long j) {
    }

    @SinceKotlin(version = "1.2")
    public static int roundToInt(float f) {
        if (Float.isNaN(f)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(f);
    }

    @SinceKotlin(version = "1.2")
    public static final float truncate(float f) {
        double ceil;
        if (Float.isNaN(f) || Float.isInfinite(f)) {
            return f;
        }
        if (f > 0.0f) {
            ceil = Math.floor(f);
        } else {
            ceil = Math.ceil(f);
        }
        return (float) ceil;
    }
}
