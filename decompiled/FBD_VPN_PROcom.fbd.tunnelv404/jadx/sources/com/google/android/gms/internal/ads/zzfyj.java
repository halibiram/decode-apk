package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzfyj extends zzgas {
    final /* synthetic */ zzfyt zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfyj(zzfyt zzfytVar, Map map) {
        super(map);
        this.zza = zzfytVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgas, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        zzgak.zzb(iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        return this.zzd.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        if (this != obj && !this.zzd.keySet().equals(obj)) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zzd.keySet().hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzgas, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzfyi(this, this.zzd.entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.ads.zzgas, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        int i;
        Collection collection = (Collection) this.zzd.remove(obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzfyt zzfytVar = this.zza;
            i = zzfytVar.zzb;
            zzfytVar.zzb = i - size;
            if (size > 0) {
                return true;
            }
            return false;
        }
        return false;
    }
}
