package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzaps {
    private final String zza;
    private final String zzb;

    public zzaps(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaps.class == obj.getClass()) {
            zzaps zzapsVar = (zzaps) obj;
            if (TextUtils.equals(this.zza, zzapsVar.zza) && TextUtils.equals(this.zzb, zzapsVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode() + (this.zza.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-7370133075426000746L, 8983854074120141388L, -4815813762933467434L}).toString());
        sb.append(this.zza);
        sb.append(new ObfuscatedString(new long[]{6130730027129764111L, 1804537778781753975L}).toString());
        sb.append(this.zzb);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{555580925665726857L, -5337208939420210691L}), sb);
    }

    public final String zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }
}
