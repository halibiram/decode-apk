package kotlin.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import org.jetbrains.annotations.NotNull;

@SinceKotlin(version = "1.9")
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u000f\u0010\u0002\u001a\u00020\u0003H&¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\n\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\tJ\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016¨\u0006\u000f"}, d2 = {"Lkotlin/time/TimeMark;", "", "elapsedNow", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "()J", "plus", TypedValues.TransitionType.S_DURATION, "plus-LRDsOJo", "(J)Lkotlin/time/TimeMark;", "minus", "minus-LRDsOJo", "hasPassedNow", "", "hasNotPassedNow", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalTime.class})
/* loaded from: classes3.dex */
public interface TimeMark {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static boolean hasNotPassedNow(@NotNull TimeMark timeMark) {
            return Duration.m2110isNegativeimpl(timeMark.mo2183elapsedNowUwyO8pc());
        }

        public static boolean hasPassedNow(@NotNull TimeMark timeMark) {
            return !Duration.m2110isNegativeimpl(timeMark.mo2183elapsedNowUwyO8pc());
        }

        @NotNull
        /* renamed from: minus-LRDsOJo, reason: not valid java name */
        public static TimeMark m2184minusLRDsOJo(@NotNull TimeMark timeMark, long j) {
            return timeMark.mo2085plusLRDsOJo(Duration.m2128unaryMinusUwyO8pc(j));
        }

        @NotNull
        /* renamed from: plus-LRDsOJo, reason: not valid java name */
        public static TimeMark m2185plusLRDsOJo(@NotNull TimeMark timeMark, long j) {
            return new C0302x1378447b(timeMark, j);
        }
    }

    /* renamed from: elapsedNow-UwyO8pc, reason: not valid java name */
    long mo2183elapsedNowUwyO8pc();

    boolean hasNotPassedNow();

    boolean hasPassedNow();

    @NotNull
    /* renamed from: minus-LRDsOJo */
    TimeMark mo2083minusLRDsOJo(long duration);

    @NotNull
    /* renamed from: plus-LRDsOJo */
    TimeMark mo2085plusLRDsOJo(long duration);
}
