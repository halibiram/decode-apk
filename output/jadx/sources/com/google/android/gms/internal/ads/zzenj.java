package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzenj implements zzdkw {
    private final Context zza;
    private final zzdtk zzb;
    private final zzfhh zzc;
    private final zzcei zzd;
    private final zzfgm zze;
    private final ListenableFuture zzf;
    private final zzcjk zzg;
    private final zzbni zzh;
    private final boolean zzi;
    private final zzehs zzj;

    public zzenj(Context context, zzdtk zzdtkVar, zzfhh zzfhhVar, zzcei zzceiVar, zzfgm zzfgmVar, ListenableFuture listenableFuture, zzcjk zzcjkVar, zzbni zzbniVar, boolean z, zzehs zzehsVar) {
        this.zza = context;
        this.zzb = zzdtkVar;
        this.zzc = zzfhhVar;
        this.zzd = zzceiVar;
        this.zze = zzfgmVar;
        this.zzf = listenableFuture;
        this.zzg = zzcjkVar;
        this.zzh = zzbniVar;
        this.zzi = z;
        this.zzj = zzehsVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x008b  */
    @Override // com.google.android.gms.internal.ads.zzdkw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(boolean z, Context context, zzdbk zzdbkVar) {
        zzbni zzbniVar;
        zzcjk zzcjkVar;
        zzcjk zzcjkVar2;
        boolean z2;
        boolean z3;
        boolean z4;
        float f;
        zzfgm zzfgmVar;
        zzdsp zzdspVar = (zzdsp) zzgen.zzq(this.zzf);
        try {
            zzfgm zzfgmVar2 = this.zze;
            zzehs zzehsVar = null;
            if (!this.zzg.zzaD()) {
                zzcjkVar2 = this.zzg;
            } else if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaM)).booleanValue()) {
                zzcjkVar2 = this.zzg;
            } else {
                final zzcjk zza = this.zzb.zza(this.zzc.zze, null, null);
                zzbnx.zzb(zza, zzdspVar.zzg());
                final zzdto zzdtoVar = new zzdto();
                zzdtoVar.zza(this.zza, (View) zza);
                zzdtj zzl = zzdspVar.zzl();
                if (this.zzi) {
                    zzbniVar = this.zzh;
                } else {
                    zzbniVar = null;
                }
                zzl.zzi(zza, true, zzbniVar);
                zza.zzN().zzB(new zzckw() { // from class: com.google.android.gms.internal.ads.zzenh
                    @Override // com.google.android.gms.internal.ads.zzckw
                    public final void zza(boolean z5, int i, String str, String str2) {
                        zzdto.this.zzb();
                        zzcjk zzcjkVar3 = zza;
                        zzcjkVar3.zzZ();
                        zzcjkVar3.zzN().zzr();
                    }
                });
                zza.zzN().zzH(new zzckx() { // from class: com.google.android.gms.internal.ads.zzeni
                    @Override // com.google.android.gms.internal.ads.zzckx
                    public final void zza() {
                        zzcjk.this.zzY();
                    }
                });
                zzfgr zzfgrVar = zzfgmVar2.zzt;
                zza.zzac(zzfgrVar.zzb, zzfgrVar.zza, null);
                zzcjkVar = zza;
                zzcjkVar.zzao(true);
                if (!this.zzi) {
                    z2 = this.zzh.zze(false);
                } else {
                    z2 = false;
                }
                com.google.android.gms.ads.internal.zzt.zzp();
                Context context2 = this.zza;
                z3 = this.zzi;
                boolean zzH = com.google.android.gms.ads.internal.util.zzt.zzH(context2);
                if (!z3) {
                    z4 = this.zzh.zzd();
                } else {
                    z4 = false;
                }
                if (!this.zzi) {
                    f = this.zzh.zza();
                } else {
                    f = 0.0f;
                }
                zzfgm zzfgmVar3 = this.zze;
                com.google.android.gms.ads.internal.zzj zzjVar = new com.google.android.gms.ads.internal.zzj(z2, zzH, z4, f, -1, z, zzfgmVar3.zzP, zzfgmVar3.zzQ);
                if (zzdbkVar != null) {
                    zzdbkVar.zzf();
                }
                com.google.android.gms.ads.internal.zzt.zzi();
                zzdkl zzh = zzdspVar.zzh();
                zzfgmVar = this.zze;
                zzcei zzceiVar = this.zzd;
                int i = zzfgmVar.zzR;
                String str = zzfgmVar.zzC;
                zzfgr zzfgrVar2 = zzfgmVar.zzt;
                String str2 = zzfgrVar2.zzb;
                String str3 = zzfgrVar2.zza;
                zzfhh zzfhhVar = this.zzc;
                if (zzfgmVar.zzaj) {
                    zzehsVar = this.zzj;
                }
                com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel((com.google.android.gms.ads.internal.client.zza) null, zzh, (com.google.android.gms.ads.internal.overlay.zzaa) null, zzcjkVar, i, zzceiVar, str, zzjVar, str2, str3, zzfhhVar.zzf, zzdbkVar, zzehsVar), true);
            }
            zzcjkVar = zzcjkVar2;
            zzcjkVar.zzao(true);
            if (!this.zzi) {
            }
            com.google.android.gms.ads.internal.zzt.zzp();
            Context context22 = this.zza;
            z3 = this.zzi;
            boolean zzH2 = com.google.android.gms.ads.internal.util.zzt.zzH(context22);
            if (!z3) {
            }
            if (!this.zzi) {
            }
            zzfgm zzfgmVar32 = this.zze;
            com.google.android.gms.ads.internal.zzj zzjVar2 = new com.google.android.gms.ads.internal.zzj(z2, zzH2, z4, f, -1, z, zzfgmVar32.zzP, zzfgmVar32.zzQ);
            if (zzdbkVar != null) {
            }
            com.google.android.gms.ads.internal.zzt.zzi();
            zzdkl zzh2 = zzdspVar.zzh();
            zzfgmVar = this.zze;
            zzcei zzceiVar2 = this.zzd;
            int i2 = zzfgmVar.zzR;
            String str4 = zzfgmVar.zzC;
            zzfgr zzfgrVar22 = zzfgmVar.zzt;
            String str22 = zzfgrVar22.zzb;
            String str32 = zzfgrVar22.zza;
            zzfhh zzfhhVar2 = this.zzc;
            if (zzfgmVar.zzaj) {
            }
            com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel((com.google.android.gms.ads.internal.client.zza) null, zzh2, (com.google.android.gms.ads.internal.overlay.zzaa) null, zzcjkVar, i2, zzceiVar2, str4, zzjVar2, str22, str32, zzfhhVar2.zzf, zzdbkVar, zzehsVar), true);
        } catch (zzcjw e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-5841795623882312775L}).toString(), e);
        }
    }
}
