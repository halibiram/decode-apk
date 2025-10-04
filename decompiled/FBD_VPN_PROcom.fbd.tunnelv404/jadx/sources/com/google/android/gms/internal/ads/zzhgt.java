package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* loaded from: classes2.dex */
final class zzhgt implements Iterator {
    int zza = 0;
    final /* synthetic */ zzhgu zzb;

    public zzhgt(zzhgu zzhguVar) {
        this.zzb = zzhguVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zza >= this.zzb.zza.size() && !this.zzb.zzb.hasNext()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.zza < this.zzb.zza.size()) {
            zzhgu zzhguVar = this.zzb;
            int i = this.zza;
            this.zza = i + 1;
            return zzhguVar.zza.get(i);
        }
        zzhgu zzhguVar2 = this.zzb;
        zzhguVar2.zza.add(zzhguVar2.zzb.next());
        return next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
