package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes2.dex */
final class zzgay extends zzgbc {
    final /* synthetic */ Comparator zza;

    public zzgay(Comparator comparator) {
        this.zza = comparator;
    }

    @Override // com.google.android.gms.internal.ads.zzgbc
    public final Map zza() {
        return new TreeMap(this.zza);
    }
}
