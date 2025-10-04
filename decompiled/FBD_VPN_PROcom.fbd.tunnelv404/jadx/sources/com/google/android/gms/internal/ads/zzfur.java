package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zzfur extends zzfvc {

    @Nullable
    private final String zza;

    @Nullable
    private final String zzb;

    public /* synthetic */ zzfur(String str, String str2, zzfuq zzfuqVar) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfvc) {
            zzfvc zzfvcVar = (zzfvc) obj;
            String str = this.zza;
            if (str != null ? str.equals(zzfvcVar.zzb()) : zzfvcVar.zzb() == null) {
                String str2 = this.zzb;
                if (str2 != null ? str2.equals(zzfvcVar.zza()) : zzfvcVar.zza() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        String str = this.zza;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        String str2 = this.zzb;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{1093731023058371317L, 6431415459264818722L, 8078313866890747061L, -6188907119067986302L, 6502425333471859595L, 1621741806339466004L, 479739666840286704L}).toString());
        sb.append(this.zza);
        sb.append(new ObfuscatedString(new long[]{-1401516969667451418L, -7375616753547993477L}).toString());
        sb.append(this.zzb);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7118955441742514012L, 7506739671878535061L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzfvc
    @Nullable
    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfvc
    @Nullable
    public final String zzb() {
        return this.zza;
    }
}
