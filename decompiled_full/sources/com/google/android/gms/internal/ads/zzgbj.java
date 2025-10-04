package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes2.dex */
public abstract class zzgbj implements Comparator {
    public static zzgbj zzb(Comparator comparator) {
        if (comparator instanceof zzgbj) {
            return (zzgbj) comparator;
        }
        return new zzfzl(comparator);
    }

    public static zzgbj zzc() {
        return zzgbh.zza;
    }

    @Override // java.util.Comparator
    public abstract int compare(Object obj, Object obj2);

    public zzgbj zza() {
        return new zzgbs(this);
    }
}
