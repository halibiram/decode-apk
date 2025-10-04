package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.math.BigInteger;

/* loaded from: classes3.dex */
public class PacketKexDhGexReply {
    BigInteger f;
    byte[] hostKey;
    byte[] payload;
    byte[] signature;

    public PacketKexDhGexReply(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 33) {
            this.hostKey = typesReader.readByteString();
            this.f = typesReader.readMPINT();
            this.signature = typesReader.readByteString();
            if (typesReader.remain() == 0) {
                return;
            } else {
                throw new IOException(new ObfuscatedString(new long[]{-5238108362102239390L, -5204645481184136949L, -1651405899511960659L, -632229860047855563L, -3602239681249286829L, 8788751594561090454L}).toString());
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{3614806746470959344L, 618926610884107749L, -7687069258300019364L, 8379552207076232353L, 5531593665208516439L, -5040739986926666345L, 6645927748752657213L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3992147559066923797L, -3735706066234125948L}), sb));
    }

    public BigInteger getF() {
        return this.f;
    }

    public byte[] getHostKey() {
        return this.hostKey;
    }

    public byte[] getSignature() {
        return this.signature;
    }
}
