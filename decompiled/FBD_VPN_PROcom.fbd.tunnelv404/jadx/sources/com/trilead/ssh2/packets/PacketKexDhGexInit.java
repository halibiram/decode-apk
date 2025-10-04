package com.trilead.ssh2.packets;

import defpackage.AbstractC0749x8313616e;
import java.math.BigInteger;

/* loaded from: classes3.dex */
public class PacketKexDhGexInit {
    BigInteger e;
    byte[] payload;

    public PacketKexDhGexInit(BigInteger bigInteger) {
        this.e = bigInteger;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(32);
            m3327x9738a56c.writeMPInt(this.e);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
