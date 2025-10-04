package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzeku implements zzeit {
    private final Context zza;
    private final zzdko zzb;
    private final zzcei zzc;
    private final Executor zzd;

    public zzeku(Context context, zzcei zzceiVar, zzdko zzdkoVar, Executor executor) {
        this.zza = context;
        this.zzc = zzceiVar;
        this.zzb = zzdkoVar;
        this.zzd = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final /* bridge */ /* synthetic */ Object zza(zzfgy zzfgyVar, zzfgm zzfgmVar, final zzeiq zzeiqVar) {
        zzdjo zze = this.zzb.zze(new zzcwx(zzfgyVar, zzfgmVar, zzeiqVar.zza), new zzdjr(new zzdkw() { // from class: com.google.android.gms.internal.ads.zzekt
            @Override // com.google.android.gms.internal.ads.zzdkw
            public final void zza(boolean z, Context context, zzdbk zzdbkVar) {
                zzeku.this.zzc(zzeiqVar, z, context, zzdbkVar);
            }
        }, null));
        zze.zzd().zzo(new zzcrv((zzfif) zzeiqVar.zzb), this.zzd);
        ((zzekj) zzeiqVar.zzc).zzc(zze.zzj());
        return zze.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final void zzb(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        zzfif zzfifVar = (zzfif) zzeiqVar.zzb;
        zzfhh zzfhhVar = zzfgyVar.zza.zza;
        zzfifVar.zzo(this.zza, zzfhhVar.zzd, zzfgmVar.zzw.toString(), com.google.android.gms.ads.internal.util.zzbw.zzl(zzfgmVar.zzt), (zzbtb) zzeiqVar.zzc);
    }

    public final /* synthetic */ void zzc(zzeiq zzeiqVar, boolean z, Context context, zzdbk zzdbkVar) {
        try {
            ((zzfif) zzeiqVar.zzb).zzv(z);
            if (this.zzc.zzc < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaH)).intValue()) {
                ((zzfif) zzeiqVar.zzb).zzx();
            } else {
                ((zzfif) zzeiqVar.zzb).zzy(context);
            }
        } catch (zzfho e) {
            zzcec.zzi(new ObfuscatedString(new long[]{-1717283627612943322L, -8882052820279648028L, -2133297653482787086L, -1696773057769961802L, -3486836886165355649L}).toString());
            throw new zzdkv(e.getCause());
        }
    }
}
