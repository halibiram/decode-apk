package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzbax {
    private ScheduledFuture zza = null;
    private final Runnable zzb = new zzbat(this);
    private final Object zzc = new Object();

    @Nullable
    private zzbba zzd;

    @Nullable
    private Context zze;

    @Nullable
    private zzbbd zzf;

    public static /* bridge */ /* synthetic */ void zzh(zzbax zzbaxVar) {
        synchronized (zzbaxVar.zzc) {
            try {
                zzbba zzbbaVar = zzbaxVar.zzd;
                if (zzbbaVar == null) {
                    return;
                }
                if (zzbbaVar.isConnected() || zzbaxVar.zzd.isConnecting()) {
                    zzbaxVar.zzd.disconnect();
                }
                zzbaxVar.zzd = null;
                zzbaxVar.zzf = null;
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzl() {
        synchronized (this.zzc) {
            try {
                if (this.zze != null && this.zzd == null) {
                    zzbba zzd = zzd(new zzbav(this), new zzbaw(this));
                    this.zzd = zzd;
                    zzd.checkAvailabilityAndConnect();
                }
            } finally {
            }
        }
    }

    public final long zza(zzbbb zzbbbVar) {
        synchronized (this.zzc) {
            try {
                if (this.zzf == null) {
                    return -2L;
                }
                if (this.zzd.zzp()) {
                    try {
                        return this.zzf.zze(zzbbbVar);
                    } catch (RemoteException e) {
                        zzcec.zzh(new ObfuscatedString(new long[]{7927243534811902922L, -8637295981791859405L, 45612764177531971L, 5608462085544384841L, 7729452693282591829L, 7003517554347061760L}).toString(), e);
                    }
                }
                return -2L;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzbay zzb(zzbbb zzbbbVar) {
        synchronized (this.zzc) {
            if (this.zzf == null) {
                return new zzbay();
            }
            try {
                if (this.zzd.zzp()) {
                    return this.zzf.zzg(zzbbbVar);
                }
                return this.zzf.zzf(zzbbbVar);
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{8291104803377580810L, -2169090828754449071L, 8818066546222386471L, -4355670952396154523L, 8368412340421465923L, 3768138961704647472L}).toString(), e);
                return new zzbay();
            }
        }
    }

    @VisibleForTesting
    public final synchronized zzbba zzd(BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        return new zzbba(this.zze, com.google.android.gms.ads.internal.zzt.zzt().zzb(), baseConnectionCallbacks, baseOnConnectionFailedListener);
    }

    public final void zzi(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.zzc) {
            try {
                if (this.zze != null) {
                    return;
                }
                this.zze = context.getApplicationContext();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzef)).booleanValue()) {
                    zzl();
                } else {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzee)).booleanValue()) {
                        com.google.android.gms.ads.internal.zzt.zzb().zzc(new zzbau(this));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzj() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeg)).booleanValue()) {
            synchronized (this.zzc) {
                try {
                    zzl();
                    ScheduledFuture scheduledFuture = this.zza;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.zza = zzcep.zzd.schedule(this.zzb, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeh)).longValue(), TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
