package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzbro {
    private final Object zza = new Object();
    private final Object zzb = new Object();
    private zzbrx zzc;
    private zzbrx zzd;

    private static final Context zzc(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            return context;
        }
        return applicationContext;
    }

    public final zzbrx zza(Context context, zzcei zzceiVar, @Nullable zzfnc zzfncVar) {
        zzbrx zzbrxVar;
        synchronized (this.zza) {
            try {
                if (this.zzc == null) {
                    this.zzc = new zzbrx(zzc(context), zzceiVar, (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zza), zzfncVar);
                }
                zzbrxVar = this.zzc;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbrxVar;
    }

    public final zzbrx zzb(Context context, zzcei zzceiVar, zzfnc zzfncVar) {
        zzbrx zzbrxVar;
        synchronized (this.zzb) {
            try {
                if (this.zzd == null) {
                    this.zzd = new zzbrx(zzc(context), zzceiVar, (String) zzbik.zzb.zze(), zzfncVar);
                }
                zzbrxVar = this.zzd;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbrxVar;
    }
}
