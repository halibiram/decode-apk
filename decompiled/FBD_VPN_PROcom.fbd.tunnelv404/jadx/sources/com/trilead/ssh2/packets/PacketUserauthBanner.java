package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketUserauthBanner {
    String language;
    String message;
    byte[] payload;

    public PacketUserauthBanner(String str, String str2) {
        this.message = str;
        this.language = str2;
    }

    public String getBanner() {
        return this.message;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(53);
            m3327x9738a56c.writeString(this.message);
            m3327x9738a56c.writeString(this.language);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }

    public PacketUserauthBanner(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 53) {
            this.message = typesReader.readString(new ObfuscatedString(new long[]{3592321347995413695L, -6055411506906675928L}).toString());
            this.language = typesReader.readString();
            if (typesReader.remain() != 0) {
                throw new IOException(new ObfuscatedString(new long[]{-2021005651780805611L, 5537166119304534899L, -3512206872105582486L, 3384775189183258634L, -2482218360397894034L, 1751333558463390330L, -6784684344055968691L}).toString());
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{7929274812208667949L, -2142382270271269647L, -2814936819469466919L, -6416620195372059977L, 227250889714919692L, 83144570114585617L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{548976176041941380L, -8860611698382473963L}), sb));
    }
}
