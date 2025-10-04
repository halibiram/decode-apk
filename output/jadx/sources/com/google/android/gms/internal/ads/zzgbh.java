package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;

/* loaded from: classes2.dex */
final class zzgbh extends zzgbj implements Serializable {
    static final zzgbh zza = new zzgbh();

    private zzgbh() {
    }

    @Override // com.google.android.gms.internal.ads.zzgbj, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return new ObfuscatedString(new long[]{5248951272443445206L, 825634722179015082L, -5504728381319065472L, 823593048089019976L}).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgbj
    public final zzgbj zza() {
        return zzgbr.zza;
    }
}
