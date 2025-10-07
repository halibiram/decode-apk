package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzebo extends zzebq {
    public zzebo(Context context) {
        this.zzf = new zzbye(context, com.google.android.gms.ads.internal.zzt.zzt().zzb(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzb) {
            try {
                if (!this.zzd) {
                    this.zzd = true;
                    try {
                        this.zzf.zzp().zzg(this.zze, new zzebp(this));
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.zza.zzd(new zzecf(1));
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{-2816846209542849412L, 5462571385613178849L, -909835727497315786L, -7022528942250377283L, 6243920378889718978L, -5155602946000737274L}).toString());
                        this.zza.zzd(new zzecf(1));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzebq, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        zzcec.zze(new ObfuscatedString(new long[]{-5975967351652156105L, 4698581997771313477L, -4843370430505371474L, -2841027539682432337L, -4537949702994957415L, 432635677191033345L, -6329270578467421746L, 2579688166934180430L, -6188723789639415357L}).toString());
        this.zza.zzd(new zzecf(1));
    }
}
