package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketDisconnect {
    String desc;
    String lang;
    byte[] payload;
    int reason;

    public PacketDisconnect(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 1) {
            this.reason = typesReader.readUINT32();
            this.desc = typesReader.readString();
            this.lang = typesReader.readString();
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{1765509190855279083L, 1720711613093434934L, -1424565007657800555L, 3033675671590716933L, -5897937994090172101L, -2648234994442883603L}).toString());
            sb.append(readByte);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4204262702052022271L, -3192756814758113735L}), sb));
        }
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(1);
            m3327x9738a56c.writeUINT32(this.reason);
            m3327x9738a56c.writeString(this.desc);
            m3327x9738a56c.writeString(this.lang);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }

    public PacketDisconnect(int i, String str, String str2) {
        this.reason = i;
        this.desc = str;
        this.lang = str2;
    }
}
