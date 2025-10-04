package com.google.android.gms.internal.consent_sdk;

import com.panda912.muddy.ObfuscatedString;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdc extends zzdd {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzdd zzc;

    public zzdc(zzdd zzddVar, int i, int i2) {
        this.zzc = zzddVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzcw.zza(i, this.zzb, new ObfuscatedString(new long[]{7059291494454818271L, 8630763780955489036L}).toString());
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzda
    public final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzda
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzda
    @CheckForNull
    public final Object[] zze() {
        return this.zzc.zze();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdd, java.util.List
    /* renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final zzdd subList(int i, int i2) {
        zzcw.zzc(i, i2, this.zzb);
        int i3 = this.zza;
        return this.zzc.subList(i + i3, i2 + i3);
    }
}
