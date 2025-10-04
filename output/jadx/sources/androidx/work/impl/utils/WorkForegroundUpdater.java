package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.ForegroundInfo;
import androidx.work.ForegroundUpdater;
import androidx.work.ListenableFutureKt;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import kotlin.jvm.functions.Function0;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class WorkForegroundUpdater implements ForegroundUpdater {
    private static final String TAG = Logger.tagWithPrefix("WMFgUpdater");
    final ForegroundProcessor mForegroundProcessor;
    private final TaskExecutor mTaskExecutor;
    final WorkSpecDao mWorkSpecDao;

    @SuppressLint({"LambdaLast"})
    public WorkForegroundUpdater(@NonNull WorkDatabase workDatabase, @NonNull ForegroundProcessor foregroundProcessor, @NonNull TaskExecutor taskExecutor) {
        this.mForegroundProcessor = foregroundProcessor;
        this.mTaskExecutor = taskExecutor;
        this.mWorkSpecDao = workDatabase.workSpecDao();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void lambda$setForegroundAsync$0(UUID uuid, ForegroundInfo foregroundInfo, Context context) {
        String uuid2 = uuid.toString();
        WorkSpec workSpec = this.mWorkSpecDao.getWorkSpec(uuid2);
        if (workSpec != null && !workSpec.state.isFinished()) {
            this.mForegroundProcessor.startForeground(uuid2, foregroundInfo);
            context.startService(SystemForegroundDispatcher.createNotifyIntent(context, WorkSpecKt.generationalId(workSpec), foregroundInfo));
            return null;
        }
        throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
    }

    @Override // androidx.work.ForegroundUpdater
    @NonNull
    public ListenableFuture<Void> setForegroundAsync(@NonNull final Context context, @NonNull final UUID uuid, @NonNull final ForegroundInfo foregroundInfo) {
        return ListenableFutureKt.executeAsync(this.mTaskExecutor.getSerialTaskExecutor(), "setForegroundAsync", new Function0() { // from class: 땳돝땰듼되딻땲뒝딄딅듔땭딜땯딀돠둠뒹뒬뎨돵뎻땃딝땅둡땀드땡디뒾땐땭딤땀둠딞땡돳땋듸돝듌듽듐돼뎨돝딌땰듐딄뒀땤돵둔드됫땐뎠땫뎡땣딅둑돵땵뒘둬둠땻돰돷딃뒨딄땥들돤돛땍디딤딸뎻두돠땜딞뎨듼딠돛딝듽땯딟뒈딀뎡둘뒷땯땣땀득두뒾땹듼딎딨딃뎻땹뒻뎬땩돴땡땄돛돰딠뒋땸땵뒾듬듟
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Void lambda$setForegroundAsync$0;
                lambda$setForegroundAsync$0 = WorkForegroundUpdater.this.lambda$setForegroundAsync$0(uuid, foregroundInfo, context);
                return lambda$setForegroundAsync$0;
            }
        });
    }
}
