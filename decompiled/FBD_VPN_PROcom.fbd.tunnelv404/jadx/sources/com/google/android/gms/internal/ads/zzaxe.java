package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzaxe extends zzaxx {
    private final Map zzi;
    private final View zzj;
    private final Context zzk;

    public zzaxe(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2, Map map, View view, Context context) {
        super(zzawjVar, new ObfuscatedString(new long[]{8878051944869549674L, 9052626298890503080L, -3060068466173820601L, 1001928722557553238L, -6175973392747454973L, 8526270179437765114L, 425808638404608847L, 7520313632382575210L, 6262219281205288625L}).toString(), new ObfuscatedString(new long[]{2437635684359924977L, 3204676817672339452L, 4345303350718188151L, 4579658015365573751L, 7344787856542406325L, -6010203498702641084L, -4247989236971587580L}).toString(), zzasgVar, i, 85);
        this.zzi = map;
        this.zzj = view;
        this.zzk = context;
    }

    private final long zzc(int i) {
        Map map = this.zzi;
        Integer valueOf = Integer.valueOf(i);
        if (map.containsKey(valueOf)) {
            return ((Long) this.zzi.get(valueOf)).longValue();
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        long[] jArr = {zzc(1), zzc(2)};
        Context context = this.zzk;
        if (context == null) {
            context = this.zzb.zzb();
        }
        long[] jArr2 = (long[]) this.zzf.invoke(null, jArr, context, this.zzj);
        long j = jArr2[0];
        this.zzi.put(1, Long.valueOf(jArr2[1]));
        long j2 = jArr2[2];
        this.zzi.put(2, Long.valueOf(jArr2[3]));
        synchronized (this.zze) {
            this.zze.zzv(j);
            this.zze.zzu(j2);
        }
    }
}
