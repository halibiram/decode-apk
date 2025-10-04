package androidx.core.os;

import android.content.Context;
import android.os.ProfilingResult;
import androidx.annotation.RequiresApi;
import defpackage.AbstractC1049x75af593;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0007\u001a&\u0010\n\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u0013H\u0007\u001a2\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0013H\u0007\u001a\u001e\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u0013H\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {Profiling.KEY_BUFFER_FILL_POLICY, "", Profiling.KEY_DURATION_MS, Profiling.KEY_FREQUENCY_HZ, Profiling.KEY_SAMPLING_INTERVAL_BYTES, Profiling.KEY_SIZE_KB, Profiling.KEY_TRACK_JAVA_ALLOCATIONS, "VALUE_BUFFER_FILL_POLICY_DISCARD", "", "VALUE_BUFFER_FILL_POLICY_RING_BUFFER", "registerForAllProfilingResults", "Lkotlinx/coroutines/flow/Flow;", "Landroid/os/ProfilingResult;", "context", "Landroid/content/Context;", "", "executor", "Ljava/util/concurrent/Executor;", "listener", "Ljava/util/function/Consumer;", "requestProfiling", "profilingRequest", "Landroidx/core/os/ProfilingRequest;", "unregisterForAllProfilingResults", "core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "Profiling")
/* loaded from: classes.dex */
public final class Profiling {

    @NotNull
    private static final String KEY_BUFFER_FILL_POLICY = "KEY_BUFFER_FILL_POLICY";

    @NotNull
    private static final String KEY_DURATION_MS = "KEY_DURATION_MS";

    @NotNull
    private static final String KEY_FREQUENCY_HZ = "KEY_FREQUENCY_HZ";

    @NotNull
    private static final String KEY_SAMPLING_INTERVAL_BYTES = "KEY_SAMPLING_INTERVAL_BYTES";

    @NotNull
    private static final String KEY_SIZE_KB = "KEY_SIZE_KB";

    @NotNull
    private static final String KEY_TRACK_JAVA_ALLOCATIONS = "KEY_TRACK_JAVA_ALLOCATIONS";
    private static final int VALUE_BUFFER_FILL_POLICY_DISCARD = 1;
    private static final int VALUE_BUFFER_FILL_POLICY_RING_BUFFER = 2;

    @RequiresApi(api = 35)
    @NotNull
    public static final Flow<ProfilingResult> registerForAllProfilingResults(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return FlowKt.callbackFlow(new Profiling$registerForAllProfilingResults$1(context, null));
    }

    @RequiresApi(api = 35)
    public static final void requestProfiling(@NotNull Context context, @NotNull ProfilingRequest profilingRequest, @Nullable Executor executor, @Nullable Consumer<ProfilingResult> consumer) {
        Object systemService;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(profilingRequest, "profilingRequest");
        systemService = context.getSystemService((Class<Object>) AbstractC1049x75af593.m3735x3271d0aa());
        AbstractC1049x75af593.m3734xfbe0c504(systemService).requestProfiling(profilingRequest.getProfilingType(), profilingRequest.getParams(), profilingRequest.getTag(), profilingRequest.getCancellationSignal(), executor, consumer);
    }

    @RequiresApi(api = 35)
    public static final void unregisterForAllProfilingResults(@NotNull Context context, @NotNull Consumer<ProfilingResult> listener) {
        Object systemService;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        systemService = context.getSystemService((Class<Object>) AbstractC1049x75af593.m3735x3271d0aa());
        AbstractC1049x75af593.m3734xfbe0c504(systemService).unregisterForAllProfilingResults(listener);
    }

    @RequiresApi(api = 35)
    public static final void registerForAllProfilingResults(@NotNull Context context, @NotNull Executor executor, @NotNull Consumer<ProfilingResult> listener) {
        Object systemService;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(listener, "listener");
        systemService = context.getSystemService((Class<Object>) AbstractC1049x75af593.m3735x3271d0aa());
        AbstractC1049x75af593.m3734xfbe0c504(systemService).registerForAllProfilingResults(executor, listener);
    }
}
