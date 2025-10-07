package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdms implements zzayq {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdmv zzb;

    public zzdms(zzdmv zzdmvVar, String str) {
        this.zza = str;
        this.zzb = zzdmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayq
    public final void zzby(zzayp zzaypVar) {
        Map map;
        zzdow zzdowVar;
        zzdow zzdowVar2;
        zzdow zzdowVar3;
        zzdow zzdowVar4;
        Map map2;
        zzdow zzdowVar5;
        zzdow zzdowVar6;
        zzdow zzdowVar7;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbJ)).booleanValue()) {
            synchronized (this) {
                try {
                    if (zzaypVar.zzj) {
                        zzdmv zzdmvVar = this.zzb;
                        zzdowVar4 = zzdmvVar.zzo;
                        if (zzdowVar4 == null) {
                            return;
                        }
                        map2 = zzdmvVar.zzy;
                        map2.put(this.zza, Boolean.TRUE);
                        zzdmv zzdmvVar2 = this.zzb;
                        zzdowVar5 = zzdmvVar2.zzo;
                        View zzf = zzdowVar5.zzf();
                        zzdowVar6 = this.zzb.zzo;
                        Map zzl = zzdowVar6.zzl();
                        zzdowVar7 = this.zzb.zzo;
                        zzdmvVar2.zzA(zzf, zzl, zzdowVar7.zzm(), true);
                    }
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (zzaypVar.zzj) {
            zzdmv zzdmvVar3 = this.zzb;
            String str = this.zza;
            map = zzdmvVar3.zzy;
            map.put(str, Boolean.TRUE);
            zzdmv zzdmvVar4 = this.zzb;
            zzdowVar = zzdmvVar4.zzo;
            View zzf2 = zzdowVar.zzf();
            zzdowVar2 = this.zzb.zzo;
            Map zzl2 = zzdowVar2.zzl();
            zzdowVar3 = this.zzb.zzo;
            zzdmvVar4.zzA(zzf2, zzl2, zzdowVar3.zzm(), true);
        }
    }
}
