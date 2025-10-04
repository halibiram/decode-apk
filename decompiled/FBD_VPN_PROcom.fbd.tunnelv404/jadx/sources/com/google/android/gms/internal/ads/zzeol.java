package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes2.dex */
public final class zzeol implements zzein {

    @Nullable
    private final zzbha zza;
    private final zzgey zzb;
    private final zzflm zzc;
    private final zzeou zzd;

    public zzeol(zzflm zzflmVar, zzgey zzgeyVar, @Nullable zzbha zzbhaVar, zzeou zzeouVar) {
        this.zzc = zzflmVar;
        this.zzb = zzgeyVar;
        this.zza = zzbhaVar;
        this.zzd = zzeouVar;
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final ListenableFuture zza(zzfgy zzfgyVar, zzfgm zzfgmVar) {
        zzceu zzceuVar = new zzceu();
        zzeoq zzeoqVar = new zzeoq();
        zzeoqVar.zzd(new zzeok(this, zzceuVar, zzfgyVar, zzfgmVar, zzeoqVar));
        zzfgr zzfgrVar = zzfgmVar.zzt;
        final zzbgv zzbgvVar = new zzbgv(zzeoqVar, zzfgrVar.zzb, zzfgrVar.zza);
        zzflg zzflgVar = zzflg.zzt;
        return zzfkw.zzd(new zzfkq() { // from class: com.google.android.gms.internal.ads.zzeoj
            @Override // com.google.android.gms.internal.ads.zzfkq
            public final void zza() {
                zzeol.this.zzc(zzbgvVar);
            }
        }, this.zzb, zzflgVar, this.zzc).zzb(zzflg.zzu).zzd(zzceuVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final boolean zzb(zzfgy zzfgyVar, zzfgm zzfgmVar) {
        zzfgr zzfgrVar;
        if (this.zza != null && (zzfgrVar = zzfgmVar.zzt) != null && zzfgrVar.zza != null) {
            return true;
        }
        return false;
    }

    public final /* synthetic */ void zzc(zzbgv zzbgvVar) {
        this.zza.zze(zzbgvVar);
    }
}
