package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public final class zzgpm {
    public static final Charset zza = Charset.forName(new ObfuscatedString(new long[]{5748630451092319837L, 6564469895761315477L}).toString());

    public static final zzgxq zza(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt >= '!' && charAt <= '~') {
                bArr[i] = (byte) charAt;
            } else {
                throw new zzgpl(new ObfuscatedString(new long[]{-5867483134278481762L, 6958332912890383221L, -4347626567792162887L, 8838081446797002764L, -1981459898219439960L, -3547959726252837748L}).toString() + charAt);
            }
        }
        return zzgxq.zzb(bArr);
    }

    public static boolean zzb(byte[] bArr, byte[] bArr2) {
        if (bArr2.length < bArr.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr2[i] != bArr[i]) {
                return false;
            }
        }
        return true;
    }
}
