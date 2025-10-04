package com.google.android.gms.internal.ads;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzekk extends zzcae implements zzdch {
    private zzcaf zza;
    private zzdcg zzb;
    private zzdjf zzc;

    @Override // com.google.android.gms.internal.ads.zzdch
    public final synchronized void zza(zzdcg zzdcgVar) {
        this.zzb = zzdcgVar;
    }

    public final synchronized void zzc(zzcaf zzcafVar) {
        this.zza = zzcafVar;
    }

    public final synchronized void zzd(zzdjf zzdjfVar) {
        this.zzc = zzdjfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zze(IObjectWrapper iObjectWrapper) {
        zzcaf zzcafVar = this.zza;
        if (zzcafVar != null) {
            ((zzenp) zzcafVar).zzb.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzf(IObjectWrapper iObjectWrapper) {
        zzcaf zzcafVar = this.zza;
        if (zzcafVar != null) {
            zzcafVar.zzf(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzg(IObjectWrapper iObjectWrapper, int i) {
        zzdcg zzdcgVar = this.zzb;
        if (zzdcgVar != null) {
            zzdcgVar.zza(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzh(IObjectWrapper iObjectWrapper) {
        zzcaf zzcafVar = this.zza;
        if (zzcafVar != null) {
            ((zzenp) zzcafVar).zzc.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzi(IObjectWrapper iObjectWrapper) {
        zzdcg zzdcgVar = this.zzb;
        if (zzdcgVar != null) {
            zzdcgVar.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzj(IObjectWrapper iObjectWrapper) {
        zzcaf zzcafVar = this.zza;
        if (zzcafVar != null) {
            ((zzenp) zzcafVar).zza.zzbA();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzk(IObjectWrapper iObjectWrapper, int i) {
        zzdjf zzdjfVar = this.zzc;
        if (zzdjfVar != null) {
            zzcec.zzj(new ObfuscatedString(new long[]{1132584119625790053L, 7217693725050310474L, -6395371830190589999L, 7444552799233833092L, 7741729569564855219L}).toString().concat(String.valueOf(((zzeno) zzdjfVar).zzc.zza)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzl(IObjectWrapper iObjectWrapper) {
        zzdjf zzdjfVar = this.zzc;
        if (zzdjfVar != null) {
            Executor zzc = zzenq.zzc(((zzeno) zzdjfVar).zzd);
            final zzeiq zzeiqVar = ((zzeno) zzdjfVar).zzc;
            final zzfgm zzfgmVar = ((zzeno) zzdjfVar).zzb;
            final zzfgy zzfgyVar = ((zzeno) zzdjfVar).zza;
            final zzeno zzenoVar = (zzeno) zzdjfVar;
            zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzenn
                @Override // java.lang.Runnable
                public final void run() {
                    zzenq zzenqVar = zzeno.this.zzd;
                    zzenq.zze(zzfgyVar, zzfgmVar, zzeiqVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzm(IObjectWrapper iObjectWrapper, zzcag zzcagVar) {
        zzcaf zzcafVar = this.zza;
        if (zzcafVar != null) {
            ((zzenp) zzcafVar).zzd.zza(zzcagVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzn(IObjectWrapper iObjectWrapper) {
        zzcaf zzcafVar = this.zza;
        if (zzcafVar != null) {
            ((zzenp) zzcafVar).zzc.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final synchronized void zzo(IObjectWrapper iObjectWrapper) {
        zzcaf zzcafVar = this.zza;
        if (zzcafVar != null) {
            ((zzenp) zzcafVar).zzd.zzc();
        }
    }
}
