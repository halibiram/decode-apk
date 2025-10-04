package app.tunnel.ssh2.tunnel.vpn;

import androidx.annotation.NonNull;
import java.util.Locale;

/* loaded from: classes.dex */
public class CIDRIP {
    int len;
    String mIp;

    public CIDRIP(String str, String str2) {
        this.mIp = str;
        this.len = calculateLenFromMask(str2);
    }

    public static int calculateLenFromMask(String str) {
        long j = getInt(str) + 4294967296L;
        int i = 0;
        while ((1 & j) == 0) {
            i++;
            j >>= 1;
        }
        if (j != (8589934591 >> i)) {
            return 32;
        }
        return 32 - i;
    }

    public static long getInt(String str) {
        return (Long.parseLong(str.split("\\.")[0]) << 24) + (Integer.parseInt(r4[1]) << 16) + (Integer.parseInt(r4[2]) << 8) + Integer.parseInt(r4[3]);
    }

    public boolean normalise() {
        long j = getInt(this.mIp);
        long j2 = (4294967295 << (32 - this.len)) & j;
        if (j2 != j) {
            Locale locale = Locale.US;
            this.mIp = (((-16777216) & j2) >> 24) + "." + ((16711680 & j2) >> 16) + "." + ((65280 & j2) >> 8) + "." + (j2 & 255);
            return true;
        }
        return false;
    }

    @NonNull
    public String toString() {
        Locale locale = Locale.ENGLISH;
        return this.mIp + "/" + this.len;
    }

    public CIDRIP(String str, int i) {
        this.len = i;
        this.mIp = str;
    }

    public long getInt() {
        return getInt(this.mIp);
    }
}
