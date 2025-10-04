package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzfg {
    private int zza;
    private long[] zzb;

    public zzfg(int i) {
        this.zzb = new long[32];
    }

    public final int zza() {
        return this.zza;
    }

    public final long zzb(int i) {
        if (i >= 0 && i < this.zza) {
            return this.zzb[i];
        }
        int i2 = this.zza;
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{3364795787581110888L, -2273398588536022434L, 1763100880898848913L}).toString());
        sb.append(i);
        throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2318468289988205173L, -1348544094088592177L, -1188581125850999796L}), sb, i2));
    }

    public final void zzc(long j) {
        int i = this.zza;
        long[] jArr = this.zzb;
        if (i == jArr.length) {
            this.zzb = Arrays.copyOf(jArr, i + i);
        }
        long[] jArr2 = this.zzb;
        int i2 = this.zza;
        this.zza = i2 + 1;
        jArr2[i2] = j;
    }

    public zzfg() {
        this(32);
    }
}
