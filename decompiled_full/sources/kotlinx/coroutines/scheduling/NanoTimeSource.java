package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/scheduling/NanoTimeSource;", "Lkotlinx/coroutines/scheduling/SchedulerTimeSource;", "", "nanoTime", "()J", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class NanoTimeSource extends SchedulerTimeSource {

    @NotNull
    public static final NanoTimeSource INSTANCE = new SchedulerTimeSource();

    @Override // kotlinx.coroutines.scheduling.SchedulerTimeSource
    public long nanoTime() {
        return System.nanoTime();
    }
}
