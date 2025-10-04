package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketNewKeys {
    byte[] payload;

    public PacketNewKeys() {
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(21);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }

    public PacketNewKeys(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 21) {
            if (typesReader.remain() != 0) {
                throw new IOException(new ObfuscatedString(new long[]{-2630931475740601941L, -4205669314391539935L, -6860076986704250164L, 6987610319180086734L, 3355131553165377527L, -2612652572643098661L}).toString());
            }
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{1974450371485633511L, 4952493756874901688L, -7703592200194298730L, 5243121609700108572L, 2485087955847492749L}).toString());
            sb.append(readByte);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{536300106217829957L, -7480077358780373809L}), sb));
        }
    }
}
