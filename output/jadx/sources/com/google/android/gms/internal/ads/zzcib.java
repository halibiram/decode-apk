package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzcib {
    private final ArrayList zza = new ArrayList();
    private long zzb;

    public final long zza() {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            for (Map.Entry entry : ((zzhj) it.next()).zze().entrySet()) {
                try {
                    if (new ObfuscatedString(new long[]{-4726765621057189346L, -3805442803441803866L, 1198954691064692377L}).toString().equalsIgnoreCase((String) entry.getKey())) {
                        this.zzb = Math.max(this.zzb, Long.parseLong((String) ((List) entry.getValue()).get(0)));
                    }
                } catch (RuntimeException unused) {
                }
            }
            it.remove();
        }
        return this.zzb;
    }

    public final void zzb(zzhj zzhjVar) {
        this.zza.add(zzhjVar);
    }
}
