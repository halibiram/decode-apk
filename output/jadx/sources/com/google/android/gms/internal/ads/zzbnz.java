package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbnz implements zzbng {
    private final zzdzd zza;

    public zzbnz(zzdzd zzdzdVar) {
        Preconditions.checkNotNull(zzdzdVar, new ObfuscatedString(new long[]{4898950329940399197L, 1607845412272530197L, 9172060834981877736L, -8047874595079312055L, -450476882462503159L, 638911844753469749L}).toString());
        this.zza = zzdzdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        if (map != null && map.containsKey(new ObfuscatedString(new long[]{-15299731223814416L, 5253417604473705496L}).toString())) {
            long j = Long.MAX_VALUE;
            if (map.containsKey(new ObfuscatedString(new long[]{4887716183792862861L, -960205518129741573L}).toString())) {
                try {
                    j = Long.parseLong((String) map.get(new ObfuscatedString(new long[]{-5634037037888145881L, 6957621175314837610L}).toString()));
                } catch (NumberFormatException unused) {
                }
            }
            this.zza.zzi((String) map.get(new ObfuscatedString(new long[]{844411581808433638L, -6981411192404476868L}).toString()), j);
        }
    }
}
