package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketChannelWindowAdjust {
    byte[] payload;
    public int recipientChannelID;
    public int windowChange;

    public PacketChannelWindowAdjust(int i, int i2) {
        this.recipientChannelID = i;
        this.windowChange = i2;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(93);
            m3327x9738a56c.writeUINT32(this.recipientChannelID);
            m3327x9738a56c.writeUINT32(this.windowChange);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }

    public PacketChannelWindowAdjust(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 93) {
            this.recipientChannelID = typesReader.readUINT32();
            this.windowChange = typesReader.readUINT32();
            if (typesReader.remain() != 0) {
                throw new IOException(new ObfuscatedString(new long[]{3978860780371354534L, 3933270391710469340L, 4007954586028436562L, -8538353995159271251L, 9150844668826802750L, 6684824562645578919L, 3608843863030203541L}).toString());
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{6160207258960971630L, 8202108647259591723L, 7689541202749444251L, -7586201683028206546L, 103793732371523800L, 6022158927098043249L, 1855724523018224728L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7386697273732576300L, -7237652828656429570L}), sb));
    }
}
