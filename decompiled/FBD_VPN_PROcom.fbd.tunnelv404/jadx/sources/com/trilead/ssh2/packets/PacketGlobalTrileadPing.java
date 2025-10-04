package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class PacketGlobalTrileadPing {
    byte[] payload;

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(80);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{-2442500902610100330L, 1620640323857972637L, 6927305350623250491L}).toString());
            m3327x9738a56c.writeBoolean(true);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }
}
