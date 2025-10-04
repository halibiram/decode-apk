package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzgml extends zzgmi {
    public zzgml(byte[] bArr, int i) {
        super(bArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzgmi
    public final int zza() {
        return 24;
    }

    @Override // com.google.android.gms.internal.ads.zzgmi
    public final int[] zzb(int[] iArr, int i) {
        int length = iArr.length;
        if (length == 6) {
            int[] iArr2 = new int[16];
            zzgme.zzb(r3, this.zza);
            int[] iArr3 = {0, 0, 0, 0, iArr3[12], iArr3[13], iArr3[14], iArr3[15], 0, 0, 0, 0, iArr[0], iArr[1], iArr[2], iArr[3]};
            zzgme.zzc(iArr3);
            zzgme.zzb(iArr2, Arrays.copyOf(iArr3, 8));
            iArr2[12] = i;
            iArr2[13] = 0;
            iArr2[14] = iArr[4];
            iArr2[15] = iArr[5];
            return iArr2;
        }
        throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-5402745476884176038L, -8794536264071004748L, -3690294100018204235L, 6693444292285972554L, -7428401459176100321L, 4691509305085755474L, -1242803620092699724L, 5988341904463512333L}).toString(), Integer.valueOf(length * 32)));
    }
}
