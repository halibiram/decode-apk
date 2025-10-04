package kotlin.collections;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a'\u0010\b\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\b\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\n\u0010\u000b\u001a'\u0010\b\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\r\u0010\u000e\u001a'\u0010\b\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lkotlin/UByteArray;", "array", "", "fromIndex", "toIndex", "", "sortArray-4UcCI2c", "([BII)V", "sortArray", "Lkotlin/UShortArray;", "sortArray-Aa5vz7o", "([SII)V", "Lkotlin/UIntArray;", "sortArray-oBK06Vg", "([III)V", "Lkotlin/ULongArray;", "sortArray--nroSd4", "([JII)V", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UArraySortingKt {
    @ExperimentalUnsignedTypes
    /* renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m1890sortArraynroSd4(@NotNull long[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m1894xfbe0c504(array, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m1891sortArray4UcCI2c(@NotNull byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m1895x3271d0aa(array, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m1892sortArrayAa5vz7o(@NotNull short[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m1896x1378447b(array, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m1893sortArrayoBK06Vg(@NotNull int[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m1897x75d576dc(array, i, i2 - 1);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final void m1894xfbe0c504(long[] jArr, int i, int i2) {
        long j;
        long m1835getsVKNKU = ULongArray.m1835getsVKNKU(jArr, (i + i2) / 2);
        int i3 = i;
        int i4 = i2;
        while (i3 <= i4) {
            while (true) {
                j = m1835getsVKNKU ^ Long.MIN_VALUE;
                if (Long.compare(ULongArray.m1835getsVKNKU(jArr, i3) ^ Long.MIN_VALUE, j) >= 0) {
                    break;
                } else {
                    i3++;
                }
            }
            while (Long.compare(ULongArray.m1835getsVKNKU(jArr, i4) ^ Long.MIN_VALUE, j) > 0) {
                i4--;
            }
            if (i3 <= i4) {
                long m1835getsVKNKU2 = ULongArray.m1835getsVKNKU(jArr, i3);
                ULongArray.m1840setk8EXiF4(jArr, i3, ULongArray.m1835getsVKNKU(jArr, i4));
                ULongArray.m1840setk8EXiF4(jArr, i4, m1835getsVKNKU2);
                i3++;
                i4--;
            }
        }
        int i5 = i3 - 1;
        if (i < i5) {
            m1894xfbe0c504(jArr, i, i5);
        }
        if (i3 < i2) {
            m1894xfbe0c504(jArr, i3, i2);
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final void m1895x3271d0aa(byte[] bArr, int i, int i2) {
        int i3;
        byte m1787getw2LRezQ = UByteArray.m1787getw2LRezQ(bArr, (i + i2) / 2);
        int i4 = i;
        int i5 = i2;
        while (i4 <= i5) {
            while (true) {
                i3 = m1787getw2LRezQ & 255;
                if (Intrinsics.compare(UByteArray.m1787getw2LRezQ(bArr, i4) & 255, i3) >= 0) {
                    break;
                } else {
                    i4++;
                }
            }
            while (Intrinsics.compare(UByteArray.m1787getw2LRezQ(bArr, i5) & 255, i3) > 0) {
                i5--;
            }
            if (i4 <= i5) {
                byte m1787getw2LRezQ2 = UByteArray.m1787getw2LRezQ(bArr, i4);
                UByteArray.m1792setVurrAj0(bArr, i4, UByteArray.m1787getw2LRezQ(bArr, i5));
                UByteArray.m1792setVurrAj0(bArr, i5, m1787getw2LRezQ2);
                i4++;
                i5--;
            }
        }
        int i6 = i4 - 1;
        if (i < i6) {
            m1895x3271d0aa(bArr, i, i6);
        }
        if (i4 < i2) {
            m1895x3271d0aa(bArr, i4, i2);
        }
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final void m1896x1378447b(short[] sArr, int i, int i2) {
        int i3;
        short m1859getMh2AYeg = UShortArray.m1859getMh2AYeg(sArr, (i + i2) / 2);
        int i4 = i;
        int i5 = i2;
        while (i4 <= i5) {
            while (true) {
                int m1859getMh2AYeg2 = UShortArray.m1859getMh2AYeg(sArr, i4) & UShort.MAX_VALUE;
                i3 = m1859getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(m1859getMh2AYeg2, i3) >= 0) {
                    break;
                } else {
                    i4++;
                }
            }
            while (Intrinsics.compare(UShortArray.m1859getMh2AYeg(sArr, i5) & UShort.MAX_VALUE, i3) > 0) {
                i5--;
            }
            if (i4 <= i5) {
                short m1859getMh2AYeg3 = UShortArray.m1859getMh2AYeg(sArr, i4);
                UShortArray.m1864set01HTLdE(sArr, i4, UShortArray.m1859getMh2AYeg(sArr, i5));
                UShortArray.m1864set01HTLdE(sArr, i5, m1859getMh2AYeg3);
                i4++;
                i5--;
            }
        }
        int i6 = i4 - 1;
        if (i < i6) {
            m1896x1378447b(sArr, i, i6);
        }
        if (i4 < i2) {
            m1896x1378447b(sArr, i4, i2);
        }
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final void m1897x75d576dc(int[] iArr, int i, int i2) {
        int i3;
        int m1811getpVg5ArA = UIntArray.m1811getpVg5ArA(iArr, (i + i2) / 2);
        int i4 = i;
        int i5 = i2;
        while (i4 <= i5) {
            while (true) {
                i3 = m1811getpVg5ArA ^ Integer.MIN_VALUE;
                if (Integer.compare(UIntArray.m1811getpVg5ArA(iArr, i4) ^ Integer.MIN_VALUE, i3) >= 0) {
                    break;
                } else {
                    i4++;
                }
            }
            while (Integer.compare(UIntArray.m1811getpVg5ArA(iArr, i5) ^ Integer.MIN_VALUE, i3) > 0) {
                i5--;
            }
            if (i4 <= i5) {
                int m1811getpVg5ArA2 = UIntArray.m1811getpVg5ArA(iArr, i4);
                UIntArray.m1816setVXSXFK8(iArr, i4, UIntArray.m1811getpVg5ArA(iArr, i5));
                UIntArray.m1816setVXSXFK8(iArr, i5, m1811getpVg5ArA2);
                i4++;
                i5--;
            }
        }
        int i6 = i4 - 1;
        if (i < i6) {
            m1897x75d576dc(iArr, i, i6);
        }
        if (i4 < i2) {
            m1897x75d576dc(iArr, i4, i2);
        }
    }
}
