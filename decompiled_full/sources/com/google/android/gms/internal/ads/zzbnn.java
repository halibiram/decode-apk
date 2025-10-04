package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbnn implements zzgej {
    final /* synthetic */ com.google.android.gms.ads.internal.client.zza zza;
    final /* synthetic */ Map zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzbnr zzd;

    public zzbnn(zzbnr zzbnrVar, com.google.android.gms.ads.internal.client.zza zzaVar, Map map, String str) {
        this.zza = zzaVar;
        this.zzb = map;
        this.zzc = str;
        this.zzd = zzbnrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{-6636069863166922651L, 2542014412426479940L, -6047918877136390931L, -936234229677669376L, -5106954192998009917L, 5440405122960861333L, 2030035049568354432L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.zza;
        Map map = this.zzb;
        String str = this.zzc;
        this.zzd.zzh((String) obj, zzaVar, map, str);
    }
}
