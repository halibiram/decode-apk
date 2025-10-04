package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketOpenDirectTCPIPChannel {
    int channelID;
    String host_to_connect;
    int initialWindowSize;
    int maxPacketSize;
    String originator_IP_address;
    int originator_port;
    byte[] payload;
    int port_to_connect;

    public PacketOpenDirectTCPIPChannel(int i, int i2, int i3, String str, int i4, String str2, int i5) {
        this.channelID = i;
        this.initialWindowSize = i2;
        this.maxPacketSize = i3;
        this.host_to_connect = str;
        this.port_to_connect = i4;
        this.originator_IP_address = str2;
        this.originator_port = i5;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(90);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{-3379676435308325830L, 7688436791679667630L, -6856427202977513619L}).toString());
            m3327x9738a56c.writeUINT32(this.channelID);
            m3327x9738a56c.writeUINT32(this.initialWindowSize);
            m3327x9738a56c.writeUINT32(this.maxPacketSize);
            m3327x9738a56c.writeString(this.host_to_connect);
            m3327x9738a56c.writeUINT32(this.port_to_connect);
            m3327x9738a56c.writeString(this.originator_IP_address);
            m3327x9738a56c.writeUINT32(this.originator_port);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
