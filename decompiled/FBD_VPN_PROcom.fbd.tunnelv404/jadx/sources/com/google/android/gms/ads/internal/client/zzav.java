package com.google.android.gms.ads.internal.client;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbsv;
import com.google.android.gms.internal.ads.zzcaz;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzav extends zzax {
    final /* synthetic */ Context zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzbsv zzc;
    final /* synthetic */ zzaw zzd;

    public zzav(zzaw zzawVar, Context context, String str, zzbsv zzbsvVar) {
        this.zza = context;
        this.zzb = str;
        this.zzc = zzbsvVar;
        this.zzd = zzawVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zza() {
        zzaw.zzt(this.zza, new ObfuscatedString(new long[]{4365864982347253427L, 3488479474645730636L}).toString());
        return new zzfc();
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzb(zzce zzceVar) {
        return zzceVar.zzo(ObjectWrapper.wrap(this.zza), this.zzb, this.zzc, 240304000);
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzc() {
        return zzcaz.zza(this.zza, this.zzb, this.zzc);
    }
}
