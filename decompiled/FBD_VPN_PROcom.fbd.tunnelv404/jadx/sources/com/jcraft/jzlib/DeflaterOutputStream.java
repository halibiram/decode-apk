package com.jcraft.jzlib;

import com.panda912.muddy.ObfuscatedString;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class DeflaterOutputStream extends FilterOutputStream {
    protected static final int DEFAULT_BUFSIZE = 512;
    private final byte[] buf1;
    protected byte[] buffer;
    private boolean close_out;
    private boolean closed;
    protected final Deflater deflater;
    protected boolean mydeflater;
    private boolean syncFlush;

    public DeflaterOutputStream(OutputStream outputStream) {
        this(outputStream, new Deflater(-1), 512, true);
        this.mydeflater = true;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.closed) {
            finish();
            if (this.mydeflater) {
                this.deflater.end();
            }
            if (this.close_out) {
                ((FilterOutputStream) this).out.close();
            }
            this.closed = true;
        }
    }

    public int deflate(int i) {
        Deflater deflater = this.deflater;
        byte[] bArr = this.buffer;
        deflater.setOutput(bArr, 0, bArr.length);
        int deflate = this.deflater.deflate(i);
        if (deflate == -5 ? !(this.deflater.avail_in > 0 || i == 4) : !(deflate != 0 && deflate != 1)) {
            int i2 = this.deflater.next_out_index;
            if (i2 > 0) {
                ((FilterOutputStream) this).out.write(this.buffer, 0, i2);
            }
            return deflate;
        }
        throw new IOException(new ObfuscatedString(new long[]{5297559404804136943L, 1125714360490303912L, 5773956103318251954L, 8943731005070115250L, -2693586629792573604L}).toString() + deflate + new ObfuscatedString(new long[]{4584072707797737111L, -3676765188224513357L, -1880698565680836820L}).toString() + this.deflater.avail_out);
    }

    public void finish() {
        while (!this.deflater.finished()) {
            deflate(4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (r3.deflater.finished() == false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
    
        r0 = deflate(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0018, code lost:
    
        if (r3.deflater.next_out_index >= r3.buffer.length) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
    
        if (r0 != 1) goto L15;
     */
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void flush() {
        if (this.syncFlush) {
        }
        ((FilterOutputStream) this).out.flush();
    }

    public Deflater getDeflater() {
        return this.deflater;
    }

    public boolean getSyncFlush() {
        return this.syncFlush;
    }

    public long getTotalIn() {
        return this.deflater.getTotalIn();
    }

    public long getTotalOut() {
        return this.deflater.getTotalOut();
    }

    public void setSyncFlush(boolean z) {
        this.syncFlush = z;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        byte[] bArr = this.buf1;
        bArr[0] = (byte) (i & 255);
        write(bArr, 0, 1);
    }

    public DeflaterOutputStream(OutputStream outputStream, Deflater deflater) {
        this(outputStream, deflater, 512, true);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        if (this.deflater.finished()) {
            throw new IOException(new ObfuscatedString(new long[]{-1788545960834616130L, 873186522025122084L}).toString());
        }
        if (((i < 0) | (i2 < 0)) || (i + i2 > bArr.length)) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return;
        }
        int i3 = this.syncFlush ? 2 : 0;
        this.deflater.setInput(bArr, i, i2, true);
        while (this.deflater.avail_in > 0 && deflate(i3) != 1) {
        }
    }

    public DeflaterOutputStream(OutputStream outputStream, Deflater deflater, int i) {
        this(outputStream, deflater, i, true);
    }

    public DeflaterOutputStream(OutputStream outputStream, Deflater deflater, int i, boolean z) {
        super(outputStream);
        this.closed = false;
        this.syncFlush = false;
        this.buf1 = new byte[1];
        this.mydeflater = false;
        this.close_out = true;
        if (outputStream == null || deflater == null) {
            throw null;
        }
        if (i > 0) {
            this.deflater = deflater;
            this.buffer = new byte[i];
            this.close_out = z;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-9062273629956364059L, -7915041352334602984L, -2800403207124474616L, 2893993095183144098L, -4625913836927272670L, 1083645246139265713L}).toString());
    }
}
