package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzdr {
    public static final zzdr zza = new zzdr(-1, -1, -1);
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;

    public zzdr(int i, int i2, int i3) {
        int i4;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        if (zzfy.zzH(i3)) {
            i4 = zzfy.zzl(i3, i2);
        } else {
            i4 = -1;
        }
        this.zze = i4;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdr)) {
            return false;
        }
        zzdr zzdrVar = (zzdr) obj;
        if (this.zzb == zzdrVar.zzb && this.zzc == zzdrVar.zzc && this.zzd == zzdrVar.zzd) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzd)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{1022169142481005240L, -1844983881657067791L, 1260654174626164482L, -8096147511157761835L}).toString());
        sb.append(this.zzb);
        sb.append(new ObfuscatedString(new long[]{-7469490001195461085L, -6253647208898425440L, 2471408310946782426L}).toString());
        sb.append(this.zzc);
        sb.append(new ObfuscatedString(new long[]{-5760432816321869201L, -1074474243651667871L, 4822135441892374015L}).toString());
        sb.append(this.zzd);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-617269733647724387L, 4615418887351763357L}), sb);
    }
}
