package com.google.android.gms.ads.internal.client;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbsv;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzak extends zzax {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzq zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzbsv zzd;
    final /* synthetic */ zzaw zze;

    public zzak(zzaw zzawVar, Context context, zzq zzqVar, String str, zzbsv zzbsvVar) {
        this.zza = context;
        this.zzb = zzqVar;
        this.zzc = str;
        this.zzd = zzbsvVar;
        this.zze = zzawVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zza() {
        zzaw.zzt(this.zza, new ObfuscatedString(new long[]{652255850345613508L, -1947162694862607400L}).toString());
        return new zzew();
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzb(zzce zzceVar) {
        return zzceVar.zzc(ObjectWrapper.wrap(this.zza), this.zzb, this.zzc, this.zzd, 240304000);
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzc() {
        zzk zzkVar;
        zzkVar = this.zze.zza;
        return zzkVar.zza(this.zza, this.zzb, this.zzc, this.zzd, 4);
    }
}
