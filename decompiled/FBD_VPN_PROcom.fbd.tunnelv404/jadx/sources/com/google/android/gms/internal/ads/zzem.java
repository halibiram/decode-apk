package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class zzem {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb = {0, 0, 0, 1};
    private static final String[] zzc = {new ObfuscatedString(new long[]{-3605879403541650617L}).toString(), new ObfuscatedString(new long[]{78704487356341567L, 9118470199707989398L}).toString(), new ObfuscatedString(new long[]{8709178658840603708L, 5847370882939471294L}).toString(), new ObfuscatedString(new long[]{-2661881854521561843L, 9088327359717505837L}).toString()};

    public static String zza(int i, int i2, int i3) {
        return String.format(new ObfuscatedString(new long[]{-4171952336694700073L, 3763471786686212261L, 2075188801518375391L, -6719554398907751200L}).toString(), Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static String zzb(int i, boolean z, int i2, int i3, int[] iArr, int i4) {
        char c;
        String str = zzc[i];
        Integer valueOf = Integer.valueOf(i2);
        Integer valueOf2 = Integer.valueOf(i3);
        if (true != z) {
            c = 'L';
        } else {
            c = 'H';
        }
        StringBuilder sb = new StringBuilder(String.format(Locale.US, new ObfuscatedString(new long[]{-8864764603810355459L, -1181787760980361671L, 4743549097712939959L, 6613008304878148904L}).toString(), str, valueOf, valueOf2, Character.valueOf(c), Integer.valueOf(i4)));
        int i5 = 6;
        while (i5 > 0) {
            int i6 = i5 - 1;
            if (iArr[i6] != 0) {
                break;
            }
            i5 = i6;
        }
        for (int i7 = 0; i7 < i5; i7++) {
            sb.append(String.format(new ObfuscatedString(new long[]{5017724901842758944L, 1309215043687144616L}).toString(), Integer.valueOf(iArr[i7])));
        }
        return sb.toString();
    }

    public static byte[] zzc(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 + 4];
        System.arraycopy(zzb, 0, bArr2, 0, 4);
        System.arraycopy(bArr, i, bArr2, 4, i2);
        return bArr2;
    }
}
