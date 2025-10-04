package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzejo implements zzein {
    private final zzcvc zza;
    private final Context zzb;
    private final zzdtk zzc;
    private final zzfhh zzd;
    private final Executor zze;
    private final zzfws zzf;

    public zzejo(zzcvc zzcvcVar, Context context, Executor executor, zzdtk zzdtkVar, zzfhh zzfhhVar, zzfws zzfwsVar) {
        this.zzb = context;
        this.zza = zzcvcVar;
        this.zze = executor;
        this.zzc = zzdtkVar;
        this.zzd = zzfhhVar;
        this.zzf = zzfwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final ListenableFuture zza(final zzfgy zzfgyVar, final zzfgm zzfgmVar) {
        return zzgen.zzn(zzgen.zzh(null), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzejn
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzejo.this.zzc(zzfgyVar, zzfgmVar, obj);
            }
        }, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final boolean zzb(zzfgy zzfgyVar, zzfgm zzfgmVar) {
        zzfgr zzfgrVar = zzfgmVar.zzt;
        if (zzfgrVar != null && zzfgrVar.zza != null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ ListenableFuture zzc(zzfgy zzfgyVar, zzfgm zzfgmVar, Object obj) {
        View zzdtnVar;
        com.google.android.gms.ads.internal.client.zzq zza = zzfhn.zza(this.zzb, zzfgmVar.zzv);
        final zzcjk zza2 = this.zzc.zza(zza, zzfgmVar, zzfgyVar.zzb.zzb);
        zza2.zzaa(zzfgmVar.zzX);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhI)).booleanValue() && zzfgmVar.zzah) {
            zzdtnVar = zzcvt.zza(this.zzb, (View) zza2, zzfgmVar);
        } else {
            zzdtnVar = new zzdtn(this.zzb, (View) zza2, (com.google.android.gms.ads.internal.util.zzau) this.zzf.apply(zzfgmVar));
        }
        final zzcug zza3 = this.zza.zza(new zzcwx(zzfgyVar, zzfgmVar, null), new zzcum(zzdtnVar, zza2, new zzcwf() { // from class: com.google.android.gms.internal.ads.zzeji
            @Override // com.google.android.gms.internal.ads.zzcwf
            public final com.google.android.gms.ads.internal.client.zzdq zza() {
                return zzcjk.this.zzq();
            }
        }, zzfhn.zzb(zza)));
        zza3.zzh().zzi(zza2, false, null);
        zzdbp zzc = zza3.zzc();
        zzdbr zzdbrVar = new zzdbr() { // from class: com.google.android.gms.internal.ads.zzejj
            @Override // com.google.android.gms.internal.ads.zzdbr
            public final void zzq() {
                zzcjk zzcjkVar = zzcjk.this;
                if (zzcjkVar.zzN() != null) {
                    zzcjkVar.zzN().zzr();
                }
            }
        };
        zzgey zzgeyVar = zzcep.zzf;
        zzc.zzo(zzdbrVar, zzgeyVar);
        zza3.zzh();
        zzfgr zzfgrVar = zzfgmVar.zzt;
        ListenableFuture zzj = zzdtj.zzj(zza2, zzfgrVar.zzb, zzfgrVar.zza);
        if (zzfgmVar.zzN) {
            zzj.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzejk
                @Override // java.lang.Runnable
                public final void run() {
                    zzcjk.this.zzaf();
                }
            }, this.zze);
        }
        zzj.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzejl
            @Override // java.lang.Runnable
            public final void run() {
                zzejo.this.zzd(zza2);
            }
        }, this.zze);
        return zzgen.zzm(zzj, new zzfws() { // from class: com.google.android.gms.internal.ads.zzejm
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj2) {
                return zzcug.this.zza();
            }
        }, zzgeyVar);
    }

    public final /* synthetic */ void zzd(zzcjk zzcjkVar) {
        zzcjkVar.zzZ();
        zzcki zzq = zzcjkVar.zzq();
        com.google.android.gms.ads.internal.client.zzfk zzfkVar = this.zzd.zza;
        if (zzfkVar != null && zzq != null) {
            zzq.zzs(zzfkVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbi)).booleanValue() && !zzcjkVar.isAttachedToWindow()) {
            zzcjkVar.onPause();
            zzcjkVar.zzas(true);
        }
    }
}
