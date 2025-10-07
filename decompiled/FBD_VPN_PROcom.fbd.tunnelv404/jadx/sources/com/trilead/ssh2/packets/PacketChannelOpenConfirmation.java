package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketChannelOpenConfirmation {
    public int initialWindowSize;
    public int maxPacketSize;
    byte[] payload;
    public int recipientChannelID;
    public int senderChannelID;

    public PacketChannelOpenConfirmation(int i, int i2, int i3, int i4) {
        this.recipientChannelID = i;
        this.senderChannelID = i2;
        this.initialWindowSize = i3;
        this.maxPacketSize = i4;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(91);
            m3327x9738a56c.writeUINT32(this.recipientChannelID);
            m3327x9738a56c.writeUINT32(this.senderChannelID);
            m3327x9738a56c.writeUINT32(this.initialWindowSize);
            m3327x9738a56c.writeUINT32(this.maxPacketSize);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }

    public PacketChannelOpenConfirmation(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 91) {
            this.recipientChannelID = typesReader.readUINT32();
            this.senderChannelID = typesReader.readUINT32();
            this.initialWindowSize = typesReader.readUINT32();
            this.maxPacketSize = typesReader.readUINT32();
            if (typesReader.remain() != 0) {
                throw new IOException(new ObfuscatedString(new long[]{-1906638014208544719L, -3066635341117241447L, 100314604090372004L, -3636182490124696351L, 3854025788628722466L, -2100747945929523772L, 7600324488921658664L, -886806090587205721L}).toString());
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-3599267943482988358L, -5905955409367112994L, -5013862126762830525L, -4204177608458596355L, -1363975813095197256L, -8733057487034853176L, -2918561274887437956L, -1464668386851049067L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7894013704617573116L, 8049518684802442617L}), sb));
    }
}
