package com.tknetwork.tunnel.core;

import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;

/* loaded from: classes3.dex */
public class CIDRIP {
    int len;
    String mIp;

    public CIDRIP(String str, String str2) {
        this.mIp = str;
        long j = getInt(str2) + 4294967296L;
        int i = 0;
        while ((1 & j) == 0) {
            i++;
            j >>= 1;
        }
        if (j != (8589934591 >> i)) {
            this.len = 32;
        } else {
            this.len = 32 - i;
        }
    }

    public static long getInt(String str) {
        return (Long.parseLong(str.split(new ObfuscatedString(new long[]{4991872276855506366L, -1337716832643661847L}).toString())[0]) << 24) + (Integer.parseInt(r6[1]) << 16) + (Integer.parseInt(r6[2]) << 8) + Integer.parseInt(r6[3]);
    }

    public boolean normalise() {
        long j = getInt(this.mIp);
        long j2 = (4294967295 << (32 - this.len)) & j;
        if (j2 == j) {
            return false;
        }
        this.mIp = String.format(new ObfuscatedString(new long[]{7115616036576055687L, 7150177483765130625L, 3483255373176440266L}).toString(), Long.valueOf((13963794 & j2) >> 24), Long.valueOf((75342 & j2) >> 16), Long.valueOf((65280 & j2) >> 8), Long.valueOf(j2 & 255));
        return true;
    }

    public String toString() {
        return String.format(Locale.ENGLISH, new ObfuscatedString(new long[]{3964306042126716543L, -1973982801679516059L}).toString(), this.mIp, Integer.valueOf(this.len));
    }

    public CIDRIP(String str, int i) {
        this.len = i;
        this.mIp = str;
    }

    public long getInt() {
        return getInt(this.mIp);
    }
}
