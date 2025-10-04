package com.trilead.ssh2.packets;

import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketUserauthInfoResponse {
    byte[] payload;
    String[] responses;

    public PacketUserauthInfoResponse(String[] strArr) {
        this.responses = strArr;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(61);
            m3327x9738a56c.writeUINT32(this.responses.length);
            for (String str : this.responses) {
                m3327x9738a56c.writeString(str);
            }
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
