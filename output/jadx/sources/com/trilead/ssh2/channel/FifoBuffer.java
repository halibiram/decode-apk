package com.trilead.ssh2.channel;

import java.io.OutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class FifoBuffer {
    private boolean closed;
    private int limit;
    private final Object lock;
    private final int pageSize;
    private Pointer r;
    private int sz;
    private Pointer w;

    /* loaded from: classes3.dex */
    public static final class Page {
        final byte[] buf;
        Page next;

        public Page(int i) {
            this.buf = new byte[i];
        }
    }

    /* loaded from: classes3.dex */
    public class Pointer {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        int off;
        Page p;

        public Pointer(Page page, int i) {
            this.p = page;
            this.off = i;
        }

        private int chunk() {
            int i = FifoBuffer.this.pageSize - this.off;
            if (i > 0) {
                return i;
            }
            Page page = this.p;
            Page page2 = page.next;
            if (page2 == null) {
                page2 = FifoBuffer.this.newPage();
                page.next = page2;
            }
            this.p = page2;
            this.off = 0;
            return FifoBuffer.this.pageSize;
        }

        public void read(byte[] bArr, int i, int i2) {
            while (i2 > 0) {
                int min = Math.min(i2, chunk());
                System.arraycopy(this.p.buf, this.off, bArr, i, min);
                this.off += min;
                i2 -= min;
                i += min;
            }
        }

        public void write(byte[] bArr, int i, int i2) {
            while (i2 > 0) {
                int min = Math.min(i2, chunk());
                System.arraycopy(bArr, i, this.p.buf, this.off, min);
                this.off += min;
                i2 -= min;
                i += min;
            }
        }
    }

    public FifoBuffer(int i, int i2) {
        this(null, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Page newPage() {
        return new Page(this.pageSize);
    }

    private void releaseRing() {
        if (this.closed && readable() == 0) {
            this.w = null;
            this.r = null;
        }
    }

    public void close() {
        synchronized (this.lock) {
            try {
                if (!this.closed) {
                    this.closed = true;
                    releaseRing();
                    this.lock.notifyAll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0011, code lost:
    
        r4.r.read(r5, r6, r2);
        r6 = r6 + r2;
        r7 = r7 - r2;
        r0 = r0 + r2;
        r4.sz -= r2;
        r4.lock.notifyAll();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int read(byte[] bArr, int i, int i2) {
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        while (true) {
            synchronized (this.lock) {
                while (true) {
                    try {
                        int min = Math.min(i2, readable());
                        if (min > 0) {
                            break;
                        }
                        if (i3 > 0) {
                            return i3;
                        }
                        if (this.closed) {
                            releaseRing();
                            return -1;
                        }
                        this.lock.wait();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    public int readable() {
        int i;
        synchronized (this.lock) {
            i = this.sz;
        }
        return i;
    }

    public void setLimit(int i) {
        synchronized (this.lock) {
            this.limit = i;
        }
    }

    public int writable() {
        return Math.max(0, this.limit - readable());
    }

    public void write(byte[] bArr, int i, int i2) {
        int min;
        while (i2 > 0) {
            synchronized (this.lock) {
                while (true) {
                    try {
                        min = Math.min(i2, writable());
                        if (min != 0) {
                            break;
                        } else {
                            this.lock.wait();
                        }
                    } finally {
                    }
                }
                this.w.write(bArr, i, min);
                i += min;
                i2 -= min;
                this.sz += min;
                this.lock.notifyAll();
            }
        }
    }

    public int writeTo(OutputStream outputStream) {
        int i = 0;
        while (readable() > 0) {
            try {
                byte[] bArr = new byte[1024];
                int read = read(bArr, 0, 1024);
                outputStream.write(bArr, 0, read);
                i += read;
            } catch (InterruptedException e) {
                throw new AssertionError(e);
            }
        }
        return i;
    }

    public FifoBuffer(Object obj, int i, int i2) {
        this.lock = obj == null ? this : obj;
        this.limit = i2;
        this.pageSize = i;
        Page newPage = newPage();
        this.r = new Pointer(newPage, 0);
        this.w = new Pointer(newPage, 0);
    }
}
