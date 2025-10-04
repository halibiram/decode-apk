package com.google.android.gms.internal.ads;

import android.os.Binder;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzebq implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    protected final zzceu zza = new zzceu();
    protected final Object zzb = new Object();
    protected boolean zzc = false;
    protected boolean zzd = false;
    protected zzbze zze;

    @GuardedBy("lock")
    @VisibleForTesting(otherwise = 3)
    protected zzbye zzf;

    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        zzcec.zze(new ObfuscatedString(new long[]{4237979937770496560L, -7521932794775337259L, 2208943908985477062L, -5011602204514414099L, -3772573752943563704L, 719554508792141679L, -4661497704251372380L}).toString());
        this.zza.zzd(new zzecf(1));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        zzcec.zze(new ObfuscatedString(new long[]{8442821815464600695L, 8282290768984565082L, -3959870125431964588L, -4035806916923825101L, 8122130910385941046L, -9098504182969555725L, 4584034917663014724L, -2661145036875085843L, -8105646616359796480L}).toString());
    }

    public final void zza() {
        synchronized (this.zzb) {
            try {
                this.zzd = true;
                if (!this.zzf.isConnected()) {
                    if (this.zzf.isConnecting()) {
                    }
                    Binder.flushPendingCommands();
                }
                this.zzf.disconnect();
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
