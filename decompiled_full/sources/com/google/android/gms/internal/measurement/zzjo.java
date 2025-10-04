package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzjo {
    static final zzjo zza = new zzjo(true);
    private static volatile boolean zzb = false;
    private static volatile zzjo zzc;
    private static volatile zzjo zzd;
    private final Map zze;

    public zzjo() {
        this.zze = new HashMap();
    }

    public static zzjo zza() {
        zzjo zzjoVar = zzc;
        if (zzjoVar == null) {
            synchronized (zzjo.class) {
                try {
                    zzjoVar = zzc;
                    if (zzjoVar == null) {
                        zzjoVar = zza;
                        zzc = zzjoVar;
                    }
                } finally {
                }
            }
        }
        return zzjoVar;
    }

    public static zzjo zzb() {
        zzjo zzjoVar = zzd;
        if (zzjoVar != null) {
            return zzjoVar;
        }
        synchronized (zzjo.class) {
            try {
                zzjo zzjoVar2 = zzd;
                if (zzjoVar2 != null) {
                    return zzjoVar2;
                }
                zzjo zzb2 = zzjw.zzb(zzjo.class);
                zzd = zzb2;
                return zzb2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzka zzc(zzlj zzljVar, int i) {
        return (zzka) this.zze.get(new zzjn(zzljVar, i));
    }

    public zzjo(boolean z) {
        this.zze = Collections.emptyMap();
    }
}
