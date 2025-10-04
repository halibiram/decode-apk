package net.sourceforge.jsocks;

import defpackage.AbstractC0362x4440ab85;
import java.io.DataInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* loaded from: classes3.dex */
public class Socks5Message extends ProxyMessage {
    public static final int SOCKS_ATYP_DOMAINNAME = 3;
    public static final int SOCKS_ATYP_IPV4 = 1;
    public static final int SOCKS_ATYP_IPV6 = 4;
    public static final int SOCKS_IPV6_LENGTH = 16;
    public static final int SOCKS_VERSION = 5;
    static boolean doResolveIP = true;
    public int addrType;
    byte[] data;

    public Socks5Message(InputStream inputStream) {
        this(inputStream, true);
    }

    public static boolean resolveIP() {
        return doResolveIP;
    }

    @Override // net.sourceforge.jsocks.ProxyMessage
    public InetAddress getInetAddress() {
        InetAddress inetAddress = this.ip;
        if (inetAddress != null) {
            return inetAddress;
        }
        InetAddress byName = InetAddress.getByName(this.host);
        this.ip = byName;
        return byName;
    }

    @Override // net.sourceforge.jsocks.ProxyMessage
    public void read(InputStream inputStream) {
        read(inputStream, true);
    }

    @Override // net.sourceforge.jsocks.ProxyMessage
    public String toString() {
        StringBuilder sb = new StringBuilder("Socks5Message:\nVN   ");
        sb.append(this.version);
        sb.append("\nCMD  ");
        sb.append(this.command);
        sb.append("\nATYP ");
        sb.append(this.addrType);
        sb.append("\nADDR ");
        sb.append(this.host);
        sb.append("\nPORT ");
        return AbstractC0362x4440ab85.m2935x1db10c9d(sb, "\n", this.port);
    }

    @Override // net.sourceforge.jsocks.ProxyMessage
    public void write(OutputStream outputStream) {
        Socks5Message socks5Message;
        if (this.data == null) {
            if (this.addrType == 3) {
                socks5Message = new Socks5Message(this.command, this.host, this.port);
            } else {
                if (this.ip == null) {
                    try {
                        this.ip = InetAddress.getByName(this.host);
                    } catch (UnknownHostException unused) {
                        throw new SocksException(Proxy.SOCKS_JUST_ERROR);
                    }
                }
                socks5Message = new Socks5Message(this.command, this.ip, this.port);
            }
            this.data = socks5Message.data;
        }
        outputStream.write(this.data);
    }

    public Socks5Message(InputStream inputStream, boolean z) {
        read(inputStream, z);
    }

    public static boolean resolveIP(boolean z) {
        boolean z2 = doResolveIP;
        doResolveIP = z;
        return z2;
    }

    @Override // net.sourceforge.jsocks.ProxyMessage
    public void read(InputStream inputStream, boolean z) {
        this.data = null;
        this.ip = null;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.version = dataInputStream.readUnsignedByte();
        int readUnsignedByte = dataInputStream.readUnsignedByte();
        this.command = readUnsignedByte;
        if (z && readUnsignedByte != 0) {
            throw new SocksException(this.command);
        }
        dataInputStream.readUnsignedByte();
        int readUnsignedByte2 = dataInputStream.readUnsignedByte();
        this.addrType = readUnsignedByte2;
        if (readUnsignedByte2 == 1) {
            byte[] bArr = new byte[4];
            dataInputStream.readFully(bArr);
            this.host = ProxyMessage.bytes2IPV4(bArr, 0);
        } else if (readUnsignedByte2 == 3) {
            byte[] bArr2 = new byte[dataInputStream.readUnsignedByte()];
            dataInputStream.readFully(bArr2);
            this.host = new String(bArr2);
        } else if (readUnsignedByte2 == 4) {
            byte[] bArr3 = new byte[16];
            dataInputStream.readFully(bArr3);
            this.host = ProxyMessage.bytes2IPV6(bArr3, 0);
        } else {
            throw new SocksException(Proxy.SOCKS_JUST_ERROR);
        }
        this.port = dataInputStream.readUnsignedShort();
        if (this.addrType == 3 || !doResolveIP) {
            return;
        }
        try {
            this.ip = InetAddress.getByName(this.host);
        } catch (UnknownHostException unused) {
        }
    }

    public Socks5Message(int i) {
        super(i, null, 0);
        this.data = r0;
        byte[] bArr = {5, (byte) i, 0};
    }

    public Socks5Message(int i, InetAddress inetAddress, int i2) {
        super(i, inetAddress, i2);
        byte[] address;
        this.host = inetAddress == null ? "0.0.0.0" : inetAddress.getHostName();
        this.version = 5;
        if (inetAddress == null) {
            address = new byte[]{0, 0, 0, 0};
        } else {
            address = inetAddress.getAddress();
        }
        int i3 = address.length == 4 ? 1 : 4;
        this.addrType = i3;
        byte[] bArr = new byte[address.length + 6];
        this.data = bArr;
        bArr[0] = 5;
        bArr[1] = (byte) this.command;
        bArr[2] = 0;
        bArr[3] = (byte) i3;
        System.arraycopy(address, 0, bArr, 4, address.length);
        byte[] bArr2 = this.data;
        bArr2[bArr2.length - 2] = (byte) (i2 >> 8);
        bArr2[bArr2.length - 1] = (byte) i2;
    }

    public Socks5Message(int i, String str, int i2) {
        super(i, null, i2);
        this.host = str;
        this.version = 5;
        this.addrType = 3;
        byte[] bytes = str.getBytes();
        byte[] bArr = new byte[bytes.length + 7];
        this.data = bArr;
        bArr[0] = 5;
        bArr[1] = (byte) this.command;
        bArr[2] = 0;
        bArr[3] = 3;
        bArr[4] = (byte) bytes.length;
        System.arraycopy(bytes, 0, bArr, 5, bytes.length);
        byte[] bArr2 = this.data;
        bArr2[bArr2.length - 2] = (byte) (i2 >> 8);
        bArr2[bArr2.length - 1] = (byte) i2;
    }
}
