package com.trilead.ssh2.crypto.cipher;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class CipherOutputStream {
    int blockSize;
    OutputStream bo;
    byte[] buffer;
    BlockCipher currentCipher;
    byte[] enc;
    int pos;
    final int BUFF_SIZE = 2048;
    byte[] out_buffer = new byte[2048];
    int out_buffer_pos = 0;

    public CipherOutputStream(BlockCipher blockCipher, OutputStream outputStream) {
        this.bo = outputStream;
        changeCipher(blockCipher);
    }

    private void internal_write(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            int i3 = this.out_buffer_pos;
            int i4 = 2048 - i3;
            if (i2 <= i4) {
                i4 = i2;
            }
            System.arraycopy(bArr, i, this.out_buffer, i3, i4);
            i += i4;
            int i5 = this.out_buffer_pos + i4;
            this.out_buffer_pos = i5;
            i2 -= i4;
            if (i5 >= 2048) {
                this.bo.write(this.out_buffer, 0, 2048);
                this.out_buffer_pos = 0;
            }
        }
    }

    private void writeBlock() {
        try {
            this.currentCipher.transformBlock(this.buffer, 0, this.enc, 0);
            internal_write(this.enc, 0, this.blockSize);
            this.pos = 0;
        } catch (Exception e) {
            throw new IOException(new ObfuscatedString(new long[]{5129359305365667422L, -5196969142893219445L, 2497081674382326545L, 5092525684438787997L, -5366322973466882545L}).toString(), e);
        }
    }

    public void changeCipher(BlockCipher blockCipher) {
        this.currentCipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.buffer = new byte[blockSize];
        this.enc = new byte[blockSize];
        this.pos = 0;
    }

    public void flush() {
        if (this.pos == 0) {
            int i = this.out_buffer_pos;
            if (i > 0) {
                this.bo.write(this.out_buffer, 0, i);
                this.out_buffer_pos = 0;
            }
            this.bo.flush();
            return;
        }
        throw new IOException(new ObfuscatedString(new long[]{1948607024943861981L, -2037175456471603869L, 8774368454855060849L, 35585393157995793L, -6756657865295980105L, 1954417996833791566L, -5523874052998990056L, -8709755736467659208L}).toString());
    }

    public void write(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            int min = Math.min(this.blockSize - this.pos, i2);
            System.arraycopy(bArr, i, this.buffer, this.pos, min);
            int i3 = this.pos + min;
            this.pos = i3;
            i += min;
            i2 -= min;
            if (i3 >= this.blockSize) {
                writeBlock();
            }
        }
    }

    public void writePlain(int i) {
        if (this.pos == 0) {
            internal_write(i);
            return;
        }
        throw new IOException(new ObfuscatedString(new long[]{-4578976922255259845L, 4197982715117200233L, 1008900942781535267L, 1080178313682696811L, -6325019209553994952L, -2940479622461587623L, 5921785122893076777L, -4067424287662348980L}).toString());
    }

    public void writePlain(byte[] bArr, int i, int i2) {
        if (this.pos == 0) {
            internal_write(bArr, i, i2);
            return;
        }
        throw new IOException(new ObfuscatedString(new long[]{7666370329911946620L, 3785824305319346976L, -3774239606466132596L, -6089121063422893716L, -8164902863658729630L, 8478421136846912695L, 5304909147436528255L, -9088490257306549027L}).toString());
    }

    private void internal_write(int i) {
        byte[] bArr = this.out_buffer;
        int i2 = this.out_buffer_pos;
        int i3 = i2 + 1;
        this.out_buffer_pos = i3;
        bArr[i2] = (byte) i;
        if (i3 >= 2048) {
            this.bo.write(bArr, 0, 2048);
            this.out_buffer_pos = 0;
        }
    }

    public void write(int i) {
        byte[] bArr = this.buffer;
        int i2 = this.pos;
        int i3 = i2 + 1;
        this.pos = i3;
        bArr[i2] = (byte) i;
        if (i3 >= this.blockSize) {
            writeBlock();
        }
    }
}
