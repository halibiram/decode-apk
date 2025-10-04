package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgmh extends zzgmi {
    public zzgmh(byte[] bArr, int i) {
        super(bArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzgmi
    public final int zza() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.zzgmi
    public final int[] zzb(int[] iArr, int i) {
        int length = iArr.length;
        if (length == 3) {
            int[] iArr2 = new int[16];
            zzgme.zzb(iArr2, this.zza);
            iArr2[12] = i;
            System.arraycopy(iArr, 0, iArr2, 13, 3);
            return iArr2;
        }
        throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{938635575831101137L, 1963108341212001732L, 2275219327261628412L, 5280875129561802939L, -1623745758257853603L, -3238805128144050466L, 7486112082625883868L, -7609335229639263276L}).toString(), Integer.valueOf(length * 32)));
    }
}
