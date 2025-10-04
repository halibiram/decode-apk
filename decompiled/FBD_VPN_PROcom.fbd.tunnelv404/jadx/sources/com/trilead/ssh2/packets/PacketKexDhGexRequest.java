package com.trilead.ssh2.packets;

import com.trilead.ssh2.DHGexParameters;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketKexDhGexRequest {
    int max;
    int min;
    int n;
    byte[] payload;

    public PacketKexDhGexRequest(DHGexParameters dHGexParameters) {
        this.min = dHGexParameters.getMin_group_len();
        this.n = dHGexParameters.getPref_group_len();
        this.max = dHGexParameters.getMax_group_len();
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(34);
            m3327x9738a56c.writeUINT32(this.min);
            m3327x9738a56c.writeUINT32(this.n);
            m3327x9738a56c.writeUINT32(this.max);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
