package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzeny implements zzdcg {
    boolean zza = false;
    final /* synthetic */ zzeiq zzb;
    final /* synthetic */ zzceu zzc;
    final /* synthetic */ zzenz zzd;

    public zzeny(zzenz zzenzVar, zzeiq zzeiqVar, zzceu zzceuVar) {
        this.zzb = zzeiqVar;
        this.zzc = zzceuVar;
        this.zzd = zzenzVar;
    }

    private final synchronized void zze(com.google.android.gms.ads.internal.client.zze zzeVar) {
        int i = 1;
        if (true == ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfs)).booleanValue()) {
            i = 3;
        }
        this.zzc.zzd(new zzeir(i, zzeVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdcg
    public final synchronized void zza(int i) {
        if (this.zza) {
            return;
        }
        this.zza = true;
        zze(new com.google.android.gms.ads.internal.client.zze(i, zzenz.zze(this.zzb.zza, i), new ObfuscatedString(new long[]{5137045726964751731L, -6612056620134634095L, 3704386263445403657L}).toString(), null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzdcg
    public final synchronized void zzb(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.zza) {
            return;
        }
        this.zza = true;
        zze(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdcg
    public final synchronized void zzc(int i, @Nullable String str) {
        try {
            if (this.zza) {
                return;
            }
            this.zza = true;
            if (str == null) {
                str = zzenz.zze(this.zzb.zza, i);
            }
            zze(new com.google.android.gms.ads.internal.client.zze(i, str, new ObfuscatedString(new long[]{-5540634934010059093L, -50072889399965437L, -2771985297065778405L}).toString(), null, null));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcg
    public final synchronized void zzd() {
        this.zzc.zzc(null);
    }
}
