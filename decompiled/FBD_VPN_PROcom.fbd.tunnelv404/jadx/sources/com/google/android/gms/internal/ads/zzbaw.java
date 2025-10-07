package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbaw implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzbax zza;

    public zzbaw(zzbax zzbaxVar) {
        this.zza = zzbaxVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Object obj;
        zzbba zzbbaVar;
        Object obj2;
        obj = this.zza.zzc;
        synchronized (obj) {
            try {
                this.zza.zzf = null;
                zzbax zzbaxVar = this.zza;
                zzbbaVar = zzbaxVar.zzd;
                if (zzbbaVar != null) {
                    zzbaxVar.zzd = null;
                }
                obj2 = this.zza.zzc;
                obj2.notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
