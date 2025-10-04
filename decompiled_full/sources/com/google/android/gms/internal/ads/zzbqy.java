package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbqy implements zzcey {
    final /* synthetic */ zzbri zza;
    final /* synthetic */ zzfmo zzb;
    final /* synthetic */ zzbrj zzc;

    public zzbqy(zzbrj zzbrjVar, zzbri zzbriVar, zzfmo zzfmoVar) {
        this.zza = zzbriVar;
        this.zzb = zzfmoVar;
        this.zzc = zzbrjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcey
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Object obj2;
        zzbri zzbriVar;
        zzfnc zzfncVar;
        zzfnc zzfncVar2;
        zzbri zzbriVar2;
        zzbri zzbriVar3;
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7346071024513053912L, 2440294978518355867L, 1270858668767934643L, -6726508459880009578L, 1863334408332286331L, 1022413294591897222L, 3754083042727560183L, -200920995985652689L, -645127447879551595L}).toString());
        obj2 = this.zzc.zza;
        synchronized (obj2) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-4953480622982464843L, -53516448395228761L, -647183160503177399L, 3254487098371026562L, -1759982692204301938L, 1112892842164457268L, 8160219766156779828L}).toString());
                this.zzc.zzi = 0;
                zzbrj zzbrjVar = this.zzc;
                zzbriVar = zzbrjVar.zzh;
                if (zzbriVar != null) {
                    zzbri zzbriVar4 = this.zza;
                    zzbriVar2 = zzbrjVar.zzh;
                    if (zzbriVar4 != zzbriVar2) {
                        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{6483020847227387225L, -621273303185635823L, -7258469095646254207L, -6713753735146812689L, 7062804372177040075L, 447582100818403804L, -4576993536420129479L, -596526242634201907L, 3929178532028258203L}).toString());
                        zzbriVar3 = this.zzc.zzh;
                        zzbriVar3.zzb();
                    }
                }
                this.zzc.zzh = this.zza;
                if (((Boolean) zzbht.zzd.zze()).booleanValue()) {
                    zzbrj zzbrjVar2 = this.zzc;
                    zzfncVar = zzbrjVar2.zze;
                    if (zzfncVar != null) {
                        zzfncVar2 = zzbrjVar2.zze;
                        zzfmo zzfmoVar = this.zzb;
                        zzfmoVar.zzf(true);
                        zzfncVar2.zzb(zzfmoVar.zzl());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-6708908672481772907L, -2442749684567015012L, -560815597856081729L, -4120901123629772097L, -1549574324393047177L, -7755476577695551358L, 8929431443688515683L}).toString());
    }
}
