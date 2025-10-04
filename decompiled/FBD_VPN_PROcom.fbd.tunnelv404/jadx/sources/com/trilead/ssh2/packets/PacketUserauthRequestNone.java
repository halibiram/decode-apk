package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketUserauthRequestNone {
    byte[] payload;
    String serviceName;
    String userName;

    public PacketUserauthRequestNone(String str, String str2) {
        this.serviceName = str;
        this.userName = str2;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(50);
            m3327x9738a56c.writeString(this.userName);
            m3327x9738a56c.writeString(this.serviceName);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{-1670063387607291028L, 2351143187364790342L}).toString());
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }

    public PacketUserauthRequestNone(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 50) {
            this.userName = typesReader.readString();
            this.serviceName = typesReader.readString();
            if (typesReader.readString().equals(new ObfuscatedString(new long[]{-8701146515294330598L, 8812927266208210377L}).toString())) {
                if (typesReader.remain() != 0) {
                    throw new IOException(new ObfuscatedString(new long[]{3883156688657324926L, -348013137190891346L, 771408271046243760L, 3049316293166153973L, 1021440376934280074L, 384606684355924327L, -5135930030630895083L}).toString());
                }
                return;
            }
            throw new IOException(new ObfuscatedString(new long[]{-5948135333130026945L, 4545547617498565513L, -9188006107435718258L, -3797458562946888425L, -6822197395269264678L, -3709858294553631645L, -244572022300405876L, 3359022379831748674L}).toString());
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-1186321094869067349L, 4264122632412794475L, -3364981823260871893L, 5720076618100245720L, 2771442031191761666L, -4371507439286409270L, -4699391193842196175L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7656594247046399193L, 4267283977878370368L}), sb));
    }
}
