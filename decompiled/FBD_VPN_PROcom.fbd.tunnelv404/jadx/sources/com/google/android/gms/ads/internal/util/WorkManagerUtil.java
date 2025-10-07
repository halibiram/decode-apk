package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public class WorkManagerUtil extends zzbs {
    @UsedByReflection("This class must be instantiated reflectively so that the default class loader can be used.")
    public WorkManagerUtil() {
    }

    private static void zzb(Context context) {
        try {
            WorkManager.initialize(context.getApplicationContext(), new Configuration.Builder().build());
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbt
    public final void zze(@NonNull IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzb(context);
        try {
            WorkManager workManager = WorkManager.getInstance(context);
            workManager.cancelAllWorkByTag(new ObfuscatedString(new long[]{3884406526594329694L, -3783738878867681808L, 6362370289530565008L, -5845548355976013524L}).toString());
            workManager.enqueue(new OneTimeWorkRequest.Builder((Class<? extends ListenableWorker>) OfflinePingSender.class).setConstraints(new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build()).addTag(new ObfuscatedString(new long[]{-3471453709535587328L, 2801322971436539201L, 5797613508931917386L, -412665201195429574L}).toString()).build());
        } catch (IllegalStateException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{-3351496228965518077L, 3850580217327342144L, 5608502492015005710L, -3881147941101662393L, -5589875123090891648L, 9016683365776631880L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbt
    public final boolean zzf(@NonNull IObjectWrapper iObjectWrapper, @NonNull String str, @NonNull String str2) {
        return zzg(iObjectWrapper, new com.google.android.gms.ads.internal.offline.buffering.zza(str, str2, new ObfuscatedString(new long[]{7900123061377098631L}).toString()));
    }

    @Override // com.google.android.gms.ads.internal.util.zzbt
    public final boolean zzg(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.offline.buffering.zza zzaVar) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzb(context);
        Constraints build = new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build();
        try {
            WorkManager.getInstance(context).enqueue(new OneTimeWorkRequest.Builder((Class<? extends ListenableWorker>) OfflineNotificationPoster.class).setConstraints(build).setInputData(new Data.Builder().putString(new ObfuscatedString(new long[]{-216660118997241623L, -6165881215876469971L}).toString(), zzaVar.zza).putString(new ObfuscatedString(new long[]{-7325351829093076212L, 4690536460402909554L, -4714596052440056978L}).toString(), zzaVar.zzb).putString(new ObfuscatedString(new long[]{7780227787505516902L, -9128680102734713758L, 6588239963538370123L}).toString(), zzaVar.zzc).build()).addTag(new ObfuscatedString(new long[]{1453900912823185241L, 6106740951877899566L, -206946129472353609L, 4887215801147763841L, 7046307873614356998L}).toString()).build());
            return true;
        } catch (IllegalStateException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{-3789313672714680668L, -3108263662538191842L, -1065084035542782341L, 428610348044204209L, -7336031064166434650L, 7128347311917992114L}).toString(), e);
            return false;
        }
    }
}
