package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketWindowChange {
    public int character_height;
    public int character_width;
    byte[] payload;
    public int pixel_height;
    public int pixel_width;
    public int recipientChannelID;

    public PacketWindowChange(int i, int i2, int i3, int i4, int i5) {
        this.recipientChannelID = i;
        this.character_width = i2;
        this.character_height = i3;
        this.pixel_width = i4;
        this.pixel_height = i5;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(98);
            m3327x9738a56c.writeUINT32(this.recipientChannelID);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{-1403814910803238244L, 9009791844289537486L, 4013951795106929484L}).toString());
            m3327x9738a56c.writeBoolean(false);
            m3327x9738a56c.writeUINT32(this.character_width);
            m3327x9738a56c.writeUINT32(this.character_height);
            m3327x9738a56c.writeUINT32(this.pixel_width);
            m3327x9738a56c.writeUINT32(this.pixel_height);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
