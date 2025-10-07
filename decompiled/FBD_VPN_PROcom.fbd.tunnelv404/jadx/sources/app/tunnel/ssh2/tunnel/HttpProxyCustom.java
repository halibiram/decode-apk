package app.tunnel.ssh2.tunnel;

import app.tunnel.ssh2.tunnel.vpn.TunnelUtils;
import com.fbd.tunnel.R;
import com.trilead.ssh2.HTTPProxyException;
import com.trilead.ssh2.ProxyData;
import com.trilead.ssh2.crypto.Base64;
import com.trilead.ssh2.transport.ClientServerHello;
import com.trilead.ssh2.transport.TransportManager;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC1197x89633db9;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001BO\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rJ*\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005H\u0016J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;", "Lcom/trilead/ssh2/ProxyData;", "mAddress", "", "mPort", "", "proxyUser", "proxyPass", "requestPayload", "isDropbear", "", "isAutoReplace", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;)V", "Ljava/lang/Boolean;", "mSocket", "Ljava/net/Socket;", "openConnection", "hostname", "port", "connectTimeout", "readTimeout", "getRequestPayload", "close", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttpProxyCustom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpProxyCustom.kt\napp/tunnel/ssh2/tunnel/HttpProxyCustom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n1#2:169\n*E\n"})
/* loaded from: classes.dex */
public final class HttpProxyCustom implements ProxyData {

    @Nullable
    private final Boolean isAutoReplace;
    private final boolean isDropbear;

    @Nullable
    private final String mAddress;
    private final int mPort;

    @Nullable
    private Socket mSocket;

    @Nullable
    private final String proxyPass;

    @Nullable
    private final String proxyUser;

    @Nullable
    private final String requestPayload;

    public HttpProxyCustom(@Nullable String str, int i, @Nullable String str2, @Nullable String str3, @Nullable String str4, boolean z, @Nullable Boolean bool) {
        this.mAddress = str;
        this.mPort = i;
        this.proxyUser = str2;
        this.proxyPass = str3;
        this.requestPayload = str4;
        this.isDropbear = z;
        this.isAutoReplace = bool;
    }

    private final String getRequestPayload(String hostname, int port) {
        String str;
        char[] encode;
        String str2 = this.requestPayload;
        if (str2 != null && str2.length() != 0) {
            return TunnelUtils.formatCustomPayload(hostname, port, str2);
        }
        StringBuffer stringBuffer = new StringBuffer("CONNECT ");
        stringBuffer.append(hostname);
        stringBuffer.append(':');
        stringBuffer.append(port);
        stringBuffer.append(" HTTP/1.0\r\n");
        String str3 = this.proxyUser;
        if (str3 != null && (str = this.proxyPass) != null) {
            String m2953x742e2fda = AbstractC0362x4440ab85.m2953x742e2fda(str3, ":", str);
            try {
                Charset forName = Charset.forName("ISO-8859-1");
                Intrinsics.checkNotNullExpressionValue(forName, "forName(...)");
                byte[] bytes = m2953x742e2fda.getBytes(forName);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                encode = Base64.encode(bytes);
            } catch (UnsupportedEncodingException unused) {
                byte[] bytes2 = m2953x742e2fda.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
                encode = Base64.encode(bytes2);
            }
            stringBuffer.append("Proxy-Authorization: Basic ");
            stringBuffer.append(encode);
            stringBuffer.append("\r\n");
        }
        stringBuffer.append("\r\n");
        return stringBuffer.toString();
    }

    @Override // com.trilead.ssh2.ProxyData
    public void close() {
        try {
            Socket socket = this.mSocket;
            if (socket != null && !socket.isClosed()) {
                socket.close();
            }
        } catch (IOException unused) {
        }
    }

    @Override // com.trilead.ssh2.ProxyData
    @Nullable
    public Socket openConnection(@NotNull String hostname, int port, int connectTimeout, int readTimeout) {
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        this.mSocket = new Socket();
        InetAddress createInetAddress = TransportManager.createInetAddress(this.mAddress);
        Socket socket = this.mSocket;
        if (socket == null) {
            return null;
        }
        socket.connect(new InetSocketAddress(createInetAddress, this.mPort), connectTimeout);
        socket.setSoTimeout(readTimeout);
        if (!this.isDropbear) {
            TkLogStatus.logInfo(R.string.state_proxy_running, new Object[0]);
        }
        String requestPayload = getRequestPayload(hostname, port);
        if (requestPayload != null) {
            TkLogStatus.logInfo("Sending Payload");
        }
        OutputStream outputStream = socket.getOutputStream();
        if (!TunnelUtils.injectSplitPayload(requestPayload, outputStream)) {
            try {
                Intrinsics.checkNotNull(requestPayload);
                Charset forName = Charset.forName("ISO-8859-1");
                Intrinsics.checkNotNullExpressionValue(forName, "forName(...)");
                byte[] bytes = requestPayload.getBytes(forName);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                outputStream.write(bytes);
            } catch (UnsupportedEncodingException unused) {
                Intrinsics.checkNotNull(requestPayload);
                byte[] bytes2 = requestPayload.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
                outputStream.write(bytes2);
            }
            outputStream.flush();
        }
        if (this.isDropbear) {
            return socket;
        }
        byte[] bArr = new byte[1024];
        InputStream inputStream = socket.getInputStream();
        int readLineRN = ClientServerHello.readLineRN(inputStream, bArr);
        try {
            str = new String(bArr, 0, readLineRN, Charsets.ISO_8859_1);
        } catch (UnsupportedEncodingException unused2) {
            str = new String(bArr, 0, readLineRN, Charsets.UTF_8);
        }
        TkLogStatus.logInfo(str);
        String str3 = str;
        while (true) {
            int readLineRN2 = ClientServerHello.readLineRN(inputStream, bArr);
            if (readLineRN2 == 0) {
                break;
            }
            String m2931x34271fae = AbstractC0362x4440ab85.m2931x34271fae(str3, "\n");
            try {
                str2 = new String(bArr, 0, readLineRN2, Charsets.ISO_8859_1);
            } catch (UnsupportedEncodingException unused3) {
                str2 = new String(bArr, 0, readLineRN2, Charsets.UTF_8);
            }
            str3 = AbstractC0362x4440ab85.m2931x34271fae(m2931x34271fae, str2);
        }
        if (str3.length() > 0) {
            TkLogStatus.logDebug(str3);
        }
        if (AbstractC1197x89633db9.startsWith$default(str, "HTTP/", false, 2, null)) {
            if (str.length() >= 14 && str.charAt(8) == ' ' && str.charAt(12) == ' ') {
                try {
                    String substring = str.substring(9, 12);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    int parseInt = Integer.parseInt(substring);
                    if (parseInt >= 0 && parseInt <= 999) {
                        if (parseInt != 200) {
                            if (Intrinsics.areEqual(this.isAutoReplace, Boolean.TRUE)) {
                                OutputStream outputStream2 = socket.getOutputStream();
                                byte[] bytes3 = "HTTP/1.1 200 OK\r\n\r\n".getBytes(Charsets.UTF_8);
                                Intrinsics.checkNotNullExpressionValue(bytes3, "getBytes(...)");
                                outputStream2.write(bytes3);
                                socket.getOutputStream().flush();
                                return this.mSocket;
                            }
                            String substring2 = str.substring(13);
                            Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                            throw new HTTPProxyException(substring2, parseInt);
                        }
                        return this.mSocket;
                    }
                    throw new IOException("The proxy did not send back a valid HTTP response.");
                } catch (NumberFormatException unused4) {
                    throw new IOException("The proxy did not send back a valid HTTP response.");
                }
            }
            throw new IOException("The proxy did not send back a valid HTTP response.");
        }
        throw new IOException("The proxy did not send back a valid HTTP response.");
    }

    public /* synthetic */ HttpProxyCustom(String str, int i, String str2, String str3, String str4, boolean z, Boolean bool, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, str4, z, (i2 & 64) != 0 ? Boolean.FALSE : bool);
    }
}
