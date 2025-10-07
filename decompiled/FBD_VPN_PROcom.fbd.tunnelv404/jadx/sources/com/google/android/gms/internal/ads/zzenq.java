package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzenq implements zzeit {
    private final Context zza;
    private final Executor zzb;
    private final zzdst zzc;

    public zzenq(Context context, Executor executor, zzdst zzdstVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzdstVar;
    }

    public static /* bridge */ /* synthetic */ Executor zzc(zzenq zzenqVar) {
        return zzenqVar.zzb;
    }

    public static final void zze(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        try {
            ((zzfif) zzeiqVar.zzb).zzk(zzfgyVar.zza.zza.zzd, zzfgmVar.zzw.toString());
        } catch (Exception e) {
            zzcec.zzk(new ObfuscatedString(new long[]{-178241866260191824L, 3465184224334108013L, -4831191082869837171L, -2917753959345256027L, 3369191832532861516L}).toString().concat(String.valueOf(zzeiqVar.zza)), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final /* bridge */ /* synthetic */ Object zza(zzfgy zzfgyVar, zzfgm zzfgmVar, final zzeiq zzeiqVar) {
        zzdsp zze = this.zzc.zze(new zzcwx(zzfgyVar, zzfgmVar, zzeiqVar.zza), new zzdsq(new zzdkw() { // from class: com.google.android.gms.internal.ads.zzenm
            @Override // com.google.android.gms.internal.ads.zzdkw
            public final void zza(boolean z, Context context, zzdbk zzdbkVar) {
                zzeiq zzeiqVar2 = zzeiq.this;
                try {
                    ((zzfif) zzeiqVar2.zzb).zzv(z);
                    ((zzfif) zzeiqVar2.zzb).zzA();
                } catch (zzfho e) {
                    zzcec.zzk(new ObfuscatedString(new long[]{-5594816412106513613L, -1603926207794062566L, -143859440804292456L, -5661918644210692848L, 8348471533425223877L}).toString(), e);
                    throw new zzdkv(e.getCause());
                }
            }
        }));
        zze.zzd().zzo(new zzcrv((zzfif) zzeiqVar.zzb), this.zzb);
        zzdce zze2 = zze.zze();
        zzdav zzb = zze.zzb();
        ((zzekk) zzeiqVar.zzc).zzc(new zzenp(this, zze.zza(), zzb, zze2, zze.zzg()));
        return zze.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final void zzb(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        if (!((zzfif) zzeiqVar.zzb).zzC()) {
            ((zzekk) zzeiqVar.zzc).zzd(new zzeno(this, zzfgyVar, zzfgmVar, zzeiqVar));
            Object obj = zzeiqVar.zzb;
            Context context = this.zza;
            zzfhh zzfhhVar = zzfgyVar.zza.zza;
            ((zzfif) obj).zzh(context, zzfhhVar.zzd, null, (zzcaf) zzeiqVar.zzc, zzfgmVar.zzw.toString());
            return;
        }
        zze(zzfgyVar, zzfgmVar, zzeiqVar);
    }
}
