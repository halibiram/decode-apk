package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfzz extends zzgaa {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzgaa zzc;

    public zzfzz(zzgaa zzgaaVar, int i, int i2) {
        this.zzc = zzgaaVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzfxe.zza(i, this.zzb, new ObfuscatedString(new long[]{1585824086451990249L, -8087706907699760881L}).toString());
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfzv
    public final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfzv
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfzv
    public final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfzv
    @CheckForNull
    public final Object[] zzg() {
        return this.zzc.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzgaa, java.util.List
    /* renamed from: zzh */
    public final zzgaa subList(int i, int i2) {
        zzfxe.zzh(i, i2, this.zzb);
        int i3 = this.zza;
        return this.zzc.subList(i + i3, i2 + i3);
    }
}
