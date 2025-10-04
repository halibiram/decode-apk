package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfyi implements Iterator {

    @CheckForNull
    Map.Entry zza;
    final /* synthetic */ Iterator zzb;
    final /* synthetic */ zzfyj zzc;

    public zzfyi(zzfyj zzfyjVar, Iterator it) {
        this.zzb = it;
        this.zzc = zzfyjVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.zzb.next();
        this.zza = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z;
        int i;
        if (this.zza != null) {
            z = true;
        } else {
            z = false;
        }
        zzfxe.zzj(z, new ObfuscatedString(new long[]{-3649243659960305906L, -2632940438890002261L, 4289656216855295166L, -7942264170858044654L, 1573113145383761221L, -1029352812190966567L, -5484267410810104568L, -8547013710702079652L}).toString());
        Collection collection = (Collection) this.zza.getValue();
        this.zzb.remove();
        zzfyt zzfytVar = this.zzc.zza;
        i = zzfytVar.zzb;
        zzfytVar.zzb = i - collection.size();
        collection.clear();
        this.zza = null;
    }
}
