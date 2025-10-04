package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzedq extends zzedw {
    private zzbym zzh;

    public zzedq(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zze = context;
        this.zzf = com.google.android.gms.ads.internal.zzt.zzt().zzb();
        this.zzg = scheduledExecutorService;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final synchronized void onConnected(@Nullable Bundle bundle) {
        if (!this.zzc) {
            this.zzc = true;
            try {
                try {
                    this.zzd.zzp().zze(this.zzh, new zzedv(this));
                } catch (Throwable th) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{102413241066865091L, -4302599335522524261L, -7677808582305081352L, -8990777918564626075L, 5073165038126303056L, -4462884211618905810L, -5178588804033491618L}).toString());
                    this.zza.zzd(th);
                }
            } catch (RemoteException unused) {
                this.zza.zzd(new zzecf(1));
            }
        }
    }

    public final synchronized ListenableFuture zza(zzbym zzbymVar, long j) {
        if (this.zzb) {
            return zzgen.zzo(this.zza, j, TimeUnit.MILLISECONDS, this.zzg);
        }
        this.zzb = true;
        this.zzh = zzbymVar;
        zzb();
        ListenableFuture zzo = zzgen.zzo(this.zza, j, TimeUnit.MILLISECONDS, this.zzg);
        zzo.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedp
            @Override // java.lang.Runnable
            public final void run() {
                zzedq.this.zzc();
            }
        }, zzcep.zzf);
        return zzo;
    }
}
