package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketServiceRequest {
    byte[] payload;
    String serviceName;

    public PacketServiceRequest(String str) {
        this.serviceName = str;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(5);
            m3327x9738a56c.writeString(this.serviceName);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }

    public PacketServiceRequest(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 5) {
            this.serviceName = typesReader.readString();
            if (typesReader.remain() != 0) {
                throw new IOException(new ObfuscatedString(new long[]{-8183814489106860198L, -7629407231090822126L, -5822511110773524740L, -8710560562663669805L, -8260386121703229002L, 8605716877925245636L, 1843366319306799726L}).toString());
            }
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{3718946395203099334L, 3221570162701594033L, -4954587020162530370L, 6049076922223064913L, -5829237680441628555L, 6883534257789512098L}).toString());
            sb.append(readByte);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1981585922625605888L, 110215037218330653L}), sb));
        }
    }
}
