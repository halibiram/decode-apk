package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzadv {
    public static final zzadv zza = new zzadv(0, 0);
    public final long zzb;
    public final long zzc;

    public zzadv(long j, long j2) {
        this.zzb = j;
        this.zzc = j2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzadv.class == obj.getClass()) {
            zzadv zzadvVar = (zzadv) obj;
            if (this.zzb == zzadvVar.zzb && this.zzc == zzadvVar.zzc) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.zzb) * 31) + ((int) this.zzc);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-4558526848199393571L, -3402514332619568482L}).toString());
        sb.append(this.zzb);
        sb.append(new ObfuscatedString(new long[]{1297817985159938022L, -6842677662192892168L, -3362503396937934944L}).toString());
        sb.append(this.zzc);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4895478293633741272L, -1257500399838562173L}), sb);
    }
}
