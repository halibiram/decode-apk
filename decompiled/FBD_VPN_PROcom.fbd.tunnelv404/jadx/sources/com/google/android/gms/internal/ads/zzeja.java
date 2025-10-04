package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzeja implements zzdkw {
    private final zzcei zza;
    private final ListenableFuture zzb;
    private final zzfgm zzc;
    private final zzcjk zzd;
    private final zzfhh zze;
    private final zzbni zzf;
    private final boolean zzg;
    private final zzehs zzh;

    public zzeja(zzcei zzceiVar, ListenableFuture listenableFuture, zzfgm zzfgmVar, zzcjk zzcjkVar, zzfhh zzfhhVar, boolean z, zzbni zzbniVar, zzehs zzehsVar) {
        this.zza = zzceiVar;
        this.zzb = listenableFuture;
        this.zzc = zzfgmVar;
        this.zzd = zzcjkVar;
        this.zze = zzfhhVar;
        this.zzg = z;
        this.zzf = zzbniVar;
        this.zzh = zzehsVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a1  */
    @Override // com.google.android.gms.internal.ads.zzdkw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(boolean z, Context context, zzdbk zzdbkVar) {
        boolean z2;
        boolean z3;
        float f;
        int i;
        zzfgm zzfgmVar;
        zzehs zzehsVar;
        zzctq zzctqVar = (zzctq) zzgen.zzq(this.zzb);
        this.zzd.zzao(true);
        if (this.zzg) {
            z2 = this.zzf.zze(true);
        } else {
            z2 = true;
        }
        boolean z4 = this.zzg;
        if (z4) {
            z3 = this.zzf.zzd();
        } else {
            z3 = false;
        }
        if (z4) {
            f = this.zzf.zza();
        } else {
            f = 0.0f;
        }
        com.google.android.gms.ads.internal.zzj zzjVar = new com.google.android.gms.ads.internal.zzj(z2, true, z3, f, -1, z, this.zzc.zzP, false);
        if (zzdbkVar != null) {
            zzdbkVar.zzf();
        }
        com.google.android.gms.ads.internal.zzt.zzi();
        zzdkl zzg = zzctqVar.zzg();
        zzcjk zzcjkVar = this.zzd;
        int i2 = this.zzc.zzR;
        if (i2 == -1) {
            com.google.android.gms.ads.internal.client.zzw zzwVar = this.zze.zzj;
            if (zzwVar != null) {
                int i3 = zzwVar.zza;
                if (i3 == 1) {
                    i = 7;
                } else if (i3 == 2) {
                    i = 6;
                }
                zzcei zzceiVar = this.zza;
                zzfgmVar = this.zzc;
                String str = zzfgmVar.zzC;
                zzfgr zzfgrVar = zzfgmVar.zzt;
                String str2 = zzfgrVar.zzb;
                String str3 = zzfgrVar.zza;
                zzfhh zzfhhVar = this.zze;
                if (!zzfgmVar.zzaj) {
                    zzehsVar = this.zzh;
                } else {
                    zzehsVar = null;
                }
                com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel((com.google.android.gms.ads.internal.client.zza) null, zzg, (com.google.android.gms.ads.internal.overlay.zzaa) null, zzcjkVar, i, zzceiVar, str, zzjVar, str2, str3, zzfhhVar.zzf, zzdbkVar, zzehsVar), true);
            }
            zzcec.zze(new ObfuscatedString(new long[]{4389513737954619048L, 17185863732680393L, 9100668457523575557L, 8092567878870039361L, 1424189522744348668L, 4408435346397540588L, -8420541807392368515L, -4443895476388439626L, -7644796990101481308L, 8207149071043602464L}).toString());
            i2 = this.zzc.zzR;
        }
        i = i2;
        zzcei zzceiVar2 = this.zza;
        zzfgmVar = this.zzc;
        String str4 = zzfgmVar.zzC;
        zzfgr zzfgrVar2 = zzfgmVar.zzt;
        String str22 = zzfgrVar2.zzb;
        String str32 = zzfgrVar2.zza;
        zzfhh zzfhhVar2 = this.zze;
        if (!zzfgmVar.zzaj) {
        }
        com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel((com.google.android.gms.ads.internal.client.zza) null, zzg, (com.google.android.gms.ads.internal.overlay.zzaa) null, zzcjkVar, i, zzceiVar2, str4, zzjVar, str22, str32, zzfhhVar2.zzf, zzdbkVar, zzehsVar), true);
    }
}
