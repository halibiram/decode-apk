package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketServiceAccept {
    byte[] payload;
    String serviceName;

    public PacketServiceAccept(String str) {
        this.serviceName = str;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(6);
            m3327x9738a56c.writeString(this.serviceName);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }

    public PacketServiceAccept(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 6) {
            if (typesReader.remain() > 0) {
                this.serviceName = typesReader.readString();
            } else {
                this.serviceName = new ObfuscatedString(new long[]{-5058707411587104264L}).toString();
            }
            if (typesReader.remain() != 0) {
                throw new IOException(new ObfuscatedString(new long[]{-7044040315159535428L, -618315078681392643L, 4619502563158598402L, 1660757046839687877L, -1273398980398300063L, 2381658410924732769L, 5857706662356141377L}).toString());
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-1061143204358617184L, -1472417209186030318L, -8320359926562726738L, 8646602455976271215L, 1979503883049776902L, -7711687354066035349L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-710643206754693182L, -1817702646852237852L}), sb));
    }
}
