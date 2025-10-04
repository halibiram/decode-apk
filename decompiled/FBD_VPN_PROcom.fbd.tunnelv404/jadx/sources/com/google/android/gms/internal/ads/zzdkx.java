package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzdkx implements zzdcl, com.google.android.gms.ads.internal.overlay.zzp, zzdbr {

    @Nullable
    @VisibleForTesting
    zzfod zza;
    private final Context zzb;

    @Nullable
    private final zzcjk zzc;
    private final zzfgm zzd;
    private final zzcei zze;
    private final zzbbz zzf;

    public zzdkx(Context context, @Nullable zzcjk zzcjkVar, zzfgm zzfgmVar, zzcei zzceiVar, zzbbz zzbbzVar) {
        this.zzb = context;
        this.zzc = zzcjkVar;
        this.zzd = zzfgmVar;
        this.zze = zzceiVar;
        this.zzf = zzbbzVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbA() {
        if (this.zza != null && this.zzc != null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeZ)).booleanValue()) {
                this.zzc.zzd(new ObfuscatedString(new long[]{-8161372503616639900L, 759124539221369268L, -5727420756920488657L}).toString(), new ArrayMap());
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbC() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbD(int i) {
        this.zza = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbP() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbt() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbz() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbr
    public final void zzq() {
        if (this.zza != null && this.zzc != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeZ)).booleanValue()) {
                this.zzc.zzd(new ObfuscatedString(new long[]{-2456748148244492085L, 3498113915315326780L, 4981831221321348863L}).toString(), new ArrayMap());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcl
    public final void zzr() {
        zzeii zzeiiVar;
        zzeii zzeiiVar2;
        zzeih zzeihVar;
        zzbbz zzbbzVar = this.zzf;
        if ((zzbbzVar == zzbbz.zzh || zzbbzVar == zzbbz.zzd || zzbbzVar == zzbbz.zzk) && this.zzd.zzU && this.zzc != null && com.google.android.gms.ads.internal.zzt.zzA().zzj(this.zzb)) {
            zzcei zzceiVar = this.zze;
            int i = zzceiVar.zzb;
            String m3333x1db10c9d = AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2975837988490281083L, 2102074635958176261L}), AbstractC0749x8313616e.m3340x952a0a9e(i), zzceiVar.zzc);
            zzfhk zzfhkVar = this.zzd.zzW;
            String zza = zzfhkVar.zza();
            if (zzfhkVar.zzb() == 1) {
                zzeihVar = zzeih.zzc;
                zzeiiVar2 = zzeii.zzb;
            } else {
                if (this.zzd.zzZ == 2) {
                    zzeiiVar = zzeii.zzd;
                } else {
                    zzeiiVar = zzeii.zza;
                }
                zzeiiVar2 = zzeiiVar;
                zzeihVar = zzeih.zza;
            }
            zzfod zza2 = com.google.android.gms.ads.internal.zzt.zzA().zza(m3333x1db10c9d, this.zzc.zzG(), new ObfuscatedString(new long[]{-8267233834082387139L}).toString(), new ObfuscatedString(new long[]{-8206513167995021279L, -2894527837509548745L, -3583869186677576614L}).toString(), zza, zzeiiVar2, zzeihVar, this.zzd.zzam);
            this.zza = zza2;
            if (zza2 != null) {
                com.google.android.gms.ads.internal.zzt.zzA().zzh(this.zza, (View) this.zzc);
                this.zzc.zzaq(this.zza);
                com.google.android.gms.ads.internal.zzt.zzA().zzi(this.zza);
                this.zzc.zzd(new ObfuscatedString(new long[]{3815773380425360085L, 708319328442876017L, 8203055219931777071L}).toString(), new ArrayMap());
            }
        }
    }
}
