package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeln implements zzeit {
    private final Context zza;
    private final zzdlk zzb;
    private zzbtk zzc;
    private final zzcei zzd;

    public zzeln(Context context, zzdlk zzdlkVar, zzcei zzceiVar) {
        this.zza = context;
        this.zzb = zzdlkVar;
        this.zzd = zzceiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final /* bridge */ /* synthetic */ Object zza(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        if (zzfgyVar.zza.zza.zzg.contains(Integer.toString(6))) {
            zzdna zzt = zzdna.zzt(this.zzc);
            zzfhh zzfhhVar = zzfgyVar.zza.zza;
            if (zzfhhVar.zzg.contains(Integer.toString(zzt.zzc()))) {
                zzdnc zze = this.zzb.zze(new zzcwx(zzfgyVar, zzfgmVar, zzeiqVar.zza), new zzdnm(zzt), new zzdpd(null, null, this.zzc));
                ((zzekj) zzeiqVar.zzc).zzc(zze.zzi());
                return zze.zza();
            }
            throw new zzeml(1, new ObfuscatedString(new long[]{-7862901089939969361L, 718660311219895150L, -31019399928276062L, 4216901211530805323L, 5611067618203398574L, -5160912615864875103L}).toString());
        }
        throw new zzeml(2, new ObfuscatedString(new long[]{-2409109274981961512L, -8746039449402087006L, -1433297333373730951L, 6436656000350022093L, -2191691992763616554L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final void zzb(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        try {
            ((zzbus) zzeiqVar.zzb).zzq(zzfgmVar.zzaa);
            if (this.zzd.zzc < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbH)).intValue()) {
                ((zzbus) zzeiqVar.zzb).zzm(zzfgmVar.zzV, zzfgmVar.zzw.toString(), zzfgyVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzelm(this, zzeiqVar, null), (zzbtb) zzeiqVar.zzc);
            } else {
                ((zzbus) zzeiqVar.zzb).zzn(zzfgmVar.zzV, zzfgmVar.zzw.toString(), zzfgyVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzelm(this, zzeiqVar, null), (zzbtb) zzeiqVar.zzc, zzfgyVar.zza.zza.zzi);
            }
        } catch (RemoteException e) {
            throw new zzfho(e);
        }
    }
}
