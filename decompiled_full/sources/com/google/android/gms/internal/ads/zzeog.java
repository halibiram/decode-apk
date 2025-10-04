package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes2.dex */
public final class zzeog implements zzein {
    private final Context zza;
    private final zzcvc zzb;

    @Nullable
    private final zzbha zzc;
    private final zzgey zzd;
    private final zzflm zze;

    public zzeog(Context context, zzcvc zzcvcVar, zzflm zzflmVar, zzgey zzgeyVar, @Nullable zzbha zzbhaVar) {
        this.zza = context;
        this.zzb = zzcvcVar;
        this.zze = zzflmVar;
        this.zzd = zzgeyVar;
        this.zzc = zzbhaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final ListenableFuture zza(zzfgy zzfgyVar, zzfgm zzfgmVar) {
        zzeoe zzeoeVar = new zzeoe(this, new View(this.zza), null, new zzcwf() { // from class: com.google.android.gms.internal.ads.zzeoc
            @Override // com.google.android.gms.internal.ads.zzcwf
            public final com.google.android.gms.ads.internal.client.zzdq zza() {
                return null;
            }
        }, (zzfgn) zzfgmVar.zzv.get(0));
        zzcug zza = this.zzb.zza(new zzcwx(zzfgyVar, zzfgmVar, null), zzeoeVar);
        zzeof zzk = zza.zzk();
        zzfgr zzfgrVar = zzfgmVar.zzt;
        final zzbgv zzbgvVar = new zzbgv(zzk, zzfgrVar.zzb, zzfgrVar.zza);
        zzflg zzflgVar = zzflg.zzt;
        return zzfkw.zzd(new zzfkq() { // from class: com.google.android.gms.internal.ads.zzeod
            @Override // com.google.android.gms.internal.ads.zzfkq
            public final void zza() {
                zzeog.this.zzc(zzbgvVar);
            }
        }, this.zzd, zzflgVar, this.zze).zzb(zzflg.zzu).zzd(zzgen.zzh(zza.zza())).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final boolean zzb(zzfgy zzfgyVar, zzfgm zzfgmVar) {
        zzfgr zzfgrVar;
        if (this.zzc != null && (zzfgrVar = zzfgmVar.zzt) != null && zzfgrVar.zza != null) {
            return true;
        }
        return false;
    }

    public final /* synthetic */ void zzc(zzbgv zzbgvVar) {
        this.zzc.zze(zzbgvVar);
    }
}
