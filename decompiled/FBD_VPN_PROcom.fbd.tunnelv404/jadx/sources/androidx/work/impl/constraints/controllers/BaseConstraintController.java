package androidx.work.impl.constraints.controllers;

import androidx.exifinterface.media.ExifInterface;
import androidx.work.Constraints;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\u0015\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u0018\u0010\u0006\u001a\u00020\u0007X¤\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Landroidx/work/impl/constraints/controllers/BaseConstraintController;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/work/impl/constraints/controllers/ConstraintController;", "tracker", "Landroidx/work/impl/constraints/trackers/ConstraintTracker;", "(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V", "reason", "", "getReason$annotations", "()V", "getReason", "()I", "isConstrained", "", "value", "(Ljava/lang/Object;)Z", "isCurrentlyConstrained", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "track", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/work/impl/constraints/ConstraintsState;", "constraints", "Landroidx/work/Constraints;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class BaseConstraintController<T> implements ConstraintController {

    @NotNull
    private final ConstraintTracker<T> tracker;

    public BaseConstraintController(@NotNull ConstraintTracker<T> tracker) {
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        this.tracker = tracker;
    }

    public static /* synthetic */ void getReason$annotations() {
    }

    public abstract int getReason();

    public boolean isConstrained(T value) {
        return false;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean isCurrentlyConstrained(@NotNull WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        if (hasConstraint(workSpec) && isConstrained(this.tracker.readSystemState())) {
            return true;
        }
        return false;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    @NotNull
    public Flow<ConstraintsState> track(@NotNull Constraints constraints) {
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        return FlowKt.callbackFlow(new BaseConstraintController$track$1(this, null));
    }
}
