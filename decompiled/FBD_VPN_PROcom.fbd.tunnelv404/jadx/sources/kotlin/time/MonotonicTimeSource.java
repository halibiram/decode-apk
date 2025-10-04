package kotlin.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.time.TimeSource;
import org.jetbrains.annotations.NotNull;

@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\bÁ\u0002\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0015\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\n¢\u0006\u0004\b\u0014\u0010\u0011¨\u0006\u0016"}, d2 = {"Lkotlin/time/MonotonicTimeSource;", "Lkotlin/time/TimeSource$WithComparableMarks;", "", "toString", "()Ljava/lang/String;", "Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "markNow-z9LOYto", "()J", "markNow", "timeMark", "Lkotlin/time/Duration;", "elapsedFrom-6eNON_k", "(J)J", "elapsedFrom", "one", "another", "differenceBetween-fRLX17w", "(JJ)J", "differenceBetween", TypedValues.TransitionType.S_DURATION, "adjustReading-6QKq23U", "adjustReading", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class MonotonicTimeSource implements TimeSource.WithComparableMarks {

    @NotNull
    public static final MonotonicTimeSource INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final long f1718xfbe0c504 = System.nanoTime();

    /* renamed from: adjustReading-6QKq23U, reason: not valid java name */
    public final long m2177adjustReading6QKq23U(long timeMark, long duration) {
        return TimeSource.Monotonic.ValueTimeMark.m2190constructorimpl(LongSaturatedMathKt.m2174saturatingAddNuflL3o(timeMark, DurationUnit.NANOSECONDS, duration));
    }

    /* renamed from: differenceBetween-fRLX17w, reason: not valid java name */
    public final long m2178differenceBetweenfRLX17w(long one, long another) {
        return LongSaturatedMathKt.saturatingOriginsDiff(one, another, DurationUnit.NANOSECONDS);
    }

    /* renamed from: elapsedFrom-6eNON_k, reason: not valid java name */
    public final long m2179elapsedFrom6eNON_k(long timeMark) {
        return LongSaturatedMathKt.saturatingDiff(System.nanoTime() - f1718xfbe0c504, timeMark, DurationUnit.NANOSECONDS);
    }

    @Override // kotlin.time.TimeSource.WithComparableMarks, kotlin.time.TimeSource
    public /* bridge */ /* synthetic */ ComparableTimeMark markNow() {
        return TimeSource.Monotonic.ValueTimeMark.m2187boximpl(m2180markNowz9LOYto());
    }

    /* renamed from: markNow-z9LOYto, reason: not valid java name */
    public long m2180markNowz9LOYto() {
        return TimeSource.Monotonic.ValueTimeMark.m2190constructorimpl(System.nanoTime() - f1718xfbe0c504);
    }

    @NotNull
    public String toString() {
        return "TimeSource(System.nanoTime())";
    }

    @Override // kotlin.time.TimeSource
    public /* bridge */ /* synthetic */ TimeMark markNow() {
        return TimeSource.Monotonic.ValueTimeMark.m2187boximpl(m2180markNowz9LOYto());
    }
}
