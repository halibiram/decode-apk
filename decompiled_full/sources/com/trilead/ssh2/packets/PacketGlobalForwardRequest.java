package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketGlobalForwardRequest {
    public String bindAddress;
    public int bindPort;
    byte[] payload;
    public boolean wantReply;

    public PacketGlobalForwardRequest(boolean z, String str, int i) {
        this.wantReply = z;
        this.bindAddress = str;
        this.bindPort = i;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(80);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{-528153163625761656L, 244652012912299237L, -7559951111110812875L}).toString());
            m3327x9738a56c.writeBoolean(this.wantReply);
            m3327x9738a56c.writeString(this.bindAddress);
            m3327x9738a56c.writeUINT32(this.bindPort);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
