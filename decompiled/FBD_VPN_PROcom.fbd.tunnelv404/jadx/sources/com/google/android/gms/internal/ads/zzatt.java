package com.google.android.gms.internal.ads;

import android.util.Base64;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzatt {
    public static String zza(byte[] bArr, boolean z) {
        int i;
        if (true != z) {
            i = 2;
        } else {
            i = 11;
        }
        return Base64.encodeToString(bArr, i);
    }

    public static byte[] zzb(String str, boolean z) {
        byte[] decode = Base64.decode(str, 2);
        if (decode.length == 0 && str.length() > 0) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{3073222326622783849L, 153466473135527774L, 379760286062012791L, 7371646090408476925L}).toString().concat(str));
        }
        return decode;
    }
}
