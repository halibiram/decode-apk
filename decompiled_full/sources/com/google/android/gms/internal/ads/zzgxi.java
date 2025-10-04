package com.google.android.gms.internal.ads;

import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgxi {
    public static String zza(byte[] bArr) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b : bArr) {
            String obfuscatedString = new ObfuscatedString(new long[]{-6725801537836369054L, -1547293429273673578L, 8405093870363632975L}).toString();
            sb.append(obfuscatedString.charAt((b & 255) >> 4));
            sb.append(obfuscatedString.charAt(b & Ascii.SI));
        }
        return sb.toString();
    }

    public static byte[] zzb(String str) {
        if (str.length() % 2 == 0) {
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i + i;
                int digit = Character.digit(str.charAt(i2), 16);
                int digit2 = Character.digit(str.charAt(i2 + 1), 16);
                if (digit != -1 && digit2 != -1) {
                    bArr[i] = (byte) ((digit * 16) + digit2);
                } else {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{3229446650843796252L, 5806127416022753919L, 6099383177260573567L, 3983604872634476019L}).toString());
                }
            }
            return bArr;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{5625699400684713833L, -2939908364598203344L, -4443488271073179322L, 5527603614633706391L, 3039482783338043464L}).toString());
    }
}
