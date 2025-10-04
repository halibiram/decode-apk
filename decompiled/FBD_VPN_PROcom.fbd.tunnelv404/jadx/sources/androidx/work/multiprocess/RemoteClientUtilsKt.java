package androidx.work.multiprocess;

import androidx.arch.core.util.Function;
import androidx.concurrent.futures.SuspendToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ExecutorsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a@\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0003\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00030\u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000¨\u0006\b"}, d2 = {"map", "Lcom/google/common/util/concurrent/ListenableFuture;", "O", "I", "transformation", "Landroidx/arch/core/util/Function;", "executor", "Ljava/util/concurrent/Executor;", "work-multiprocess_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RemoteClientUtilsKt {
    @NotNull
    public static final <I, O> ListenableFuture<O> map(@NotNull ListenableFuture<I> listenableFuture, @NotNull Function<I, O> transformation, @NotNull Executor executor) {
        Intrinsics.checkNotNullParameter(listenableFuture, "<this>");
        Intrinsics.checkNotNullParameter(transformation, "transformation");
        Intrinsics.checkNotNullParameter(executor, "executor");
        return SuspendToFutureAdapter.INSTANCE.launchFuture(ExecutorsKt.from(executor), false, new RemoteClientUtilsKt$map$1(transformation, listenableFuture, null));
    }
}
