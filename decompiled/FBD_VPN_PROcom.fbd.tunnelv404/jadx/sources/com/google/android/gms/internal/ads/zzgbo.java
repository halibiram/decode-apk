package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;

/* loaded from: classes2.dex */
final class zzgbo extends zzgaa {
    private final transient Object[] zza;
    private final transient int zzb;
    private final transient int zzc;

    public zzgbo(Object[] objArr, int i, int i2) {
        this.zza = objArr;
        this.zzb = i;
        this.zzc = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzfxe.zza(i, this.zzc, new ObfuscatedString(new long[]{-5963560088204732337L, -6022262689332681830L}).toString());
        Object obj = this.zza[i + i + this.zzb];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfzv
    public final boolean zzf() {
        return true;
    }
}
