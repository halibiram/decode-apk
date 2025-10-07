package com.trilead.ssh2;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.sftp.ErrorCodes;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class SFTPException extends IOException {
    private static final long serialVersionUID = 578654644222421811L;
    private final int sftpErrorCode;
    private final String sftpErrorMessage;

    public SFTPException(String str, int i) {
        super(constructMessage(str, i));
        this.sftpErrorMessage = str;
        this.sftpErrorCode = i;
    }

    private static String constructMessage(String str, int i) {
        String[] description = ErrorCodes.getDescription(i);
        if (description == null) {
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3016826260547677187L, 2874172532075538495L, -5935468812409362911L, 7078726946201880955L, 148974883626974591L}), AbstractC0749x8313616e.m3341xc20437a5(str));
        }
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-2618523810693169386L, 5529922471536211444L}).toString());
        m3341xc20437a5.append(description[0]);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{3455890520796998044L, -5511566975712075958L}).toString());
        m3341xc20437a5.append(description[1]);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{9169979446835055308L, 3609974584725403233L}), m3341xc20437a5);
    }

    public int getServerErrorCode() {
        return this.sftpErrorCode;
    }

    public String getServerErrorCodeSymbol() {
        String[] description = ErrorCodes.getDescription(this.sftpErrorCode);
        if (description == null) {
            return new ObfuscatedString(new long[]{923608502142941L, -4529320461309135507L, -4901795859645463829L, 5926434424765693104L}).toString() + this.sftpErrorCode;
        }
        return description[0];
    }

    public String getServerErrorCodeVerbose() {
        String[] description = ErrorCodes.getDescription(this.sftpErrorCode);
        if (description == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{8799621372596698961L, 1343267457577311677L, 2981089736754973624L}).toString());
            sb.append(this.sftpErrorCode);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7812919375487311619L, 5457517754947678061L, -1881966743062243672L}), sb);
        }
        return description[1];
    }

    public String getServerErrorMessage() {
        return this.sftpErrorMessage;
    }
}
