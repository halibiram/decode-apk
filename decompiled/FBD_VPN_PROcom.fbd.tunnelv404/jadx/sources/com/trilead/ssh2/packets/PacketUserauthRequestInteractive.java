package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketUserauthRequestInteractive {
    byte[] payload;
    String serviceName;
    String[] submethods;
    String userName;

    public PacketUserauthRequestInteractive(String str, String str2, String[] strArr) {
        this.serviceName = str;
        this.userName = str2;
        this.submethods = strArr;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(50);
            m3327x9738a56c.writeString(this.userName);
            m3327x9738a56c.writeString(this.serviceName);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{7177883839405691027L, 4303513228931663379L, -6556044854074973807L, -5666457974639703135L}).toString());
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{-8599564663844952552L}).toString());
            m3327x9738a56c.writeNameList(this.submethods);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
