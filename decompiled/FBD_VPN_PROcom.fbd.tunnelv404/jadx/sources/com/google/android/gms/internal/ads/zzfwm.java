package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfwm extends zzfwl {
    private final char zza;

    public zzfwm(char c) {
        this.zza = c;
    }

    public final String toString() {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        int i = this.zza;
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = new ObfuscatedString(new long[]{1766605453548596535L, 5402374657829953414L, -2184518479591057444L}).toString().charAt(i & 15);
            i >>= 4;
        }
        String copyValueOf = String.copyValueOf(cArr);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-8427124108678015258L, -2675303943256446621L, -5326297077586054440L}).toString());
        sb.append(copyValueOf);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6271156489818335449L, -5835781572599221284L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzfwp
    public final boolean zzb(char c) {
        return c == this.zza;
    }
}
