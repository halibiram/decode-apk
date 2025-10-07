package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzdmz extends com.google.android.gms.ads.internal.client.zzdp {
    private final Object zza = new Object();

    @Nullable
    private final com.google.android.gms.ads.internal.client.zzdq zzb;

    @Nullable
    private final zzbtk zzc;

    public zzdmz(@Nullable com.google.android.gms.ads.internal.client.zzdq zzdqVar, @Nullable zzbtk zzbtkVar) {
        this.zzb = zzdqVar;
        this.zzc = zzbtkVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float zze() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float zzf() {
        zzbtk zzbtkVar = this.zzc;
        if (zzbtkVar != null) {
            return zzbtkVar.zzg();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float zzg() {
        zzbtk zzbtkVar = this.zzc;
        if (zzbtkVar != null) {
            return zzbtkVar.zzh();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final int zzh() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzdt zzi() {
        synchronized (this.zza) {
            try {
                com.google.android.gms.ads.internal.client.zzdq zzdqVar = this.zzb;
                if (zzdqVar != null) {
                    return zzdqVar.zzi();
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzj(boolean z) {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzk() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzl() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzm(@Nullable com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        synchronized (this.zza) {
            try {
                com.google.android.gms.ads.internal.client.zzdq zzdqVar = this.zzb;
                if (zzdqVar != null) {
                    zzdqVar.zzm(zzdtVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzn() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean zzo() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean zzp() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean zzq() {
        throw new RemoteException();
    }
}
