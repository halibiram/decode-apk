package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzgxq {
    private final byte[] zza;

    private zzgxq(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.zza = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i2);
    }

    public static zzgxq zzb(byte[] bArr) {
        if (bArr != null) {
            return new zzgxq(bArr, 0, bArr.length);
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{-1235223744448504457L, -4593131958878867943L, 8040351279533582307L, 8272552810639045740L}).toString());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgxq)) {
            return false;
        }
        return Arrays.equals(((zzgxq) obj).zza, this.zza);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        String zza = zzgxi.zza(this.zza);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{6731721280523887288L, 4051859520950516498L}).toString());
        sb.append(zza);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7519061475092608763L, 342129857772628212L}), sb);
    }

    public final int zza() {
        return this.zza.length;
    }

    public final byte[] zzc() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }
}
