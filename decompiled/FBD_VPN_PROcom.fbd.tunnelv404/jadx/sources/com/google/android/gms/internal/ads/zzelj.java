package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzelj implements zzeit {
    private final Context zza;
    private final zzdlk zzb;
    private final Executor zzc;

    public zzelj(Context context, zzdlk zzdlkVar, Executor executor) {
        this.zza = context;
        this.zzb = zzdlkVar;
        this.zzc = executor;
    }

    private static final boolean zzc(zzfgy zzfgyVar, int i) {
        return zzfgyVar.zza.zza.zzg.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final /* bridge */ /* synthetic */ Object zza(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        zzdna zzah;
        zzbtg zzD = ((zzfif) zzeiqVar.zzb).zzD();
        zzbth zzE = ((zzfif) zzeiqVar.zzb).zzE();
        zzbtk zzd = ((zzfif) zzeiqVar.zzb).zzd();
        if (zzd != null && zzc(zzfgyVar, 6)) {
            zzah = zzdna.zzt(zzd);
        } else if (zzD != null && zzc(zzfgyVar, 6)) {
            zzah = zzdna.zzai(zzD);
        } else if (zzD != null && zzc(zzfgyVar, 2)) {
            zzah = zzdna.zzag(zzD);
        } else if (zzE != null && zzc(zzfgyVar, 6)) {
            zzah = zzdna.zzaj(zzE);
        } else if (zzE != null && zzc(zzfgyVar, 1)) {
            zzah = zzdna.zzah(zzE);
        } else {
            throw new zzeml(1, new ObfuscatedString(new long[]{-7296695879897248310L, 5313387924707676876L, -2822899100355203881L, 8413999518870430405L}).toString());
        }
        zzfhh zzfhhVar = zzfgyVar.zza.zza;
        if (zzfhhVar.zzg.contains(Integer.toString(zzah.zzc()))) {
            zzdnc zze = this.zzb.zze(new zzcwx(zzfgyVar, zzfgmVar, zzeiqVar.zza), new zzdnm(zzah), new zzdpd(zzE, zzD, zzd));
            ((zzekj) zzeiqVar.zzc).zzc(zze.zzj());
            zze.zzd().zzo(new zzcrv((zzfif) zzeiqVar.zzb), this.zzc);
            return zze.zza();
        }
        throw new zzeml(1, new ObfuscatedString(new long[]{-906191719427295862L, 6692022767753957115L, -1941260253270946244L, 1906292698177812882L, 5754298533197580754L, -867784829762780861L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final void zzb(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        zzfif zzfifVar = (zzfif) zzeiqVar.zzb;
        zzfhh zzfhhVar = zzfgyVar.zza.zza;
        String jSONObject = zzfgmVar.zzw.toString();
        String zzl = com.google.android.gms.ads.internal.util.zzbw.zzl(zzfgmVar.zzt);
        zzbtb zzbtbVar = (zzbtb) zzeiqVar.zzc;
        zzfhh zzfhhVar2 = zzfgyVar.zza.zza;
        zzfifVar.zzp(this.zza, zzfhhVar.zzd, jSONObject, zzl, zzbtbVar, zzfhhVar2.zzi, zzfhhVar2.zzg);
    }
}
