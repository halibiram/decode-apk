package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketUserauthRequestPassword {
    String password;
    byte[] payload;
    String serviceName;
    String userName;

    public PacketUserauthRequestPassword(String str, String str2, String str3) {
        this.serviceName = str;
        this.userName = str2;
        this.password = str3;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(50);
            m3327x9738a56c.writeString(this.userName);
            m3327x9738a56c.writeString(this.serviceName);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{1839516622318760598L, -2208089848535814308L}).toString());
            m3327x9738a56c.writeBoolean(false);
            m3327x9738a56c.writeString(this.password);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }

    public PacketUserauthRequestPassword(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 50) {
            this.userName = typesReader.readString();
            this.serviceName = typesReader.readString();
            if (typesReader.readString().equals(new ObfuscatedString(new long[]{2844156293305223389L, 1622012787115390802L}).toString())) {
                if (typesReader.remain() != 0) {
                    throw new IOException(new ObfuscatedString(new long[]{-6967811058334331378L, -5340236736162131167L, 8765393220294694416L, -5563055947507259899L, 1608407632747259612L, -215766383221267966L, -8750167960237621095L}).toString());
                }
                return;
            }
            throw new IOException(new ObfuscatedString(new long[]{4612776394031437708L, -5404144388526738312L, 7687322309720944602L, -7400949090778368297L, -6804118147353670465L, -543374549696924182L, -4223300890366352887L, 2192346587788284453L, 5413532412658978259L}).toString());
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{3611666913563647397L, -251664423288619112L, -296394044858759496L, 5971834504421347950L, 1887108694638156307L, -3067633115697736149L, 1894063516545112319L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1132607519844304582L, -2823147496321466088L}), sb));
    }
}
