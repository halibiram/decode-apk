package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzfyg extends zzgau {
    final transient Map zza;
    final /* synthetic */ zzfyt zzb;

    public zzfyg(zzfyt zzfytVar, Map map) {
        this.zzb = zzfytVar;
        this.zza = map;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Map map;
        zzfyt zzfytVar = this.zzb;
        Map map2 = this.zza;
        map = zzfytVar.zza;
        if (map2 == map) {
            zzfytVar.zzp();
        } else {
            zzgak.zzb(new zzfyf(this));
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        Map map = this.zza;
        map.getClass();
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(@CheckForNull Object obj) {
        if (this != obj && !this.zza.equals(obj)) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final /* bridge */ /* synthetic */ Object get(@CheckForNull Object obj) {
        Collection collection = (Collection) zzgav.zza(this.zza, obj);
        if (collection == null) {
            return null;
        }
        return this.zzb.zzc(obj, collection);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzgau, java.util.AbstractMap, java.util.Map
    public Set keySet() {
        return this.zzb.zzt();
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final /* bridge */ /* synthetic */ Object remove(@CheckForNull Object obj) {
        int i;
        Collection collection = (Collection) this.zza.remove(obj);
        if (collection == null) {
            return null;
        }
        Collection zza = this.zzb.zza();
        zza.addAll(collection);
        zzfyt zzfytVar = this.zzb;
        i = zzfytVar.zzb;
        zzfytVar.zzb = i - collection.size();
        collection.clear();
        return zza;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.zza.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.zza.toString();
    }

    public final Map.Entry zza(Map.Entry entry) {
        Object key = entry.getKey();
        return new zzfzw(key, this.zzb.zzc(key, (Collection) entry.getValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzgau
    public final Set zzb() {
        return new zzfye(this);
    }
}
