package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.Task;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzesu implements zzexq {

    @VisibleForTesting
    final zzcdl zza;

    @VisibleForTesting
    AppSetIdClient zzb;
    private final ScheduledExecutorService zzc;
    private final zzgey zzd;
    private final Context zze;

    public zzesu(Context context, zzcdl zzcdlVar, ScheduledExecutorService scheduledExecutorService, zzgey zzgeyVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcG)).booleanValue()) {
            this.zzb = AppSet.getClient(context);
        }
        this.zze = context;
        this.zza = zzcdlVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzgeyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 11;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        Task<AppSetIdInfo> appSetIdInfo;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcC)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcH)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcD)).booleanValue()) {
                    return zzgen.zzm(zzfui.zza(this.zzb.getAppSetIdInfo(), null), new zzfws() { // from class: com.google.android.gms.internal.ads.zzesr
                        @Override // com.google.android.gms.internal.ads.zzfws
                        public final Object apply(Object obj) {
                            AppSetIdInfo appSetIdInfo2 = (AppSetIdInfo) obj;
                            return new zzesv(appSetIdInfo2.getId(), appSetIdInfo2.getScope());
                        }
                    }, zzcep.zzf);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcG)).booleanValue()) {
                    appSetIdInfo = zzfim.zza(this.zze);
                } else {
                    appSetIdInfo = this.zzb.getAppSetIdInfo();
                }
                if (appSetIdInfo == null) {
                    return zzgen.zzh(new zzesv(null, -1));
                }
                ListenableFuture zzn = zzgen.zzn(zzfui.zza(appSetIdInfo, null), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzess
                    @Override // com.google.android.gms.internal.ads.zzgdu
                    public final ListenableFuture zza(Object obj) {
                        AppSetIdInfo appSetIdInfo2 = (AppSetIdInfo) obj;
                        if (appSetIdInfo2 == null) {
                            return zzgen.zzh(new zzesv(null, -1));
                        }
                        return zzgen.zzh(new zzesv(appSetIdInfo2.getId(), appSetIdInfo2.getScope()));
                    }
                }, zzcep.zzf);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcE)).booleanValue()) {
                    zzn = zzgen.zzo(zzn, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcF)).longValue(), TimeUnit.MILLISECONDS, this.zzc);
                }
                return zzgen.zze(zzn, Exception.class, new zzfws() { // from class: com.google.android.gms.internal.ads.zzest
                    @Override // com.google.android.gms.internal.ads.zzfws
                    public final Object apply(Object obj) {
                        zzesu.this.zza.zzw((Exception) obj, new ObfuscatedString(new long[]{-1159268677435625834L, -3087642069820861176L, -1393436179180623608L, 5563812087572711815L}).toString());
                        return new zzesv(null, -1);
                    }
                }, this.zzd);
            }
        }
        return zzgen.zzh(new zzesv(null, -1));
    }
}
