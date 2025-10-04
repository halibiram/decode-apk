package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import androidx.annotation.RequiresApi;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@RequiresApi(21)
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Landroidx/work/impl/background/systemjob/JobScheduler21;", "", "()V", "getAllPendingJobs", "", "Landroid/app/job/JobInfo;", "jobScheduler", "Landroid/app/job/JobScheduler;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class JobScheduler21 {

    @NotNull
    public static final JobScheduler21 INSTANCE = new JobScheduler21();

    private JobScheduler21() {
    }

    @NotNull
    public final List<JobInfo> getAllPendingJobs(@NotNull JobScheduler jobScheduler) {
        Intrinsics.checkNotNullParameter(jobScheduler, "jobScheduler");
        List<JobInfo> allPendingJobs = jobScheduler.getAllPendingJobs();
        Intrinsics.checkNotNullExpressionValue(allPendingJobs, "jobScheduler.allPendingJobs");
        return allPendingJobs;
    }
}
