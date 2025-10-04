package net.sourceforge.jsocks.server;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.net.DatagramPacket;
import java.net.Socket;
import net.sourceforge.jsocks.ProxyMessage;

/* loaded from: classes3.dex */
public class ServerAuthenticatorNone implements ServerAuthenticator {
    static final byte[] socks5response = {5, 0};
    InputStream in;
    OutputStream out;

    public ServerAuthenticatorNone() {
        this.in = null;
        this.out = null;
    }

    public static boolean selectSocks5Authentication(InputStream inputStream, OutputStream outputStream, int i) {
        int read = inputStream.read();
        boolean z = false;
        if (read <= 0) {
            return false;
        }
        byte[] bArr = new byte[read];
        byte[] bArr2 = {5, -1};
        int i2 = 0;
        while (i2 < read) {
            i2 += inputStream.read(bArr, i2, read - i2);
        }
        int i3 = 0;
        while (true) {
            if (i3 >= read) {
                break;
            }
            if (bArr[i3] == i) {
                bArr2[1] = (byte) i;
                z = true;
                break;
            }
            i3++;
        }
        outputStream.write(bArr2);
        return z;
    }

    @Override // net.sourceforge.jsocks.server.ServerAuthenticator
    public boolean checkRequest(DatagramPacket datagramPacket, boolean z) {
        return true;
    }

    @Override // net.sourceforge.jsocks.server.ServerAuthenticator
    public void endSession() {
    }

    @Override // net.sourceforge.jsocks.server.ServerAuthenticator
    public InputStream getInputStream() {
        return this.in;
    }

    @Override // net.sourceforge.jsocks.server.ServerAuthenticator
    public OutputStream getOutputStream() {
        return this.out;
    }

    @Override // net.sourceforge.jsocks.server.ServerAuthenticator
    public ServerAuthenticator startSession(Socket socket) {
        PushbackInputStream pushbackInputStream = new PushbackInputStream(socket.getInputStream());
        OutputStream outputStream = socket.getOutputStream();
        if (pushbackInputStream.read() != 5 || !selectSocks5Authentication(pushbackInputStream, outputStream, 0)) {
            return null;
        }
        return new ServerAuthenticatorNone(pushbackInputStream, outputStream);
    }

    @Override // net.sourceforge.jsocks.server.ServerAuthenticator
    public boolean checkRequest(ProxyMessage proxyMessage) {
        return true;
    }

    public ServerAuthenticatorNone(InputStream inputStream, OutputStream outputStream) {
        this.in = inputStream;
        this.out = outputStream;
    }
}
