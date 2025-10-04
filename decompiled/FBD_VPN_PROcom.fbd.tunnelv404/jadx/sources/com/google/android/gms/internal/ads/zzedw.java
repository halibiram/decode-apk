package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public abstract class zzedw implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    protected final zzceu zza = new zzceu();

    @GuardedBy("this")
    protected boolean zzb = false;

    @GuardedBy("this")
    protected boolean zzc = false;

    @GuardedBy("this")
    protected zzbyh zzd;
    protected Context zze;
    protected Looper zzf;
    protected ScheduledExecutorService zzg;

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        String format = String.format(Locale.US, new ObfuscatedString(new long[]{5535849953586105061L, 5394945189074708863L, 5135371550354887226L, 7084069009175085053L, -3695603758060439339L, 7675584522309512500L, 1227141307847575034L}).toString(), Integer.valueOf(connectionResult.getErrorCode()));
        zzcec.zze(format);
        this.zza.zzd(new zzecf(1, format));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public void onConnectionSuspended(int i) {
        String format = String.format(Locale.US, new ObfuscatedString(new long[]{-383947451397748885L, -4031797126798248231L, 6047600319871761013L, 6480429862296880643L, 5221423535061226477L, 633369456138935643L, -9174845941560049956L, 5670236855019985385L}).toString(), Integer.valueOf(i));
        zzcec.zze(format);
        this.zza.zzd(new zzecf(1, format));
    }

    public final synchronized void zzb() {
        try {
            if (this.zzd == null) {
                this.zzd = new zzbyh(this.zze, this.zzf, this, this);
            }
            this.zzd.checkAvailabilityAndConnect();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzc() {
        try {
            this.zzc = true;
            zzbyh zzbyhVar = this.zzd;
            if (zzbyhVar == null) {
                return;
            }
            if (!zzbyhVar.isConnected()) {
                if (this.zzd.isConnecting()) {
                }
                Binder.flushPendingCommands();
            }
            this.zzd.disconnect();
            Binder.flushPendingCommands();
        } catch (Throwable th) {
            throw th;
        }
    }
}
