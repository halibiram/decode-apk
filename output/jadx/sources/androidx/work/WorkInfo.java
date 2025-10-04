package androidx.work;

import androidx.annotation.IntRange;
import androidx.annotation.RequiresApi;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 12\u00020\u0001:\u0003123B\u0081\u0001\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0016\u001a\u00020\r¢\u0006\u0002\u0010\u0017J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010/\u001a\u00020\rH\u0016J\b\u00100\u001a\u00020\bH\u0016R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u000e\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0015\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001fR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\"R\u0013\u0010\f\u001a\u00020\r8\u0007¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0013\u0010\u0016\u001a\u00020\r8\u0007¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001bR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+¨\u00064"}, d2 = {"Landroidx/work/WorkInfo;", "", "id", "Ljava/util/UUID;", "state", "Landroidx/work/WorkInfo$State;", "tags", "", "", "outputData", "Landroidx/work/Data;", "progress", "runAttemptCount", "", "generation", "constraints", "Landroidx/work/Constraints;", "initialDelayMillis", "", "periodicityInfo", "Landroidx/work/WorkInfo$PeriodicityInfo;", "nextScheduleTimeMillis", "stopReason", "(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Ljava/util/Set;Landroidx/work/Data;Landroidx/work/Data;IILandroidx/work/Constraints;JLandroidx/work/WorkInfo$PeriodicityInfo;JI)V", "getConstraints", "()Landroidx/work/Constraints;", "getGeneration", "()I", "getId", "()Ljava/util/UUID;", "getInitialDelayMillis", "()J", "getNextScheduleTimeMillis", "getOutputData", "()Landroidx/work/Data;", "getPeriodicityInfo", "()Landroidx/work/WorkInfo$PeriodicityInfo;", "getProgress", "getRunAttemptCount", "getState", "()Landroidx/work/WorkInfo$State;", "getStopReason", "getTags", "()Ljava/util/Set;", "equals", "", "other", "hashCode", "toString", "Companion", "PeriodicityInfo", "State", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WorkInfo {
    public static final int STOP_REASON_APP_STANDBY = 12;
    public static final int STOP_REASON_BACKGROUND_RESTRICTION = 11;
    public static final int STOP_REASON_CANCELLED_BY_APP = 1;
    public static final int STOP_REASON_CONSTRAINT_BATTERY_NOT_LOW = 5;
    public static final int STOP_REASON_CONSTRAINT_CHARGING = 6;
    public static final int STOP_REASON_CONSTRAINT_CONNECTIVITY = 7;
    public static final int STOP_REASON_CONSTRAINT_DEVICE_IDLE = 8;
    public static final int STOP_REASON_CONSTRAINT_STORAGE_NOT_LOW = 9;
    public static final int STOP_REASON_DEVICE_STATE = 4;
    public static final int STOP_REASON_ESTIMATED_APP_LAUNCH_TIME_CHANGED = 15;
    public static final int STOP_REASON_FOREGROUND_SERVICE_TIMEOUT = -128;
    public static final int STOP_REASON_NOT_STOPPED = -256;
    public static final int STOP_REASON_PREEMPT = 2;
    public static final int STOP_REASON_QUOTA = 10;
    public static final int STOP_REASON_SYSTEM_PROCESSING = 14;
    public static final int STOP_REASON_TIMEOUT = 3;
    public static final int STOP_REASON_UNKNOWN = -512;
    public static final int STOP_REASON_USER = 13;

    @NotNull
    private final Constraints constraints;
    private final int generation;

    @NotNull
    private final UUID id;
    private final long initialDelayMillis;
    private final long nextScheduleTimeMillis;

    @NotNull
    private final Data outputData;

    @Nullable
    private final PeriodicityInfo periodicityInfo;

    @NotNull
    private final Data progress;
    private final int runAttemptCount;

    @NotNull
    private final State state;
    private final int stopReason;

    @NotNull
    private final Set<String> tags;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0010"}, d2 = {"Landroidx/work/WorkInfo$PeriodicityInfo;", "", "repeatIntervalMillis", "", "flexIntervalMillis", "(JJ)V", "getFlexIntervalMillis", "()J", "getRepeatIntervalMillis", "equals", "", "other", "hashCode", "", "toString", "", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class PeriodicityInfo {
        private final long flexIntervalMillis;
        private final long repeatIntervalMillis;

        public PeriodicityInfo(long j, long j2) {
            this.repeatIntervalMillis = j;
            this.flexIntervalMillis = j2;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (other == null || !Intrinsics.areEqual(PeriodicityInfo.class, other.getClass())) {
                return false;
            }
            PeriodicityInfo periodicityInfo = (PeriodicityInfo) other;
            if (periodicityInfo.repeatIntervalMillis == this.repeatIntervalMillis && periodicityInfo.flexIntervalMillis == this.flexIntervalMillis) {
                return true;
            }
            return false;
        }

        public final long getFlexIntervalMillis() {
            return this.flexIntervalMillis;
        }

        public final long getRepeatIntervalMillis() {
            return this.repeatIntervalMillis;
        }

        public int hashCode() {
            long j = this.repeatIntervalMillis;
            int i = ((int) (j ^ (j >>> 32))) * 31;
            long j2 = this.flexIntervalMillis;
            return i + ((int) (j2 ^ (j2 >>> 32)));
        }

        @NotNull
        public String toString() {
            return "PeriodicityInfo{repeatIntervalMillis=" + this.repeatIntervalMillis + ", flexIntervalMillis=" + this.flexIntervalMillis + '}';
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Landroidx/work/WorkInfo$State;", "", "(Ljava/lang/String;I)V", "isFinished", "", "()Z", "ENQUEUED", DebugCoroutineInfoImplKt.RUNNING, "SUCCEEDED", "FAILED", "BLOCKED", "CANCELLED", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public enum State {
        ENQUEUED,
        RUNNING,
        SUCCEEDED,
        FAILED,
        BLOCKED,
        CANCELLED;

        public final boolean isFinished() {
            if (this != SUCCEEDED && this != FAILED && this != CANCELLED) {
                return false;
            }
            return true;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WorkInfo(@NotNull UUID id, @NotNull State state, @NotNull Set<String> tags) {
        this(id, state, tags, null, null, 0, 0, null, 0L, null, 0L, 0, 4088, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(WorkInfo.class, other.getClass())) {
            return false;
        }
        WorkInfo workInfo = (WorkInfo) other;
        if (this.runAttemptCount != workInfo.runAttemptCount || this.generation != workInfo.generation || !Intrinsics.areEqual(this.id, workInfo.id) || this.state != workInfo.state || !Intrinsics.areEqual(this.outputData, workInfo.outputData) || !Intrinsics.areEqual(this.constraints, workInfo.constraints) || this.initialDelayMillis != workInfo.initialDelayMillis || !Intrinsics.areEqual(this.periodicityInfo, workInfo.periodicityInfo) || this.nextScheduleTimeMillis != workInfo.nextScheduleTimeMillis || this.stopReason != workInfo.stopReason || !Intrinsics.areEqual(this.tags, workInfo.tags)) {
            return false;
        }
        return Intrinsics.areEqual(this.progress, workInfo.progress);
    }

    @NotNull
    public final Constraints getConstraints() {
        return this.constraints;
    }

    public final int getGeneration() {
        return this.generation;
    }

    @NotNull
    public final UUID getId() {
        return this.id;
    }

    public final long getInitialDelayMillis() {
        return this.initialDelayMillis;
    }

    public final long getNextScheduleTimeMillis() {
        return this.nextScheduleTimeMillis;
    }

    @NotNull
    public final Data getOutputData() {
        return this.outputData;
    }

    @Nullable
    public final PeriodicityInfo getPeriodicityInfo() {
        return this.periodicityInfo;
    }

    @NotNull
    public final Data getProgress() {
        return this.progress;
    }

    @IntRange(from = 0)
    public final int getRunAttemptCount() {
        return this.runAttemptCount;
    }

    @NotNull
    public final State getState() {
        return this.state;
    }

    @RequiresApi(31)
    public final int getStopReason() {
        return this.stopReason;
    }

    @NotNull
    public final Set<String> getTags() {
        return this.tags;
    }

    public int hashCode() {
        int i;
        int hashCode = (this.constraints.hashCode() + ((((((this.progress.hashCode() + ((this.tags.hashCode() + ((this.outputData.hashCode() + ((this.state.hashCode() + (this.id.hashCode() * 31)) * 31)) * 31)) * 31)) * 31) + this.runAttemptCount) * 31) + this.generation) * 31)) * 31;
        long j = this.initialDelayMillis;
        int i2 = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        PeriodicityInfo periodicityInfo = this.periodicityInfo;
        if (periodicityInfo != null) {
            i = periodicityInfo.hashCode();
        } else {
            i = 0;
        }
        int i3 = (i2 + i) * 31;
        long j2 = this.nextScheduleTimeMillis;
        return ((i3 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.stopReason;
    }

    @NotNull
    public String toString() {
        return "WorkInfo{id='" + this.id + "', state=" + this.state + ", outputData=" + this.outputData + ", tags=" + this.tags + ", progress=" + this.progress + ", runAttemptCount=" + this.runAttemptCount + ", generation=" + this.generation + ", constraints=" + this.constraints + ", initialDelayMillis=" + this.initialDelayMillis + ", periodicityInfo=" + this.periodicityInfo + ", nextScheduleTimeMillis=" + this.nextScheduleTimeMillis + "}, stopReason=" + this.stopReason;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WorkInfo(@NotNull UUID id, @NotNull State state, @NotNull Set<String> tags, @NotNull Data outputData) {
        this(id, state, tags, outputData, null, 0, 0, null, 0L, null, 0L, 0, 4080, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WorkInfo(@NotNull UUID id, @NotNull State state, @NotNull Set<String> tags, @NotNull Data outputData, @NotNull Data progress) {
        this(id, state, tags, outputData, progress, 0, 0, null, 0L, null, 0L, 0, 4064, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WorkInfo(@NotNull UUID id, @NotNull State state, @NotNull Set<String> tags, @NotNull Data outputData, @NotNull Data progress, int i) {
        this(id, state, tags, outputData, progress, i, 0, null, 0L, null, 0L, 0, 4032, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WorkInfo(@NotNull UUID id, @NotNull State state, @NotNull Set<String> tags, @NotNull Data outputData, @NotNull Data progress, int i, int i2) {
        this(id, state, tags, outputData, progress, i, i2, null, 0L, null, 0L, 0, Utf8.MASK_2BYTES, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WorkInfo(@NotNull UUID id, @NotNull State state, @NotNull Set<String> tags, @NotNull Data outputData, @NotNull Data progress, int i, int i2, @NotNull Constraints constraints) {
        this(id, state, tags, outputData, progress, i, i2, constraints, 0L, null, 0L, 0, 3840, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WorkInfo(@NotNull UUID id, @NotNull State state, @NotNull Set<String> tags, @NotNull Data outputData, @NotNull Data progress, int i, int i2, @NotNull Constraints constraints, long j) {
        this(id, state, tags, outputData, progress, i, i2, constraints, j, null, 0L, 0, 3584, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WorkInfo(@NotNull UUID id, @NotNull State state, @NotNull Set<String> tags, @NotNull Data outputData, @NotNull Data progress, int i, int i2, @NotNull Constraints constraints, long j, @Nullable PeriodicityInfo periodicityInfo) {
        this(id, state, tags, outputData, progress, i, i2, constraints, j, periodicityInfo, 0L, 0, 3072, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WorkInfo(@NotNull UUID id, @NotNull State state, @NotNull Set<String> tags, @NotNull Data outputData, @NotNull Data progress, int i, int i2, @NotNull Constraints constraints, long j, @Nullable PeriodicityInfo periodicityInfo, long j2) {
        this(id, state, tags, outputData, progress, i, i2, constraints, j, periodicityInfo, j2, 0, 2048, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
    }

    @JvmOverloads
    public WorkInfo(@NotNull UUID id, @NotNull State state, @NotNull Set<String> tags, @NotNull Data outputData, @NotNull Data progress, int i, int i2, @NotNull Constraints constraints, long j, @Nullable PeriodicityInfo periodicityInfo, long j2, int i3) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(outputData, "outputData");
        Intrinsics.checkNotNullParameter(progress, "progress");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        this.id = id;
        this.state = state;
        this.tags = tags;
        this.outputData = outputData;
        this.progress = progress;
        this.runAttemptCount = i;
        this.generation = i2;
        this.constraints = constraints;
        this.initialDelayMillis = j;
        this.periodicityInfo = periodicityInfo;
        this.nextScheduleTimeMillis = j2;
        this.stopReason = i3;
    }

    public /* synthetic */ WorkInfo(UUID uuid, State state, Set set, Data data, Data data2, int i, int i2, Constraints constraints, long j, PeriodicityInfo periodicityInfo, long j2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(uuid, state, set, (i4 & 8) != 0 ? Data.EMPTY : data, (i4 & 16) != 0 ? Data.EMPTY : data2, (i4 & 32) != 0 ? 0 : i, (i4 & 64) != 0 ? 0 : i2, (i4 & 128) != 0 ? Constraints.NONE : constraints, (i4 & 256) != 0 ? 0L : j, (i4 & 512) != 0 ? null : periodicityInfo, (i4 & 1024) != 0 ? Long.MAX_VALUE : j2, (i4 & 2048) != 0 ? -256 : i3);
    }
}
