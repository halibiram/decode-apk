package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzazk {
    private final Object zza = new Object();
    private zzazi zzb = null;
    private boolean zzc = false;

    @Nullable
    public final Activity zza() {
        synchronized (this.zza) {
            try {
                zzazi zzaziVar = this.zzb;
                if (zzaziVar != null) {
                    return zzaziVar.zza();
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public final Context zzb() {
        synchronized (this.zza) {
            try {
                zzazi zzaziVar = this.zzb;
                if (zzaziVar != null) {
                    return zzaziVar.zzb();
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzc(zzazj zzazjVar) {
        synchronized (this.zza) {
            try {
                if (this.zzb == null) {
                    this.zzb = new zzazi();
                }
                this.zzb.zzf(zzazjVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzd(Context context) {
        Application application;
        synchronized (this.zza) {
            try {
                if (!this.zzc) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext == null) {
                        applicationContext = context;
                    }
                    if (applicationContext instanceof Application) {
                        application = (Application) applicationContext;
                    } else {
                        application = null;
                    }
                    if (application == null) {
                        zzcec.zzj(new ObfuscatedString(new long[]{-17806777929429270L, 9147726538080881921L, 1434524438892794673L, -7531649462418609139L, -4107348258456106522L, 8373035764834417574L}).toString());
                        return;
                    }
                    if (this.zzb == null) {
                        this.zzb = new zzazi();
                    }
                    this.zzb.zzg(application, context);
                    this.zzc = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zze(zzazj zzazjVar) {
        synchronized (this.zza) {
            try {
                zzazi zzaziVar = this.zzb;
                if (zzaziVar == null) {
                    return;
                }
                zzaziVar.zzh(zzazjVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
