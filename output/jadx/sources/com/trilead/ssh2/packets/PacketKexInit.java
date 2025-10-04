package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.crypto.CryptoWishList;
import com.trilead.ssh2.transport.KexParameters;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class PacketKexInit {
    KexParameters kp;
    byte[] payload;

    public PacketKexInit(CryptoWishList cryptoWishList, SecureRandom secureRandom) {
        KexParameters kexParameters = new KexParameters();
        this.kp = kexParameters;
        byte[] bArr = new byte[16];
        kexParameters.cookie = bArr;
        secureRandom.nextBytes(bArr);
        KexParameters kexParameters2 = this.kp;
        kexParameters2.kex_algorithms = cryptoWishList.kexAlgorithms;
        kexParameters2.server_host_key_algorithms = cryptoWishList.serverHostKeyAlgorithms;
        kexParameters2.encryption_algorithms_client_to_server = cryptoWishList.c2s_enc_algos;
        kexParameters2.encryption_algorithms_server_to_client = cryptoWishList.s2c_enc_algos;
        kexParameters2.mac_algorithms_client_to_server = cryptoWishList.c2s_mac_algos;
        kexParameters2.mac_algorithms_server_to_client = cryptoWishList.s2c_mac_algos;
        kexParameters2.compression_algorithms_client_to_server = new String[]{new ObfuscatedString(new long[]{-6844225206548668633L, -7585358754826647600L}).toString()};
        this.kp.compression_algorithms_server_to_client = new String[]{new ObfuscatedString(new long[]{-3858295173274514141L, -2869151527135999479L}).toString()};
        KexParameters kexParameters3 = this.kp;
        kexParameters3.languages_client_to_server = new String[0];
        kexParameters3.languages_server_to_client = new String[0];
        kexParameters3.first_kex_packet_follows = false;
        kexParameters3.reserved_field1 = 0;
    }

    public String[] getCompression_algorithms_client_to_server() {
        return this.kp.compression_algorithms_client_to_server;
    }

    public String[] getCompression_algorithms_server_to_client() {
        return this.kp.compression_algorithms_server_to_client;
    }

    public byte[] getCookie() {
        return this.kp.cookie;
    }

    public String[] getEncryption_algorithms_client_to_server() {
        return this.kp.encryption_algorithms_client_to_server;
    }

    public String[] getEncryption_algorithms_server_to_client() {
        return this.kp.encryption_algorithms_server_to_client;
    }

    public KexParameters getKexParameters() {
        return this.kp;
    }

    public String[] getKex_algorithms() {
        return this.kp.kex_algorithms;
    }

    public String[] getLanguages_client_to_server() {
        return this.kp.languages_client_to_server;
    }

    public String[] getLanguages_server_to_client() {
        return this.kp.languages_server_to_client;
    }

    public String[] getMac_algorithms_client_to_server() {
        return this.kp.mac_algorithms_client_to_server;
    }

    public String[] getMac_algorithms_server_to_client() {
        return this.kp.mac_algorithms_server_to_client;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter m3327x9738a56c = AbstractC0749x8313616e.m3327x9738a56c(20);
            m3327x9738a56c.writeBytes(this.kp.cookie, 0, 16);
            m3327x9738a56c.writeNameList(this.kp.kex_algorithms);
            m3327x9738a56c.writeNameList(this.kp.server_host_key_algorithms);
            m3327x9738a56c.writeNameList(this.kp.encryption_algorithms_client_to_server);
            m3327x9738a56c.writeNameList(this.kp.encryption_algorithms_server_to_client);
            m3327x9738a56c.writeNameList(this.kp.mac_algorithms_client_to_server);
            m3327x9738a56c.writeNameList(this.kp.mac_algorithms_server_to_client);
            m3327x9738a56c.writeNameList(this.kp.compression_algorithms_client_to_server);
            m3327x9738a56c.writeNameList(this.kp.compression_algorithms_server_to_client);
            m3327x9738a56c.writeNameList(this.kp.languages_client_to_server);
            m3327x9738a56c.writeNameList(this.kp.languages_server_to_client);
            m3327x9738a56c.writeBoolean(this.kp.first_kex_packet_follows);
            m3327x9738a56c.writeUINT32(this.kp.reserved_field1);
            this.payload = m3327x9738a56c.getBytes();
        }
        return this.payload;
    }

    public int getReserved_field1() {
        return this.kp.reserved_field1;
    }

    public String[] getServer_host_key_algorithms() {
        return this.kp.server_host_key_algorithms;
    }

    public boolean isFirst_kex_packet_follows() {
        return this.kp.first_kex_packet_follows;
    }

    public PacketKexInit(byte[] bArr, int i, int i2) {
        this.kp = new KexParameters();
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int readByte = typesReader.readByte();
        if (readByte == 20) {
            this.kp.cookie = typesReader.readBytes(16);
            this.kp.kex_algorithms = typesReader.readNameList();
            this.kp.server_host_key_algorithms = typesReader.readNameList();
            this.kp.encryption_algorithms_client_to_server = typesReader.readNameList();
            this.kp.encryption_algorithms_server_to_client = typesReader.readNameList();
            this.kp.mac_algorithms_client_to_server = typesReader.readNameList();
            this.kp.mac_algorithms_server_to_client = typesReader.readNameList();
            this.kp.compression_algorithms_client_to_server = typesReader.readNameList();
            this.kp.compression_algorithms_server_to_client = typesReader.readNameList();
            this.kp.languages_client_to_server = typesReader.readNameList();
            this.kp.languages_server_to_client = typesReader.readNameList();
            this.kp.first_kex_packet_follows = typesReader.readBoolean();
            this.kp.reserved_field1 = typesReader.readUINT32();
            if (typesReader.remain() != 0) {
                throw new IOException(new ObfuscatedString(new long[]{-8328867931277410038L, 3681151944916261169L, 3029275140237507353L, -691456778460980518L, -2484951698812718072L}).toString());
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{3269803682742210338L, -4434929281787109001L, -7286341034626197613L, 4513335078874142741L, -9214658410829725834L}).toString());
        sb.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{423829866152208980L, -9038195217936630438L}), sb));
    }
}
