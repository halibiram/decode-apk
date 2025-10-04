package kotlinx.coroutines.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0892xc141c517;
import j$.time.Duration;
import j$.time.temporal.ChronoUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.selects.OnTimeoutKt;
import kotlinx.coroutines.selects.SelectBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00008\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0018\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0086@¢\u0006\u0004\b\u0003\u0010\u0004\u001a-\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0005*\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\u0007\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\b\u0010\t\u001a-\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\u0004\b\u0000\u0010\u0005*\b\u0012\u0004\u0012\u00028\u00000\u00062\u0006\u0010\n\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u000b\u0010\t\u001aC\u0010\u0012\u001a\u00020\u0002\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u0001\u001a\u00020\u00002\u001c\u0010\u0011\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000e¢\u0006\u0004\b\u0012\u0010\u0013\u001aT\u0010\u0017\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00052\u0006\u0010\u0001\u001a\u00020\u00002'\u0010\u0011\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0014¢\u0006\u0002\b\u0016H\u0086@\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\u0017\u0010\u0018\u001aI\u0010\u0019\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00052\u0006\u0010\u0001\u001a\u00020\u00002'\u0010\u0011\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0014¢\u0006\u0002\b\u0016H\u0086@¢\u0006\u0004\b\u0019\u0010\u0018¨\u0006\u001a"}, d2 = {"j$/time/Duration", TypedValues.TransitionType.S_DURATION, "", "delay", "(Lj$/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/Flow;", "timeout", "debounce", "(Lkotlinx/coroutines/flow/Flow;Lj$/time/Duration;)Lkotlinx/coroutines/flow/Flow;", TypedValues.CycleType.S_WAVE_PERIOD, "sample", "R", "Lkotlinx/coroutines/selects/SelectBuilder;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "block", "onTimeout", "(Lkotlinx/coroutines/selects/SelectBuilder;Lj$/time/Duration;Lkotlin/jvm/functions/Function1;)V", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/ExtensionFunctionType;", "withTimeout", "(Lj$/time/Duration;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withTimeoutOrNull", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class TimeKt {
    @FlowPreview
    @NotNull
    public static final <T> Flow<T> debounce(@NotNull Flow<? extends T> flow, @NotNull Duration duration) {
        return FlowKt.debounce(flow, m2382xfbe0c504(duration));
    }

    @Nullable
    public static final Object delay(@NotNull Duration duration, @NotNull Continuation<? super Unit> continuation) {
        Object delay = DelayKt.delay(m2382xfbe0c504(duration), continuation);
        if (delay == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return delay;
        }
        return Unit.INSTANCE;
    }

    public static final <R> void onTimeout(@NotNull SelectBuilder<? super R> selectBuilder, @NotNull Duration duration, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        OnTimeoutKt.onTimeout(selectBuilder, m2382xfbe0c504(duration), function1);
    }

    @FlowPreview
    @NotNull
    public static final <T> Flow<T> sample(@NotNull Flow<? extends T> flow, @NotNull Duration duration) {
        return FlowKt.sample(flow, m2382xfbe0c504(duration));
    }

    @Nullable
    public static final <T> Object withTimeout(@NotNull Duration duration, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return TimeoutKt.withTimeout(m2382xfbe0c504(duration), function2, continuation);
    }

    @Nullable
    public static final <T> Object withTimeoutOrNull(@NotNull Duration duration, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return TimeoutKt.withTimeoutOrNull(m2382xfbe0c504(duration), function2, continuation);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final long m2382xfbe0c504(Duration duration) {
        if (duration.compareTo(Duration.ZERO) <= 0) {
            return 0L;
        }
        if (duration.compareTo(ChronoUnit.MILLIS.getDuration()) <= 0) {
            return 1L;
        }
        if (duration.getSeconds() >= 9223372036854775L && (duration.getSeconds() != 9223372036854775L || duration.getNano() >= 807000000)) {
            return Long.MAX_VALUE;
        }
        return duration.toMillis();
    }
}
