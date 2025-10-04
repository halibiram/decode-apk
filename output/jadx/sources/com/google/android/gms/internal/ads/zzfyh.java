package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzfyh implements Iterator {
    final Iterator zza;

    @CheckForNull
    Object zzb;

    @CheckForNull
    Collection zzc;
    Iterator zzd;
    final /* synthetic */ zzfyt zze;

    public zzfyh(zzfyt zzfytVar) {
        Map map;
        this.zze = zzfytVar;
        map = zzfytVar.zza;
        this.zza = map.entrySet().iterator();
        this.zzb = null;
        this.zzc = null;
        this.zzd = zzgai.zza;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.zza.hasNext() && !this.zzd.hasNext()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.zzd.hasNext()) {
            Map.Entry entry = (Map.Entry) this.zza.next();
            this.zzb = entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.zzc = collection;
            this.zzd = collection.iterator();
        }
        return this.zzd.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        this.zzd.remove();
        Collection collection = this.zzc;
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.zza.remove();
        }
        zzfyt zzfytVar = this.zze;
        i = zzfytVar.zzb;
        zzfytVar.zzb = i - 1;
    }
}
