package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class zzcci {

    @GuardedBy("ScionComponent.class")
    @VisibleForTesting
    static zzcci zza;

    public static synchronized zzcci zzd(Context context) {
        synchronized (zzcci.class) {
            try {
                zzcci zzcciVar = zza;
                if (zzcciVar != null) {
                    return zzcciVar;
                }
                Context applicationContext = context.getApplicationContext();
                zzbgc.zza(applicationContext);
                com.google.android.gms.ads.internal.util.zzg zzi = com.google.android.gms.ads.internal.zzt.zzo().zzi();
                zzi.zzr(applicationContext);
                zzcca zzccaVar = new zzcca(null);
                zzccaVar.zzb(applicationContext);
                zzccaVar.zzc(com.google.android.gms.ads.internal.zzt.zzB());
                zzccaVar.zza(zzi);
                zzccaVar.zzd(com.google.android.gms.ads.internal.zzt.zzn());
                zzcci zze = zzccaVar.zze();
                zza = zze;
                zze.zza().zza();
                zzccm zzc = zza.zzc();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaq)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.zzp();
                    Map zzu = com.google.android.gms.ads.internal.util.zzt.zzu((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzas));
                    Iterator it = zzu.keySet().iterator();
                    while (it.hasNext()) {
                        zzc.zzc((String) it.next());
                    }
                    zzc.zzd(new zzcck(zzc, zzu));
                }
                return zza;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract zzcbt zza();

    public abstract zzcbx zzb();

    public abstract zzccm zzc();
}
