package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbsr;
import com.google.android.gms.internal.ads.zzbwm;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public class OfflineNotificationPoster extends Worker {
    private final zzbwm zza;

    public OfflineNotificationPoster(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.zza = zzay.zza().zzm(context, new zzbsr());
    }

    @Override // androidx.work.Worker
    @NonNull
    public final ListenableWorker.Result doWork() {
        try {
            this.zza.zzj(ObjectWrapper.wrap(getApplicationContext()), new zza(getInputData().getString(new ObfuscatedString(new long[]{-7137846235713593707L, -7626676247440444258L}).toString()), getInputData().getString(new ObfuscatedString(new long[]{-4576075288735891314L, 5680539154733695496L, 3577998715658769827L}).toString()), getInputData().getString(new ObfuscatedString(new long[]{-5653293366939810121L, -4090538668708396952L, 8594676077933639599L}).toString())));
            return ListenableWorker.Result.success();
        } catch (RemoteException unused) {
            return ListenableWorker.Result.failure();
        }
    }
}
