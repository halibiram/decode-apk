package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketOpenSessionChannel {
    int channelID;
    int initialWindowSize;
    int maxPacketSize;
    byte[] payload;

    public PacketOpenSessionChannel(int i, int i2, int i3) {
        this.channelID = i;
        this.initialWindowSize = i2;
        this.maxPacketSize = i3;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(90);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{7784184828551881866L, 1795385810984526722L}).toString());
            m3327x9738a56c.writeUINT32(this.channelID);
            m3327x9738a56c.writeUINT32(this.initialWindowSize);
            m3327x9738a56c.writeUINT32(this.maxPacketSize);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }

    public PacketOpenSessionChannel(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr);
        int readByte = typesReader.readByte();
        if (readByte == 90) {
            this.channelID = typesReader.readUINT32();
            this.initialWindowSize = typesReader.readUINT32();
            this.maxPacketSize = typesReader.readUINT32();
            if (typesReader.remain() != 0) {
                throw new IOException(new ObfuscatedString(new long[]{-7870201128625873736L, -3526099382670216894L, -4049915324627422361L, -5337291358683777100L, -4815392214468260393L, -4626595989022901344L}).toString());
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{4295853938210947757L, -2829495773407523342L, 5680236619812943002L, -3766302856635937129L, -9015650854391657187L, 7791963810911000416L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8084702395709892107L, -461929409246519925L}), sb));
    }
}
