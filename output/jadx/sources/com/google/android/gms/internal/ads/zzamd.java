package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes2.dex */
final class zzamd {
    private static final Comparator zza = new Comparator() { // from class: com.google.android.gms.internal.ads.zzamb
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int compare;
            compare = Integer.compare(((zzamd) obj).zzb.zzb, ((zzamd) obj2).zzb.zzb);
            return compare;
        }
    };
    private final zzame zzb;
    private final int zzc;

    public /* synthetic */ zzamd(zzame zzameVar, int i, zzamc zzamcVar) {
        this.zzb = zzameVar;
        this.zzc = i;
    }
}
