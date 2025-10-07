package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzgku extends zzghi {
    private final String zza;

    private zzgku(String str) {
        this.zza = str;
    }

    public static zzgku zzb(String str) {
        return new zzgku(str);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgku)) {
            return false;
        }
        return ((zzgku) obj).zza.equals(this.zza);
    }

    public final int hashCode() {
        return Objects.hash(zzgku.class, this.zza);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{2904456430431015563L, -5047040056524035226L, -1377347166192486558L, 3165576590042233119L, -5733475656733412418L, -6559107327566868993L}).toString());
        sb.append(this.zza);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1679684272899341958L, -648076087993352006L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzggq
    public final boolean zza() {
        return false;
    }

    public final String zzc() {
        return this.zza;
    }
}
