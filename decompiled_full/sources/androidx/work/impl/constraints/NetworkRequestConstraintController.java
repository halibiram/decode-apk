package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import androidx.annotation.RequiresApi;
import androidx.work.Constraints;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.model.WorkSpec;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;

@RequiresApi(28)
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Landroidx/work/impl/constraints/NetworkRequestConstraintController;", "Landroidx/work/impl/constraints/controllers/ConstraintController;", "connManager", "Landroid/net/ConnectivityManager;", "timeoutMs", "", "(Landroid/net/ConnectivityManager;J)V", "hasConstraint", "", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "isCurrentlyConstrained", "track", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/work/impl/constraints/ConstraintsState;", "constraints", "Landroidx/work/Constraints;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NetworkRequestConstraintController implements ConstraintController {

    @NotNull
    private final ConnectivityManager connManager;
    private final long timeoutMs;

    public NetworkRequestConstraintController(@NotNull ConnectivityManager connManager, long j) {
        Intrinsics.checkNotNullParameter(connManager, "connManager");
        this.connManager = connManager;
        this.timeoutMs = j;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean hasConstraint(@NotNull WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        if (workSpec.constraints.getRequiredNetworkRequest() != null) {
            return true;
        }
        return false;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean isCurrentlyConstrained(@NotNull WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        if (!hasConstraint(workSpec)) {
            return false;
        }
        throw new IllegalStateException("isCurrentlyConstrained() must never be called onNetworkRequestConstraintController. isCurrentlyConstrained() is called only on older platforms where NetworkRequest isn't supported");
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    @NotNull
    public Flow<ConstraintsState> track(@NotNull Constraints constraints) {
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        return FlowKt.callbackFlow(new NetworkRequestConstraintController$track$1(constraints, this, null));
    }

    public /* synthetic */ NetworkRequestConstraintController(ConnectivityManager connectivityManager, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(connectivityManager, (i & 2) != 0 ? 1000L : j);
    }
}
