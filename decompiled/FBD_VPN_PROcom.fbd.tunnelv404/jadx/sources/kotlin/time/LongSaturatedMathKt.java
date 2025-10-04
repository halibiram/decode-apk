package kotlin.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.AbstractC0690xd52c7705;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a'\u0010\b\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a'\u0010\u000f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u000f\u0010\f\u001a\u0014\u0010\u0011\u001a\u00020\u0010*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"", "value", "Lkotlin/time/DurationUnit;", "unit", "Lkotlin/time/Duration;", TypedValues.TransitionType.S_DURATION, "saturatingAdd-NuflL3o", "(JLkotlin/time/DurationUnit;J)J", "saturatingAdd", "valueNs", "origin", "saturatingDiff", "(JJLkotlin/time/DurationUnit;)J", "origin1", "origin2", "saturatingOriginsDiff", "", "isSaturated", "(J)Z", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nlongSaturatedMath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,81:1\n80#1:82\n80#1:83\n80#1:84\n80#1:85\n80#1:86\n80#1:87\n*S KotlinDebug\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n14#1:82\n17#1:83\n36#1:84\n46#1:85\n53#1:86\n57#1:87\n*E\n"})
/* loaded from: classes3.dex */
public final class LongSaturatedMathKt {
    public static final boolean isSaturated(long j) {
        return ((j - 1) | 1) == Long.MAX_VALUE;
    }

    /* renamed from: saturatingAdd-NuflL3o, reason: not valid java name */
    public static final long m2174saturatingAddNuflL3o(long j, @NotNull DurationUnit unit, long j2) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        long m2123toLongimpl = Duration.m2123toLongimpl(j2, unit);
        if (((j - 1) | 1) == Long.MAX_VALUE) {
            if (Duration.m2109isInfiniteimpl(j2) && (j ^ m2123toLongimpl) < 0) {
                throw new IllegalArgumentException("Summing infinities of different signs");
            }
            return j;
        }
        if (((m2123toLongimpl - 1) | 1) == Long.MAX_VALUE) {
            long m2092divUwyO8pc = Duration.m2092divUwyO8pc(j2, 2);
            long m2123toLongimpl2 = Duration.m2123toLongimpl(m2092divUwyO8pc, unit);
            if ((1 | (m2123toLongimpl2 - 1)) != Long.MAX_VALUE) {
                return m2174saturatingAddNuflL3o(m2174saturatingAddNuflL3o(j, unit, m2092divUwyO8pc), unit, Duration.m2112minusLRDsOJo(j2, m2092divUwyO8pc));
            }
            return m2123toLongimpl2;
        }
        long j3 = j + m2123toLongimpl;
        if (((m2123toLongimpl ^ j3) & (j ^ j3)) < 0) {
            if (j >= 0) {
                return Long.MAX_VALUE;
            }
            return Long.MIN_VALUE;
        }
        return j3;
    }

    public static final long saturatingDiff(long j, long j2, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if ((1 | (j2 - 1)) == Long.MAX_VALUE) {
            return Duration.m2128unaryMinusUwyO8pc(m2175xfbe0c504(j2));
        }
        return m2176x3271d0aa(j, j2, unit);
    }

    public static final long saturatingOriginsDiff(long j, long j2, @NotNull DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (((j2 - 1) | 1) == Long.MAX_VALUE) {
            if (j == j2) {
                return Duration.INSTANCE.m2158getZEROUwyO8pc();
            }
            return Duration.m2128unaryMinusUwyO8pc(m2175xfbe0c504(j2));
        }
        if ((1 | (j - 1)) == Long.MAX_VALUE) {
            return m2175xfbe0c504(j);
        }
        return m2176x3271d0aa(j, j2, unit);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final long m2175xfbe0c504(long j) {
        Duration.Companion companion = Duration.INSTANCE;
        if (j < 0) {
            return companion.m2157getNEG_INFINITEUwyO8pc$kotlin_stdlib();
        }
        return companion.m2156getINFINITEUwyO8pc();
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final long m2176x3271d0aa(long j, long j2, DurationUnit durationUnit) {
        long j3 = j - j2;
        if (((j3 ^ j) & (~(j3 ^ j2))) < 0) {
            DurationUnit durationUnit2 = DurationUnit.MILLISECONDS;
            if (durationUnit.compareTo(durationUnit2) < 0) {
                long convertDurationUnit = AbstractC0690xd52c7705.convertDurationUnit(1L, durationUnit2, durationUnit);
                long j4 = (j / convertDurationUnit) - (j2 / convertDurationUnit);
                long j5 = (j % convertDurationUnit) - (j2 % convertDurationUnit);
                Duration.Companion companion = Duration.INSTANCE;
                return Duration.m2113plusLRDsOJo(DurationKt.toDuration(j4, durationUnit2), DurationKt.toDuration(j5, durationUnit));
            }
            return Duration.m2128unaryMinusUwyO8pc(m2175xfbe0c504(j3));
        }
        return DurationKt.toDuration(j3, durationUnit);
    }
}
