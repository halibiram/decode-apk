package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
class zzfyc extends zzfyt implements zzgal {
    public zzfyc(Map map) {
        super(map);
    }

    @Override // com.google.android.gms.internal.ads.zzfyt
    public /* bridge */ /* synthetic */ Collection zza() {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzfyt
    public final Collection zzb(Collection collection) {
        return DesugarCollections.unmodifiableList(collection);
    }

    @Override // com.google.android.gms.internal.ads.zzfyt
    public final Collection zzc(Object obj, Collection collection) {
        return zzh(obj, (List) collection, null);
    }
}
