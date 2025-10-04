package app.tunnel.ssh2.tunnel;

import de.blinkt.openvpn.core.TkLogStatus;
import java.security.Principal;
import javax.net.ssl.HandshakeCompletedEvent;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* loaded from: classes.dex */
public class HandshakeTunnelCompletedListener implements HandshakeCompletedListener {
    private final String host;
    private final int port;
    private final SSLSocket sslSocket;

    public HandshakeTunnelCompletedListener(String str, int i, SSLSocket sSLSocket) {
        this.host = str;
        this.port = i;
        this.sslSocket = sSLSocket;
    }

    @Override // javax.net.ssl.HandshakeCompletedListener
    public void handshakeCompleted(HandshakeCompletedEvent handshakeCompletedEvent) {
        try {
            SSLSession session = handshakeCompletedEvent.getSession();
            String peerHost = session.getPeerHost();
            int peerPort = session.getPeerPort();
            String cipherSuite = handshakeCompletedEvent.getCipherSuite();
            Principal peerPrincipal = handshakeCompletedEvent.getPeerPrincipal();
            TkLogStatus.logInfo("PeerHost: " + peerHost);
            TkLogStatus.logInfo("PeerPort: " + peerPort);
            TkLogStatus.logInfo("CipherSuite: " + cipherSuite);
            TkLogStatus.logInfo("Protocol: " + session.getProtocol());
            TkLogStatus.logInfo("PeerPrincipal: " + peerPrincipal);
            TkLogStatus.logInfo("Handshake finished");
        } catch (SSLPeerUnverifiedException e) {
            e.printStackTrace();
        }
    }
}
