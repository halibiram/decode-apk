package com.tknetwork.tunnel.utils;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.service.TunnelVPN;
import com.tknetwork.tunnel.utils.SSLUtil;
import java.net.InetAddress;
import java.net.Socket;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.LinkedHashSet;
import javax.net.ssl.HandshakeCompletedEvent;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes3.dex */
public class SSLUtil extends SSLSocketFactory {
    private final TunnelVPN mInjector;
    private final SSLContext mSSLContext;

    @SuppressLint({"CustomX509TrustManager"})
    /* loaded from: classes3.dex */
    public static class MyX509TrustManager implements X509TrustManager {
        @Override // javax.net.ssl.X509TrustManager
        @SuppressLint({"TrustAllX509TrustManager"})
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        @SuppressLint({"TrustAllX509TrustManager"})
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    public SSLUtil(TunnelVPN tunnelVPN) {
        this.mInjector = tunnelVPN;
        SSLContext sSLContext = SSLContext.getInstance(new ObfuscatedString(new long[]{7230047337999896582L, -5363834042444089439L}).toString());
        this.mSSLContext = sSLContext;
        sSLContext.init(null, new TrustManager[]{new MyX509TrustManager()}, new SecureRandom());
    }

    private void createSSLSocket(String str, int i, boolean z) {
        this.mInjector.mSSLSocket = (SSLSocket) this.mSSLContext.getSocketFactory().createSocket(this.mInjector.server, str, i, z);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Collections.addAll(linkedHashSet, this.mInjector.mSSLSocket.getEnabledProtocols());
        this.mInjector.mSSLSocket.setEnabledProtocols((String[]) linkedHashSet.toArray(new String[0]));
        log(new ObfuscatedString(new long[]{2967699543550839230L, 1833001581111151039L, -8402838915812290258L, 1323879105787124268L}).toString() + TextUtils.join(new ObfuscatedString(new long[]{-1398880858515556062L, -1490672483922962368L}).toString(), this.mInjector.mSSLSocket.getEnabledProtocols()));
        this.mInjector.mSSLSocket.addHandshakeCompletedListener(new HandshakeCompletedListener() { // from class: 땋땫뒝땍둥뒷듼듼뎬딸땀돸땁돸땡뒉뎹돳땳둠뎹땜뒛돨땱땮돵돨됴딸딃돝됩뒻듨땀돼뒈듸딅뒨둥듸딝딁땬뎻땟딅뒛돤듰돼뎹뎽딅득된뒷딄뒀딟뒝듰뎨뒬두뒷뒤딠뒤뒾땡듽땲돼땻땳땩든땧듽뎨디뒀됫땰됴땻땨될땹돷돵됩둔듌땯뒾돶딜땳땵땱됨땡돳뎡돶딄둠딜땜땬딽땍딄땲돨딻땅든딜돷딐디땡뎸땐든
            @Override // javax.net.ssl.HandshakeCompletedListener
            public final void handshakeCompleted(HandshakeCompletedEvent handshakeCompletedEvent) {
                SSLUtil.this.lambda$createSSLSocket$0(handshakeCompletedEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSSLSocket$0(HandshakeCompletedEvent handshakeCompletedEvent) {
        log(String.format(new ObfuscatedString(new long[]{-8457658798938845139L, -5580111490928682740L, -1472783793682611009L, 5784370207509898250L}).toString(), handshakeCompletedEvent.getSession().getCipherSuite()));
        log(new ObfuscatedString(new long[]{4633830892966546343L, -7248467223268942856L, -9212959002021620469L, -1802017833482563214L}).toString());
    }

    private void log(String str) {
        this.mInjector.log(str);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return null;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return new String[0];
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        return null;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return null;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        createSSLSocket(str, i, true);
        return this.mInjector.mSSLSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        createSSLSocket(str, i, z);
        return this.mInjector.mSSLSocket;
    }
}
