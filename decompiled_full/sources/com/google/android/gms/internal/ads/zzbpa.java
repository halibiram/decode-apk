package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbpa implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zzceu zza;
    final /* synthetic */ zzbpc zzb;

    public zzbpa(zzbpc zzbpcVar, zzceu zzceuVar) {
        this.zza = zzceuVar;
        this.zzb = zzbpcVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        zzbop zzbopVar;
        try {
            zzceu zzceuVar = this.zza;
            zzbopVar = this.zzb.zza;
            zzceuVar.zzc(zzbopVar.zzp());
        } catch (DeadObjectException e) {
            this.zza.zzd(e);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.zza.zzd(new RuntimeException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-5336494073459844375L, -2072922465199572578L, -7211133819476579041L, 3571173375559174922L}), new StringBuilder(), i)));
    }
}
