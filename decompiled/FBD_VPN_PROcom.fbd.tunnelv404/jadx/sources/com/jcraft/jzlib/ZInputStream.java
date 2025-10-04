package com.jcraft.jzlib;

import com.panda912.muddy.ObfuscatedString;
import java.io.FilterInputStream;
import java.io.InputStream;

@Deprecated
/* loaded from: classes3.dex */
public class ZInputStream extends FilterInputStream {
    private byte[] buf;
    private byte[] buf1;
    protected boolean compress;
    protected Deflater deflater;
    protected int flush;
    protected InflaterInputStream iis;
    protected InputStream in;

    public ZInputStream(InputStream inputStream) {
        this(inputStream, false);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.compress) {
            this.deflater.end();
        } else {
            this.iis.close();
        }
    }

    public int getFlushMode() {
        return this.flush;
    }

    public long getTotalIn() {
        if (this.compress) {
            return this.deflater.total_in;
        }
        return this.iis.getTotalIn();
    }

    public long getTotalOut() {
        if (this.compress) {
            return this.deflater.total_out;
        }
        return this.iis.getTotalOut();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (read(this.buf1, 0, 1) == -1) {
            return -1;
        }
        return this.buf1[0] & 255;
    }

    public void setFlushMode(int i) {
        this.flush = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        int i = 512;
        if (j < 512) {
            i = (int) j;
        }
        return read(new byte[i]);
    }

    public ZInputStream(InputStream inputStream, boolean z) {
        super(inputStream);
        this.flush = 0;
        this.in = null;
        this.buf1 = new byte[1];
        this.buf = new byte[512];
        this.iis = new InflaterInputStream(inputStream, z);
        this.compress = false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int deflate;
        if (this.compress) {
            this.deflater.setOutput(bArr, i, i2);
            do {
                InputStream inputStream = this.in;
                byte[] bArr2 = this.buf;
                int read = inputStream.read(bArr2, 0, bArr2.length);
                if (read != -1) {
                    this.deflater.setInput(this.buf, 0, read, true);
                    deflate = this.deflater.deflate(this.flush);
                    int i3 = this.deflater.next_out_index;
                    if (i3 <= 0) {
                        if (deflate != 1) {
                            if (deflate == -2) {
                                break;
                            }
                        } else {
                            return 0;
                        }
                    } else {
                        return i3;
                    }
                } else {
                    return -1;
                }
            } while (deflate != -3);
            throw new ZStreamException(new ObfuscatedString(new long[]{8466134477499656347L, 6338042860195894L, 4059120392903128043L}).toString() + this.deflater.msg);
        }
        return this.iis.read(bArr, i, i2);
    }

    public ZInputStream(InputStream inputStream, int i) {
        super(inputStream);
        this.flush = 0;
        this.buf1 = new byte[1];
        this.buf = new byte[512];
        this.in = inputStream;
        Deflater deflater = new Deflater();
        this.deflater = deflater;
        deflater.init(i);
        this.compress = true;
    }
}
