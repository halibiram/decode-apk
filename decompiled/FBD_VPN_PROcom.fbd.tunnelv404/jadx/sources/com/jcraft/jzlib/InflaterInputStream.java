package com.jcraft.jzlib;

import com.panda912.muddy.ObfuscatedString;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class InflaterInputStream extends FilterInputStream {
    protected static final int DEFAULT_BUFSIZE = 512;
    private byte[] b;
    protected byte[] buf;
    private byte[] byte1;
    private boolean close_in;
    private boolean closed;
    private boolean eof;
    protected final Inflater inflater;
    protected boolean myinflater;

    public InflaterInputStream(InputStream inputStream) {
        this(inputStream, false);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        if (!this.closed) {
            if (this.eof) {
                return 0;
            }
            return 1;
        }
        throw new IOException(new ObfuscatedString(new long[]{5717010583632900526L, -9129624171008914992L, 5291645649016337362L}).toString());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.closed) {
            if (this.myinflater) {
                this.inflater.end();
            }
            if (this.close_in) {
                ((FilterInputStream) this).in.close();
            }
            this.closed = true;
        }
    }

    public void fill() {
        if (!this.closed) {
            InputStream inputStream = ((FilterInputStream) this).in;
            byte[] bArr = this.buf;
            int read = inputStream.read(bArr, 0, bArr.length);
            if (read == -1) {
                Inflater inflater = this.inflater;
                if (inflater.istate.wrap == 0 && !inflater.finished()) {
                    this.buf[0] = 0;
                    read = 1;
                } else {
                    if (this.inflater.istate.was != -1) {
                        throw new IOException(new ObfuscatedString(new long[]{-5318884221548789218L, -3940174993510341440L, 5878077078757766946L, -9176896413547891461L}).toString());
                    }
                    throw new EOFException(new ObfuscatedString(new long[]{207720088103766132L, 2046732729396809692L, -7148492411147163629L, 4682210086040795261L, -7319364921013720208L, 3339706062270016909L}).toString());
                }
            }
            this.inflater.setInput(this.buf, 0, read, true);
            return;
        }
        throw new IOException(new ObfuscatedString(new long[]{3690639581082090631L, 8126911246167430813L, 6617659374773589103L}).toString());
    }

    public byte[] getAvailIn() {
        Inflater inflater = this.inflater;
        int i = inflater.avail_in;
        if (i <= 0) {
            return null;
        }
        byte[] bArr = new byte[i];
        System.arraycopy(inflater.next_in, inflater.next_in_index, bArr, 0, i);
        return bArr;
    }

    public Inflater getInflater() {
        return this.inflater;
    }

    public long getTotalIn() {
        return this.inflater.getTotalIn();
    }

    public long getTotalOut() {
        return this.inflater.getTotalOut();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (!this.closed) {
            if (read(this.byte1, 0, 1) == -1) {
                return -1;
            }
            return this.byte1[0] & 255;
        }
        throw new IOException(new ObfuscatedString(new long[]{8460953709337543922L, 4836701798059229705L, -149970736096692162L}).toString());
    }

    public void readHeader() {
        byte[] bytes = new ObfuscatedString(new long[]{-9112502939665726488L}).toString().getBytes();
        this.inflater.setInput(bytes, 0, 0, false);
        this.inflater.setOutput(bytes, 0, 0);
        this.inflater.inflate(0);
        if (!this.inflater.istate.inParsingHeader()) {
            return;
        }
        byte[] bArr = new byte[1];
        while (((FilterInputStream) this).in.read(bArr) > 0) {
            this.inflater.setInput(bArr);
            if (this.inflater.inflate(0) == 0) {
                if (!this.inflater.istate.inParsingHeader()) {
                    return;
                }
            } else {
                throw new IOException(this.inflater.msg);
            }
        }
        throw new IOException(new ObfuscatedString(new long[]{1420647851868051348L, -9163383323706183396L}).toString());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        throw new IOException(new ObfuscatedString(new long[]{6491004062526202351L, -650514538575586344L, -1861458052770694174L, -6591901800517991419L}).toString());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        if (j >= 0) {
            if (!this.closed) {
                int min = (int) Math.min(j, 2147483647L);
                int i = 0;
                while (true) {
                    if (i >= min) {
                        break;
                    }
                    int i2 = min - i;
                    byte[] bArr = this.b;
                    if (i2 > bArr.length) {
                        i2 = bArr.length;
                    }
                    int read = read(bArr, 0, i2);
                    if (read == -1) {
                        this.eof = true;
                        break;
                    }
                    i += read;
                }
                return i;
            }
            throw new IOException(new ObfuscatedString(new long[]{3716773914032037379L, -9014809520449137119L, -7213742318661603878L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5788980559471249446L, -3664746203238682150L, 4776059527554305930L, -4378111821515118550L}).toString());
    }

    public InflaterInputStream(InputStream inputStream, boolean z) {
        this(inputStream, new Inflater(z));
        this.myinflater = true;
    }

    public InflaterInputStream(InputStream inputStream, Inflater inflater) {
        this(inputStream, inflater, 512);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (!this.closed) {
            bArr.getClass();
            if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == 0) {
                return 0;
            }
            if (this.eof) {
                return -1;
            }
            this.inflater.setOutput(bArr, i, i2);
            int i3 = 0;
            while (!this.eof) {
                if (this.inflater.avail_in == 0) {
                    fill();
                }
                int inflate = this.inflater.inflate(0);
                Inflater inflater = this.inflater;
                int i4 = inflater.next_out_index;
                i3 += i4 - i;
                if (inflate != -3) {
                    if (inflate == 1 || inflate == 2) {
                        this.eof = true;
                        if (inflate == 2) {
                            return -1;
                        }
                    }
                    if (inflater.avail_out == 0) {
                        break;
                    }
                    i = i4;
                } else {
                    throw new IOException(this.inflater.msg);
                }
            }
            return i3;
        }
        throw new IOException(new ObfuscatedString(new long[]{-898030407824502500L, -3278702741704173541L, -7437563102904674725L}).toString());
    }

    public InflaterInputStream(InputStream inputStream, Inflater inflater, int i) {
        this(inputStream, inflater, i, true);
    }

    public InflaterInputStream(InputStream inputStream, Inflater inflater, int i, boolean z) {
        super(inputStream);
        this.closed = false;
        this.eof = false;
        this.close_in = true;
        this.myinflater = false;
        this.byte1 = new byte[1];
        this.b = new byte[512];
        if (inputStream == null || inflater == null) {
            throw null;
        }
        if (i > 0) {
            this.inflater = inflater;
            this.buf = new byte[i];
            this.close_in = z;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{5746683786540380975L, -5271814497477798355L, -2992172680223632589L, -6153857849120912295L, 4596366913349710536L, -3264419593814184631L}).toString());
    }
}
