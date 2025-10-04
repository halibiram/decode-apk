package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes2.dex */
final class zzekp implements zzdkw {
    private final Context zza;
    private final zzcei zzb;
    private final ListenableFuture zzc;
    private final zzfgm zzd;
    private final zzcjk zze;
    private final zzfhh zzf;
    private final zzbni zzg;
    private final boolean zzh;
    private final zzehs zzi;

    public zzekp(Context context, zzcei zzceiVar, ListenableFuture listenableFuture, zzfgm zzfgmVar, zzcjk zzcjkVar, zzfhh zzfhhVar, boolean z, zzbni zzbniVar, zzehs zzehsVar) {
        this.zza = context;
        this.zzb = zzceiVar;
        this.zzc = listenableFuture;
        this.zzd = zzfgmVar;
        this.zze = zzcjkVar;
        this.zzf = zzfhhVar;
        this.zzg = zzbniVar;
        this.zzh = z;
        this.zzi = zzehsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdkw
    public final void zza(boolean z, Context context, zzdbk zzdbkVar) {
        boolean z2;
        boolean z3;
        float f;
        zzehs zzehsVar;
        zzdjo zzdjoVar = (zzdjo) zzgen.zzq(this.zzc);
        this.zze.zzao(true);
        if (this.zzh) {
            z2 = this.zzg.zze(false);
        } else {
            z2 = false;
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        Context context2 = this.zza;
        boolean z4 = this.zzh;
        boolean zzH = com.google.android.gms.ads.internal.util.zzt.zzH(context2);
        if (z4) {
            z3 = this.zzg.zzd();
        } else {
            z3 = false;
        }
        if (this.zzh) {
            f = this.zzg.zza();
        } else {
            f = 0.0f;
        }
        com.google.android.gms.ads.internal.zzj zzjVar = new com.google.android.gms.ads.internal.zzj(z2, zzH, z3, f, -1, z, this.zzd.zzP, false);
        if (zzdbkVar != null) {
            zzdbkVar.zzf();
        }
        com.google.android.gms.ads.internal.zzt.zzi();
        zzdkl zzh = zzdjoVar.zzh();
        zzcjk zzcjkVar = this.zze;
        zzfgm zzfgmVar = this.zzd;
        zzcei zzceiVar = this.zzb;
        int i = zzfgmVar.zzR;
        String str = zzfgmVar.zzC;
        zzfgr zzfgrVar = zzfgmVar.zzt;
        String str2 = zzfgrVar.zzb;
        String str3 = zzfgrVar.zza;
        zzfhh zzfhhVar = this.zzf;
        if (zzfgmVar.zzaj) {
            zzehsVar = this.zzi;
        } else {
            zzehsVar = null;
        }
        com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel((com.google.android.gms.ads.internal.client.zza) null, zzh, (com.google.android.gms.ads.internal.overlay.zzaa) null, zzcjkVar, i, zzceiVar, str, zzjVar, str2, str3, zzfhhVar.zzf, zzdbkVar, zzehsVar), true);
    }
}
