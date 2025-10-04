package androidx.work.impl.utils;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Data;
import androidx.work.ListenableFutureKt;
import androidx.work.Logger;
import androidx.work.ProgressUpdater;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkProgress;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WorkProgressUpdater;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import kotlin.jvm.functions.Function0;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class WorkProgressUpdater implements ProgressUpdater {
    static final String TAG = Logger.tagWithPrefix("WorkProgressUpdater");
    final TaskExecutor mTaskExecutor;
    final WorkDatabase mWorkDatabase;

    public WorkProgressUpdater(@NonNull WorkDatabase workDatabase, @NonNull TaskExecutor taskExecutor) {
        this.mWorkDatabase = workDatabase;
        this.mTaskExecutor = taskExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void lambda$updateProgress$0(UUID uuid, Data data) {
        String uuid2 = uuid.toString();
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, "Updating progress for " + uuid + " (" + data + ")");
        this.mWorkDatabase.beginTransaction();
        try {
            WorkSpec workSpec = this.mWorkDatabase.workSpecDao().getWorkSpec(uuid2);
            if (workSpec != null) {
                if (workSpec.state == WorkInfo.State.RUNNING) {
                    this.mWorkDatabase.workProgressDao().insert(new WorkProgress(uuid2, data));
                } else {
                    Logger.get().warning(str, "Ignoring setProgressAsync(...). WorkSpec (" + uuid2 + ") is not in a RUNNING state.");
                }
                this.mWorkDatabase.setTransactionSuccessful();
                this.mWorkDatabase.endTransaction();
                return null;
            }
            throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
        } catch (Throwable th) {
            try {
                Logger.get().error(TAG, "Error updating Worker progress", th);
                throw th;
            } catch (Throwable th2) {
                this.mWorkDatabase.endTransaction();
                throw th2;
            }
        }
    }

    @Override // androidx.work.ProgressUpdater
    @NonNull
    public ListenableFuture<Void> updateProgress(@NonNull Context context, @NonNull final UUID uuid, @NonNull final Data data) {
        return ListenableFutureKt.executeAsync(this.mTaskExecutor.getSerialTaskExecutor(), "updateProgress", new Function0() { // from class: 땳딀듽뒾뒋딸딸둥듬돳뒉딤듻땬땩듌뒹디따둠뒷둘둔두뒈듬땱뒀뒼돶뒀뒋둬땝땅돵듬땡둑뒹딁딁뎸듔돴땀땹뎨뒘뒈뎨땹듰됴두딝디땫땰땳디딎둘될됩됨땪땪둣듟듻땨듬땋딐됫둣딞땯딨딀땐득뎻땝땻땸뒘됴디돷돸딠뒻땰됩드드둡딄듰뒝뎰딜땤된땁듌딄뒼땻땟됨딁딌딝듨딐됴듽딜땭듰딞땍뎽듸딄됨땪
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Void lambda$updateProgress$0;
                lambda$updateProgress$0 = WorkProgressUpdater.this.lambda$updateProgress$0(uuid, data);
                return lambda$updateProgress$0;
            }
        });
    }
}
