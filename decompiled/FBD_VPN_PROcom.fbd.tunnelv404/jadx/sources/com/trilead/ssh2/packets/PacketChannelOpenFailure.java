package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketChannelOpenFailure {
    public String description;
    public String languageTag;
    byte[] payload;
    public int reasonCode;
    public int recipientChannelID;

    public PacketChannelOpenFailure(int i, int i2, String str, String str2) {
        this.recipientChannelID = i;
        this.reasonCode = i2;
        this.description = str;
        this.languageTag = str2;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(92);
            m3327x9738a56c.writeUINT32(this.recipientChannelID);
            m3327x9738a56c.writeUINT32(this.reasonCode);
            m3327x9738a56c.writeString(this.description);
            m3327x9738a56c.writeString(this.languageTag);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }

    public PacketChannelOpenFailure(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 92) {
            this.recipientChannelID = typesReader.readUINT32();
            this.reasonCode = typesReader.readUINT32();
            this.description = typesReader.readString();
            this.languageTag = typesReader.readString();
            if (typesReader.remain() != 0) {
                throw new IOException(new ObfuscatedString(new long[]{3618633880543406778L, 2333979791604313868L, -8099180416600396383L, 2656412060065191890L, 8465623024419035949L, -7328103175901450823L, 4423969422736316351L}).toString());
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-1306175266887658202L, -7057484351551020152L, -2429567512131652887L, 5143928192389093991L, -1926573216569142965L, 3681720382789370814L, -8480550391491253879L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{180082522590874604L, 5740270881747995338L}), sb));
    }
}
