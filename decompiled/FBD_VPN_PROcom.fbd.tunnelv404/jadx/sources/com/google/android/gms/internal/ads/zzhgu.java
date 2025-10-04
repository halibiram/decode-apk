package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class zzhgu extends AbstractList {
    private static final zzhgv zzc = zzhgv.zzb(zzhgu.class);
    final List zza;
    final Iterator zzb;

    public zzhgu(List list, Iterator it) {
        this.zza = list;
        this.zzb = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        if (this.zza.size() > i) {
            return this.zza.get(i);
        }
        if (this.zzb.hasNext()) {
            this.zza.add(this.zzb.next());
            return get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new zzhgt(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        zzhgv zzhgvVar = zzc;
        zzhgvVar.zza(new ObfuscatedString(new long[]{-91121815431540981L, 5360875396104698897L, -2351252033867808461L, 25294196336936982L, -6834129924670164407L, 6872371988870879920L}).toString());
        zzhgvVar.zza(new ObfuscatedString(new long[]{-1201049205642026170L, -7853677408477440171L, -5699269513422864072L}).toString());
        while (this.zzb.hasNext()) {
            this.zza.add(this.zzb.next());
        }
        return this.zza.size();
    }
}
