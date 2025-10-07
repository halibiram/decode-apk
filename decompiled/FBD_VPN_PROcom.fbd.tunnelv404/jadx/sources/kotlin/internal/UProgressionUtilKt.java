package kotlin.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\u001a'\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\tH\u0001¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlin/UInt;", "start", "end", "", "step", "getProgressionLastElement-Nkh28Cs", "(III)I", "getProgressionLastElement", "Lkotlin/ULong;", "", "getProgressionLastElement-7ftBX0g", "(JJJ)J", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UProgressionUtilKt {
    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-7ftBX0g, reason: not valid java name */
    public static final long m1970getProgressionLastElement7ftBX0g(long j, long j2, long j3) {
        if (j3 > 0) {
            if (Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) < 0) {
                return ULong.m1822constructorimpl(j2 - m1973x3271d0aa(j2, j, ULong.m1822constructorimpl(j3)));
            }
            return j2;
        }
        if (j3 < 0) {
            if (Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) > 0) {
                return ULong.m1822constructorimpl(j2 + m1973x3271d0aa(j, j2, ULong.m1822constructorimpl(-j3)));
            }
            return j2;
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-Nkh28Cs, reason: not valid java name */
    public static final int m1971getProgressionLastElementNkh28Cs(int i, int i2, int i3) {
        if (i3 > 0) {
            if (Integer.compare(i ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2) < 0) {
                return UInt.m1798constructorimpl(i2 - m1972xfbe0c504(i2, i, UInt.m1798constructorimpl(i3)));
            }
            return i2;
        }
        if (i3 < 0) {
            if (Integer.compare(i ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2) > 0) {
                return UInt.m1798constructorimpl(m1972xfbe0c504(i, i2, UInt.m1798constructorimpl(-i3)) + i2);
            }
            return i2;
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final int m1972xfbe0c504(int i, int i2, int i3) {
        long j = i3 & 4294967295L;
        int i4 = (int) ((i & 4294967295L) % j);
        int i5 = (int) ((i2 & 4294967295L) % j);
        int compare = Integer.compare(i4 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i5);
        int m1798constructorimpl = UInt.m1798constructorimpl(i4 - i5);
        if (compare < 0) {
            return UInt.m1798constructorimpl(m1798constructorimpl + i3);
        }
        return m1798constructorimpl;
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final long m1973x3271d0aa(long j, long j2, long j3) {
        long j4;
        long j5;
        long j6;
        long j7 = 0;
        if (j3 < 0) {
            if ((j ^ Long.MIN_VALUE) < (j3 ^ Long.MIN_VALUE)) {
                j5 = j;
            } else {
                j5 = j - j3;
            }
        } else if (j >= 0) {
            j5 = j % j3;
        } else {
            long j8 = j - ((((j >>> 1) / j3) << 1) * j3);
            if ((j8 ^ Long.MIN_VALUE) >= (j3 ^ Long.MIN_VALUE)) {
                j4 = j3;
            } else {
                j4 = 0;
            }
            j5 = j8 - j4;
        }
        if (j3 < 0) {
            if ((j2 ^ Long.MIN_VALUE) < (j3 ^ Long.MIN_VALUE)) {
                j6 = j2;
            } else {
                j6 = j2 - j3;
            }
        } else if (j2 >= 0) {
            j6 = j2 % j3;
        } else {
            long j9 = j2 - ((((j2 >>> 1) / j3) << 1) * j3);
            if ((j9 ^ Long.MIN_VALUE) >= (j3 ^ Long.MIN_VALUE)) {
                j7 = j3;
            }
            j6 = j9 - j7;
        }
        int compare = Long.compare(j5 ^ Long.MIN_VALUE, j6 ^ Long.MIN_VALUE);
        long m1822constructorimpl = ULong.m1822constructorimpl(j5 - j6);
        if (compare < 0) {
            return ULong.m1822constructorimpl(m1822constructorimpl + j3);
        }
        return m1822constructorimpl;
    }
}
