package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzcww {
    private final Executor zza;
    private final ScheduledExecutorService zzb;
    private final ListenableFuture zzc;
    private volatile boolean zzd = true;

    public zzcww(Executor executor, ScheduledExecutorService scheduledExecutorService, ListenableFuture listenableFuture) {
        this.zza = executor;
        this.zzb = scheduledExecutorService;
        this.zzc = listenableFuture;
    }

    public static /* bridge */ /* synthetic */ void zzb(final zzcww zzcwwVar, List list, final zzgej zzgejVar) {
        if (list != null && !list.isEmpty()) {
            ListenableFuture zzh = zzgen.zzh(null);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                final ListenableFuture listenableFuture = (ListenableFuture) it.next();
                zzh = zzgen.zzn(zzgen.zzf(zzh, Throwable.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzcws
                    @Override // com.google.android.gms.internal.ads.zzgdu
                    public final ListenableFuture zza(Object obj) {
                        zzgej.this.zza((Throwable) obj);
                        return zzgen.zzh(null);
                    }
                }, zzcwwVar.zza), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzcwt
                    @Override // com.google.android.gms.internal.ads.zzgdu
                    public final ListenableFuture zza(Object obj) {
                        return zzcww.this.zza(zzgejVar, listenableFuture, (zzcwh) obj);
                    }
                }, zzcwwVar.zza);
            }
            zzgen.zzr(zzh, new zzcwv(zzcwwVar, zzgejVar), zzcwwVar.zza);
            return;
        }
        zzcwwVar.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwr
            @Override // java.lang.Runnable
            public final void run() {
                zzgej.this.zza(new zzead(3));
            }
        });
    }

    public final /* synthetic */ ListenableFuture zza(zzgej zzgejVar, ListenableFuture listenableFuture, zzcwh zzcwhVar) {
        if (zzcwhVar != null) {
            zzgejVar.zzb(zzcwhVar);
        }
        return zzgen.zzo(listenableFuture, ((Long) zzbin.zzb.zze()).longValue(), TimeUnit.MILLISECONDS, this.zzb);
    }

    public final /* synthetic */ void zzd() {
        this.zzd = false;
    }

    public final void zze(zzgej zzgejVar) {
        zzgen.zzr(this.zzc, new zzcwu(this, zzgejVar), this.zza);
    }

    public final boolean zzf() {
        return this.zzd;
    }
}
