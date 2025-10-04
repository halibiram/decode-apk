package com.trilead.ssh2.crypto.cipher;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class CipherInputStream {
    InputStream bi;
    int blockSize;
    byte[] buffer;
    BlockCipher currentCipher;
    byte[] enc;
    int pos;
    final int BUFF_SIZE = 2048;
    byte[] input_buffer = new byte[2048];
    int input_buffer_pos = 0;
    int input_buffer_size = 0;

    public CipherInputStream(BlockCipher blockCipher, InputStream inputStream) {
        this.bi = inputStream;
        changeCipher(blockCipher);
    }

    private int fill_buffer() {
        this.input_buffer_pos = 0;
        int read = this.bi.read(this.input_buffer, 0, 2048);
        this.input_buffer_size = read;
        return read;
    }

    private void getBlock() {
        int i = 0;
        while (true) {
            int i2 = this.blockSize;
            if (i < i2) {
                int internal_read = internal_read(this.enc, i, i2 - i);
                if (internal_read >= 0) {
                    i += internal_read;
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{-7636876392038288743L, 3460940226645815640L, -4964037405029252092L, -8031579798025342878L, -7090387826531690853L, 810617595124716470L}).toString());
                }
            } else {
                try {
                    this.currentCipher.transformBlock(this.enc, 0, this.buffer, 0);
                    this.pos = 0;
                    return;
                } catch (Exception unused) {
                    throw new IOException(new ObfuscatedString(new long[]{1938343305292607931L, -1416575537206017121L, 6522062437851854483L, 1733189671492337340L, -6544090421583114431L}).toString());
                }
            }
        }
    }

    private int internal_read(byte[] bArr, int i, int i2) {
        int i3 = this.input_buffer_size;
        if (i3 < 0) {
            return -1;
        }
        if (this.input_buffer_pos >= i3 && fill_buffer() <= 0) {
            return -1;
        }
        int min = Math.min(i2, this.input_buffer_size - this.input_buffer_pos);
        System.arraycopy(this.input_buffer, this.input_buffer_pos, bArr, i, min);
        this.input_buffer_pos += min;
        return min;
    }

    public void changeCipher(BlockCipher blockCipher) {
        this.currentCipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.buffer = new byte[blockSize];
        this.enc = new byte[blockSize];
        this.pos = blockSize;
    }

    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public int readPlain(byte[] bArr, int i, int i2) {
        if (this.pos == this.blockSize) {
            int i3 = 0;
            while (i3 < i2) {
                int internal_read = internal_read(bArr, i + i3, i2 - i3);
                if (internal_read >= 0) {
                    i3 += internal_read;
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{8588427324847926167L, 899553134456791901L, 7429068559964250839L, -3984504071217425068L, -8464693927367057312L}).toString());
                }
            }
            return i3;
        }
        throw new IOException(new ObfuscatedString(new long[]{-3420235465307574194L, 5305044014533816734L, 6253112259562597597L, 1838208384880103728L, -8617825987611652180L, 3194428274183784653L, -2952851510354977670L, -7206628056239353014L}).toString());
    }

    public int read(byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i2 > 0) {
            if (this.pos >= this.blockSize) {
                getBlock();
            }
            int min = Math.min(this.blockSize - this.pos, i2);
            System.arraycopy(this.buffer, this.pos, bArr, i, min);
            this.pos += min;
            i += min;
            i2 -= min;
            i3 += min;
        }
        return i3;
    }

    public int read() {
        if (this.pos >= this.blockSize) {
            getBlock();
        }
        byte[] bArr = this.buffer;
        int i = this.pos;
        this.pos = i + 1;
        return bArr[i] & 255;
    }
}
