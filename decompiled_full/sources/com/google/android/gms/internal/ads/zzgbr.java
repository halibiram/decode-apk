package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;

/* loaded from: classes2.dex */
final class zzgbr extends zzgbj implements Serializable {
    static final zzgbr zza = new zzgbr();

    private zzgbr() {
    }

    @Override // com.google.android.gms.internal.ads.zzgbj, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return new ObfuscatedString(new long[]{5478885998614974734L, -5220179114853794603L, -3750263707840155954L, 3742432318290858146L, 2916772865662086002L}).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgbj
    public final zzgbj zza() {
        return zzgbh.zza;
    }
}
