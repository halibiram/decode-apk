package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.math.BigInteger;

/* loaded from: classes3.dex */
public class PacketKexDHReply {
    BigInteger f;
    byte[] hostKey;
    byte[] payload;
    byte[] signature;

    public PacketKexDHReply(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 31) {
            this.hostKey = typesReader.readByteString();
            this.f = typesReader.readMPINT();
            this.signature = typesReader.readByteString();
            if (typesReader.remain() == 0) {
                return;
            } else {
                throw new IOException(new ObfuscatedString(new long[]{8316539812272084072L, -7717495877660991616L, 1849681846073532330L, 6020388197366645359L, -6553220989417284088L}).toString());
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-6207776707602667894L, -7116146495727608044L, 5673746629159022635L, -7065327175750859685L, 3466310912973602536L, 7457151436755196704L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2608220452729464940L, 8243249266193453913L}), sb));
    }

    public BigInteger getF() {
        return this.f;
    }

    public byte[] getHostKey() {
        return this.hostKey;
    }

    public byte[] getSignature() {
        return this.signature;
    }
}
