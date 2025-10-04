package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbav implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zzbax zza;

    public zzbav(zzbax zzbaxVar) {
        this.zza = zzbaxVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        Object obj;
        Object obj2;
        zzbba zzbbaVar;
        zzbba zzbbaVar2;
        obj = this.zza.zzc;
        synchronized (obj) {
            try {
                zzbax zzbaxVar = this.zza;
                zzbbaVar = zzbaxVar.zzd;
                if (zzbbaVar != null) {
                    zzbbaVar2 = zzbaxVar.zzd;
                    zzbaxVar.zzf = zzbbaVar2.zzq();
                }
            } catch (DeadObjectException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{4941968894249976969L, 4922258859958937708L, 3880904208191827046L, -5063513670171740848L, -4951428295431782273L, -638722833476303466L, -8810113471421795801L}).toString(), e);
                zzbax.zzh(this.zza);
            }
            obj2 = this.zza.zzc;
            obj2.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Object obj;
        Object obj2;
        obj = this.zza.zzc;
        synchronized (obj) {
            this.zza.zzf = null;
            obj2 = this.zza.zzc;
            obj2.notifyAll();
        }
    }
}
