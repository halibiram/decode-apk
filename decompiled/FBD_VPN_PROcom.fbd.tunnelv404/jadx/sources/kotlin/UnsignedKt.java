package kotlin;

import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.AbstractC0298xfbe0c504;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u001f\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0001¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001f\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0001¢\u0006\u0004\b\u0006\u0010\u0004\u001a\u001f\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\bH\u0001¢\u0006\u0004\b\t\u0010\n\u001a\u001f\u0010\r\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\bH\u0001¢\u0006\u0004\b\f\u0010\n\u001a\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0001\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000eH\u0001¢\u0006\u0004\b\u000f\u0010\u0004\u001a\u001f\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0001\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u000eH\u0001¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0017\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014H\u0001¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u0017\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u0017\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0001¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001f\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u000eH\u0000¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lkotlin/UInt;", "v1", "v2", "uintRemainder-J1ME1BU", "(II)I", "uintRemainder", "uintDivide-J1ME1BU", "uintDivide", "Lkotlin/ULong;", "ulongDivide-eb3DHEI", "(JJ)J", "ulongDivide", "ulongRemainder-eb3DHEI", "ulongRemainder", "", "uintCompare", "", "ulongCompare", "(JJ)I", "value", "", "uintToDouble", "(I)D", "doubleToUInt", "(D)I", "ulongToDouble", "(J)D", "doubleToULong", "(D)J", "base", "", "ulongToString", "(JI)Ljava/lang/String;", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "UnsignedKt")
/* loaded from: classes3.dex */
public final class UnsignedKt {
    @PublishedApi
    public static final int doubleToUInt(double d) {
        if (Double.isNaN(d) || d <= uintToDouble(0)) {
            return 0;
        }
        if (d >= uintToDouble(-1)) {
            return -1;
        }
        if (d <= 2.147483647E9d) {
            return UInt.m1798constructorimpl((int) d);
        }
        return UInt.m1798constructorimpl(UInt.m1798constructorimpl(Integer.MAX_VALUE) + UInt.m1798constructorimpl((int) (d - Integer.MAX_VALUE)));
    }

    @PublishedApi
    public static final long doubleToULong(double d) {
        if (Double.isNaN(d) || d <= ulongToDouble(0L)) {
            return 0L;
        }
        if (d >= ulongToDouble(-1L)) {
            return -1L;
        }
        if (d < 9.223372036854776E18d) {
            return ULong.m1822constructorimpl((long) d);
        }
        return ULong.m1822constructorimpl(ULong.m1822constructorimpl((long) (d - 9.223372036854776E18d)) - Long.MIN_VALUE);
    }

    @PublishedApi
    public static final int uintCompare(int i, int i2) {
        return Intrinsics.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
    }

    @PublishedApi
    /* renamed from: uintDivide-J1ME1BU, reason: not valid java name */
    public static final int m1869uintDivideJ1ME1BU(int i, int i2) {
        return UInt.m1798constructorimpl((int) ((i & 4294967295L) / (i2 & 4294967295L)));
    }

    @PublishedApi
    /* renamed from: uintRemainder-J1ME1BU, reason: not valid java name */
    public static final int m1870uintRemainderJ1ME1BU(int i, int i2) {
        return UInt.m1798constructorimpl((int) ((i & 4294967295L) % (i2 & 4294967295L)));
    }

    @PublishedApi
    public static final double uintToDouble(int i) {
        return (((i >>> 31) << 30) * 2) + (Integer.MAX_VALUE & i);
    }

    @PublishedApi
    public static final int ulongCompare(long j, long j2) {
        return Intrinsics.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
    }

    @PublishedApi
    /* renamed from: ulongDivide-eb3DHEI, reason: not valid java name */
    public static final long m1871ulongDivideeb3DHEI(long j, long j2) {
        if (j2 < 0) {
            if (Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) < 0) {
                return ULong.m1822constructorimpl(0L);
            }
            return ULong.m1822constructorimpl(1L);
        }
        if (j >= 0) {
            return ULong.m1822constructorimpl(j / j2);
        }
        int i = 1;
        long j3 = ((j >>> 1) / j2) << 1;
        if (Long.compare(ULong.m1822constructorimpl(j - (j3 * j2)) ^ Long.MIN_VALUE, ULong.m1822constructorimpl(j2) ^ Long.MIN_VALUE) < 0) {
            i = 0;
        }
        return ULong.m1822constructorimpl(j3 + i);
    }

    @PublishedApi
    /* renamed from: ulongRemainder-eb3DHEI, reason: not valid java name */
    public static final long m1872ulongRemaindereb3DHEI(long j, long j2) {
        if (j2 < 0) {
            if (Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) >= 0) {
                return ULong.m1822constructorimpl(j - j2);
            }
            return j;
        }
        if (j >= 0) {
            return ULong.m1822constructorimpl(j % j2);
        }
        long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
        if (Long.compare(ULong.m1822constructorimpl(j3) ^ Long.MIN_VALUE, Long.MIN_VALUE ^ ULong.m1822constructorimpl(j2)) < 0) {
            j2 = 0;
        }
        return ULong.m1822constructorimpl(j3 - j2);
    }

    @PublishedApi
    public static final double ulongToDouble(long j) {
        return ((j >>> 11) * 2048) + (j & 2047);
    }

    @NotNull
    public static final String ulongToString(long j, int i) {
        if (j >= 0) {
            String l = Long.toString(j, AbstractC0298xfbe0c504.checkRadix(i));
            Intrinsics.checkNotNullExpressionValue(l, "toString(...)");
            return l;
        }
        long j2 = i;
        long j3 = ((j >>> 1) / j2) << 1;
        long j4 = j - (j3 * j2);
        if (j4 >= j2) {
            j4 -= j2;
            j3++;
        }
        StringBuilder sb = new StringBuilder();
        String l2 = Long.toString(j3, AbstractC0298xfbe0c504.checkRadix(i));
        Intrinsics.checkNotNullExpressionValue(l2, "toString(...)");
        sb.append(l2);
        String l3 = Long.toString(j4, AbstractC0298xfbe0c504.checkRadix(i));
        Intrinsics.checkNotNullExpressionValue(l3, "toString(...)");
        sb.append(l3);
        return sb.toString();
    }
}
