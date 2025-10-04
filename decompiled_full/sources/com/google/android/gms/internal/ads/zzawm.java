package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.util.DisplayMetrics;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzawm {
    public static final /* synthetic */ int zza = 0;
    private static final char[] zzb = new ObfuscatedString(new long[]{5003731098361696860L, 8876001630302842871L, 5676165433093820654L}).toString().toCharArray();

    public static long zza(double d, int i, DisplayMetrics displayMetrics) {
        return Math.round(d / displayMetrics.density);
    }

    public static String zzb(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            char[] cArr2 = zzb;
            int i2 = i + i;
            cArr[i2] = cArr2[(b & 255) >>> 4];
            cArr[i2 + 1] = cArr2[b & Ascii.SI];
        }
        return new String(cArr);
    }

    public static boolean zzc() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }

    public static boolean zzd(String str) {
        if (str != null && !str.isEmpty()) {
            return false;
        }
        return true;
    }

    public static boolean zze(DisplayMetrics displayMetrics) {
        if (displayMetrics != null && displayMetrics.density != 0.0f) {
            return true;
        }
        return false;
    }

    public static byte[] zzf(String str) {
        int length = str.length();
        if (length % 2 == 0) {
            byte[] bArr = new byte[length / 2];
            for (int i = 0; i < length; i += 2) {
                bArr[i / 2] = (byte) (Character.digit(str.charAt(i + 1), 16) + (Character.digit(str.charAt(i), 16) << 4));
            }
            return bArr;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{8323679321966910404L, 6863571273423618711L, -6927877782282425556L, 5553425715782281513L, -2899798000665764337L}).toString());
    }
}
