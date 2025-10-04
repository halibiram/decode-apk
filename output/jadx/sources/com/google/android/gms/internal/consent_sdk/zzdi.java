package com.google.android.gms.internal.consent_sdk;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdi extends zzde {
    final transient Object zza;

    public zzdi(Object obj) {
        obj.getClass();
        this.zza = obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzde, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzde, com.google.android.gms.internal.consent_sdk.zzda, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzdf(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.zza.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-6527338947121034978L, -6464689947166577464L}).toString());
        sb.append(obj);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{345750845254892793L, -7460419531594536283L}), sb);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzda
    public final int zza(Object[] objArr, int i) {
        objArr[0] = this.zza;
        return 1;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzde, com.google.android.gms.internal.consent_sdk.zzda
    /* renamed from: zzd */
    public final zzdj iterator() {
        return new zzdf(this.zza);
    }
}
