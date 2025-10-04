package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzebs extends zzebq {
    public zzebs(Context context) {
        this.zzf = new zzbye(context, com.google.android.gms.ads.internal.zzt.zzt().zzb(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzb) {
            try {
                if (!this.zzd) {
                    this.zzd = true;
                    try {
                        this.zzf.zzp().zzf(this.zze, new zzebp(this));
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.zza.zzd(new zzecf(1));
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{-6709754825826866624L, 6898385945277696703L, 5568377623743435773L, 752999097085007687L, 7170594992336349030L, -8612026213869044422L}).toString());
                        this.zza.zzd(new zzecf(1));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final ListenableFuture zzb(zzbze zzbzeVar) {
        synchronized (this.zzb) {
            try {
                if (this.zzc) {
                    return this.zza;
                }
                this.zzc = true;
                this.zze = zzbzeVar;
                this.zzf.checkAvailabilityAndConnect();
                this.zza.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebr
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzebs.this.zza();
                    }
                }, zzcep.zzf);
                return this.zza;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
