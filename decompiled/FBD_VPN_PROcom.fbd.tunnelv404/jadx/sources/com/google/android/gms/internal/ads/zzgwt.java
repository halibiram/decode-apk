package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.Provider;
import java.util.Iterator;

/* loaded from: classes2.dex */
final class zzgwt implements zzgwy {
    private final zzgxh zza;

    @Override // com.google.android.gms.internal.ads.zzgwy
    public final Object zza(String str) {
        Iterator it = zzgwz.zzb(new ObfuscatedString(new long[]{-2895435382246370527L, 3229157486746615942L, -7640127685900776827L}).toString(), new ObfuscatedString(new long[]{-2534693110287103231L, -1300779122762013033L, 7773564473796717080L}).toString()).iterator();
        while (it.hasNext()) {
            try {
                return this.zza.zza(str, (Provider) it.next());
            } catch (Exception unused) {
            }
        }
        return this.zza.zza(str, null);
    }
}
