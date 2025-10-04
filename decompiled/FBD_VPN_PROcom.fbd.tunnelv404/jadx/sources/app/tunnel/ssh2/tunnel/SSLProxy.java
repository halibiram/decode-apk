package app.tunnel.ssh2.tunnel;

import app.tunnel.ssh2.tunnel.vpn.TunnelUtils;
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
import java.nio.channels.SocketChannel;
import java.nio.charset.Charset;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001BQ\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ*\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005H\u0016J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J$\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lapp/tunnel/ssh2/tunnel/SSLProxy;", "Lcom/trilead/ssh2/ProxyData;", "mAddress", "", "mPort", "", "proxyUser", "proxyPass", "mPayload", "mSni", "isAutoReplace", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "mSocket", "Ljava/net/Socket;", "openConnection", "hostname", "port", "connectTimeout", "readTimeout", "getRequestPayload", "doSSLHandshake", "Ljavax/net/ssl/SSLSocket;", "host", "sni", "close", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSSLProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SSLProxy.kt\napp/tunnel/ssh2/tunnel/SSLProxy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,197:1\n1#2:198\n*E\n"})
/* loaded from: classes.dex */
public final class SSLProxy implements ProxyData {

    @Nullable
    private final Boolean isAutoReplace;

    @Nullable
    private final String mAddress;

    @Nullable
    private final String mPayload;
    private final int mPort;

    @Nullable
    private final String mSni;

    @Nullable
    private Socket mSocket;

    @Nullable
    private final String proxyPass;

    @Nullable
    private final String proxyUser;

    public SSLProxy(@Nullable String str, int i, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Boolean bool) {
        this.mAddress = str;
        this.mPort = i;
        this.proxyUser = str2;
        this.proxyPass = str3;
        this.mPayload = str4;
        this.mSni = str5;
        this.isAutoReplace = bool;
    }

    private final SSLSocket doSSLHandshake(String host, String sni, int port) {
        try {
            Socket createSocket = new TLSSocketFactory().createSocket(host, port);
            Intrinsics.checkNotNull(createSocket, "null cannot be cast to non-null type javax.net.ssl.SSLSocket");
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            try {
                sSLSocket.getClass().getMethod("setHostname", String.class).invoke(sSLSocket, sni);
            } catch (Throwable unused) {
            }
            sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
            sSLSocket.addHandshakeCompletedListener(new HandshakeTunnelCompletedListener(host, port, sSLSocket));
            TkLogStatus.logInfo("Starting SSL Handshake...");
            sSLSocket.startHandshake();
            return sSLSocket;
        } catch (Exception e) {
            throw new IOException("Could not do SSL handshake: " + e);
        }
    }

    private final String getRequestPayload(String hostname, int port) {
        String str;
        char[] encode;
        String str2 = this.mPayload;
        if (str2 != null) {
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
        OutputStream outputStream;
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        this.mSocket = SocketChannel.open().socket();
        InetAddress createInetAddress = TransportManager.createInetAddress(this.mAddress);
        Socket socket = this.mSocket;
        if (socket != null) {
            socket.connect(new InetSocketAddress(createInetAddress, this.mPort), connectTimeout);
            socket.setSoTimeout(readTimeout);
            SSLSocket doSSLHandshake = doSSLHandshake(hostname, this.mSni, port);
            if (this.mPayload != null) {
                String requestPayload = getRequestPayload(hostname, port);
                if (requestPayload != null) {
                    TkLogStatus.logInfo("Sending Payload");
                }
                if (doSSLHandshake != null && (outputStream = doSSLHandshake.getOutputStream()) != null) {
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
                    byte[] bArr = new byte[1024];
                    InputStream inputStream = socket.getInputStream();
                    int readLineRN = ClientServerHello.readLineRN(inputStream, bArr);
                    try {
                        str = new String(bArr, 0, readLineRN, Charsets.ISO_8859_1);
                    } catch (UnsupportedEncodingException unused2) {
                        str = new String(bArr, 0, readLineRN, Charsets.UTF_8);
                    }
                    TkLogStatus.logInfo("<strong>" + str + "</strong>");
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
                                        Boolean bool = this.isAutoReplace;
                                        Intrinsics.checkNotNull(bool);
                                        if (bool.booleanValue()) {
                                            OutputStream outputStream2 = socket.getOutputStream();
                                            byte[] bytes3 = "HTTP/1.1 200 OK\r\n\r\n".getBytes(Charsets.UTF_8);
                                            Intrinsics.checkNotNullExpressionValue(bytes3, "getBytes(...)");
                                            outputStream2.write(bytes3);
                                            socket.getOutputStream().flush();
                                        } else {
                                            String substring2 = str.substring(13);
                                            Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                                            throw new HTTPProxyException(substring2, parseInt);
                                        }
                                    }
                                    return doSSLHandshake;
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
                throw new IOException("Socket is closed");
            }
            this.mSocket = doSSLHandshake;
        }
        return this.mSocket;
    }

    public /* synthetic */ SSLProxy(String str, int i, String str2, String str3, String str4, String str5, Boolean bool, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, str4, str5, (i2 & 64) != 0 ? Boolean.TRUE : bool);
    }
}
