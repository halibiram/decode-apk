package defpackage;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.SinceKotlin;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.WasExperimental;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 땮딽딌뒵듽됩뒹땣딹땹뎹딌뎡둔득딹딜땵딟될들딄딅됫땵뎡뎽돰딁뎸땀둡딎땤뎬뒾뒙땟뒐돳뎻돰딨돛땫땯뒹딟땋듬돵땫땁딄돠돷뒈듻드뎡땻돼두땻딠땳딽뒘뒝딨뒼뒾딝됩땻땻뒋된땲땮듬딝땥둡됩돼돸돨둘듻딨뒋둬뒋든디뒵땨뒼땣땤뒬돴땡땹든뎰땱뒛뒉뎡돤듬딹돵뒀땠땝딃뒵땦땅땮뒵뎹돷듐뎸들땣, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1264x4c9ac376 {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-5PvTz6A, reason: not valid java name */
    public static final short m4223maxOf5PvTz6A(short s, short s2) {
        if (Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) < 0) {
            return s2;
        }
        return s;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-J1ME1BU, reason: not valid java name */
    public static final int m4224maxOfJ1ME1BU(int i, int i2) {
        if (Integer.compare(i ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2) < 0) {
            return i2;
        }
        return i;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-Kr8caGY, reason: not valid java name */
    public static final byte m4225maxOfKr8caGY(byte b, byte b2) {
        if (Intrinsics.compare(b & 255, b2 & 255) < 0) {
            return b2;
        }
        return b;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-Md2H83M, reason: not valid java name */
    public static final int m4226maxOfMd2H83M(int i, @NotNull int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1812getSizeimpl = UIntArray.m1812getSizeimpl(other);
        for (int i2 = 0; i2 < m1812getSizeimpl; i2++) {
            i = m4224maxOfJ1ME1BU(i, UIntArray.m1811getpVg5ArA(other, i2));
        }
        return i;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-R03FKyM, reason: not valid java name */
    public static final long m4227maxOfR03FKyM(long j, @NotNull long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1836getSizeimpl = ULongArray.m1836getSizeimpl(other);
        for (int i = 0; i < m1836getSizeimpl; i++) {
            j = m4229maxOfeb3DHEI(j, ULongArray.m1835getsVKNKU(other, i));
        }
        return j;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-Wr6uiD8, reason: not valid java name */
    public static final byte m4228maxOfWr6uiD8(byte b, @NotNull byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1788getSizeimpl = UByteArray.m1788getSizeimpl(other);
        for (int i = 0; i < m1788getSizeimpl; i++) {
            b = m4225maxOfKr8caGY(b, UByteArray.m1787getw2LRezQ(other, i));
        }
        return b;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-eb3DHEI, reason: not valid java name */
    public static final long m4229maxOfeb3DHEI(long j, long j2) {
        if (Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) < 0) {
            return j2;
        }
        return j;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-t1qELG4, reason: not valid java name */
    public static final short m4230maxOft1qELG4(short s, @NotNull short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1860getSizeimpl = UShortArray.m1860getSizeimpl(other);
        for (int i = 0; i < m1860getSizeimpl; i++) {
            s = m4223maxOf5PvTz6A(s, UShortArray.m1859getMh2AYeg(other, i));
        }
        return s;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-5PvTz6A, reason: not valid java name */
    public static final short m4231minOf5PvTz6A(short s, short s2) {
        if (Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) > 0) {
            return s2;
        }
        return s;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-J1ME1BU, reason: not valid java name */
    public static final int m4232minOfJ1ME1BU(int i, int i2) {
        if (Integer.compare(i ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2) > 0) {
            return i2;
        }
        return i;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-Kr8caGY, reason: not valid java name */
    public static final byte m4233minOfKr8caGY(byte b, byte b2) {
        if (Intrinsics.compare(b & 255, b2 & 255) > 0) {
            return b2;
        }
        return b;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-Md2H83M, reason: not valid java name */
    public static final int m4234minOfMd2H83M(int i, @NotNull int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1812getSizeimpl = UIntArray.m1812getSizeimpl(other);
        for (int i2 = 0; i2 < m1812getSizeimpl; i2++) {
            i = m4232minOfJ1ME1BU(i, UIntArray.m1811getpVg5ArA(other, i2));
        }
        return i;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-R03FKyM, reason: not valid java name */
    public static final long m4235minOfR03FKyM(long j, @NotNull long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1836getSizeimpl = ULongArray.m1836getSizeimpl(other);
        for (int i = 0; i < m1836getSizeimpl; i++) {
            j = m4237minOfeb3DHEI(j, ULongArray.m1835getsVKNKU(other, i));
        }
        return j;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-Wr6uiD8, reason: not valid java name */
    public static final byte m4236minOfWr6uiD8(byte b, @NotNull byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1788getSizeimpl = UByteArray.m1788getSizeimpl(other);
        for (int i = 0; i < m1788getSizeimpl; i++) {
            b = m4233minOfKr8caGY(b, UByteArray.m1787getw2LRezQ(other, i));
        }
        return b;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-eb3DHEI, reason: not valid java name */
    public static final long m4237minOfeb3DHEI(long j, long j2) {
        if (Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) > 0) {
            return j2;
        }
        return j;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-t1qELG4, reason: not valid java name */
    public static final short m4238minOft1qELG4(short s, @NotNull short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1860getSizeimpl = UShortArray.m1860getSizeimpl(other);
        for (int i = 0; i < m1860getSizeimpl; i++) {
            s = m4231minOf5PvTz6A(s, UShortArray.m1859getMh2AYeg(other, i));
        }
        return s;
    }
}
