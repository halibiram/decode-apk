package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* loaded from: classes2.dex */
final class zzhct implements Iterator {
    final Iterator zza;
    final /* synthetic */ zzhcu zzb;

    public zzhct(zzhcu zzhcuVar) {
        zzham zzhamVar;
        this.zzb = zzhcuVar;
        zzhamVar = zzhcuVar.zza;
        this.zza = zzhamVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
