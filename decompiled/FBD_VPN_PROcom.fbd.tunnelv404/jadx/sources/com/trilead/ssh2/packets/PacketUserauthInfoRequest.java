package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes3.dex */
public class PacketUserauthInfoRequest {
    boolean[] echo;
    String instruction;
    String languageTag;
    String name;
    int numPrompts;
    byte[] payload;
    String[] prompt;

    public PacketUserauthInfoRequest(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 60) {
            this.name = typesReader.readString();
            this.instruction = typesReader.readString();
            this.languageTag = typesReader.readString();
            int readUINT32 = typesReader.readUINT32();
            this.numPrompts = readUINT32;
            this.prompt = new String[readUINT32];
            this.echo = new boolean[readUINT32];
            for (int i3 = 0; i3 < this.numPrompts; i3++) {
                this.prompt[i3] = typesReader.readString();
                this.echo[i3] = typesReader.readBoolean();
            }
            if (typesReader.remain() == 0) {
                return;
            } else {
                throw new IOException(new ObfuscatedString(new long[]{4939749523392814298L, 5669929120405633328L, -6799667149569623516L, -8375879818095232145L, -2566562354667701743L, 843753441335756119L, 5143174765131345393L}).toString());
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{4509188914861136852L, -7166203249810629255L, 7558993887572847352L, -8715900594332695722L, -2934288936302721118L, 1361468204953886387L, -3801045117714416365L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8221335243977791573L, -7395941413418055621L}), sb));
    }

    public boolean[] getEcho() {
        return this.echo;
    }

    public String getInstruction() {
        return this.instruction;
    }

    public String getLanguageTag() {
        return this.languageTag;
    }

    public String getName() {
        return this.name;
    }

    public int getNumPrompts() {
        return this.numPrompts;
    }

    public String[] getPrompt() {
        return this.prompt;
    }
}
