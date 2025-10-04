package app.tunnel.ssh2.tunnel;

import android.content.Context;
import app.tunnel.ssh2.tunnel.vpn.TunnelUtils;
import com.fbd.tunnel.R;
import com.trilead.ssh2.ProxyData;
import com.trilead.ssh2.crypto.Base64;
import com.trilead.ssh2.transport.ClientServerHello;
import com.trilead.ssh2.transport.TransportManager;
import de.blinkt.openvpn.core.TkLogStatus;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public class HTTPJet implements ProxyData {
    private final Context mContext;
    private boolean modoDropbear;
    private final String proxyHost;
    private final String proxyPass;
    private final int proxyPort;
    private final String proxyUser;
    private final String requestPayload;
    private Socket sock;

    public HTTPJet(String str, int i, Context context) {
        this(str, i, null, null, context);
    }

    private String getRequestPayload(String str, int i) {
        String str2 = this.requestPayload;
        if (str2 != null) {
            return TunnelUtils.formatCustomPayload(str, i, str2);
        }
        StringBuilder sb = new StringBuilder("CONNECT ");
        sb.append(str);
        sb.append(':');
        sb.append(i);
        sb.append(" HTTP/1.0\r\n");
        if (this.proxyUser != null && this.proxyPass != null) {
            char[] encode = Base64.encode((this.proxyUser + ":" + this.proxyPass).getBytes(StandardCharsets.ISO_8859_1));
            sb.append("Proxy-Authorization: Basic ");
            sb.append(encode);
            sb.append("\r\n");
        }
        sb.append("\r\n");
        return sb.toString();
    }

    @Override // com.trilead.ssh2.ProxyData
    public void close() {
        Socket socket = this.sock;
        if (socket == null) {
            return;
        }
        try {
            socket.close();
        } catch (IOException unused) {
        }
    }

    @Override // com.trilead.ssh2.ProxyData
    public Socket openConnection(String str, int i, int i2, int i3) {
        this.sock = new Socket();
        this.sock.connect(new InetSocketAddress(TransportManager.createInetAddress(this.proxyHost), this.proxyPort), i2);
        this.sock.setSoTimeout(i3);
        TkLogStatus.logInfo(R.string.state_proxy_running, new Object[0]);
        String requestPayload = getRequestPayload(str, i);
        if (!TunnelUtils.isActiveVpn(this.mContext)) {
            TkLogStatus.logInfo(R.string.state_proxy_inject, new Object[0]);
            OutputStream outputStream = this.sock.getOutputStream();
            if (!TunnelUtils.injectSplitPayload(requestPayload, outputStream)) {
                try {
                    outputStream.write(requestPayload.getBytes(StandardCharsets.ISO_8859_1));
                } catch (UnsupportedEncodingException unused) {
                    outputStream.write(requestPayload.getBytes());
                }
                outputStream.flush();
            }
            if (this.modoDropbear) {
                return this.sock;
            }
            byte[] bArr = new byte[1024];
            InputStream inputStream = this.sock.getInputStream();
            String str2 = new String(bArr, 0, ClientServerHello.readLineRN(inputStream, bArr), StandardCharsets.ISO_8859_1);
            TkLogStatus.logInfo("<strong>" + str2 + "</strong>");
            StringBuilder sb = new StringBuilder(str2);
            while (true) {
                int readLineRN = ClientServerHello.readLineRN(inputStream, bArr);
                if (readLineRN == 0) {
                    break;
                }
                sb.append("\n");
                sb.append(new String(bArr, 0, readLineRN, StandardCharsets.ISO_8859_1));
            }
            if (sb.length() > 0) {
                TkLogStatus.logDebug(sb.toString());
            }
            if (str2.startsWith("HTTP/")) {
                if (str2.length() >= 14 && str2.charAt(8) == ' ' && str2.charAt(12) == ' ') {
                    try {
                        int parseInt = Integer.parseInt(str2.substring(9, 12));
                        if (parseInt >= 0 && parseInt <= 999) {
                            if (parseInt != 200) {
                                outputStream.write("HTTP/1.1 200 OK\r\n\r\n".getBytes());
                                outputStream.flush();
                                return this.sock;
                            }
                            return this.sock;
                        }
                        throw new IOException("The proxy did not send back a valid HTTP response.");
                    } catch (NumberFormatException unused2) {
                        throw new IOException("The proxy did not send back a valid HTTP response.");
                    }
                }
                throw new IOException("The proxy did not send back a valid HTTP response.");
            }
            throw new IOException("The proxy did not send back a valid HTTP response.");
        }
        TkLogStatus.logInfo("<strong>" + this.mContext.getString(R.string.error_vpn_sniffer_detected) + "</strong>");
        throw new IOException("error detected");
    }

    public HTTPJet(String str, int i, String str2, String str3, Context context) {
        this(str, i, str2, str3, null, false, context);
    }

    public HTTPJet(String str, int i, String str2, String str3, String str4, boolean z, Context context) {
        if (str == null) {
            throw new IllegalArgumentException("proxyHost must be non-null");
        }
        if (i >= 0) {
            this.proxyHost = str;
            this.proxyPort = i;
            this.proxyUser = str2;
            this.proxyPass = str3;
            this.requestPayload = str4;
            this.modoDropbear = z;
            this.mContext = context;
            return;
        }
        throw new IllegalArgumentException("proxyPort must be non-negative");
    }
}
