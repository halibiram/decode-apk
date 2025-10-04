package com.google.android.play.core.appupdate;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.common.IntentSenderForResultStarter;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.install.InstallStateUpdatedListener;
import com.google.android.play.core.install.model.AppUpdateType;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzg implements AppUpdateManager {
    private final zzr zza;
    private final zzc zzb;
    private final Context zzc;
    private final Handler zzd = new Handler(Looper.getMainLooper());

    public zzg(zzr zzrVar, zzc zzcVar, Context context) {
        this.zza = zzrVar;
        this.zzb = zzcVar;
        this.zzc = context;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public final Task<Void> completeUpdate() {
        return this.zza.zzd(this.zzc.getPackageName());
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public final Task<AppUpdateInfo> getAppUpdateInfo() {
        return this.zza.zze(this.zzc.getPackageName());
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public final synchronized void registerListener(InstallStateUpdatedListener installStateUpdatedListener) {
        this.zzb.zzb(installStateUpdatedListener);
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public final Task<Integer> startUpdateFlow(AppUpdateInfo appUpdateInfo, Activity activity, AppUpdateOptions appUpdateOptions) {
        if (appUpdateInfo != null && activity != null && appUpdateOptions != null && !appUpdateInfo.zzd()) {
            if (!appUpdateInfo.isUpdateTypeAllowed(appUpdateOptions)) {
                return Tasks.forException(new InstallException(-6));
            }
            appUpdateInfo.zzc();
            Intent intent = new Intent(activity, (Class<?>) PlayCoreDialogWrapperActivity.class);
            intent.putExtra(new ObfuscatedString(new long[]{-3773676200245119224L, -175751957244643533L, 895184053100095054L, 6203267796392229933L}).toString(), appUpdateInfo.zza(appUpdateOptions));
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            intent.putExtra(new ObfuscatedString(new long[]{6836289717423340002L, -1301070945347809800L, 6970888087847852476L}).toString(), new zze(this, this.zzd, taskCompletionSource));
            activity.startActivity(intent);
            return taskCompletionSource.getTask();
        }
        return Tasks.forException(new InstallException(-4));
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public final boolean startUpdateFlowForResult(AppUpdateInfo appUpdateInfo, @AppUpdateType int i, Activity activity, int i2) {
        AppUpdateOptions defaultOptions = AppUpdateOptions.defaultOptions(i);
        if (activity == null) {
            return false;
        }
        return startUpdateFlowForResult(appUpdateInfo, new zzf(this, activity), defaultOptions, i2);
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public final synchronized void unregisterListener(InstallStateUpdatedListener installStateUpdatedListener) {
        this.zzb.zzc(installStateUpdatedListener);
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public final boolean startUpdateFlowForResult(AppUpdateInfo appUpdateInfo, @AppUpdateType int i, IntentSenderForResultStarter intentSenderForResultStarter, int i2) {
        return startUpdateFlowForResult(appUpdateInfo, intentSenderForResultStarter, AppUpdateOptions.defaultOptions(i), i2);
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public final boolean startUpdateFlowForResult(AppUpdateInfo appUpdateInfo, Activity activity, AppUpdateOptions appUpdateOptions, int i) {
        if (activity == null) {
            return false;
        }
        return startUpdateFlowForResult(appUpdateInfo, new zzf(this, activity), appUpdateOptions, i);
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public final boolean startUpdateFlowForResult(AppUpdateInfo appUpdateInfo, ActivityResultLauncher<IntentSenderRequest> activityResultLauncher, AppUpdateOptions appUpdateOptions) {
        if (appUpdateInfo == null || activityResultLauncher == null || appUpdateOptions == null || !appUpdateInfo.isUpdateTypeAllowed(appUpdateOptions) || appUpdateInfo.zzd()) {
            return false;
        }
        appUpdateInfo.zzc();
        activityResultLauncher.launch(new IntentSenderRequest.Builder(appUpdateInfo.zza(appUpdateOptions).getIntentSender()).build());
        return true;
    }

    @Override // com.google.android.play.core.appupdate.AppUpdateManager
    public final boolean startUpdateFlowForResult(AppUpdateInfo appUpdateInfo, IntentSenderForResultStarter intentSenderForResultStarter, AppUpdateOptions appUpdateOptions, int i) {
        if (appUpdateInfo == null || intentSenderForResultStarter == null || appUpdateOptions == null || !appUpdateInfo.isUpdateTypeAllowed(appUpdateOptions) || appUpdateInfo.zzd()) {
            return false;
        }
        appUpdateInfo.zzc();
        intentSenderForResultStarter.startIntentSenderForResult(appUpdateInfo.zza(appUpdateOptions).getIntentSender(), i, null, 0, 0, 0, null);
        return true;
    }
}
