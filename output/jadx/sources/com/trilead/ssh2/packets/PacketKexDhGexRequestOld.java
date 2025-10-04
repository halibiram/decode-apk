package com.trilead.ssh2.packets;

import com.trilead.ssh2.DHGexParameters;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketKexDhGexRequestOld {
    int n;
    byte[] payload;

    public PacketKexDhGexRequestOld(DHGexParameters dHGexParameters) {
        this.n = dHGexParameters.getPref_group_len();
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(30);
            m3327x9738a56c.writeUINT32(this.n);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
