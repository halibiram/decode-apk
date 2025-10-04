package com.google.android.gms.internal.common;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzl extends zzk {
    private final char zza;

    public zzl(char c) {
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
            cArr[5 - i2] = new ObfuscatedString(new long[]{-3275036964215396522L, -2846178786181167328L, -4344916697864684485L}).toString().charAt(i & 15);
            i >>= 4;
        }
        String copyValueOf = String.copyValueOf(cArr);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{964875061805901987L, -1451921956909540619L, -7083092773095966878L}).toString());
        sb.append(copyValueOf);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5812504772759107268L, -8868766533934995417L}), sb);
    }

    @Override // com.google.android.gms.internal.common.zzo
    public final boolean zza(char c) {
        return c == this.zza;
    }
}
