package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketIgnore {
    byte[] data;
    byte[] payload;

    public PacketIgnore() {
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(2);
            byte[] bArr = this.data;
            if (bArr != null) {
                m3327x9738a56c.writeString(bArr, 0, bArr.length);
            } else {
                m3327x9738a56c.writeString(new ObfuscatedString(new long[]{-161186628311043869L}).toString());
            }
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
        this.payload = null;
    }

    public PacketIgnore(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        int readByte = new TypesReader(bArr, i, i2).readByte();
        if (readByte == 2) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-1052780257400403839L, -4104089150333643736L, 9130776531835987577L, -4169917270608943989L, -8106459636947790887L, 4862125466368878716L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4505201701375811295L, 4004358868366151141L}), sb));
    }
}
