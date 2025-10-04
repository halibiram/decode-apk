package net.sourceforge.jsocks;

import defpackage.AbstractC0362x4440ab85;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;

/* loaded from: classes3.dex */
public abstract class ProxyMessage {
    public int command;
    public String host;
    public InetAddress ip;
    public int port;
    public String user;
    public int version;

    public ProxyMessage() {
        this.ip = null;
        this.host = null;
        this.user = null;
    }

    public static String bytes2IPV4(byte[] bArr, int i) {
        StringBuilder sb = new StringBuilder("" + (bArr[i] & 255));
        for (int i2 = i + 1; i2 < i + 4; i2++) {
            sb.append(".");
            sb.append(bArr[i2] & 255);
        }
        return sb.toString();
    }

    public static String bytes2IPV6(byte[] bArr, int i) {
        return null;
    }

    public InetAddress getInetAddress() {
        return this.ip;
    }

    public abstract void read(InputStream inputStream);

    public abstract void read(InputStream inputStream, boolean z);

    public String toString() {
        StringBuilder sb = new StringBuilder("Proxy Message:\nVersion:");
        sb.append(this.version);
        sb.append("\nCommand:");
        sb.append(this.command);
        sb.append("\nIP:     ");
        sb.append(this.ip);
        sb.append("\nPort:   ");
        sb.append(this.port);
        sb.append("\nUser:   ");
        return AbstractC0362x4440ab85.m2936xd2bcb0cf(sb, this.user, "\n");
    }

    public abstract void write(OutputStream outputStream);

    public ProxyMessage(int i, InetAddress inetAddress, int i2) {
        this.host = null;
        this.user = null;
        this.command = i;
        this.ip = inetAddress;
        this.port = i2;
    }
}
