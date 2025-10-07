package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes2.dex */
final class zzazs implements Comparator {
    public zzazs(zzazu zzazuVar) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        zzazy zzazyVar = (zzazy) obj;
        zzazy zzazyVar2 = (zzazy) obj2;
        int i = zzazyVar.zzc - zzazyVar2.zzc;
        if (i != 0) {
            return i;
        }
        return Long.compare(zzazyVar.zza, zzazyVar2.zza);
    }
}
