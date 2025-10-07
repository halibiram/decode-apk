package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketGlobalCancelForwardRequest {
    public String bindAddress;
    public int bindPort;
    byte[] payload;
    public boolean wantReply;

    public PacketGlobalCancelForwardRequest(boolean z, String str, int i) {
        this.wantReply = z;
        this.bindAddress = str;
        this.bindPort = i;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(80);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{-5213765798831616408L, 983574756869902720L, -5509532640517730889L, -1008088075364560361L}).toString());
            m3327x9738a56c.writeBoolean(this.wantReply);
            m3327x9738a56c.writeString(this.bindAddress);
            m3327x9738a56c.writeUINT32(this.bindPort);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
