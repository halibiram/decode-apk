package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import androidx.annotation.Nullable;
import java.util.concurrent.Future;

/* loaded from: classes2.dex */
public final class zzbbl {

    @Nullable
    private zzbba zza;
    private boolean zzb;
    private final Context zzc;
    private final Object zzd = new Object();

    public zzbbl(Context context) {
        this.zzc = context;
    }

    public static /* bridge */ /* synthetic */ void zze(zzbbl zzbblVar) {
        synchronized (zzbblVar.zzd) {
            try {
                zzbba zzbbaVar = zzbblVar.zza;
                if (zzbbaVar == null) {
                    return;
                }
                zzbbaVar.disconnect();
                zzbblVar.zza = null;
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Future zzc(zzbbb zzbbbVar) {
        zzbbf zzbbfVar = new zzbbf(this);
        zzbbj zzbbjVar = new zzbbj(this, zzbbbVar, zzbbfVar);
        zzbbk zzbbkVar = new zzbbk(this, zzbbfVar);
        synchronized (this.zzd) {
            zzbba zzbbaVar = new zzbba(this.zzc, com.google.android.gms.ads.internal.zzt.zzt().zzb(), zzbbjVar, zzbbkVar);
            this.zza = zzbbaVar;
            zzbbaVar.checkAvailabilityAndConnect();
        }
        return zzbbfVar;
    }
}
