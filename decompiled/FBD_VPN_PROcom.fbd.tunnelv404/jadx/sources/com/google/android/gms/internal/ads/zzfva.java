package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zzfva extends zzfvs {

    @Nullable
    private final String zza;

    @Nullable
    private final String zzb;

    public /* synthetic */ zzfva(String str, String str2, zzfuz zzfuzVar) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfvs) {
            zzfvs zzfvsVar = (zzfvs) obj;
            String str = this.zza;
            if (str != null ? str.equals(zzfvsVar.zzb()) : zzfvsVar.zzb() == null) {
                String str2 = this.zzb;
                if (str2 != null ? str2.equals(zzfvsVar.zza()) : zzfvsVar.zza() == null) {
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
        sb.append(new ObfuscatedString(new long[]{371597750117029311L, -5581566916510849001L, 2013180835704263391L, -5687569828536705418L, 6110468572330758555L, 3779343747172247041L, 3286281450249926335L}).toString());
        sb.append(this.zza);
        sb.append(new ObfuscatedString(new long[]{1344916764716890740L, 6190333015048953988L}).toString());
        sb.append(this.zzb);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2516056097861369065L, 3787554320764307275L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzfvs
    @Nullable
    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfvs
    @Nullable
    public final String zzb() {
        return this.zza;
    }
}
