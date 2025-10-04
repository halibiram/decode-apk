package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import defpackage.C0616xa9671601;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a)\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a\u001e\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b\u0000\u0010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u001a\u001f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b\u0000\u0010\u00022\u0006\u0010\n\u001a\u0002H\u0002¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"completeWith", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CompletableDeferred;", "result", "Lkotlin/Result;", "(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Object;)Z", "CompletableDeferred", "parent", "Lkotlinx/coroutines/Job;", "value", "(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCompletableDeferred.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompletableDeferred.kt\nkotlinx/coroutines/CompletableDeferredKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1#2:92\n*E\n"})
/* loaded from: classes3.dex */
public final class CompletableDeferredKt {
    @NotNull
    public static final <T> CompletableDeferred<T> CompletableDeferred(@Nullable Job job) {
        return new C0616xa9671601(job);
    }

    public static /* synthetic */ CompletableDeferred CompletableDeferred$default(Job job, int i, Object obj) {
        if ((i & 1) != 0) {
            job = null;
        }
        return CompletableDeferred(job);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean completeWith(@NotNull CompletableDeferred<T> completableDeferred, @NotNull Object obj) {
        Throwable m1767exceptionOrNullimpl = Result.m1767exceptionOrNullimpl(obj);
        if (m1767exceptionOrNullimpl == null) {
            return completableDeferred.complete(obj);
        }
        return completableDeferred.completeExceptionally(m1767exceptionOrNullimpl);
    }

    @NotNull
    public static final <T> CompletableDeferred<T> CompletableDeferred(T t) {
        C0616xa9671601 c0616xa9671601 = new C0616xa9671601(null);
        c0616xa9671601.makeCompleting$kotlinx_coroutines_core(t);
        return c0616xa9671601;
    }
}
