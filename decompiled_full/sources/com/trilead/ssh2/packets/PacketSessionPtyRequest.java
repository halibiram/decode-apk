package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketSessionPtyRequest {
    public int character_height;
    public int character_width;
    byte[] payload;
    public int pixel_height;
    public int pixel_width;
    public int recipientChannelID;
    public String term;
    public byte[] terminal_modes;
    public boolean wantReply;

    public PacketSessionPtyRequest(int i, boolean z, String str, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.recipientChannelID = i;
        this.wantReply = z;
        this.term = str;
        this.character_width = i2;
        this.character_height = i3;
        this.pixel_width = i4;
        this.pixel_height = i5;
        this.terminal_modes = bArr;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(98);
            m3327x9738a56c.writeUINT32(this.recipientChannelID);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{-2182704086167565312L, 3267340637313087048L}).toString());
            m3327x9738a56c.writeBoolean(this.wantReply);
            m3327x9738a56c.writeString(this.term);
            m3327x9738a56c.writeUINT32(this.character_width);
            m3327x9738a56c.writeUINT32(this.character_height);
            m3327x9738a56c.writeUINT32(this.pixel_width);
            m3327x9738a56c.writeUINT32(this.pixel_height);
            byte[] bArr = this.terminal_modes;
            m3327x9738a56c.writeString(bArr, 0, bArr.length);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
