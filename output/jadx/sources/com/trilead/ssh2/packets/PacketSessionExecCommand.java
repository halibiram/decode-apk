package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketSessionExecCommand {
    public String command;
    byte[] payload;
    public int recipientChannelID;
    public boolean wantReply;

    public PacketSessionExecCommand(int i, boolean z, String str) {
        this.recipientChannelID = i;
        this.wantReply = z;
        this.command = str;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(98);
            m3327x9738a56c.writeUINT32(this.recipientChannelID);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{-7128555142912505884L, 5558071566112093086L}).toString());
            m3327x9738a56c.writeBoolean(this.wantReply);
            m3327x9738a56c.writeString(this.command);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
