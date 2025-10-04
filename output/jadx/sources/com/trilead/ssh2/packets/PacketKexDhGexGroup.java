package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.math.BigInteger;

/* loaded from: classes3.dex */
public class PacketKexDhGexGroup {
    BigInteger g;
    BigInteger p;
    byte[] payload;

    public PacketKexDhGexGroup(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 31) {
            this.p = typesReader.readMPINT();
            this.g = typesReader.readMPINT();
            if (typesReader.remain() == 0) {
                return;
            } else {
                throw new IOException(new ObfuscatedString(new long[]{705485044059242464L, 1669706696726195144L, 4641766958635740283L, 7090931464633281850L, -6454499502027474414L, 552978260129024399L}).toString());
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-8981172316477074840L, -7272560827734941742L, -2499641459376964053L, -6335053164264846006L, -3341737967476088204L, 8988520351677841440L, -282208943625073965L}).toString());
        sb.append(readByte);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7232819062479337937L, -6861127055808958858L}), sb));
    }

    public BigInteger getG() {
        return this.g;
    }

    public BigInteger getP() {
        return this.p;
    }
}
