package com.jcraft.jzlib;

import com.panda912.muddy.ObfuscatedString;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

@Deprecated
/* loaded from: classes3.dex */
public class ZOutputStream extends FilterOutputStream {
    protected byte[] buf;
    private byte[] buf1;
    protected int bufsize;
    protected boolean compress;
    private DeflaterOutputStream dos;
    private boolean end;
    protected int flush;
    private Inflater inflater;
    protected OutputStream out;

    public ZOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.bufsize = 512;
        this.flush = 0;
        this.buf = new byte[512];
        this.end = false;
        this.buf1 = new byte[1];
        this.out = outputStream;
        Inflater inflater = new Inflater();
        this.inflater = inflater;
        inflater.init();
        this.compress = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            finish();
        } catch (IOException unused) {
        } catch (Throwable th) {
            end();
            this.out.close();
            this.out = null;
            throw th;
        }
        end();
        this.out.close();
        this.out = null;
    }

    public synchronized void end() {
        if (this.end) {
            return;
        }
        if (this.compress) {
            try {
                this.dos.finish();
            } catch (Exception unused) {
            }
        } else {
            this.inflater.end();
        }
        this.end = true;
    }

    public void finish() {
        if (this.compress) {
            write(new ObfuscatedString(new long[]{4134601680334958869L}).toString().getBytes(), 0, 0);
        } else {
            this.dos.finish();
        }
        flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() {
        this.out.flush();
    }

    public int getFlushMode() {
        return this.flush;
    }

    public long getTotalIn() {
        if (this.compress) {
            return this.dos.getTotalIn();
        }
        return this.inflater.total_in;
    }

    public long getTotalOut() {
        if (this.compress) {
            return this.dos.getTotalOut();
        }
        return this.inflater.total_out;
    }

    public void setFlushMode(int i) {
        this.flush = i;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        byte[] bArr = this.buf1;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return;
        }
        if (this.compress) {
            this.dos.write(bArr, i, i2);
            return;
        }
        this.inflater.setInput(bArr, i, i2, true);
        int i3 = 0;
        do {
            Inflater inflater = this.inflater;
            if (inflater.avail_in <= 0) {
                break;
            }
            byte[] bArr2 = this.buf;
            inflater.setOutput(bArr2, 0, bArr2.length);
            i3 = this.inflater.inflate(this.flush);
            int i4 = this.inflater.next_out_index;
            if (i4 > 0) {
                this.out.write(this.buf, 0, i4);
            }
        } while (i3 == 0);
        if (i3 == 0) {
            return;
        }
        throw new ZStreamException(new ObfuscatedString(new long[]{6015028807036670860L, 6203946007058772303L, -8472180244822028757L}).toString() + this.inflater.msg);
    }

    public ZOutputStream(OutputStream outputStream, int i) {
        this(outputStream, i, false);
    }

    public ZOutputStream(OutputStream outputStream, int i, boolean z) {
        super(outputStream);
        this.bufsize = 512;
        this.flush = 0;
        this.buf = new byte[512];
        this.end = false;
        this.buf1 = new byte[1];
        this.out = outputStream;
        this.dos = new DeflaterOutputStream(outputStream, new Deflater(i, z));
        this.compress = true;
    }
}
