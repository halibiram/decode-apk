package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
final class zzfyf implements Iterator {
    final Iterator zza;

    @CheckForNull
    Collection zzb;
    final /* synthetic */ zzfyg zzc;

    public zzfyf(zzfyg zzfygVar) {
        this.zzc = zzfygVar;
        this.zza = zzfygVar.zza.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry entry = (Map.Entry) this.zza.next();
        this.zzb = (Collection) entry.getValue();
        return this.zzc.zza(entry);
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z;
        int i;
        if (this.zzb != null) {
            z = true;
        } else {
            z = false;
        }
        zzfxe.zzj(z, new ObfuscatedString(new long[]{5916333016990652210L, -1283857774730819940L, -5136436298398267430L, 145179742675264450L, 6237106338975551542L, -3423585126194118333L, 7432842202063133898L, -970918529633554838L}).toString());
        this.zza.remove();
        zzfyt zzfytVar = this.zzc.zzb;
        i = zzfytVar.zzb;
        zzfytVar.zzb = i - this.zzb.size();
        this.zzb.clear();
        this.zzb = null;
    }
}
