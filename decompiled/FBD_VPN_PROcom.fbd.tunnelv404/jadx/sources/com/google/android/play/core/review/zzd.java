package com.google.android.play.core.review;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.panda912.muddy.ObfuscatedString;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes2.dex */
public final class zzd implements ReviewManager {
    private final zzi zza;
    private final Handler zzb = new Handler(Looper.getMainLooper());

    public zzd(zzi zziVar) {
        this.zza = zziVar;
    }

    @Override // com.google.android.play.core.review.ReviewManager
    @NonNull
    public final Task<Void> launchReviewFlow(@NonNull Activity activity, @NonNull ReviewInfo reviewInfo) {
        if (reviewInfo.zzb()) {
            return Tasks.forResult(null);
        }
        Intent intent = new Intent(activity, (Class<?>) PlayCoreDialogWrapperActivity.class);
        intent.putExtra(new ObfuscatedString(new long[]{1819836558362234383L, 1854231747536801182L, 5327559005303998919L, -8718957527009433831L}).toString(), reviewInfo.zza());
        intent.putExtra(new ObfuscatedString(new long[]{-27544886414837266L, -874701790627026540L, -8919934720750222678L}).toString(), activity.getWindow().getDecorView().getWindowSystemUiVisibility());
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        intent.putExtra(new ObfuscatedString(new long[]{4512378400875994012L, 2872863057480928595L, 567285075950341437L}).toString(), new zzc(this, this.zzb, taskCompletionSource));
        activity.startActivity(intent);
        return taskCompletionSource.getTask();
    }

    @Override // com.google.android.play.core.review.ReviewManager
    @NonNull
    public final Task<ReviewInfo> requestReviewFlow() {
        return this.zza.zza();
    }
}
