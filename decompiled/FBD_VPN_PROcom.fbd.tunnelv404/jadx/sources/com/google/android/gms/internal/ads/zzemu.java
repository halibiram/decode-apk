package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzemu implements zzeit {
    private final Context zza;
    private final Executor zzb;
    private final zzdst zzc;

    public zzemu(Context context, Executor executor, zzdst zzdstVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzdstVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final /* bridge */ /* synthetic */ Object zza(zzfgy zzfgyVar, zzfgm zzfgmVar, final zzeiq zzeiqVar) {
        zzdsp zze = this.zzc.zze(new zzcwx(zzfgyVar, zzfgmVar, zzeiqVar.zza), new zzdsq(new zzdkw() { // from class: com.google.android.gms.internal.ads.zzemt
            @Override // com.google.android.gms.internal.ads.zzdkw
            public final void zza(boolean z, Context context, zzdbk zzdbkVar) {
                zzeiq zzeiqVar2 = zzeiq.this;
                try {
                    ((zzfif) zzeiqVar2.zzb).zzv(z);
                    ((zzfif) zzeiqVar2.zzb).zzz(context);
                } catch (zzfho e) {
                    throw new zzdkv(e.getCause());
                }
            }
        }));
        zze.zzd().zzo(new zzcrv((zzfif) zzeiqVar.zzb), this.zzb);
        ((zzekj) zzeiqVar.zzc).zzc(zze.zzm());
        return zze.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final void zzb(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        try {
            zzfhh zzfhhVar = zzfgyVar.zza.zza;
            if (zzfhhVar.zzo.zza == 3) {
                ((zzfif) zzeiqVar.zzb).zzr(this.zza, zzfhhVar.zzd, zzfgmVar.zzw.toString(), (zzbtb) zzeiqVar.zzc);
            } else {
                ((zzfif) zzeiqVar.zzb).zzq(this.zza, zzfhhVar.zzd, zzfgmVar.zzw.toString(), (zzbtb) zzeiqVar.zzc);
            }
        } catch (Exception e) {
            zzcec.zzk(new ObfuscatedString(new long[]{2557640640086569267L, -2448729663260366599L, 5090627835252745264L, -512898709182681289L, -1796881598620230575L}).toString().concat(String.valueOf(zzeiqVar.zza)), e);
        }
    }
}
