package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbbk implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzceu zza;
    final /* synthetic */ zzbbl zzb;

    public zzbbk(zzbbl zzbblVar, zzceu zzceuVar) {
        this.zza = zzceuVar;
        this.zzb = zzbblVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Object obj;
        obj = this.zzb.zzd;
        synchronized (obj) {
            this.zza.zzd(new RuntimeException(new ObfuscatedString(new long[]{6390242323770000479L, 8266405590356860879L, 6814472971510255201L, -5039393459520949992L}).toString()));
        }
    }
}
