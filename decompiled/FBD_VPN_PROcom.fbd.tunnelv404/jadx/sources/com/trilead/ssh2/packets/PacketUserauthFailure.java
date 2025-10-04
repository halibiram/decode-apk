package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketUserauthFailure {
    String[] authThatCanContinue;
    boolean partialSuccess;
    byte[] payload;

    public PacketUserauthFailure(String[] strArr, boolean z) {
        this.authThatCanContinue = strArr;
        this.partialSuccess = z;
    }

    public String[] getAuthThatCanContinue() {
        return this.authThatCanContinue;
    }

    public boolean isPartialSuccess() {
        return this.partialSuccess;
    }

    public PacketUserauthFailure(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 51) {
            this.authThatCanContinue = typesReader.readNameList();
            this.partialSuccess = typesReader.readBoolean();
            if (typesReader.remain() != 0) {
                throw new IOException(new ObfuscatedString(new long[]{1389464481274729425L, 5985241869691139839L, -5024019456995407879L, -252507803495924192L, -7939354240671859676L, 523846792929422272L, -9035959617658508016L}).toString());
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{3984998752264939656L, 2430660350111390941L, -6331400092287269165L, -4413651791847112789L, 1154611510167849111L, 7227974434765502376L, 7017690113432443924L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6023251670640062618L, 6265956735745982254L}), sb));
    }
}
