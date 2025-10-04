package net.sourceforge.jsocks;

import androidx.annotation.NonNull;
import de.blinkt.openvpn.core.TkLogStatus;
import java.io.IOException;

/* loaded from: classes3.dex */
public class SocksException extends IOException {
    static final String UNASSIGNED_ERROR_MESSAGE = "Unknown error message";
    private static final long serialVersionUID = 6141184566248512277L;
    public int errCode;
    String errString;
    static final String[] serverReplyMessage = {"Succeeded", "General SOCKS server failure", "Connection not allowed by ruleset", "Network unreachable", "Host unreachable", "Connection refused", "TTL expired", "Command not supported", "Address type not supported"};
    static final String[] localErrorMessage = {"SOCKS server not specified", "Unable to contact SOCKS server", "IO error", "None of Authentication methods are supported", TkLogStatus.VPN_AUTH_FAILED, "General SOCKS fault"};

    public SocksException(int i) {
        this.errCode = i;
        int i2 = i >> 16;
        String str = UNASSIGNED_ERROR_MESSAGE;
        if (i2 == 0) {
            String[] strArr = serverReplyMessage;
            this.errString = i <= strArr.length ? strArr[i] : str;
        } else {
            int i3 = i2 - 1;
            String[] strArr2 = localErrorMessage;
            this.errString = i3 <= strArr2.length ? strArr2[i3] : str;
        }
    }

    public int getErrorCode() {
        return this.errCode;
    }

    @Override // java.lang.Throwable
    @NonNull
    public String toString() {
        return this.errString;
    }

    public SocksException(int i, String str) {
        this.errCode = i;
        this.errString = str;
    }
}
