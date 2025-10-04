package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
final class zzcso implements zzgej {
    final /* synthetic */ zzcsq zza;

    public zzcso(zzcsq zzcsqVar) {
        this.zza = zzcsqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfht zzfhtVar;
        zzfnu zzfnuVar;
        zzfgy zzfgyVar;
        zzfgm zzfgmVar;
        zzfgm zzfgmVar2;
        Context context;
        zzcsq zzcsqVar = this.zza;
        String str = (String) obj;
        zzfhtVar = zzcsqVar.zzh;
        zzfnuVar = zzcsqVar.zzg;
        zzfgyVar = zzcsqVar.zze;
        zzfgmVar = zzcsqVar.zzf;
        zzfgmVar2 = zzcsqVar.zzf;
        int i = 1;
        List zzd = zzfnuVar.zzd(zzfgyVar, zzfgmVar, false, new ObfuscatedString(new long[]{151462445919613168L}).toString(), str, zzfgmVar2.zzc);
        zzcsq zzcsqVar2 = this.zza;
        zzcdl zzo = com.google.android.gms.ads.internal.zzt.zzo();
        context = zzcsqVar2.zza;
        if (true == zzo.zzz(context)) {
            i = 2;
        }
        zzfhtVar.zzc(zzd, i);
    }
}
