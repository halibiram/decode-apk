package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.panda912.muddy.ObfuscatedString;
import j$.util.concurrent.ConcurrentHashMap;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public final class zzeow {
    private final ConcurrentHashMap zza = new ConcurrentHashMap();
    private final zzdua zzb;

    public zzeow(zzdua zzduaVar) {
        this.zzb = zzduaVar;
    }

    @CheckForNull
    public final zzbus zza(String str) {
        if (this.zza.containsKey(str)) {
            return (zzbus) this.zza.get(str);
        }
        return null;
    }

    public final void zzb(String str) {
        try {
            this.zza.put(str, this.zzb.zzb(str));
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4794977970569454253L, -6681718680526344694L, -3215830300320995773L, 4839922687986436957L, 5764896026918189622L}).toString(), e);
        }
    }
}
