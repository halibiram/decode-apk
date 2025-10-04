package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzebw extends zzebq {
    private String zzg;
    private int zzh = 1;

    public zzebw(Context context) {
        this.zzf = new zzbye(context, com.google.android.gms.ads.internal.zzt.zzt().zzb(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        synchronized (this.zzb) {
            try {
                if (!this.zzd) {
                    this.zzd = true;
                    try {
                        int i = this.zzh;
                        if (i == 2) {
                            this.zzf.zzp().zze(this.zze, new zzebp(this));
                        } else if (i == 3) {
                            this.zzf.zzp().zzh(this.zzg, new zzebp(this));
                        } else {
                            this.zza.zzd(new zzecf(1));
                        }
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.zza.zzd(new zzecf(1));
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{6107023218795085226L, -3377409008297422096L, -3734303363498144040L, -31721024745378010L, 6386306232892075219L, -2694225891060375220L, -2774481709749080919L}).toString());
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
        zzcec.zze(new ObfuscatedString(new long[]{-5950802860122984230L, -590019306036477682L, 7153040547566040546L, -4815815044940147606L, 3922698450221031173L, 4219977550010312837L, -8473149816632907310L, 4586898973172671882L, 9046625448744344928L}).toString());
        this.zza.zzd(new zzecf(1));
    }

    public final ListenableFuture zzb(zzbze zzbzeVar) {
        synchronized (this.zzb) {
            try {
                int i = this.zzh;
                if (i != 1 && i != 2) {
                    return zzgen.zzg(new zzecf(2));
                }
                if (this.zzc) {
                    return this.zza;
                }
                this.zzh = 2;
                this.zzc = true;
                this.zze = zzbzeVar;
                this.zzf.checkAvailabilityAndConnect();
                this.zza.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebu
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzebw.this.zza();
                    }
                }, zzcep.zzf);
                return this.zza;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final ListenableFuture zzc(String str) {
        synchronized (this.zzb) {
            try {
                int i = this.zzh;
                if (i != 1 && i != 3) {
                    return zzgen.zzg(new zzecf(2));
                }
                if (this.zzc) {
                    return this.zza;
                }
                this.zzh = 3;
                this.zzc = true;
                this.zzg = str;
                this.zzf.checkAvailabilityAndConnect();
                this.zza.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebv
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzebw.this.zza();
                    }
                }, zzcep.zzf);
                return this.zza;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
