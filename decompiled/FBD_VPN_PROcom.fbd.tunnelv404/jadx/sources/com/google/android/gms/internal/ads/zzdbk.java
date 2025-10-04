package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzdbk extends zzdgl implements zzdbb {
    private final ScheduledExecutorService zzb;
    private ScheduledFuture zzc;
    private boolean zzd;

    public zzdbk(zzdbj zzdbjVar, Set set, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        super(set);
        this.zzd = false;
        this.zzb = scheduledExecutorService;
        zzo(zzdbjVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final void zza(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzu(new zzdgk() { // from class: com.google.android.gms.internal.ads.zzdbc
            @Override // com.google.android.gms.internal.ads.zzdgk
            public final void zza(Object obj) {
                ((zzdbb) obj).zza(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final void zzb() {
        zzu(new zzdgk() { // from class: com.google.android.gms.internal.ads.zzdbd
            @Override // com.google.android.gms.internal.ads.zzdgk
            public final void zza(Object obj) {
                ((zzdbb) obj).zzb();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final void zzc(final zzdkv zzdkvVar) {
        if (this.zzd) {
            return;
        }
        ScheduledFuture scheduledFuture = this.zzc;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        zzu(new zzdgk() { // from class: com.google.android.gms.internal.ads.zzdbf
            @Override // com.google.android.gms.internal.ads.zzdgk
            public final void zza(Object obj) {
                ((zzdbb) obj).zzc(zzdkv.this);
            }
        });
    }

    public final /* synthetic */ void zzd() {
        synchronized (this) {
            zzcec.zzg(new ObfuscatedString(new long[]{-8097902675433601436L, 5648992039934625911L, -2536205757586548859L, -7813744464704809176L, 929716182938686966L, 8276814383317446387L, 8592172145188203924L, -2904449649598280027L}).toString());
            zzc(new zzdkv(new ObfuscatedString(new long[]{-8504881267160422310L, -3127424850443976275L, 1441596706598944965L, -750609539698344486L, -5718316485320342436L}).toString()));
            this.zzd = true;
        }
    }

    public final synchronized void zze() {
        ScheduledFuture scheduledFuture = this.zzc;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
    }

    public final void zzf() {
        this.zzc = this.zzb.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdbe
            @Override // java.lang.Runnable
            public final void run() {
                zzdbk.this.zzd();
            }
        }, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkj)).intValue(), TimeUnit.MILLISECONDS);
    }
}
