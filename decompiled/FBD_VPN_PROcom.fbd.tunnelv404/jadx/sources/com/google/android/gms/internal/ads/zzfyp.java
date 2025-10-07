package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
class zzfyp implements Iterator {
    final Iterator zza;
    final Collection zzb;
    final /* synthetic */ zzfyq zzc;

    public zzfyp(zzfyq zzfyqVar, Iterator it) {
        this.zzc = zzfyqVar;
        this.zzb = zzfyqVar.zzb;
        this.zza = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zza();
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        zza();
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        this.zza.remove();
        zzfyt zzfytVar = this.zzc.zze;
        i = zzfytVar.zzb;
        zzfytVar.zzb = i - 1;
        this.zzc.zzc();
    }

    public final void zza() {
        this.zzc.zzb();
        if (this.zzc.zzb == this.zzb) {
        } else {
            throw new ConcurrentModificationException();
        }
    }

    public zzfyp(zzfyq zzfyqVar) {
        Iterator it;
        this.zzc = zzfyqVar;
        Collection collection = zzfyqVar.zzb;
        this.zzb = collection;
        if (collection instanceof List) {
            it = ((List) collection).listIterator();
        } else {
            it = collection.iterator();
        }
        this.zza = it;
    }
}
