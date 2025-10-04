package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zzfux extends zzfvp {
    private final int zza;

    @Nullable
    private final String zzb;

    public /* synthetic */ zzfux(int i, String str, zzfuw zzfuwVar) {
        this.zza = i;
        this.zzb = str;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfvp) {
            zzfvp zzfvpVar = (zzfvp) obj;
            if (this.zza == zzfvpVar.zza() && ((str = this.zzb) != null ? str.equals(zzfvpVar.zzb()) : zzfvpVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        String str = this.zzb;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode ^ ((this.zza ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-3134736516120981623L, -2489858748179497375L, -196797394925099023L, -5079227340317723676L, -4789938296034744952L}).toString());
        sb.append(this.zza);
        sb.append(new ObfuscatedString(new long[]{-8431123723239007469L, -3179171591616632966L, -7472111022212265103L}).toString());
        sb.append(this.zzb);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7553934025749778830L, 2184028955708387319L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzfvp
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfvp
    @Nullable
    public final String zzb() {
        return this.zzb;
    }
}
