package com.google.android.gms.internal.ads;

import android.view.View;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdmu implements zzgej {
    final /* synthetic */ View zza;
    final /* synthetic */ zzdmv zzb;

    public zzdmu(zzdmv zzdmvVar, View view) {
        this.zza = view;
        this.zzb = zzdmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfb)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzo().zzv(th, new ObfuscatedString(new long[]{4779793926805460039L, 5415402316421690190L, 6569942204133374036L, 657569334968317502L}).toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        this.zzb.zzac(this.zza, (zzfod) obj);
    }
}
