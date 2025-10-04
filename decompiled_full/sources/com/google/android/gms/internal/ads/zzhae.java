package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public final class zzhae {
    static final Charset zza = Charset.forName(new ObfuscatedString(new long[]{3634475058288445711L, -7811495414627923154L}).toString());
    static final Charset zzb = Charset.forName(new ObfuscatedString(new long[]{1200507217178604627L, 4902224466521680130L}).toString());
    static final Charset zzc = Charset.forName(new ObfuscatedString(new long[]{-4008530401483613500L, -1448199415091408658L, -5899536417333302782L}).toString());
    public static final byte[] zzd;
    public static final ByteBuffer zze;
    public static final zzgyt zzf;

    static {
        byte[] bArr = new byte[0];
        zzd = bArr;
        zze = ByteBuffer.wrap(bArr);
        zzf = zzgyt.zzI(bArr, 0, 0, false);
    }

    public static int zza(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int zzb(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    public static Object zzc(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{-8130938332133496372L, -1821300710492770031L, 7174253721258551631L}).toString());
    }

    public static String zzd(byte[] bArr) {
        return new String(bArr, zzb);
    }
}
