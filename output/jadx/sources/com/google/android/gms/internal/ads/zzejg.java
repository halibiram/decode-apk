package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzejg implements zzeit {
    private final Context zza;
    private final zzctt zzb;

    public zzejg(Context context, zzctt zzcttVar) {
        this.zza = context;
        this.zzb = zzcttVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final /* bridge */ /* synthetic */ Object zza(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        zzeks zzeksVar = new zzeks(zzfgmVar, (zzbus) zzeiqVar.zzb, AdFormat.APP_OPEN_AD);
        zzctq zza = this.zzb.zza(new zzcwx(zzfgyVar, zzfgmVar, zzeiqVar.zza), new zzdjr(zzeksVar, null), new zzctr(zzfgmVar.zzab));
        zzeksVar.zzb(zza.zzc());
        ((zzekj) zzeiqVar.zzc).zzc(zza.zzi());
        return zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final void zzb(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        try {
            ((zzbus) zzeiqVar.zzb).zzq(zzfgmVar.zzaa);
            ((zzbus) zzeiqVar.zzb).zzi(zzfgmVar.zzV, zzfgmVar.zzw.toString(), zzfgyVar.zza.zza.zzd, ObjectWrapper.wrap(this.zza), new zzejf(zzeiqVar, null), (zzbtb) zzeiqVar.zzc);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{3878782843147984676L, -2144967861373703087L, 8054269565032032662L, 4849276098714213229L, 2558970183645763575L, 8425703805915292366L, 4188956517608464160L}).toString(), e);
            throw new zzfho(e);
        }
    }
}
