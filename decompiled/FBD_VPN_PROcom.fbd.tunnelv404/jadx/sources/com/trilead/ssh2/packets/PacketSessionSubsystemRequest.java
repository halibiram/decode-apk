package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketSessionSubsystemRequest {
    byte[] payload;
    public int recipientChannelID;
    public String subsystem;
    public boolean wantReply;

    public PacketSessionSubsystemRequest(int i, boolean z, String str) {
        this.recipientChannelID = i;
        this.wantReply = z;
        this.subsystem = str;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(98);
            m3327x9738a56c.writeUINT32(this.recipientChannelID);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{4486985617668743017L, -3714100183339693160L, 1407324700129588074L}).toString());
            m3327x9738a56c.writeBoolean(this.wantReply);
            m3327x9738a56c.writeString(this.subsystem);
            byte[] bytes = m3327x9738a56c.getBytes();
            this.payload = bytes;
            m3327x9738a56c.getBytes(bytes);
        }
        return this.payload;
    }
}
