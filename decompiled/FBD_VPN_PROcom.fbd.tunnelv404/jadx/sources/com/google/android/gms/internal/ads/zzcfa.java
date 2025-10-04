package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcfa implements zzgej {
    final /* synthetic */ zzcey zza;
    final /* synthetic */ zzcew zzb;

    public zzcfa(zzcfb zzcfbVar, zzcey zzceyVar, zzcew zzcewVar) {
        this.zza = zzceyVar;
        this.zzb = zzcewVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zzb(@Nullable Object obj) {
        this.zza.zza(obj);
    }
}
