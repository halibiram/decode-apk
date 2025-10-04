package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketSessionStartShell {
    byte[] payload;
    public int recipientChannelID;
    public boolean wantReply;

    public PacketSessionStartShell(int i, boolean z) {
        this.recipientChannelID = i;
        this.wantReply = z;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(98);
            m3327x9738a56c.writeUINT32(this.recipientChannelID);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{-4113975272686264223L, -8832284278755753389L}).toString());
            m3327x9738a56c.writeBoolean(this.wantReply);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
