package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzfyy extends AbstractCollection {
    final Collection zza;
    final zzfxf zzb;

    public zzfyy(Collection collection, zzfxf zzfxfVar) {
        this.zza = collection;
        this.zzb = zzfxfVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        zzfxe.zze(this.zzb.zza(obj));
        return this.zza.add(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            zzfxe.zze(this.zzb.zza(it.next()));
        }
        return this.zza.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        zzgag.zzb(this.zza, this.zzb);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        if (zzfyz.zza(this.zza, obj)) {
            return this.zzb.zza(obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        zzfxf zzfxfVar = this.zzb;
        String obfuscatedString = new ObfuscatedString(new long[]{-5178812257394324780L, 3324398039208700119L, 5591186122614605355L}).toString();
        Iterator it = this.zza.iterator();
        zzfxe.zzc(zzfxfVar, obfuscatedString);
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (zzfxfVar.zza(it.next())) {
                if (i != -1) {
                    return false;
                }
            } else {
                i++;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        Iterator it = this.zza.iterator();
        it.getClass();
        zzfxf zzfxfVar = this.zzb;
        zzfxfVar.getClass();
        return new zzgah(it, zzfxfVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(@CheckForNull Object obj) {
        if (contains(obj) && this.zza.remove(obj)) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        Iterator it = this.zza.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.zzb.zza(next) && collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        Iterator it = this.zza.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.zzb.zza(next) && !collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        Iterator it = this.zza.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.zzb.zza(it.next())) {
                i++;
            }
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        Iterator it = iterator();
        ArrayList arrayList = new ArrayList();
        zzgak.zzc(arrayList, it);
        return arrayList.toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Iterator it = iterator();
        ArrayList arrayList = new ArrayList();
        zzgak.zzc(arrayList, it);
        return arrayList.toArray(objArr);
    }
}
