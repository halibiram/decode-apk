package net.sourceforge.jsocks.server;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.DatagramPacket;
import java.net.Socket;
import net.sourceforge.jsocks.ProxyMessage;

/* loaded from: classes3.dex */
public interface ServerAuthenticator {
    boolean checkRequest(DatagramPacket datagramPacket, boolean z);

    boolean checkRequest(ProxyMessage proxyMessage);

    void endSession();

    InputStream getInputStream();

    OutputStream getOutputStream();

    ServerAuthenticator startSession(Socket socket);
}
