package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeky implements zzeit {
    private final Context zza;
    private final zzdko zzb;

    public zzeky(Context context, zzdko zzdkoVar) {
        this.zza = context;
        this.zzb = zzdkoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final /* bridge */ /* synthetic */ Object zza(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        zzeks zzeksVar = new zzeks(zzfgmVar, (zzbus) zzeiqVar.zzb, AdFormat.INTERSTITIAL);
        zzdjo zze = this.zzb.zze(new zzcwx(zzfgyVar, zzfgmVar, zzeiqVar.zza), new zzdjr(zzeksVar, null));
        zzeksVar.zzb(zze.zzc());
        ((zzekj) zzeiqVar.zzc).zzc(zze.zzi());
        return zze.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final void zzb(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        try {
            ((zzbus) zzeiqVar.zzb).zzq(zzfgmVar.zzaa);
            ((zzbus) zzeiqVar.zzb).zzl(zzfgmVar.zzV, zzfgmVar.zzw.toString(), zzfgyVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzekx(this, zzeiqVar, null), (zzbtb) zzeiqVar.zzc);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{-769182846751687492L, -5273410445148156985L, -4026087592836290360L, -1123215372598308499L, -5845909689985176375L, 4661398468836008963L, 3225279394447485742L}).toString(), e);
            throw new zzfho(e);
        }
    }
}
