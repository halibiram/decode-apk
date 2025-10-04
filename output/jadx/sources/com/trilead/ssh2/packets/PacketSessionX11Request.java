package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketSessionX11Request {
    byte[] payload;
    public int recipientChannelID;
    public boolean singleConnection;
    public boolean wantReply;
    String x11AuthenticationCookie;
    String x11AuthenticationProtocol;
    int x11ScreenNumber;

    public PacketSessionX11Request(int i, boolean z, boolean z2, String str, String str2, int i2) {
        this.recipientChannelID = i;
        this.wantReply = z;
        this.singleConnection = z2;
        this.x11AuthenticationProtocol = str;
        this.x11AuthenticationCookie = str2;
        this.x11ScreenNumber = i2;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(98);
            m3327x9738a56c.writeUINT32(this.recipientChannelID);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{66085330870529246L, 1443088208796125231L}).toString());
            m3327x9738a56c.writeBoolean(this.wantReply);
            m3327x9738a56c.writeBoolean(this.singleConnection);
            m3327x9738a56c.writeString(this.x11AuthenticationProtocol);
            m3327x9738a56c.writeString(this.x11AuthenticationCookie);
            m3327x9738a56c.writeUINT32(this.x11ScreenNumber);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
