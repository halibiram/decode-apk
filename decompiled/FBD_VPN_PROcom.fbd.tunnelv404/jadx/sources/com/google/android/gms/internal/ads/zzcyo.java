package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class zzcyo {
    private final Object zza = new Object();
    private final ConcurrentHashMap zzb = new ConcurrentHashMap();
    private final ConcurrentHashMap zzc = new ConcurrentHashMap();
    private final ConcurrentHashMap zzd = new ConcurrentHashMap();

    @VisibleForTesting
    public zzcyo() {
    }

    public final int zza(String str) {
        Integer num = (Integer) this.zzb.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public final long zzb(String str) {
        Long l = (Long) this.zzd.get(str);
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }

    public final void zzc(String str) {
        int valueOf;
        synchronized (this.zza) {
            try {
                Integer num = (Integer) this.zzb.get(str);
                if (num == null) {
                    valueOf = 1;
                } else {
                    valueOf = Integer.valueOf(num.intValue() + 1);
                }
                this.zzb.put(str, valueOf);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzd(String str, String str2, long j) {
        Long l = (Long) this.zzc.get(str2);
        if (l == null) {
            return;
        }
        this.zzc.remove(str2);
        this.zzd.put(str, Long.valueOf(j - l.longValue()));
    }

    public final void zze(String str, long j) {
        this.zzc.put(str, Long.valueOf(j));
    }
}
