package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import defpackage.C0834x4a7fe0f8;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.ScopeCoroutine;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0001\u001a\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0080\u0010\u001aK\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\n0\t\"\u0004\b\u0000\u0010\n2/\b\u0005\u0010\u000b\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\n0\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f¢\u0006\u0002\b\u0010H\u0081\b¢\u0006\u0002\u0010\u0011¨\u0006\u0012"}, d2 = {"checkContext", "", "Lkotlinx/coroutines/flow/internal/SafeCollector;", "currentContext", "Lkotlin/coroutines/CoroutineContext;", "transitiveCoroutineParent", "Lkotlinx/coroutines/Job;", "collectJob", "unsafeFlow", "Lkotlinx/coroutines/flow/Flow;", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SafeCollector_commonKt {
    @JvmName(name = "checkContext")
    public static final void checkContext(@NotNull SafeCollector<?> safeCollector, @NotNull CoroutineContext coroutineContext) {
        if (((Number) coroutineContext.fold(0, new C0834x4a7fe0f8(safeCollector, 1))).intValue() == safeCollector.collectContextSize) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + safeCollector.collectContext + ",\n\t\tbut emission happened in " + coroutineContext + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    @Nullable
    public static final Job transitiveCoroutineParent(@Nullable Job job, @Nullable Job job2) {
        while (job != null) {
            if (job == job2) {
                return job;
            }
            if (!(job instanceof ScopeCoroutine)) {
                return job;
            }
            job = ((ScopeCoroutine) job).getParent();
        }
        return null;
    }

    @PublishedApi
    @NotNull
    public static final <T> Flow<T> unsafeFlow(@BuilderInference @NotNull Function2<? super FlowCollector<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new SafeCollector_commonKt$unsafeFlow$1(function2);
    }
}
