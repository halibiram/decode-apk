package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketUserauthRequestPublicKey {
    String password;
    byte[] payload;
    byte[] pk;
    String pkAlgoName;
    String serviceName;
    byte[] sig;
    String userName;

    public PacketUserauthRequestPublicKey(String str, String str2, String str3, byte[] bArr, byte[] bArr2) {
        this.serviceName = str;
        this.userName = str2;
        this.pkAlgoName = str3;
        this.pk = bArr;
        this.sig = bArr2;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(50);
            m3327x9738a56c.writeString(this.userName);
            m3327x9738a56c.writeString(this.serviceName);
            m3327x9738a56c.writeString(new ObfuscatedString(new long[]{7878957392796000914L, 1542731188831994367L, -2971874422218739090L}).toString());
            m3327x9738a56c.writeBoolean(true);
            m3327x9738a56c.writeString(this.pkAlgoName);
            byte[] bArr = this.pk;
            m3327x9738a56c.writeString(bArr, 0, bArr.length);
            byte[] bArr2 = this.sig;
            m3327x9738a56c.writeString(bArr2, 0, bArr2.length);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }

    public PacketUserauthRequestPublicKey(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        int readByte = new TypesReader(bArr, i, i2).readByte();
        if (readByte != 50) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-397966909088289038L, 3708071537170358599L, 7252860669468143068L, 6905140354132075423L, 6188794796585454393L, -521354375605901420L, 2854891454140289459L}).toString());
            sb.append(readByte);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1517463931896379967L, -742131372418222021L}), sb));
        }
        throw new IOException(new ObfuscatedString(new long[]{-3556401971923957132L, -7838416687177730460L, 8504434548779992123L}).toString());
    }
}
