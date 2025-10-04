package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Pair;
import kotlin.SinceKotlin;
import kotlin.TuplesKt;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.WasExperimental;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.UArraySortingKt;
import kotlin.collections.unsigned.UArraysKt___UArraysJvmKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: 땮뒤딻뒙땝뒵뒈딸땻땐듽땥땪듽뒋둣뎰돝뒷딟땩땮돠땸뒬됴땪뎸땻두돸딄둥된돼뎬땜된땮둑듸돼둣둬돳땟땮뒀딸딸듽땡딅들듌돳돰돷딻두돠돰듻땥땅땩뎻딝듽돳돶딹돝땔딅뒛땍뎡딜둣땳딄돛뒻땩딹뒻딁딠돷될땳땦땻뒨땐딄딌뒐듟땵둣돤돰딐듔됩뎨땍뎸듐됨땔땠뒵듨됫땋딨땣들뎬딀되딞도딞딎땧두, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1262x6e65a187 extends UArraysKt___UArraysJvmKt {
    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: contentEquals-FGO6Aew, reason: not valid java name */
    public static boolean m4027contentEqualsFGO6Aew(@Nullable short[] sArr, @Nullable short[] sArr2) {
        if (sArr == null) {
            sArr = null;
        }
        if (sArr2 == null) {
            sArr2 = null;
        }
        return Arrays.equals(sArr, sArr2);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: contentEquals-KJPZfPQ, reason: not valid java name */
    public static boolean m4028contentEqualsKJPZfPQ(@Nullable int[] iArr, @Nullable int[] iArr2) {
        if (iArr == null) {
            iArr = null;
        }
        if (iArr2 == null) {
            iArr2 = null;
        }
        return Arrays.equals(iArr, iArr2);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: contentEquals-kV0jMPg, reason: not valid java name */
    public static boolean m4029contentEqualskV0jMPg(@Nullable byte[] bArr, @Nullable byte[] bArr2) {
        if (bArr == null) {
            bArr = null;
        }
        if (bArr2 == null) {
            bArr2 = null;
        }
        return Arrays.equals(bArr, bArr2);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: contentEquals-lec5QzE, reason: not valid java name */
    public static boolean m4030contentEqualslec5QzE(@Nullable long[] jArr, @Nullable long[] jArr2) {
        if (jArr == null) {
            jArr = null;
        }
        if (jArr2 == null) {
            jArr2 = null;
        }
        return Arrays.equals(jArr, jArr2);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: contentHashCode-2csIQuQ, reason: not valid java name */
    public static final int m4031contentHashCode2csIQuQ(@Nullable byte[] bArr) {
        if (bArr == null) {
            bArr = null;
        }
        return Arrays.hashCode(bArr);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: contentHashCode-XUkPCBk, reason: not valid java name */
    public static final int m4032contentHashCodeXUkPCBk(@Nullable int[] iArr) {
        if (iArr == null) {
            iArr = null;
        }
        return Arrays.hashCode(iArr);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: contentHashCode-d-6D3K8, reason: not valid java name */
    public static final int m4033contentHashCoded6D3K8(@Nullable short[] sArr) {
        if (sArr == null) {
            sArr = null;
        }
        return Arrays.hashCode(sArr);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: contentHashCode-uLth9ew, reason: not valid java name */
    public static final int m4034contentHashCodeuLth9ew(@Nullable long[] jArr) {
        if (jArr == null) {
            jArr = null;
        }
        return Arrays.hashCode(jArr);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: contentToString-2csIQuQ, reason: not valid java name */
    public static String m4035contentToString2csIQuQ(@Nullable byte[] bArr) {
        String joinToString$default;
        if (bArr == null || (joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(UByteArray.m1780boximpl(bArr), ", ", "[", "]", 0, null, null, 56, null)) == null) {
            return "null";
        }
        return joinToString$default;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: contentToString-XUkPCBk, reason: not valid java name */
    public static String m4036contentToStringXUkPCBk(@Nullable int[] iArr) {
        String joinToString$default;
        if (iArr == null || (joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(UIntArray.m1804boximpl(iArr), ", ", "[", "]", 0, null, null, 56, null)) == null) {
            return "null";
        }
        return joinToString$default;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: contentToString-d-6D3K8, reason: not valid java name */
    public static String m4037contentToStringd6D3K8(@Nullable short[] sArr) {
        String joinToString$default;
        if (sArr == null || (joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(UShortArray.m1852boximpl(sArr), ", ", "[", "]", 0, null, null, 56, null)) == null) {
            return "null";
        }
        return joinToString$default;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: contentToString-uLth9ew, reason: not valid java name */
    public static String m4038contentToStringuLth9ew(@Nullable long[] jArr) {
        String joinToString$default;
        if (jArr == null || (joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(ULongArray.m1828boximpl(jArr), ", ", "[", "]", 0, null, null, 56, null)) == null) {
            return "null";
        }
        return joinToString$default;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: drop-PpDY95g, reason: not valid java name */
    public static final List<UByte> m4039dropPpDY95g(@NotNull byte[] drop, int i) {
        Intrinsics.checkNotNullParameter(drop, "$this$drop");
        if (i >= 0) {
            return m4199takeLastPpDY95g(drop, AbstractC0296x1378447b.coerceAtLeast(UByteArray.m1788getSizeimpl(drop) - i, 0));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: drop-nggk6HY, reason: not valid java name */
    public static final List<UShort> m4040dropnggk6HY(@NotNull short[] drop, int i) {
        Intrinsics.checkNotNullParameter(drop, "$this$drop");
        if (i >= 0) {
            return m4200takeLastnggk6HY(drop, AbstractC0296x1378447b.coerceAtLeast(UShortArray.m1860getSizeimpl(drop) - i, 0));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: drop-qFRl0hI, reason: not valid java name */
    public static final List<UInt> m4041dropqFRl0hI(@NotNull int[] drop, int i) {
        Intrinsics.checkNotNullParameter(drop, "$this$drop");
        if (i >= 0) {
            return m4201takeLastqFRl0hI(drop, AbstractC0296x1378447b.coerceAtLeast(UIntArray.m1812getSizeimpl(drop) - i, 0));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: drop-r7IrZao, reason: not valid java name */
    public static final List<ULong> m4042dropr7IrZao(@NotNull long[] drop, int i) {
        Intrinsics.checkNotNullParameter(drop, "$this$drop");
        if (i >= 0) {
            return m4202takeLastr7IrZao(drop, AbstractC0296x1378447b.coerceAtLeast(ULongArray.m1836getSizeimpl(drop) - i, 0));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: dropLast-PpDY95g, reason: not valid java name */
    public static final List<UByte> m4043dropLastPpDY95g(@NotNull byte[] dropLast, int i) {
        Intrinsics.checkNotNullParameter(dropLast, "$this$dropLast");
        if (i >= 0) {
            return m4195takePpDY95g(dropLast, AbstractC0296x1378447b.coerceAtLeast(UByteArray.m1788getSizeimpl(dropLast) - i, 0));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: dropLast-nggk6HY, reason: not valid java name */
    public static final List<UShort> m4044dropLastnggk6HY(@NotNull short[] dropLast, int i) {
        Intrinsics.checkNotNullParameter(dropLast, "$this$dropLast");
        if (i >= 0) {
            return m4196takenggk6HY(dropLast, AbstractC0296x1378447b.coerceAtLeast(UShortArray.m1860getSizeimpl(dropLast) - i, 0));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: dropLast-qFRl0hI, reason: not valid java name */
    public static final List<UInt> m4045dropLastqFRl0hI(@NotNull int[] dropLast, int i) {
        Intrinsics.checkNotNullParameter(dropLast, "$this$dropLast");
        if (i >= 0) {
            return m4197takeqFRl0hI(dropLast, AbstractC0296x1378447b.coerceAtLeast(UIntArray.m1812getSizeimpl(dropLast) - i, 0));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: dropLast-r7IrZao, reason: not valid java name */
    public static final List<ULong> m4046dropLastr7IrZao(@NotNull long[] dropLast, int i) {
        Intrinsics.checkNotNullParameter(dropLast, "$this$dropLast");
        if (i >= 0) {
            return m4198taker7IrZao(dropLast, AbstractC0296x1378447b.coerceAtLeast(ULongArray.m1836getSizeimpl(dropLast) - i, 0));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: fill-2fe2U9s, reason: not valid java name */
    public static final void m4047fill2fe2U9s(@NotNull int[] fill, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(fill, "$this$fill");
        ArraysKt___ArraysJvmKt.fill(fill, i, i2, i3);
    }

    /* renamed from: fill-2fe2U9s$default, reason: not valid java name */
    public static /* synthetic */ void m4048fill2fe2U9s$default(int[] iArr, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = UIntArray.m1812getSizeimpl(iArr);
        }
        m4047fill2fe2U9s(iArr, i, i2, i3);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: fill-EtDCXyQ, reason: not valid java name */
    public static final void m4049fillEtDCXyQ(@NotNull short[] fill, short s, int i, int i2) {
        Intrinsics.checkNotNullParameter(fill, "$this$fill");
        ArraysKt___ArraysJvmKt.fill(fill, s, i, i2);
    }

    /* renamed from: fill-EtDCXyQ$default, reason: not valid java name */
    public static /* synthetic */ void m4050fillEtDCXyQ$default(short[] sArr, short s, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = UShortArray.m1860getSizeimpl(sArr);
        }
        m4049fillEtDCXyQ(sArr, s, i, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: fill-K6DWlUc, reason: not valid java name */
    public static final void m4051fillK6DWlUc(@NotNull long[] fill, long j, int i, int i2) {
        Intrinsics.checkNotNullParameter(fill, "$this$fill");
        ArraysKt___ArraysJvmKt.fill(fill, j, i, i2);
    }

    /* renamed from: fill-K6DWlUc$default, reason: not valid java name */
    public static /* synthetic */ void m4052fillK6DWlUc$default(long[] jArr, long j, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = ULongArray.m1836getSizeimpl(jArr);
        }
        m4051fillK6DWlUc(jArr, j, i, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: fill-WpHrYlw, reason: not valid java name */
    public static final void m4053fillWpHrYlw(@NotNull byte[] fill, byte b, int i, int i2) {
        Intrinsics.checkNotNullParameter(fill, "$this$fill");
        ArraysKt___ArraysJvmKt.fill(fill, b, i, i2);
    }

    /* renamed from: fill-WpHrYlw$default, reason: not valid java name */
    public static /* synthetic */ void m4054fillWpHrYlw$default(byte[] bArr, byte b, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = UByteArray.m1788getSizeimpl(bArr);
        }
        m4053fillWpHrYlw(bArr, b, i, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: firstOrNull--ajY-9A, reason: not valid java name */
    public static final UInt m4055firstOrNullajY9A(@NotNull int[] firstOrNull) {
        Intrinsics.checkNotNullParameter(firstOrNull, "$this$firstOrNull");
        if (UIntArray.m1814isEmptyimpl(firstOrNull)) {
            return null;
        }
        return UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(firstOrNull, 0));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: firstOrNull-GBYM_sE, reason: not valid java name */
    public static final UByte m4056firstOrNullGBYM_sE(@NotNull byte[] firstOrNull) {
        Intrinsics.checkNotNullParameter(firstOrNull, "$this$firstOrNull");
        if (UByteArray.m1790isEmptyimpl(firstOrNull)) {
            return null;
        }
        return UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(firstOrNull, 0));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: firstOrNull-QwZRm1k, reason: not valid java name */
    public static final ULong m4057firstOrNullQwZRm1k(@NotNull long[] firstOrNull) {
        Intrinsics.checkNotNullParameter(firstOrNull, "$this$firstOrNull");
        if (ULongArray.m1838isEmptyimpl(firstOrNull)) {
            return null;
        }
        return ULong.m1821boximpl(ULongArray.m1835getsVKNKU(firstOrNull, 0));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: firstOrNull-rL5Bavg, reason: not valid java name */
    public static final UShort m4058firstOrNullrL5Bavg(@NotNull short[] firstOrNull) {
        Intrinsics.checkNotNullParameter(firstOrNull, "$this$firstOrNull");
        if (UShortArray.m1862isEmptyimpl(firstOrNull)) {
            return null;
        }
        return UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(firstOrNull, 0));
    }

    @NotNull
    /* renamed from: getIndices--ajY-9A, reason: not valid java name */
    public static final IntRange m4059getIndicesajY9A(@NotNull int[] indices) {
        Intrinsics.checkNotNullParameter(indices, "$this$indices");
        return ArraysKt___ArraysKt.getIndices(indices);
    }

    @NotNull
    /* renamed from: getIndices-GBYM_sE, reason: not valid java name */
    public static final IntRange m4061getIndicesGBYM_sE(@NotNull byte[] indices) {
        Intrinsics.checkNotNullParameter(indices, "$this$indices");
        return ArraysKt___ArraysKt.getIndices(indices);
    }

    @NotNull
    /* renamed from: getIndices-QwZRm1k, reason: not valid java name */
    public static final IntRange m4063getIndicesQwZRm1k(@NotNull long[] indices) {
        Intrinsics.checkNotNullParameter(indices, "$this$indices");
        return ArraysKt___ArraysKt.getIndices(indices);
    }

    @NotNull
    /* renamed from: getIndices-rL5Bavg, reason: not valid java name */
    public static final IntRange m4065getIndicesrL5Bavg(@NotNull short[] indices) {
        Intrinsics.checkNotNullParameter(indices, "$this$indices");
        return ArraysKt___ArraysKt.getIndices(indices);
    }

    /* renamed from: getLastIndex--ajY-9A, reason: not valid java name */
    public static final int m4067getLastIndexajY9A(@NotNull int[] lastIndex) {
        Intrinsics.checkNotNullParameter(lastIndex, "$this$lastIndex");
        return ArraysKt___ArraysKt.getLastIndex(lastIndex);
    }

    /* renamed from: getLastIndex-GBYM_sE, reason: not valid java name */
    public static final int m4069getLastIndexGBYM_sE(@NotNull byte[] lastIndex) {
        Intrinsics.checkNotNullParameter(lastIndex, "$this$lastIndex");
        return ArraysKt___ArraysKt.getLastIndex(lastIndex);
    }

    /* renamed from: getLastIndex-QwZRm1k, reason: not valid java name */
    public static final int m4071getLastIndexQwZRm1k(@NotNull long[] lastIndex) {
        Intrinsics.checkNotNullParameter(lastIndex, "$this$lastIndex");
        return ArraysKt___ArraysKt.getLastIndex(lastIndex);
    }

    /* renamed from: getLastIndex-rL5Bavg, reason: not valid java name */
    public static final int m4073getLastIndexrL5Bavg(@NotNull short[] lastIndex) {
        Intrinsics.checkNotNullParameter(lastIndex, "$this$lastIndex");
        return ArraysKt___ArraysKt.getLastIndex(lastIndex);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: getOrNull-PpDY95g, reason: not valid java name */
    public static final UByte m4075getOrNullPpDY95g(@NotNull byte[] getOrNull, int i) {
        Intrinsics.checkNotNullParameter(getOrNull, "$this$getOrNull");
        if (i >= 0 && i < UByteArray.m1788getSizeimpl(getOrNull)) {
            return UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(getOrNull, i));
        }
        return null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: getOrNull-nggk6HY, reason: not valid java name */
    public static final UShort m4076getOrNullnggk6HY(@NotNull short[] getOrNull, int i) {
        Intrinsics.checkNotNullParameter(getOrNull, "$this$getOrNull");
        if (i >= 0 && i < UShortArray.m1860getSizeimpl(getOrNull)) {
            return UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(getOrNull, i));
        }
        return null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: getOrNull-qFRl0hI, reason: not valid java name */
    public static final UInt m4077getOrNullqFRl0hI(@NotNull int[] getOrNull, int i) {
        Intrinsics.checkNotNullParameter(getOrNull, "$this$getOrNull");
        if (i >= 0 && i < UIntArray.m1812getSizeimpl(getOrNull)) {
            return UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(getOrNull, i));
        }
        return null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: getOrNull-r7IrZao, reason: not valid java name */
    public static final ULong m4078getOrNullr7IrZao(@NotNull long[] getOrNull, int i) {
        Intrinsics.checkNotNullParameter(getOrNull, "$this$getOrNull");
        if (i >= 0 && i < ULongArray.m1836getSizeimpl(getOrNull)) {
            return ULong.m1821boximpl(ULongArray.m1835getsVKNKU(getOrNull, i));
        }
        return null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: lastOrNull--ajY-9A, reason: not valid java name */
    public static final UInt m4079lastOrNullajY9A(@NotNull int[] lastOrNull) {
        Intrinsics.checkNotNullParameter(lastOrNull, "$this$lastOrNull");
        if (UIntArray.m1814isEmptyimpl(lastOrNull)) {
            return null;
        }
        return UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(lastOrNull, UIntArray.m1812getSizeimpl(lastOrNull) - 1));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: lastOrNull-GBYM_sE, reason: not valid java name */
    public static final UByte m4080lastOrNullGBYM_sE(@NotNull byte[] lastOrNull) {
        Intrinsics.checkNotNullParameter(lastOrNull, "$this$lastOrNull");
        if (UByteArray.m1790isEmptyimpl(lastOrNull)) {
            return null;
        }
        return UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(lastOrNull, UByteArray.m1788getSizeimpl(lastOrNull) - 1));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: lastOrNull-QwZRm1k, reason: not valid java name */
    public static final ULong m4081lastOrNullQwZRm1k(@NotNull long[] lastOrNull) {
        Intrinsics.checkNotNullParameter(lastOrNull, "$this$lastOrNull");
        if (ULongArray.m1838isEmptyimpl(lastOrNull)) {
            return null;
        }
        return ULong.m1821boximpl(ULongArray.m1835getsVKNKU(lastOrNull, ULongArray.m1836getSizeimpl(lastOrNull) - 1));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: lastOrNull-rL5Bavg, reason: not valid java name */
    public static final UShort m4082lastOrNullrL5Bavg(@NotNull short[] lastOrNull) {
        Intrinsics.checkNotNullParameter(lastOrNull, "$this$lastOrNull");
        if (UShortArray.m1862isEmptyimpl(lastOrNull)) {
            return null;
        }
        return UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(lastOrNull, UShortArray.m1860getSizeimpl(lastOrNull) - 1));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: maxOrNull--ajY-9A, reason: not valid java name */
    public static final UInt m4083maxOrNullajY9A(@NotNull int[] maxOrNull) {
        Intrinsics.checkNotNullParameter(maxOrNull, "$this$maxOrNull");
        if (UIntArray.m1814isEmptyimpl(maxOrNull)) {
            return null;
        }
        int m1811getpVg5ArA = UIntArray.m1811getpVg5ArA(maxOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(maxOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                int m1811getpVg5ArA2 = UIntArray.m1811getpVg5ArA(maxOrNull, i);
                if (Integer.compare(m1811getpVg5ArA ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ m1811getpVg5ArA2) < 0) {
                    m1811getpVg5ArA = m1811getpVg5ArA2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UInt.m1797boximpl(m1811getpVg5ArA);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: maxOrNull-GBYM_sE, reason: not valid java name */
    public static final UByte m4084maxOrNullGBYM_sE(@NotNull byte[] maxOrNull) {
        Intrinsics.checkNotNullParameter(maxOrNull, "$this$maxOrNull");
        if (UByteArray.m1790isEmptyimpl(maxOrNull)) {
            return null;
        }
        byte m1787getw2LRezQ = UByteArray.m1787getw2LRezQ(maxOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(maxOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                byte m1787getw2LRezQ2 = UByteArray.m1787getw2LRezQ(maxOrNull, i);
                if (Intrinsics.compare(m1787getw2LRezQ & 255, m1787getw2LRezQ2 & 255) < 0) {
                    m1787getw2LRezQ = m1787getw2LRezQ2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UByte.m1773boximpl(m1787getw2LRezQ);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: maxOrNull-QwZRm1k, reason: not valid java name */
    public static final ULong m4085maxOrNullQwZRm1k(@NotNull long[] maxOrNull) {
        Intrinsics.checkNotNullParameter(maxOrNull, "$this$maxOrNull");
        if (ULongArray.m1838isEmptyimpl(maxOrNull)) {
            return null;
        }
        long m1835getsVKNKU = ULongArray.m1835getsVKNKU(maxOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(maxOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                long m1835getsVKNKU2 = ULongArray.m1835getsVKNKU(maxOrNull, i);
                if (Long.compare(m1835getsVKNKU ^ Long.MIN_VALUE, Long.MIN_VALUE ^ m1835getsVKNKU2) < 0) {
                    m1835getsVKNKU = m1835getsVKNKU2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return ULong.m1821boximpl(m1835getsVKNKU);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: maxOrNull-rL5Bavg, reason: not valid java name */
    public static final UShort m4086maxOrNullrL5Bavg(@NotNull short[] maxOrNull) {
        Intrinsics.checkNotNullParameter(maxOrNull, "$this$maxOrNull");
        if (UShortArray.m1862isEmptyimpl(maxOrNull)) {
            return null;
        }
        short m1859getMh2AYeg = UShortArray.m1859getMh2AYeg(maxOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(maxOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                short m1859getMh2AYeg2 = UShortArray.m1859getMh2AYeg(maxOrNull, i);
                if (Intrinsics.compare(m1859getMh2AYeg & UShort.MAX_VALUE, 65535 & m1859getMh2AYeg2) < 0) {
                    m1859getMh2AYeg = m1859getMh2AYeg2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UShort.m1845boximpl(m1859getMh2AYeg);
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "maxOrThrow-U")
    /* renamed from: maxOrThrow-U, reason: not valid java name */
    public static final int m4088maxOrThrowU(@NotNull int[] max) {
        Intrinsics.checkNotNullParameter(max, "$this$max");
        if (!UIntArray.m1814isEmptyimpl(max)) {
            int m1811getpVg5ArA = UIntArray.m1811getpVg5ArA(max, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(max);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    int m1811getpVg5ArA2 = UIntArray.m1811getpVg5ArA(max, i);
                    if (Integer.compare(m1811getpVg5ArA ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ m1811getpVg5ArA2) < 0) {
                        m1811getpVg5ArA = m1811getpVg5ArA2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1811getpVg5ArA;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: maxWithOrNull-XMRcp5o, reason: not valid java name */
    public static final UByte m4091maxWithOrNullXMRcp5o(@NotNull byte[] maxWithOrNull, @NotNull Comparator<? super UByte> comparator) {
        Intrinsics.checkNotNullParameter(maxWithOrNull, "$this$maxWithOrNull");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (UByteArray.m1790isEmptyimpl(maxWithOrNull)) {
            return null;
        }
        byte m1787getw2LRezQ = UByteArray.m1787getw2LRezQ(maxWithOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(maxWithOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                byte m1787getw2LRezQ2 = UByteArray.m1787getw2LRezQ(maxWithOrNull, i);
                if (comparator.compare(UByte.m1773boximpl(m1787getw2LRezQ), UByte.m1773boximpl(m1787getw2LRezQ2)) < 0) {
                    m1787getw2LRezQ = m1787getw2LRezQ2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UByte.m1773boximpl(m1787getw2LRezQ);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: maxWithOrNull-YmdZ_VM, reason: not valid java name */
    public static final UInt m4092maxWithOrNullYmdZ_VM(@NotNull int[] maxWithOrNull, @NotNull Comparator<? super UInt> comparator) {
        Intrinsics.checkNotNullParameter(maxWithOrNull, "$this$maxWithOrNull");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (UIntArray.m1814isEmptyimpl(maxWithOrNull)) {
            return null;
        }
        int m1811getpVg5ArA = UIntArray.m1811getpVg5ArA(maxWithOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(maxWithOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                int m1811getpVg5ArA2 = UIntArray.m1811getpVg5ArA(maxWithOrNull, i);
                if (comparator.compare(UInt.m1797boximpl(m1811getpVg5ArA), UInt.m1797boximpl(m1811getpVg5ArA2)) < 0) {
                    m1811getpVg5ArA = m1811getpVg5ArA2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UInt.m1797boximpl(m1811getpVg5ArA);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: maxWithOrNull-eOHTfZs, reason: not valid java name */
    public static final UShort m4093maxWithOrNulleOHTfZs(@NotNull short[] maxWithOrNull, @NotNull Comparator<? super UShort> comparator) {
        Intrinsics.checkNotNullParameter(maxWithOrNull, "$this$maxWithOrNull");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (UShortArray.m1862isEmptyimpl(maxWithOrNull)) {
            return null;
        }
        short m1859getMh2AYeg = UShortArray.m1859getMh2AYeg(maxWithOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(maxWithOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                short m1859getMh2AYeg2 = UShortArray.m1859getMh2AYeg(maxWithOrNull, i);
                if (comparator.compare(UShort.m1845boximpl(m1859getMh2AYeg), UShort.m1845boximpl(m1859getMh2AYeg2)) < 0) {
                    m1859getMh2AYeg = m1859getMh2AYeg2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UShort.m1845boximpl(m1859getMh2AYeg);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: maxWithOrNull-zrEWJaI, reason: not valid java name */
    public static final ULong m4094maxWithOrNullzrEWJaI(@NotNull long[] maxWithOrNull, @NotNull Comparator<? super ULong> comparator) {
        Intrinsics.checkNotNullParameter(maxWithOrNull, "$this$maxWithOrNull");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (ULongArray.m1838isEmptyimpl(maxWithOrNull)) {
            return null;
        }
        long m1835getsVKNKU = ULongArray.m1835getsVKNKU(maxWithOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(maxWithOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                long m1835getsVKNKU2 = ULongArray.m1835getsVKNKU(maxWithOrNull, i);
                if (comparator.compare(ULong.m1821boximpl(m1835getsVKNKU), ULong.m1821boximpl(m1835getsVKNKU2)) < 0) {
                    m1835getsVKNKU = m1835getsVKNKU2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return ULong.m1821boximpl(m1835getsVKNKU);
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "maxWithOrThrow-U")
    /* renamed from: maxWithOrThrow-U, reason: not valid java name */
    public static final int m4096maxWithOrThrowU(@NotNull int[] maxWith, @NotNull Comparator<? super UInt> comparator) {
        Intrinsics.checkNotNullParameter(maxWith, "$this$maxWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (!UIntArray.m1814isEmptyimpl(maxWith)) {
            int m1811getpVg5ArA = UIntArray.m1811getpVg5ArA(maxWith, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(maxWith);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    int m1811getpVg5ArA2 = UIntArray.m1811getpVg5ArA(maxWith, i);
                    if (comparator.compare(UInt.m1797boximpl(m1811getpVg5ArA), UInt.m1797boximpl(m1811getpVg5ArA2)) < 0) {
                        m1811getpVg5ArA = m1811getpVg5ArA2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1811getpVg5ArA;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: minOrNull--ajY-9A, reason: not valid java name */
    public static final UInt m4099minOrNullajY9A(@NotNull int[] minOrNull) {
        Intrinsics.checkNotNullParameter(minOrNull, "$this$minOrNull");
        if (UIntArray.m1814isEmptyimpl(minOrNull)) {
            return null;
        }
        int m1811getpVg5ArA = UIntArray.m1811getpVg5ArA(minOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(minOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                int m1811getpVg5ArA2 = UIntArray.m1811getpVg5ArA(minOrNull, i);
                if (Integer.compare(m1811getpVg5ArA ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ m1811getpVg5ArA2) > 0) {
                    m1811getpVg5ArA = m1811getpVg5ArA2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UInt.m1797boximpl(m1811getpVg5ArA);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: minOrNull-GBYM_sE, reason: not valid java name */
    public static final UByte m4100minOrNullGBYM_sE(@NotNull byte[] minOrNull) {
        Intrinsics.checkNotNullParameter(minOrNull, "$this$minOrNull");
        if (UByteArray.m1790isEmptyimpl(minOrNull)) {
            return null;
        }
        byte m1787getw2LRezQ = UByteArray.m1787getw2LRezQ(minOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(minOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                byte m1787getw2LRezQ2 = UByteArray.m1787getw2LRezQ(minOrNull, i);
                if (Intrinsics.compare(m1787getw2LRezQ & 255, m1787getw2LRezQ2 & 255) > 0) {
                    m1787getw2LRezQ = m1787getw2LRezQ2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UByte.m1773boximpl(m1787getw2LRezQ);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: minOrNull-QwZRm1k, reason: not valid java name */
    public static final ULong m4101minOrNullQwZRm1k(@NotNull long[] minOrNull) {
        Intrinsics.checkNotNullParameter(minOrNull, "$this$minOrNull");
        if (ULongArray.m1838isEmptyimpl(minOrNull)) {
            return null;
        }
        long m1835getsVKNKU = ULongArray.m1835getsVKNKU(minOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(minOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                long m1835getsVKNKU2 = ULongArray.m1835getsVKNKU(minOrNull, i);
                if (Long.compare(m1835getsVKNKU ^ Long.MIN_VALUE, Long.MIN_VALUE ^ m1835getsVKNKU2) > 0) {
                    m1835getsVKNKU = m1835getsVKNKU2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return ULong.m1821boximpl(m1835getsVKNKU);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: minOrNull-rL5Bavg, reason: not valid java name */
    public static final UShort m4102minOrNullrL5Bavg(@NotNull short[] minOrNull) {
        Intrinsics.checkNotNullParameter(minOrNull, "$this$minOrNull");
        if (UShortArray.m1862isEmptyimpl(minOrNull)) {
            return null;
        }
        short m1859getMh2AYeg = UShortArray.m1859getMh2AYeg(minOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(minOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                short m1859getMh2AYeg2 = UShortArray.m1859getMh2AYeg(minOrNull, i);
                if (Intrinsics.compare(m1859getMh2AYeg & UShort.MAX_VALUE, 65535 & m1859getMh2AYeg2) > 0) {
                    m1859getMh2AYeg = m1859getMh2AYeg2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UShort.m1845boximpl(m1859getMh2AYeg);
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "minOrThrow-U")
    /* renamed from: minOrThrow-U, reason: not valid java name */
    public static final int m4104minOrThrowU(@NotNull int[] min) {
        Intrinsics.checkNotNullParameter(min, "$this$min");
        if (!UIntArray.m1814isEmptyimpl(min)) {
            int m1811getpVg5ArA = UIntArray.m1811getpVg5ArA(min, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(min);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    int m1811getpVg5ArA2 = UIntArray.m1811getpVg5ArA(min, i);
                    if (Integer.compare(m1811getpVg5ArA ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ m1811getpVg5ArA2) > 0) {
                        m1811getpVg5ArA = m1811getpVg5ArA2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1811getpVg5ArA;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: minWithOrNull-XMRcp5o, reason: not valid java name */
    public static final UByte m4107minWithOrNullXMRcp5o(@NotNull byte[] minWithOrNull, @NotNull Comparator<? super UByte> comparator) {
        Intrinsics.checkNotNullParameter(minWithOrNull, "$this$minWithOrNull");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (UByteArray.m1790isEmptyimpl(minWithOrNull)) {
            return null;
        }
        byte m1787getw2LRezQ = UByteArray.m1787getw2LRezQ(minWithOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(minWithOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                byte m1787getw2LRezQ2 = UByteArray.m1787getw2LRezQ(minWithOrNull, i);
                if (comparator.compare(UByte.m1773boximpl(m1787getw2LRezQ), UByte.m1773boximpl(m1787getw2LRezQ2)) > 0) {
                    m1787getw2LRezQ = m1787getw2LRezQ2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UByte.m1773boximpl(m1787getw2LRezQ);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: minWithOrNull-YmdZ_VM, reason: not valid java name */
    public static final UInt m4108minWithOrNullYmdZ_VM(@NotNull int[] minWithOrNull, @NotNull Comparator<? super UInt> comparator) {
        Intrinsics.checkNotNullParameter(minWithOrNull, "$this$minWithOrNull");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (UIntArray.m1814isEmptyimpl(minWithOrNull)) {
            return null;
        }
        int m1811getpVg5ArA = UIntArray.m1811getpVg5ArA(minWithOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(minWithOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                int m1811getpVg5ArA2 = UIntArray.m1811getpVg5ArA(minWithOrNull, i);
                if (comparator.compare(UInt.m1797boximpl(m1811getpVg5ArA), UInt.m1797boximpl(m1811getpVg5ArA2)) > 0) {
                    m1811getpVg5ArA = m1811getpVg5ArA2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UInt.m1797boximpl(m1811getpVg5ArA);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: minWithOrNull-eOHTfZs, reason: not valid java name */
    public static final UShort m4109minWithOrNulleOHTfZs(@NotNull short[] minWithOrNull, @NotNull Comparator<? super UShort> comparator) {
        Intrinsics.checkNotNullParameter(minWithOrNull, "$this$minWithOrNull");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (UShortArray.m1862isEmptyimpl(minWithOrNull)) {
            return null;
        }
        short m1859getMh2AYeg = UShortArray.m1859getMh2AYeg(minWithOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(minWithOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                short m1859getMh2AYeg2 = UShortArray.m1859getMh2AYeg(minWithOrNull, i);
                if (comparator.compare(UShort.m1845boximpl(m1859getMh2AYeg), UShort.m1845boximpl(m1859getMh2AYeg2)) > 0) {
                    m1859getMh2AYeg = m1859getMh2AYeg2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UShort.m1845boximpl(m1859getMh2AYeg);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: minWithOrNull-zrEWJaI, reason: not valid java name */
    public static final ULong m4110minWithOrNullzrEWJaI(@NotNull long[] minWithOrNull, @NotNull Comparator<? super ULong> comparator) {
        Intrinsics.checkNotNullParameter(minWithOrNull, "$this$minWithOrNull");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (ULongArray.m1838isEmptyimpl(minWithOrNull)) {
            return null;
        }
        long m1835getsVKNKU = ULongArray.m1835getsVKNKU(minWithOrNull, 0);
        int lastIndex = ArraysKt___ArraysKt.getLastIndex(minWithOrNull);
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                long m1835getsVKNKU2 = ULongArray.m1835getsVKNKU(minWithOrNull, i);
                if (comparator.compare(ULong.m1821boximpl(m1835getsVKNKU), ULong.m1821boximpl(m1835getsVKNKU2)) > 0) {
                    m1835getsVKNKU = m1835getsVKNKU2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return ULong.m1821boximpl(m1835getsVKNKU);
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "minWithOrThrow-U")
    /* renamed from: minWithOrThrow-U, reason: not valid java name */
    public static final int m4112minWithOrThrowU(@NotNull int[] minWith, @NotNull Comparator<? super UInt> comparator) {
        Intrinsics.checkNotNullParameter(minWith, "$this$minWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (!UIntArray.m1814isEmptyimpl(minWith)) {
            int m1811getpVg5ArA = UIntArray.m1811getpVg5ArA(minWith, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(minWith);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    int m1811getpVg5ArA2 = UIntArray.m1811getpVg5ArA(minWith, i);
                    if (comparator.compare(UInt.m1797boximpl(m1811getpVg5ArA), UInt.m1797boximpl(m1811getpVg5ArA2)) > 0) {
                        m1811getpVg5ArA = m1811getpVg5ArA2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1811getpVg5ArA;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: plus-CFIt9YE, reason: not valid java name */
    public static final int[] m4115plusCFIt9YE(@NotNull int[] plus, @NotNull Collection<UInt> elements) {
        Intrinsics.checkNotNullParameter(plus, "$this$plus");
        Intrinsics.checkNotNullParameter(elements, "elements");
        int m1812getSizeimpl = UIntArray.m1812getSizeimpl(plus);
        int[] copyOf = Arrays.copyOf(plus, elements.size() + UIntArray.m1812getSizeimpl(plus));
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        Iterator<UInt> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[m1812getSizeimpl] = it.next().getData();
            m1812getSizeimpl++;
        }
        return UIntArray.m1806constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: plus-kzHmqpY, reason: not valid java name */
    public static final long[] m4116pluskzHmqpY(@NotNull long[] plus, @NotNull Collection<ULong> elements) {
        Intrinsics.checkNotNullParameter(plus, "$this$plus");
        Intrinsics.checkNotNullParameter(elements, "elements");
        int m1836getSizeimpl = ULongArray.m1836getSizeimpl(plus);
        long[] copyOf = Arrays.copyOf(plus, elements.size() + ULongArray.m1836getSizeimpl(plus));
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        Iterator<ULong> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[m1836getSizeimpl] = it.next().getData();
            m1836getSizeimpl++;
        }
        return ULongArray.m1830constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: plus-ojwP5H8, reason: not valid java name */
    public static final short[] m4117plusojwP5H8(@NotNull short[] plus, @NotNull Collection<UShort> elements) {
        Intrinsics.checkNotNullParameter(plus, "$this$plus");
        Intrinsics.checkNotNullParameter(elements, "elements");
        int m1860getSizeimpl = UShortArray.m1860getSizeimpl(plus);
        short[] copyOf = Arrays.copyOf(plus, elements.size() + UShortArray.m1860getSizeimpl(plus));
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        Iterator<UShort> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[m1860getSizeimpl] = it.next().getData();
            m1860getSizeimpl++;
        }
        return UShortArray.m1854constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: plus-xo_DsdI, reason: not valid java name */
    public static final byte[] m4118plusxo_DsdI(@NotNull byte[] plus, @NotNull Collection<UByte> elements) {
        Intrinsics.checkNotNullParameter(plus, "$this$plus");
        Intrinsics.checkNotNullParameter(elements, "elements");
        int m1788getSizeimpl = UByteArray.m1788getSizeimpl(plus);
        byte[] copyOf = Arrays.copyOf(plus, elements.size() + UByteArray.m1788getSizeimpl(plus));
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        Iterator<UByte> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[m1788getSizeimpl] = it.next().getData();
            m1788getSizeimpl++;
        }
        return UByteArray.m1782constructorimpl(copyOf);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: random-2D5oskM, reason: not valid java name */
    public static final int m4119random2D5oskM(@NotNull int[] random, @NotNull Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        if (!UIntArray.m1814isEmptyimpl(random)) {
            return UIntArray.m1811getpVg5ArA(random, random2.nextInt(UIntArray.m1812getSizeimpl(random)));
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: random-JzugnMA, reason: not valid java name */
    public static final long m4120randomJzugnMA(@NotNull long[] random, @NotNull Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        if (!ULongArray.m1838isEmptyimpl(random)) {
            return ULongArray.m1835getsVKNKU(random, random2.nextInt(ULongArray.m1836getSizeimpl(random)));
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: random-oSF2wD8, reason: not valid java name */
    public static final byte m4121randomoSF2wD8(@NotNull byte[] random, @NotNull Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        if (!UByteArray.m1790isEmptyimpl(random)) {
            return UByteArray.m1787getw2LRezQ(random, random2.nextInt(UByteArray.m1788getSizeimpl(random)));
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: random-s5X_as8, reason: not valid java name */
    public static final short m4122randoms5X_as8(@NotNull short[] random, @NotNull Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        if (!UShortArray.m1862isEmptyimpl(random)) {
            return UShortArray.m1859getMh2AYeg(random, random2.nextInt(UShortArray.m1860getSizeimpl(random)));
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: randomOrNull-2D5oskM, reason: not valid java name */
    public static final UInt m4123randomOrNull2D5oskM(@NotNull int[] randomOrNull, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (UIntArray.m1814isEmptyimpl(randomOrNull)) {
            return null;
        }
        return UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(randomOrNull, random.nextInt(UIntArray.m1812getSizeimpl(randomOrNull))));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: randomOrNull-JzugnMA, reason: not valid java name */
    public static final ULong m4124randomOrNullJzugnMA(@NotNull long[] randomOrNull, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (ULongArray.m1838isEmptyimpl(randomOrNull)) {
            return null;
        }
        return ULong.m1821boximpl(ULongArray.m1835getsVKNKU(randomOrNull, random.nextInt(ULongArray.m1836getSizeimpl(randomOrNull))));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: randomOrNull-oSF2wD8, reason: not valid java name */
    public static final UByte m4125randomOrNulloSF2wD8(@NotNull byte[] randomOrNull, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (UByteArray.m1790isEmptyimpl(randomOrNull)) {
            return null;
        }
        return UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(randomOrNull, random.nextInt(UByteArray.m1788getSizeimpl(randomOrNull))));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: randomOrNull-s5X_as8, reason: not valid java name */
    public static final UShort m4126randomOrNulls5X_as8(@NotNull short[] randomOrNull, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (UShortArray.m1862isEmptyimpl(randomOrNull)) {
            return null;
        }
        return UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(randomOrNull, random.nextInt(UShortArray.m1860getSizeimpl(randomOrNull))));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: reversed--ajY-9A, reason: not valid java name */
    public static final List<UInt> m4127reversedajY9A(@NotNull int[] reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        if (UIntArray.m1814isEmptyimpl(reversed)) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        List<UInt> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) UIntArray.m1804boximpl(reversed));
        AbstractC0592x3e7ef70.reverse(mutableList);
        return mutableList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: reversed-GBYM_sE, reason: not valid java name */
    public static final List<UByte> m4128reversedGBYM_sE(@NotNull byte[] reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        if (UByteArray.m1790isEmptyimpl(reversed)) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        List<UByte> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) UByteArray.m1780boximpl(reversed));
        AbstractC0592x3e7ef70.reverse(mutableList);
        return mutableList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: reversed-QwZRm1k, reason: not valid java name */
    public static final List<ULong> m4129reversedQwZRm1k(@NotNull long[] reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        if (ULongArray.m1838isEmptyimpl(reversed)) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        List<ULong> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) ULongArray.m1828boximpl(reversed));
        AbstractC0592x3e7ef70.reverse(mutableList);
        return mutableList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: reversed-rL5Bavg, reason: not valid java name */
    public static final List<UShort> m4130reversedrL5Bavg(@NotNull short[] reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        if (UShortArray.m1862isEmptyimpl(reversed)) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        List<UShort> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) UShortArray.m1852boximpl(reversed));
        AbstractC0592x3e7ef70.reverse(mutableList);
        return mutableList;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: shuffle--ajY-9A, reason: not valid java name */
    public static final void m4131shuffleajY9A(@NotNull int[] shuffle) {
        Intrinsics.checkNotNullParameter(shuffle, "$this$shuffle");
        m4132shuffle2D5oskM(shuffle, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: shuffle-2D5oskM, reason: not valid java name */
    public static final void m4132shuffle2D5oskM(@NotNull int[] shuffle, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(shuffle, "$this$shuffle");
        Intrinsics.checkNotNullParameter(random, "random");
        for (int lastIndex = ArraysKt___ArraysKt.getLastIndex(shuffle); lastIndex > 0; lastIndex--) {
            int nextInt = random.nextInt(lastIndex + 1);
            int m1811getpVg5ArA = UIntArray.m1811getpVg5ArA(shuffle, lastIndex);
            UIntArray.m1816setVXSXFK8(shuffle, lastIndex, UIntArray.m1811getpVg5ArA(shuffle, nextInt));
            UIntArray.m1816setVXSXFK8(shuffle, nextInt, m1811getpVg5ArA);
        }
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: shuffle-GBYM_sE, reason: not valid java name */
    public static final void m4133shuffleGBYM_sE(@NotNull byte[] shuffle) {
        Intrinsics.checkNotNullParameter(shuffle, "$this$shuffle");
        m4136shuffleoSF2wD8(shuffle, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: shuffle-JzugnMA, reason: not valid java name */
    public static final void m4134shuffleJzugnMA(@NotNull long[] shuffle, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(shuffle, "$this$shuffle");
        Intrinsics.checkNotNullParameter(random, "random");
        for (int lastIndex = ArraysKt___ArraysKt.getLastIndex(shuffle); lastIndex > 0; lastIndex--) {
            int nextInt = random.nextInt(lastIndex + 1);
            long m1835getsVKNKU = ULongArray.m1835getsVKNKU(shuffle, lastIndex);
            ULongArray.m1840setk8EXiF4(shuffle, lastIndex, ULongArray.m1835getsVKNKU(shuffle, nextInt));
            ULongArray.m1840setk8EXiF4(shuffle, nextInt, m1835getsVKNKU);
        }
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: shuffle-QwZRm1k, reason: not valid java name */
    public static final void m4135shuffleQwZRm1k(@NotNull long[] shuffle) {
        Intrinsics.checkNotNullParameter(shuffle, "$this$shuffle");
        m4134shuffleJzugnMA(shuffle, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: shuffle-oSF2wD8, reason: not valid java name */
    public static final void m4136shuffleoSF2wD8(@NotNull byte[] shuffle, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(shuffle, "$this$shuffle");
        Intrinsics.checkNotNullParameter(random, "random");
        for (int lastIndex = ArraysKt___ArraysKt.getLastIndex(shuffle); lastIndex > 0; lastIndex--) {
            int nextInt = random.nextInt(lastIndex + 1);
            byte m1787getw2LRezQ = UByteArray.m1787getw2LRezQ(shuffle, lastIndex);
            UByteArray.m1792setVurrAj0(shuffle, lastIndex, UByteArray.m1787getw2LRezQ(shuffle, nextInt));
            UByteArray.m1792setVurrAj0(shuffle, nextInt, m1787getw2LRezQ);
        }
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: shuffle-rL5Bavg, reason: not valid java name */
    public static final void m4137shufflerL5Bavg(@NotNull short[] shuffle) {
        Intrinsics.checkNotNullParameter(shuffle, "$this$shuffle");
        m4138shuffles5X_as8(shuffle, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: shuffle-s5X_as8, reason: not valid java name */
    public static final void m4138shuffles5X_as8(@NotNull short[] shuffle, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(shuffle, "$this$shuffle");
        Intrinsics.checkNotNullParameter(random, "random");
        for (int lastIndex = ArraysKt___ArraysKt.getLastIndex(shuffle); lastIndex > 0; lastIndex--) {
            int nextInt = random.nextInt(lastIndex + 1);
            short m1859getMh2AYeg = UShortArray.m1859getMh2AYeg(shuffle, lastIndex);
            UShortArray.m1864set01HTLdE(shuffle, lastIndex, UShortArray.m1859getMh2AYeg(shuffle, nextInt));
            UShortArray.m1864set01HTLdE(shuffle, nextInt, m1859getMh2AYeg);
        }
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: singleOrNull--ajY-9A, reason: not valid java name */
    public static final UInt m4139singleOrNullajY9A(@NotNull int[] singleOrNull) {
        Intrinsics.checkNotNullParameter(singleOrNull, "$this$singleOrNull");
        if (UIntArray.m1812getSizeimpl(singleOrNull) == 1) {
            return UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(singleOrNull, 0));
        }
        return null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: singleOrNull-GBYM_sE, reason: not valid java name */
    public static final UByte m4140singleOrNullGBYM_sE(@NotNull byte[] singleOrNull) {
        Intrinsics.checkNotNullParameter(singleOrNull, "$this$singleOrNull");
        if (UByteArray.m1788getSizeimpl(singleOrNull) == 1) {
            return UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(singleOrNull, 0));
        }
        return null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: singleOrNull-QwZRm1k, reason: not valid java name */
    public static final ULong m4141singleOrNullQwZRm1k(@NotNull long[] singleOrNull) {
        Intrinsics.checkNotNullParameter(singleOrNull, "$this$singleOrNull");
        if (ULongArray.m1836getSizeimpl(singleOrNull) == 1) {
            return ULong.m1821boximpl(ULongArray.m1835getsVKNKU(singleOrNull, 0));
        }
        return null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    /* renamed from: singleOrNull-rL5Bavg, reason: not valid java name */
    public static final UShort m4142singleOrNullrL5Bavg(@NotNull short[] singleOrNull) {
        Intrinsics.checkNotNullParameter(singleOrNull, "$this$singleOrNull");
        if (UShortArray.m1860getSizeimpl(singleOrNull) == 1) {
            return UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(singleOrNull, 0));
        }
        return null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: slice-F7u83W8, reason: not valid java name */
    public static final List<ULong> m4143sliceF7u83W8(@NotNull long[] slice, @NotNull Iterable<Integer> indices) {
        Intrinsics.checkNotNullParameter(slice, "$this$slice");
        Intrinsics.checkNotNullParameter(indices, "indices");
        int collectionSizeOrDefault = AbstractC0587xb7546d05.collectionSizeOrDefault(indices, 10);
        if (collectionSizeOrDefault == 0) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(ULong.m1821boximpl(ULongArray.m1835getsVKNKU(slice, it.next().intValue())));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: slice-HwE9HBo, reason: not valid java name */
    public static final List<UInt> m4144sliceHwE9HBo(@NotNull int[] slice, @NotNull Iterable<Integer> indices) {
        Intrinsics.checkNotNullParameter(slice, "$this$slice");
        Intrinsics.checkNotNullParameter(indices, "indices");
        int collectionSizeOrDefault = AbstractC0587xb7546d05.collectionSizeOrDefault(indices, 10);
        if (collectionSizeOrDefault == 0) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(slice, it.next().intValue())));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: slice-JGPC0-M, reason: not valid java name */
    public static final List<UShort> m4145sliceJGPC0M(@NotNull short[] slice, @NotNull Iterable<Integer> indices) {
        Intrinsics.checkNotNullParameter(slice, "$this$slice");
        Intrinsics.checkNotNullParameter(indices, "indices");
        int collectionSizeOrDefault = AbstractC0587xb7546d05.collectionSizeOrDefault(indices, 10);
        if (collectionSizeOrDefault == 0) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(slice, it.next().intValue())));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: slice-JQknh5Q, reason: not valid java name */
    public static final List<UByte> m4146sliceJQknh5Q(@NotNull byte[] slice, @NotNull Iterable<Integer> indices) {
        Intrinsics.checkNotNullParameter(slice, "$this$slice");
        Intrinsics.checkNotNullParameter(indices, "indices");
        int collectionSizeOrDefault = AbstractC0587xb7546d05.collectionSizeOrDefault(indices, 10);
        if (collectionSizeOrDefault == 0) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(slice, it.next().intValue())));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: slice-Q6IL4kU, reason: not valid java name */
    public static final List<UShort> m4147sliceQ6IL4kU(@NotNull short[] slice, @NotNull IntRange indices) {
        Intrinsics.checkNotNullParameter(slice, "$this$slice");
        Intrinsics.checkNotNullParameter(indices, "indices");
        if (indices.isEmpty()) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        return UArraysKt___UArraysJvmKt.m1924asListrL5Bavg(UShortArray.m1854constructorimpl(ArraysKt___ArraysJvmKt.copyOfRange(slice, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1)));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: slice-ZRhS8yI, reason: not valid java name */
    public static final List<ULong> m4148sliceZRhS8yI(@NotNull long[] slice, @NotNull IntRange indices) {
        Intrinsics.checkNotNullParameter(slice, "$this$slice");
        Intrinsics.checkNotNullParameter(indices, "indices");
        if (indices.isEmpty()) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        return UArraysKt___UArraysJvmKt.m1923asListQwZRm1k(ULongArray.m1830constructorimpl(ArraysKt___ArraysJvmKt.copyOfRange(slice, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1)));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: slice-c0bezYM, reason: not valid java name */
    public static final List<UByte> m4149slicec0bezYM(@NotNull byte[] slice, @NotNull IntRange indices) {
        Intrinsics.checkNotNullParameter(slice, "$this$slice");
        Intrinsics.checkNotNullParameter(indices, "indices");
        if (indices.isEmpty()) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        return UArraysKt___UArraysJvmKt.m1922asListGBYM_sE(UByteArray.m1782constructorimpl(ArraysKt___ArraysJvmKt.copyOfRange(slice, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1)));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: slice-tAntMlw, reason: not valid java name */
    public static final List<UInt> m4150slicetAntMlw(@NotNull int[] slice, @NotNull IntRange indices) {
        Intrinsics.checkNotNullParameter(slice, "$this$slice");
        Intrinsics.checkNotNullParameter(indices, "indices");
        if (indices.isEmpty()) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        return UArraysKt___UArraysJvmKt.m1921asListajY9A(UIntArray.m1806constructorimpl(ArraysKt___ArraysJvmKt.copyOfRange(slice, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1)));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sliceArray-CFIt9YE, reason: not valid java name */
    public static final int[] m4151sliceArrayCFIt9YE(@NotNull int[] sliceArray, @NotNull Collection<Integer> indices) {
        Intrinsics.checkNotNullParameter(sliceArray, "$this$sliceArray");
        Intrinsics.checkNotNullParameter(indices, "indices");
        return UIntArray.m1806constructorimpl(ArraysKt___ArraysKt.sliceArray(sliceArray, indices));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sliceArray-Q6IL4kU, reason: not valid java name */
    public static final short[] m4152sliceArrayQ6IL4kU(@NotNull short[] sliceArray, @NotNull IntRange indices) {
        Intrinsics.checkNotNullParameter(sliceArray, "$this$sliceArray");
        Intrinsics.checkNotNullParameter(indices, "indices");
        return UShortArray.m1854constructorimpl(ArraysKt___ArraysKt.sliceArray(sliceArray, indices));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sliceArray-ZRhS8yI, reason: not valid java name */
    public static final long[] m4153sliceArrayZRhS8yI(@NotNull long[] sliceArray, @NotNull IntRange indices) {
        Intrinsics.checkNotNullParameter(sliceArray, "$this$sliceArray");
        Intrinsics.checkNotNullParameter(indices, "indices");
        return ULongArray.m1830constructorimpl(ArraysKt___ArraysKt.sliceArray(sliceArray, indices));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sliceArray-c0bezYM, reason: not valid java name */
    public static final byte[] m4154sliceArrayc0bezYM(@NotNull byte[] sliceArray, @NotNull IntRange indices) {
        Intrinsics.checkNotNullParameter(sliceArray, "$this$sliceArray");
        Intrinsics.checkNotNullParameter(indices, "indices");
        return UByteArray.m1782constructorimpl(ArraysKt___ArraysKt.sliceArray(sliceArray, indices));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sliceArray-kzHmqpY, reason: not valid java name */
    public static final long[] m4155sliceArraykzHmqpY(@NotNull long[] sliceArray, @NotNull Collection<Integer> indices) {
        Intrinsics.checkNotNullParameter(sliceArray, "$this$sliceArray");
        Intrinsics.checkNotNullParameter(indices, "indices");
        return ULongArray.m1830constructorimpl(ArraysKt___ArraysKt.sliceArray(sliceArray, indices));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sliceArray-ojwP5H8, reason: not valid java name */
    public static final short[] m4156sliceArrayojwP5H8(@NotNull short[] sliceArray, @NotNull Collection<Integer> indices) {
        Intrinsics.checkNotNullParameter(sliceArray, "$this$sliceArray");
        Intrinsics.checkNotNullParameter(indices, "indices");
        return UShortArray.m1854constructorimpl(ArraysKt___ArraysKt.sliceArray(sliceArray, indices));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sliceArray-tAntMlw, reason: not valid java name */
    public static final int[] m4157sliceArraytAntMlw(@NotNull int[] sliceArray, @NotNull IntRange indices) {
        Intrinsics.checkNotNullParameter(sliceArray, "$this$sliceArray");
        Intrinsics.checkNotNullParameter(indices, "indices");
        return UIntArray.m1806constructorimpl(ArraysKt___ArraysKt.sliceArray(sliceArray, indices));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sliceArray-xo_DsdI, reason: not valid java name */
    public static final byte[] m4158sliceArrayxo_DsdI(@NotNull byte[] sliceArray, @NotNull Collection<Integer> indices) {
        Intrinsics.checkNotNullParameter(sliceArray, "$this$sliceArray");
        Intrinsics.checkNotNullParameter(indices, "indices");
        return UByteArray.m1782constructorimpl(ArraysKt___ArraysKt.sliceArray(sliceArray, indices));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: sort--ajY-9A, reason: not valid java name */
    public static final void m4159sortajY9A(@NotNull int[] sort) {
        Intrinsics.checkNotNullParameter(sort, "$this$sort");
        if (UIntArray.m1812getSizeimpl(sort) > 1) {
            UArraySortingKt.m1893sortArrayoBK06Vg(sort, 0, UIntArray.m1812getSizeimpl(sort));
        }
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: sort--nroSd4, reason: not valid java name */
    public static final void m4160sortnroSd4(@NotNull long[] sort, int i, int i2) {
        Intrinsics.checkNotNullParameter(sort, "$this$sort");
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(i, i2, ULongArray.m1836getSizeimpl(sort));
        if (i < i2 - 1) {
            UArraySortingKt.m1890sortArraynroSd4(sort, i, i2);
        }
    }

    /* renamed from: sort--nroSd4$default, reason: not valid java name */
    public static /* synthetic */ void m4161sortnroSd4$default(long[] jArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = ULongArray.m1836getSizeimpl(jArr);
        }
        m4160sortnroSd4(jArr, i, i2);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: sort-4UcCI2c, reason: not valid java name */
    public static final void m4162sort4UcCI2c(@NotNull byte[] sort, int i, int i2) {
        Intrinsics.checkNotNullParameter(sort, "$this$sort");
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(i, i2, UByteArray.m1788getSizeimpl(sort));
        if (i < i2 - 1) {
            UArraySortingKt.m1891sortArray4UcCI2c(sort, i, i2);
        }
    }

    /* renamed from: sort-4UcCI2c$default, reason: not valid java name */
    public static /* synthetic */ void m4163sort4UcCI2c$default(byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = UByteArray.m1788getSizeimpl(bArr);
        }
        m4162sort4UcCI2c(bArr, i, i2);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: sort-Aa5vz7o, reason: not valid java name */
    public static final void m4164sortAa5vz7o(@NotNull short[] sort, int i, int i2) {
        Intrinsics.checkNotNullParameter(sort, "$this$sort");
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(i, i2, UShortArray.m1860getSizeimpl(sort));
        if (i < i2 - 1) {
            UArraySortingKt.m1892sortArrayAa5vz7o(sort, i, i2);
        }
    }

    /* renamed from: sort-Aa5vz7o$default, reason: not valid java name */
    public static /* synthetic */ void m4165sortAa5vz7o$default(short[] sArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = UShortArray.m1860getSizeimpl(sArr);
        }
        m4164sortAa5vz7o(sArr, i, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: sort-GBYM_sE, reason: not valid java name */
    public static final void m4166sortGBYM_sE(@NotNull byte[] sort) {
        Intrinsics.checkNotNullParameter(sort, "$this$sort");
        if (UByteArray.m1788getSizeimpl(sort) > 1) {
            UArraySortingKt.m1891sortArray4UcCI2c(sort, 0, UByteArray.m1788getSizeimpl(sort));
        }
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: sort-QwZRm1k, reason: not valid java name */
    public static final void m4167sortQwZRm1k(@NotNull long[] sort) {
        Intrinsics.checkNotNullParameter(sort, "$this$sort");
        if (ULongArray.m1836getSizeimpl(sort) > 1) {
            UArraySortingKt.m1890sortArraynroSd4(sort, 0, ULongArray.m1836getSizeimpl(sort));
        }
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: sort-oBK06Vg, reason: not valid java name */
    public static final void m4168sortoBK06Vg(@NotNull int[] sort, int i, int i2) {
        Intrinsics.checkNotNullParameter(sort, "$this$sort");
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(i, i2, UIntArray.m1812getSizeimpl(sort));
        if (i < i2 - 1) {
            UArraySortingKt.m1893sortArrayoBK06Vg(sort, i, i2);
        }
    }

    /* renamed from: sort-oBK06Vg$default, reason: not valid java name */
    public static /* synthetic */ void m4169sortoBK06Vg$default(int[] iArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = UIntArray.m1812getSizeimpl(iArr);
        }
        m4168sortoBK06Vg(iArr, i, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: sort-rL5Bavg, reason: not valid java name */
    public static final void m4170sortrL5Bavg(@NotNull short[] sort) {
        Intrinsics.checkNotNullParameter(sort, "$this$sort");
        if (UShortArray.m1860getSizeimpl(sort) > 1) {
            UArraySortingKt.m1892sortArrayAa5vz7o(sort, 0, UShortArray.m1860getSizeimpl(sort));
        }
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: sortDescending--ajY-9A, reason: not valid java name */
    public static final void m4171sortDescendingajY9A(@NotNull int[] sortDescending) {
        Intrinsics.checkNotNullParameter(sortDescending, "$this$sortDescending");
        if (UIntArray.m1812getSizeimpl(sortDescending) > 1) {
            m4159sortajY9A(sortDescending);
            ArraysKt___ArraysKt.reverse(sortDescending);
        }
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: sortDescending--nroSd4, reason: not valid java name */
    public static final void m4172sortDescendingnroSd4(@NotNull long[] sortDescending, int i, int i2) {
        Intrinsics.checkNotNullParameter(sortDescending, "$this$sortDescending");
        m4160sortnroSd4(sortDescending, i, i2);
        ArraysKt___ArraysKt.reverse(sortDescending, i, i2);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: sortDescending-4UcCI2c, reason: not valid java name */
    public static final void m4173sortDescending4UcCI2c(@NotNull byte[] sortDescending, int i, int i2) {
        Intrinsics.checkNotNullParameter(sortDescending, "$this$sortDescending");
        m4162sort4UcCI2c(sortDescending, i, i2);
        ArraysKt___ArraysKt.reverse(sortDescending, i, i2);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: sortDescending-Aa5vz7o, reason: not valid java name */
    public static final void m4174sortDescendingAa5vz7o(@NotNull short[] sortDescending, int i, int i2) {
        Intrinsics.checkNotNullParameter(sortDescending, "$this$sortDescending");
        m4164sortAa5vz7o(sortDescending, i, i2);
        ArraysKt___ArraysKt.reverse(sortDescending, i, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: sortDescending-GBYM_sE, reason: not valid java name */
    public static final void m4175sortDescendingGBYM_sE(@NotNull byte[] sortDescending) {
        Intrinsics.checkNotNullParameter(sortDescending, "$this$sortDescending");
        if (UByteArray.m1788getSizeimpl(sortDescending) > 1) {
            m4166sortGBYM_sE(sortDescending);
            ArraysKt___ArraysKt.reverse(sortDescending);
        }
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: sortDescending-QwZRm1k, reason: not valid java name */
    public static final void m4176sortDescendingQwZRm1k(@NotNull long[] sortDescending) {
        Intrinsics.checkNotNullParameter(sortDescending, "$this$sortDescending");
        if (ULongArray.m1836getSizeimpl(sortDescending) > 1) {
            m4167sortQwZRm1k(sortDescending);
            ArraysKt___ArraysKt.reverse(sortDescending);
        }
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: sortDescending-oBK06Vg, reason: not valid java name */
    public static final void m4177sortDescendingoBK06Vg(@NotNull int[] sortDescending, int i, int i2) {
        Intrinsics.checkNotNullParameter(sortDescending, "$this$sortDescending");
        m4168sortoBK06Vg(sortDescending, i, i2);
        ArraysKt___ArraysKt.reverse(sortDescending, i, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: sortDescending-rL5Bavg, reason: not valid java name */
    public static final void m4178sortDescendingrL5Bavg(@NotNull short[] sortDescending) {
        Intrinsics.checkNotNullParameter(sortDescending, "$this$sortDescending");
        if (UShortArray.m1860getSizeimpl(sortDescending) > 1) {
            m4170sortrL5Bavg(sortDescending);
            ArraysKt___ArraysKt.reverse(sortDescending);
        }
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sorted--ajY-9A, reason: not valid java name */
    public static final List<UInt> m4179sortedajY9A(@NotNull int[] sorted) {
        Intrinsics.checkNotNullParameter(sorted, "$this$sorted");
        int[] copyOf = Arrays.copyOf(sorted, sorted.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        int[] m1806constructorimpl = UIntArray.m1806constructorimpl(copyOf);
        m4159sortajY9A(m1806constructorimpl);
        return UArraysKt___UArraysJvmKt.m1921asListajY9A(m1806constructorimpl);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sorted-GBYM_sE, reason: not valid java name */
    public static final List<UByte> m4180sortedGBYM_sE(@NotNull byte[] sorted) {
        Intrinsics.checkNotNullParameter(sorted, "$this$sorted");
        byte[] copyOf = Arrays.copyOf(sorted, sorted.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        byte[] m1782constructorimpl = UByteArray.m1782constructorimpl(copyOf);
        m4166sortGBYM_sE(m1782constructorimpl);
        return UArraysKt___UArraysJvmKt.m1922asListGBYM_sE(m1782constructorimpl);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sorted-QwZRm1k, reason: not valid java name */
    public static final List<ULong> m4181sortedQwZRm1k(@NotNull long[] sorted) {
        Intrinsics.checkNotNullParameter(sorted, "$this$sorted");
        long[] copyOf = Arrays.copyOf(sorted, sorted.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        long[] m1830constructorimpl = ULongArray.m1830constructorimpl(copyOf);
        m4167sortQwZRm1k(m1830constructorimpl);
        return UArraysKt___UArraysJvmKt.m1923asListQwZRm1k(m1830constructorimpl);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sorted-rL5Bavg, reason: not valid java name */
    public static final List<UShort> m4182sortedrL5Bavg(@NotNull short[] sorted) {
        Intrinsics.checkNotNullParameter(sorted, "$this$sorted");
        short[] copyOf = Arrays.copyOf(sorted, sorted.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        short[] m1854constructorimpl = UShortArray.m1854constructorimpl(copyOf);
        m4170sortrL5Bavg(m1854constructorimpl);
        return UArraysKt___UArraysJvmKt.m1924asListrL5Bavg(m1854constructorimpl);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sortedArray--ajY-9A, reason: not valid java name */
    public static final int[] m4183sortedArrayajY9A(@NotNull int[] sortedArray) {
        Intrinsics.checkNotNullParameter(sortedArray, "$this$sortedArray");
        if (UIntArray.m1814isEmptyimpl(sortedArray)) {
            return sortedArray;
        }
        int[] copyOf = Arrays.copyOf(sortedArray, sortedArray.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        int[] m1806constructorimpl = UIntArray.m1806constructorimpl(copyOf);
        m4159sortajY9A(m1806constructorimpl);
        return m1806constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sortedArray-GBYM_sE, reason: not valid java name */
    public static final byte[] m4184sortedArrayGBYM_sE(@NotNull byte[] sortedArray) {
        Intrinsics.checkNotNullParameter(sortedArray, "$this$sortedArray");
        if (UByteArray.m1790isEmptyimpl(sortedArray)) {
            return sortedArray;
        }
        byte[] copyOf = Arrays.copyOf(sortedArray, sortedArray.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        byte[] m1782constructorimpl = UByteArray.m1782constructorimpl(copyOf);
        m4166sortGBYM_sE(m1782constructorimpl);
        return m1782constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sortedArray-QwZRm1k, reason: not valid java name */
    public static final long[] m4185sortedArrayQwZRm1k(@NotNull long[] sortedArray) {
        Intrinsics.checkNotNullParameter(sortedArray, "$this$sortedArray");
        if (ULongArray.m1838isEmptyimpl(sortedArray)) {
            return sortedArray;
        }
        long[] copyOf = Arrays.copyOf(sortedArray, sortedArray.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        long[] m1830constructorimpl = ULongArray.m1830constructorimpl(copyOf);
        m4167sortQwZRm1k(m1830constructorimpl);
        return m1830constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sortedArray-rL5Bavg, reason: not valid java name */
    public static final short[] m4186sortedArrayrL5Bavg(@NotNull short[] sortedArray) {
        Intrinsics.checkNotNullParameter(sortedArray, "$this$sortedArray");
        if (UShortArray.m1862isEmptyimpl(sortedArray)) {
            return sortedArray;
        }
        short[] copyOf = Arrays.copyOf(sortedArray, sortedArray.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        short[] m1854constructorimpl = UShortArray.m1854constructorimpl(copyOf);
        m4170sortrL5Bavg(m1854constructorimpl);
        return m1854constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sortedArrayDescending--ajY-9A, reason: not valid java name */
    public static final int[] m4187sortedArrayDescendingajY9A(@NotNull int[] sortedArrayDescending) {
        Intrinsics.checkNotNullParameter(sortedArrayDescending, "$this$sortedArrayDescending");
        if (UIntArray.m1814isEmptyimpl(sortedArrayDescending)) {
            return sortedArrayDescending;
        }
        int[] copyOf = Arrays.copyOf(sortedArrayDescending, sortedArrayDescending.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        int[] m1806constructorimpl = UIntArray.m1806constructorimpl(copyOf);
        m4171sortDescendingajY9A(m1806constructorimpl);
        return m1806constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sortedArrayDescending-GBYM_sE, reason: not valid java name */
    public static final byte[] m4188sortedArrayDescendingGBYM_sE(@NotNull byte[] sortedArrayDescending) {
        Intrinsics.checkNotNullParameter(sortedArrayDescending, "$this$sortedArrayDescending");
        if (UByteArray.m1790isEmptyimpl(sortedArrayDescending)) {
            return sortedArrayDescending;
        }
        byte[] copyOf = Arrays.copyOf(sortedArrayDescending, sortedArrayDescending.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        byte[] m1782constructorimpl = UByteArray.m1782constructorimpl(copyOf);
        m4175sortDescendingGBYM_sE(m1782constructorimpl);
        return m1782constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sortedArrayDescending-QwZRm1k, reason: not valid java name */
    public static final long[] m4189sortedArrayDescendingQwZRm1k(@NotNull long[] sortedArrayDescending) {
        Intrinsics.checkNotNullParameter(sortedArrayDescending, "$this$sortedArrayDescending");
        if (ULongArray.m1838isEmptyimpl(sortedArrayDescending)) {
            return sortedArrayDescending;
        }
        long[] copyOf = Arrays.copyOf(sortedArrayDescending, sortedArrayDescending.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        long[] m1830constructorimpl = ULongArray.m1830constructorimpl(copyOf);
        m4176sortDescendingQwZRm1k(m1830constructorimpl);
        return m1830constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sortedArrayDescending-rL5Bavg, reason: not valid java name */
    public static final short[] m4190sortedArrayDescendingrL5Bavg(@NotNull short[] sortedArrayDescending) {
        Intrinsics.checkNotNullParameter(sortedArrayDescending, "$this$sortedArrayDescending");
        if (UShortArray.m1862isEmptyimpl(sortedArrayDescending)) {
            return sortedArrayDescending;
        }
        short[] copyOf = Arrays.copyOf(sortedArrayDescending, sortedArrayDescending.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        short[] m1854constructorimpl = UShortArray.m1854constructorimpl(copyOf);
        m4178sortDescendingrL5Bavg(m1854constructorimpl);
        return m1854constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sortedDescending--ajY-9A, reason: not valid java name */
    public static final List<UInt> m4191sortedDescendingajY9A(@NotNull int[] sortedDescending) {
        Intrinsics.checkNotNullParameter(sortedDescending, "$this$sortedDescending");
        int[] copyOf = Arrays.copyOf(sortedDescending, sortedDescending.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        int[] m1806constructorimpl = UIntArray.m1806constructorimpl(copyOf);
        m4159sortajY9A(m1806constructorimpl);
        return m4127reversedajY9A(m1806constructorimpl);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sortedDescending-GBYM_sE, reason: not valid java name */
    public static final List<UByte> m4192sortedDescendingGBYM_sE(@NotNull byte[] sortedDescending) {
        Intrinsics.checkNotNullParameter(sortedDescending, "$this$sortedDescending");
        byte[] copyOf = Arrays.copyOf(sortedDescending, sortedDescending.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        byte[] m1782constructorimpl = UByteArray.m1782constructorimpl(copyOf);
        m4166sortGBYM_sE(m1782constructorimpl);
        return m4128reversedGBYM_sE(m1782constructorimpl);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sortedDescending-QwZRm1k, reason: not valid java name */
    public static final List<ULong> m4193sortedDescendingQwZRm1k(@NotNull long[] sortedDescending) {
        Intrinsics.checkNotNullParameter(sortedDescending, "$this$sortedDescending");
        long[] copyOf = Arrays.copyOf(sortedDescending, sortedDescending.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        long[] m1830constructorimpl = ULongArray.m1830constructorimpl(copyOf);
        m4167sortQwZRm1k(m1830constructorimpl);
        return m4129reversedQwZRm1k(m1830constructorimpl);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: sortedDescending-rL5Bavg, reason: not valid java name */
    public static final List<UShort> m4194sortedDescendingrL5Bavg(@NotNull short[] sortedDescending) {
        Intrinsics.checkNotNullParameter(sortedDescending, "$this$sortedDescending");
        short[] copyOf = Arrays.copyOf(sortedDescending, sortedDescending.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        short[] m1854constructorimpl = UShortArray.m1854constructorimpl(copyOf);
        m4170sortrL5Bavg(m1854constructorimpl);
        return m4130reversedrL5Bavg(m1854constructorimpl);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfUByte")
    public static final int sumOfUByte(@NotNull UByte[] uByteArr) {
        Intrinsics.checkNotNullParameter(uByteArr, "<this>");
        int i = 0;
        for (UByte uByte : uByteArr) {
            i = UInt.m1798constructorimpl(UInt.m1798constructorimpl(uByte.getData() & 255) + i);
        }
        return i;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfUInt")
    public static final int sumOfUInt(@NotNull UInt[] uIntArr) {
        Intrinsics.checkNotNullParameter(uIntArr, "<this>");
        int i = 0;
        for (UInt uInt : uIntArr) {
            i = UInt.m1798constructorimpl(uInt.getData() + i);
        }
        return i;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfULong")
    public static final long sumOfULong(@NotNull ULong[] uLongArr) {
        Intrinsics.checkNotNullParameter(uLongArr, "<this>");
        long j = 0;
        for (ULong uLong : uLongArr) {
            j = ULong.m1822constructorimpl(uLong.getData() + j);
        }
        return j;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfUShort")
    public static final int sumOfUShort(@NotNull UShort[] uShortArr) {
        Intrinsics.checkNotNullParameter(uShortArr, "<this>");
        int i = 0;
        for (UShort uShort : uShortArr) {
            i = UInt.m1798constructorimpl(UInt.m1798constructorimpl(uShort.getData() & UShort.MAX_VALUE) + i);
        }
        return i;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: take-PpDY95g, reason: not valid java name */
    public static final List<UByte> m4195takePpDY95g(@NotNull byte[] take, int i) {
        Intrinsics.checkNotNullParameter(take, "$this$take");
        if (i >= 0) {
            if (i == 0) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            if (i >= UByteArray.m1788getSizeimpl(take)) {
                return CollectionsKt___CollectionsKt.toList(UByteArray.m1780boximpl(take));
            }
            if (i == 1) {
                return AbstractC0586x968d4673.listOf(UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(take, 0)));
            }
            ArrayList arrayList = new ArrayList(i);
            int m1788getSizeimpl = UByteArray.m1788getSizeimpl(take);
            int i2 = 0;
            for (int i3 = 0; i3 < m1788getSizeimpl; i3++) {
                arrayList.add(UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(take, i3)));
                i2++;
                if (i2 == i) {
                    break;
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: take-nggk6HY, reason: not valid java name */
    public static final List<UShort> m4196takenggk6HY(@NotNull short[] take, int i) {
        Intrinsics.checkNotNullParameter(take, "$this$take");
        if (i >= 0) {
            if (i == 0) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            if (i >= UShortArray.m1860getSizeimpl(take)) {
                return CollectionsKt___CollectionsKt.toList(UShortArray.m1852boximpl(take));
            }
            if (i == 1) {
                return AbstractC0586x968d4673.listOf(UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(take, 0)));
            }
            ArrayList arrayList = new ArrayList(i);
            int m1860getSizeimpl = UShortArray.m1860getSizeimpl(take);
            int i2 = 0;
            for (int i3 = 0; i3 < m1860getSizeimpl; i3++) {
                arrayList.add(UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(take, i3)));
                i2++;
                if (i2 == i) {
                    break;
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: take-qFRl0hI, reason: not valid java name */
    public static final List<UInt> m4197takeqFRl0hI(@NotNull int[] take, int i) {
        Intrinsics.checkNotNullParameter(take, "$this$take");
        if (i >= 0) {
            if (i == 0) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            if (i >= UIntArray.m1812getSizeimpl(take)) {
                return CollectionsKt___CollectionsKt.toList(UIntArray.m1804boximpl(take));
            }
            if (i == 1) {
                return AbstractC0586x968d4673.listOf(UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(take, 0)));
            }
            ArrayList arrayList = new ArrayList(i);
            int m1812getSizeimpl = UIntArray.m1812getSizeimpl(take);
            int i2 = 0;
            for (int i3 = 0; i3 < m1812getSizeimpl; i3++) {
                arrayList.add(UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(take, i3)));
                i2++;
                if (i2 == i) {
                    break;
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: take-r7IrZao, reason: not valid java name */
    public static final List<ULong> m4198taker7IrZao(@NotNull long[] take, int i) {
        Intrinsics.checkNotNullParameter(take, "$this$take");
        if (i >= 0) {
            if (i == 0) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            if (i >= ULongArray.m1836getSizeimpl(take)) {
                return CollectionsKt___CollectionsKt.toList(ULongArray.m1828boximpl(take));
            }
            if (i == 1) {
                return AbstractC0586x968d4673.listOf(ULong.m1821boximpl(ULongArray.m1835getsVKNKU(take, 0)));
            }
            ArrayList arrayList = new ArrayList(i);
            int m1836getSizeimpl = ULongArray.m1836getSizeimpl(take);
            int i2 = 0;
            for (int i3 = 0; i3 < m1836getSizeimpl; i3++) {
                arrayList.add(ULong.m1821boximpl(ULongArray.m1835getsVKNKU(take, i3)));
                i2++;
                if (i2 == i) {
                    break;
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: takeLast-PpDY95g, reason: not valid java name */
    public static final List<UByte> m4199takeLastPpDY95g(@NotNull byte[] takeLast, int i) {
        Intrinsics.checkNotNullParameter(takeLast, "$this$takeLast");
        if (i >= 0) {
            if (i == 0) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            int m1788getSizeimpl = UByteArray.m1788getSizeimpl(takeLast);
            if (i >= m1788getSizeimpl) {
                return CollectionsKt___CollectionsKt.toList(UByteArray.m1780boximpl(takeLast));
            }
            if (i == 1) {
                return AbstractC0586x968d4673.listOf(UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(takeLast, m1788getSizeimpl - 1)));
            }
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = m1788getSizeimpl - i; i2 < m1788getSizeimpl; i2++) {
                arrayList.add(UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(takeLast, i2)));
            }
            return arrayList;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: takeLast-nggk6HY, reason: not valid java name */
    public static final List<UShort> m4200takeLastnggk6HY(@NotNull short[] takeLast, int i) {
        Intrinsics.checkNotNullParameter(takeLast, "$this$takeLast");
        if (i >= 0) {
            if (i == 0) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            int m1860getSizeimpl = UShortArray.m1860getSizeimpl(takeLast);
            if (i >= m1860getSizeimpl) {
                return CollectionsKt___CollectionsKt.toList(UShortArray.m1852boximpl(takeLast));
            }
            if (i == 1) {
                return AbstractC0586x968d4673.listOf(UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(takeLast, m1860getSizeimpl - 1)));
            }
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = m1860getSizeimpl - i; i2 < m1860getSizeimpl; i2++) {
                arrayList.add(UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(takeLast, i2)));
            }
            return arrayList;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: takeLast-qFRl0hI, reason: not valid java name */
    public static final List<UInt> m4201takeLastqFRl0hI(@NotNull int[] takeLast, int i) {
        Intrinsics.checkNotNullParameter(takeLast, "$this$takeLast");
        if (i >= 0) {
            if (i == 0) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            int m1812getSizeimpl = UIntArray.m1812getSizeimpl(takeLast);
            if (i >= m1812getSizeimpl) {
                return CollectionsKt___CollectionsKt.toList(UIntArray.m1804boximpl(takeLast));
            }
            if (i == 1) {
                return AbstractC0586x968d4673.listOf(UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(takeLast, m1812getSizeimpl - 1)));
            }
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = m1812getSizeimpl - i; i2 < m1812getSizeimpl; i2++) {
                arrayList.add(UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(takeLast, i2)));
            }
            return arrayList;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: takeLast-r7IrZao, reason: not valid java name */
    public static final List<ULong> m4202takeLastr7IrZao(@NotNull long[] takeLast, int i) {
        Intrinsics.checkNotNullParameter(takeLast, "$this$takeLast");
        if (i >= 0) {
            if (i == 0) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            int m1836getSizeimpl = ULongArray.m1836getSizeimpl(takeLast);
            if (i >= m1836getSizeimpl) {
                return CollectionsKt___CollectionsKt.toList(ULongArray.m1828boximpl(takeLast));
            }
            if (i == 1) {
                return AbstractC0586x968d4673.listOf(ULong.m1821boximpl(ULongArray.m1835getsVKNKU(takeLast, m1836getSizeimpl - 1)));
            }
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = m1836getSizeimpl - i; i2 < m1836getSizeimpl; i2++) {
                arrayList.add(ULong.m1821boximpl(ULongArray.m1835getsVKNKU(takeLast, i2)));
            }
            return arrayList;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " is less than zero.").toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toTypedArray--ajY-9A, reason: not valid java name */
    public static final UInt[] m4203toTypedArrayajY9A(@NotNull int[] toTypedArray) {
        Intrinsics.checkNotNullParameter(toTypedArray, "$this$toTypedArray");
        int m1812getSizeimpl = UIntArray.m1812getSizeimpl(toTypedArray);
        UInt[] uIntArr = new UInt[m1812getSizeimpl];
        for (int i = 0; i < m1812getSizeimpl; i++) {
            uIntArr[i] = UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(toTypedArray, i));
        }
        return uIntArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toTypedArray-GBYM_sE, reason: not valid java name */
    public static final UByte[] m4204toTypedArrayGBYM_sE(@NotNull byte[] toTypedArray) {
        Intrinsics.checkNotNullParameter(toTypedArray, "$this$toTypedArray");
        int m1788getSizeimpl = UByteArray.m1788getSizeimpl(toTypedArray);
        UByte[] uByteArr = new UByte[m1788getSizeimpl];
        for (int i = 0; i < m1788getSizeimpl; i++) {
            uByteArr[i] = UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(toTypedArray, i));
        }
        return uByteArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toTypedArray-QwZRm1k, reason: not valid java name */
    public static final ULong[] m4205toTypedArrayQwZRm1k(@NotNull long[] toTypedArray) {
        Intrinsics.checkNotNullParameter(toTypedArray, "$this$toTypedArray");
        int m1836getSizeimpl = ULongArray.m1836getSizeimpl(toTypedArray);
        ULong[] uLongArr = new ULong[m1836getSizeimpl];
        for (int i = 0; i < m1836getSizeimpl; i++) {
            uLongArr[i] = ULong.m1821boximpl(ULongArray.m1835getsVKNKU(toTypedArray, i));
        }
        return uLongArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toTypedArray-rL5Bavg, reason: not valid java name */
    public static final UShort[] m4206toTypedArrayrL5Bavg(@NotNull short[] toTypedArray) {
        Intrinsics.checkNotNullParameter(toTypedArray, "$this$toTypedArray");
        int m1860getSizeimpl = UShortArray.m1860getSizeimpl(toTypedArray);
        UShort[] uShortArr = new UShort[m1860getSizeimpl];
        for (int i = 0; i < m1860getSizeimpl; i++) {
            uShortArr[i] = UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(toTypedArray, i));
        }
        return uShortArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final byte[] toUByteArray(@NotNull UByte[] uByteArr) {
        Intrinsics.checkNotNullParameter(uByteArr, "<this>");
        int length = uByteArr.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = uByteArr[i].getData();
        }
        return UByteArray.m1782constructorimpl(bArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final int[] toUIntArray(@NotNull UInt[] uIntArr) {
        Intrinsics.checkNotNullParameter(uIntArr, "<this>");
        int length = uIntArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = uIntArr[i].getData();
        }
        return UIntArray.m1806constructorimpl(iArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final long[] toULongArray(@NotNull ULong[] uLongArr) {
        Intrinsics.checkNotNullParameter(uLongArr, "<this>");
        int length = uLongArr.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = uLongArr[i].getData();
        }
        return ULongArray.m1830constructorimpl(jArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final short[] toUShortArray(@NotNull UShort[] uShortArr) {
        Intrinsics.checkNotNullParameter(uShortArr, "<this>");
        int length = uShortArr.length;
        short[] sArr = new short[length];
        for (int i = 0; i < length; i++) {
            sArr[i] = uShortArr[i].getData();
        }
        return UShortArray.m1854constructorimpl(sArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: withIndex--ajY-9A, reason: not valid java name */
    public static final Iterable<IndexedValue<UInt>> m4207withIndexajY9A(@NotNull int[] withIndex) {
        Intrinsics.checkNotNullParameter(withIndex, "$this$withIndex");
        return new IndexingIterable(new C0418x34206cf0(withIndex, 1));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: withIndex-GBYM_sE, reason: not valid java name */
    public static final Iterable<IndexedValue<UByte>> m4208withIndexGBYM_sE(@NotNull byte[] withIndex) {
        Intrinsics.checkNotNullParameter(withIndex, "$this$withIndex");
        return new IndexingIterable(new C0417x38bbec21(withIndex, 1));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: withIndex-QwZRm1k, reason: not valid java name */
    public static final Iterable<IndexedValue<ULong>> m4209withIndexQwZRm1k(@NotNull long[] withIndex) {
        Intrinsics.checkNotNullParameter(withIndex, "$this$withIndex");
        return new IndexingIterable(new C0416x7732d33f(withIndex, 1));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: withIndex-rL5Bavg, reason: not valid java name */
    public static final Iterable<IndexedValue<UShort>> m4210withIndexrL5Bavg(@NotNull short[] withIndex) {
        Intrinsics.checkNotNullParameter(withIndex, "$this$withIndex");
        return new IndexingIterable(new C0415xd31bb633(withIndex, 1));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: zip-C-E_24M, reason: not valid java name */
    public static final <R> List<Pair<UInt, R>> m4211zipCE_24M(@NotNull int[] zip, @NotNull R[] other) {
        Intrinsics.checkNotNullParameter(zip, "$this$zip");
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(UIntArray.m1812getSizeimpl(zip), other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            int m1811getpVg5ArA = UIntArray.m1811getpVg5ArA(zip, i);
            arrayList.add(TuplesKt.to(UInt.m1797boximpl(m1811getpVg5ArA), other[i]));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: zip-F7u83W8, reason: not valid java name */
    public static final <R> List<Pair<ULong, R>> m4212zipF7u83W8(@NotNull long[] zip, @NotNull Iterable<? extends R> other) {
        Intrinsics.checkNotNullParameter(zip, "$this$zip");
        Intrinsics.checkNotNullParameter(other, "other");
        int m1836getSizeimpl = ULongArray.m1836getSizeimpl(zip);
        ArrayList arrayList = new ArrayList(Math.min(AbstractC0587xb7546d05.collectionSizeOrDefault(other, 10), m1836getSizeimpl));
        int i = 0;
        for (R r : other) {
            if (i >= m1836getSizeimpl) {
                break;
            }
            arrayList.add(TuplesKt.to(ULong.m1821boximpl(ULongArray.m1835getsVKNKU(zip, i)), r));
            i++;
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: zip-HwE9HBo, reason: not valid java name */
    public static final <R> List<Pair<UInt, R>> m4213zipHwE9HBo(@NotNull int[] zip, @NotNull Iterable<? extends R> other) {
        Intrinsics.checkNotNullParameter(zip, "$this$zip");
        Intrinsics.checkNotNullParameter(other, "other");
        int m1812getSizeimpl = UIntArray.m1812getSizeimpl(zip);
        ArrayList arrayList = new ArrayList(Math.min(AbstractC0587xb7546d05.collectionSizeOrDefault(other, 10), m1812getSizeimpl));
        int i = 0;
        for (R r : other) {
            if (i >= m1812getSizeimpl) {
                break;
            }
            arrayList.add(TuplesKt.to(UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(zip, i)), r));
            i++;
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: zip-JGPC0-M, reason: not valid java name */
    public static final <R> List<Pair<UShort, R>> m4214zipJGPC0M(@NotNull short[] zip, @NotNull Iterable<? extends R> other) {
        Intrinsics.checkNotNullParameter(zip, "$this$zip");
        Intrinsics.checkNotNullParameter(other, "other");
        int m1860getSizeimpl = UShortArray.m1860getSizeimpl(zip);
        ArrayList arrayList = new ArrayList(Math.min(AbstractC0587xb7546d05.collectionSizeOrDefault(other, 10), m1860getSizeimpl));
        int i = 0;
        for (R r : other) {
            if (i >= m1860getSizeimpl) {
                break;
            }
            arrayList.add(TuplesKt.to(UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(zip, i)), r));
            i++;
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: zip-JQknh5Q, reason: not valid java name */
    public static final <R> List<Pair<UByte, R>> m4215zipJQknh5Q(@NotNull byte[] zip, @NotNull Iterable<? extends R> other) {
        Intrinsics.checkNotNullParameter(zip, "$this$zip");
        Intrinsics.checkNotNullParameter(other, "other");
        int m1788getSizeimpl = UByteArray.m1788getSizeimpl(zip);
        ArrayList arrayList = new ArrayList(Math.min(AbstractC0587xb7546d05.collectionSizeOrDefault(other, 10), m1788getSizeimpl));
        int i = 0;
        for (R r : other) {
            if (i >= m1788getSizeimpl) {
                break;
            }
            arrayList.add(TuplesKt.to(UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(zip, i)), r));
            i++;
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: zip-ctEhBpI, reason: not valid java name */
    public static final List<Pair<UInt, UInt>> m4216zipctEhBpI(@NotNull int[] zip, @NotNull int[] other) {
        Intrinsics.checkNotNullParameter(zip, "$this$zip");
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(UIntArray.m1812getSizeimpl(zip), UIntArray.m1812getSizeimpl(other));
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            arrayList.add(TuplesKt.to(UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(zip, i)), UInt.m1797boximpl(UIntArray.m1811getpVg5ArA(other, i))));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: zip-f7H3mmw, reason: not valid java name */
    public static final <R> List<Pair<ULong, R>> m4217zipf7H3mmw(@NotNull long[] zip, @NotNull R[] other) {
        Intrinsics.checkNotNullParameter(zip, "$this$zip");
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(ULongArray.m1836getSizeimpl(zip), other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            long m1835getsVKNKU = ULongArray.m1835getsVKNKU(zip, i);
            arrayList.add(TuplesKt.to(ULong.m1821boximpl(m1835getsVKNKU), other[i]));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: zip-kdPth3s, reason: not valid java name */
    public static final List<Pair<UByte, UByte>> m4218zipkdPth3s(@NotNull byte[] zip, @NotNull byte[] other) {
        Intrinsics.checkNotNullParameter(zip, "$this$zip");
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(UByteArray.m1788getSizeimpl(zip), UByteArray.m1788getSizeimpl(other));
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            arrayList.add(TuplesKt.to(UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(zip, i)), UByte.m1773boximpl(UByteArray.m1787getw2LRezQ(other, i))));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: zip-mazbYpA, reason: not valid java name */
    public static final List<Pair<UShort, UShort>> m4219zipmazbYpA(@NotNull short[] zip, @NotNull short[] other) {
        Intrinsics.checkNotNullParameter(zip, "$this$zip");
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(UShortArray.m1860getSizeimpl(zip), UShortArray.m1860getSizeimpl(other));
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            arrayList.add(TuplesKt.to(UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(zip, i)), UShort.m1845boximpl(UShortArray.m1859getMh2AYeg(other, i))));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: zip-nl983wc, reason: not valid java name */
    public static final <R> List<Pair<UByte, R>> m4220zipnl983wc(@NotNull byte[] zip, @NotNull R[] other) {
        Intrinsics.checkNotNullParameter(zip, "$this$zip");
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(UByteArray.m1788getSizeimpl(zip), other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            byte m1787getw2LRezQ = UByteArray.m1787getw2LRezQ(zip, i);
            arrayList.add(TuplesKt.to(UByte.m1773boximpl(m1787getw2LRezQ), other[i]));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: zip-uaTIQ5s, reason: not valid java name */
    public static final <R> List<Pair<UShort, R>> m4221zipuaTIQ5s(@NotNull short[] zip, @NotNull R[] other) {
        Intrinsics.checkNotNullParameter(zip, "$this$zip");
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(UShortArray.m1860getSizeimpl(zip), other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            short m1859getMh2AYeg = UShortArray.m1859getMh2AYeg(zip, i);
            arrayList.add(TuplesKt.to(UShort.m1845boximpl(m1859getMh2AYeg), other[i]));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: zip-us8wMrg, reason: not valid java name */
    public static final List<Pair<ULong, ULong>> m4222zipus8wMrg(@NotNull long[] zip, @NotNull long[] other) {
        Intrinsics.checkNotNullParameter(zip, "$this$zip");
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(ULongArray.m1836getSizeimpl(zip), ULongArray.m1836getSizeimpl(other));
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            arrayList.add(TuplesKt.to(ULong.m1821boximpl(ULongArray.m1835getsVKNKU(zip, i)), ULong.m1821boximpl(ULongArray.m1835getsVKNKU(other, i))));
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "maxOrThrow-U")
    /* renamed from: maxOrThrow-U, reason: not valid java name */
    public static final long m4089maxOrThrowU(@NotNull long[] max) {
        Intrinsics.checkNotNullParameter(max, "$this$max");
        if (!ULongArray.m1838isEmptyimpl(max)) {
            long m1835getsVKNKU = ULongArray.m1835getsVKNKU(max, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(max);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    long m1835getsVKNKU2 = ULongArray.m1835getsVKNKU(max, i);
                    if (Long.compare(m1835getsVKNKU ^ Long.MIN_VALUE, Long.MIN_VALUE ^ m1835getsVKNKU2) < 0) {
                        m1835getsVKNKU = m1835getsVKNKU2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1835getsVKNKU;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "maxWithOrThrow-U")
    /* renamed from: maxWithOrThrow-U, reason: not valid java name */
    public static final long m4097maxWithOrThrowU(@NotNull long[] maxWith, @NotNull Comparator<? super ULong> comparator) {
        Intrinsics.checkNotNullParameter(maxWith, "$this$maxWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (!ULongArray.m1838isEmptyimpl(maxWith)) {
            long m1835getsVKNKU = ULongArray.m1835getsVKNKU(maxWith, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(maxWith);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    long m1835getsVKNKU2 = ULongArray.m1835getsVKNKU(maxWith, i);
                    if (comparator.compare(ULong.m1821boximpl(m1835getsVKNKU), ULong.m1821boximpl(m1835getsVKNKU2)) < 0) {
                        m1835getsVKNKU = m1835getsVKNKU2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1835getsVKNKU;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "minOrThrow-U")
    /* renamed from: minOrThrow-U, reason: not valid java name */
    public static final long m4105minOrThrowU(@NotNull long[] min) {
        Intrinsics.checkNotNullParameter(min, "$this$min");
        if (!ULongArray.m1838isEmptyimpl(min)) {
            long m1835getsVKNKU = ULongArray.m1835getsVKNKU(min, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(min);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    long m1835getsVKNKU2 = ULongArray.m1835getsVKNKU(min, i);
                    if (Long.compare(m1835getsVKNKU ^ Long.MIN_VALUE, Long.MIN_VALUE ^ m1835getsVKNKU2) > 0) {
                        m1835getsVKNKU = m1835getsVKNKU2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1835getsVKNKU;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "minWithOrThrow-U")
    /* renamed from: minWithOrThrow-U, reason: not valid java name */
    public static final long m4113minWithOrThrowU(@NotNull long[] minWith, @NotNull Comparator<? super ULong> comparator) {
        Intrinsics.checkNotNullParameter(minWith, "$this$minWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (!ULongArray.m1838isEmptyimpl(minWith)) {
            long m1835getsVKNKU = ULongArray.m1835getsVKNKU(minWith, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(minWith);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    long m1835getsVKNKU2 = ULongArray.m1835getsVKNKU(minWith, i);
                    if (comparator.compare(ULong.m1821boximpl(m1835getsVKNKU), ULong.m1821boximpl(m1835getsVKNKU2)) > 0) {
                        m1835getsVKNKU = m1835getsVKNKU2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1835getsVKNKU;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "maxOrThrow-U")
    /* renamed from: maxOrThrow-U, reason: not valid java name */
    public static final byte m4087maxOrThrowU(@NotNull byte[] max) {
        Intrinsics.checkNotNullParameter(max, "$this$max");
        if (!UByteArray.m1790isEmptyimpl(max)) {
            byte m1787getw2LRezQ = UByteArray.m1787getw2LRezQ(max, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(max);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    byte m1787getw2LRezQ2 = UByteArray.m1787getw2LRezQ(max, i);
                    if (Intrinsics.compare(m1787getw2LRezQ & 255, m1787getw2LRezQ2 & 255) < 0) {
                        m1787getw2LRezQ = m1787getw2LRezQ2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1787getw2LRezQ;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "maxWithOrThrow-U")
    /* renamed from: maxWithOrThrow-U, reason: not valid java name */
    public static final byte m4095maxWithOrThrowU(@NotNull byte[] maxWith, @NotNull Comparator<? super UByte> comparator) {
        Intrinsics.checkNotNullParameter(maxWith, "$this$maxWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (!UByteArray.m1790isEmptyimpl(maxWith)) {
            byte m1787getw2LRezQ = UByteArray.m1787getw2LRezQ(maxWith, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(maxWith);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    byte m1787getw2LRezQ2 = UByteArray.m1787getw2LRezQ(maxWith, i);
                    if (comparator.compare(UByte.m1773boximpl(m1787getw2LRezQ), UByte.m1773boximpl(m1787getw2LRezQ2)) < 0) {
                        m1787getw2LRezQ = m1787getw2LRezQ2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1787getw2LRezQ;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "minOrThrow-U")
    /* renamed from: minOrThrow-U, reason: not valid java name */
    public static final byte m4103minOrThrowU(@NotNull byte[] min) {
        Intrinsics.checkNotNullParameter(min, "$this$min");
        if (!UByteArray.m1790isEmptyimpl(min)) {
            byte m1787getw2LRezQ = UByteArray.m1787getw2LRezQ(min, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(min);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    byte m1787getw2LRezQ2 = UByteArray.m1787getw2LRezQ(min, i);
                    if (Intrinsics.compare(m1787getw2LRezQ & 255, m1787getw2LRezQ2 & 255) > 0) {
                        m1787getw2LRezQ = m1787getw2LRezQ2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1787getw2LRezQ;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "minWithOrThrow-U")
    /* renamed from: minWithOrThrow-U, reason: not valid java name */
    public static final byte m4111minWithOrThrowU(@NotNull byte[] minWith, @NotNull Comparator<? super UByte> comparator) {
        Intrinsics.checkNotNullParameter(minWith, "$this$minWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (!UByteArray.m1790isEmptyimpl(minWith)) {
            byte m1787getw2LRezQ = UByteArray.m1787getw2LRezQ(minWith, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(minWith);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    byte m1787getw2LRezQ2 = UByteArray.m1787getw2LRezQ(minWith, i);
                    if (comparator.compare(UByte.m1773boximpl(m1787getw2LRezQ), UByte.m1773boximpl(m1787getw2LRezQ2)) > 0) {
                        m1787getw2LRezQ = m1787getw2LRezQ2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1787getw2LRezQ;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "maxOrThrow-U")
    /* renamed from: maxOrThrow-U, reason: not valid java name */
    public static final short m4090maxOrThrowU(@NotNull short[] max) {
        Intrinsics.checkNotNullParameter(max, "$this$max");
        if (!UShortArray.m1862isEmptyimpl(max)) {
            short m1859getMh2AYeg = UShortArray.m1859getMh2AYeg(max, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(max);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    short m1859getMh2AYeg2 = UShortArray.m1859getMh2AYeg(max, i);
                    if (Intrinsics.compare(m1859getMh2AYeg & UShort.MAX_VALUE, 65535 & m1859getMh2AYeg2) < 0) {
                        m1859getMh2AYeg = m1859getMh2AYeg2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1859getMh2AYeg;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "maxWithOrThrow-U")
    /* renamed from: maxWithOrThrow-U, reason: not valid java name */
    public static final short m4098maxWithOrThrowU(@NotNull short[] maxWith, @NotNull Comparator<? super UShort> comparator) {
        Intrinsics.checkNotNullParameter(maxWith, "$this$maxWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (!UShortArray.m1862isEmptyimpl(maxWith)) {
            short m1859getMh2AYeg = UShortArray.m1859getMh2AYeg(maxWith, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(maxWith);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    short m1859getMh2AYeg2 = UShortArray.m1859getMh2AYeg(maxWith, i);
                    if (comparator.compare(UShort.m1845boximpl(m1859getMh2AYeg), UShort.m1845boximpl(m1859getMh2AYeg2)) < 0) {
                        m1859getMh2AYeg = m1859getMh2AYeg2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1859getMh2AYeg;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "minOrThrow-U")
    /* renamed from: minOrThrow-U, reason: not valid java name */
    public static final short m4106minOrThrowU(@NotNull short[] min) {
        Intrinsics.checkNotNullParameter(min, "$this$min");
        if (!UShortArray.m1862isEmptyimpl(min)) {
            short m1859getMh2AYeg = UShortArray.m1859getMh2AYeg(min, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(min);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    short m1859getMh2AYeg2 = UShortArray.m1859getMh2AYeg(min, i);
                    if (Intrinsics.compare(m1859getMh2AYeg & UShort.MAX_VALUE, 65535 & m1859getMh2AYeg2) > 0) {
                        m1859getMh2AYeg = m1859getMh2AYeg2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1859getMh2AYeg;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.7")
    @ExperimentalUnsignedTypes
    @JvmName(name = "minWithOrThrow-U")
    /* renamed from: minWithOrThrow-U, reason: not valid java name */
    public static final short m4114minWithOrThrowU(@NotNull short[] minWith, @NotNull Comparator<? super UShort> comparator) {
        Intrinsics.checkNotNullParameter(minWith, "$this$minWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (!UShortArray.m1862isEmptyimpl(minWith)) {
            short m1859getMh2AYeg = UShortArray.m1859getMh2AYeg(minWith, 0);
            int lastIndex = ArraysKt___ArraysKt.getLastIndex(minWith);
            int i = 1;
            if (1 <= lastIndex) {
                while (true) {
                    short m1859getMh2AYeg2 = UShortArray.m1859getMh2AYeg(minWith, i);
                    if (comparator.compare(UShort.m1845boximpl(m1859getMh2AYeg), UShort.m1845boximpl(m1859getMh2AYeg2)) > 0) {
                        m1859getMh2AYeg = m1859getMh2AYeg2;
                    }
                    if (i == lastIndex) {
                        break;
                    }
                    i++;
                }
            }
            return m1859getMh2AYeg;
        }
        throw new NoSuchElementException();
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: getIndices--ajY-9A$annotations, reason: not valid java name */
    public static /* synthetic */ void m4060getIndicesajY9A$annotations(int[] iArr) {
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: getIndices-GBYM_sE$annotations, reason: not valid java name */
    public static /* synthetic */ void m4062getIndicesGBYM_sE$annotations(byte[] bArr) {
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: getIndices-QwZRm1k$annotations, reason: not valid java name */
    public static /* synthetic */ void m4064getIndicesQwZRm1k$annotations(long[] jArr) {
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: getIndices-rL5Bavg$annotations, reason: not valid java name */
    public static /* synthetic */ void m4066getIndicesrL5Bavg$annotations(short[] sArr) {
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: getLastIndex--ajY-9A$annotations, reason: not valid java name */
    public static /* synthetic */ void m4068getLastIndexajY9A$annotations(int[] iArr) {
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: getLastIndex-GBYM_sE$annotations, reason: not valid java name */
    public static /* synthetic */ void m4070getLastIndexGBYM_sE$annotations(byte[] bArr) {
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: getLastIndex-QwZRm1k$annotations, reason: not valid java name */
    public static /* synthetic */ void m4072getLastIndexQwZRm1k$annotations(long[] jArr) {
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: getLastIndex-rL5Bavg$annotations, reason: not valid java name */
    public static /* synthetic */ void m4074getLastIndexrL5Bavg$annotations(short[] sArr) {
    }
}
