package com.trilead.ssh2;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;

/* loaded from: classes3.dex */
public class StreamGobbler extends InputStream {
    private InputStream is;
    private final GobblerThread t;
    private final Object synchronizer = new Object();
    private boolean isEOF = false;
    private boolean isClosed = false;
    private IOException exception = null;
    private byte[] buffer = new byte[2048];
    private int read_pos = 0;
    private int write_pos = 0;

    /* loaded from: classes3.dex */
    public class GobblerThread extends Thread {
        public GobblerThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            byte[] bArr = new byte[8192];
            while (true) {
                try {
                    int read = StreamGobbler.this.is.read(bArr);
                    synchronized (StreamGobbler.this.synchronizer) {
                        if (read <= 0) {
                            StreamGobbler.this.isEOF = true;
                            StreamGobbler.this.synchronizer.notifyAll();
                            return;
                        }
                        try {
                            if (StreamGobbler.this.buffer.length - StreamGobbler.this.write_pos < read) {
                                int i = StreamGobbler.this.write_pos - StreamGobbler.this.read_pos;
                                int i2 = i + read;
                                byte[] bArr2 = StreamGobbler.this.buffer;
                                if (i2 > StreamGobbler.this.buffer.length) {
                                    int i3 = i2 / 3;
                                    if (i3 < 256) {
                                        i3 = 256;
                                    }
                                    if (i3 > 8192) {
                                        i3 = 8192;
                                    }
                                    bArr2 = new byte[i2 + i3];
                                }
                                if (i > 0) {
                                    System.arraycopy(StreamGobbler.this.buffer, StreamGobbler.this.read_pos, bArr2, 0, i);
                                }
                                StreamGobbler.this.buffer = bArr2;
                                StreamGobbler.this.read_pos = 0;
                                StreamGobbler.this.write_pos = i;
                            }
                            System.arraycopy(bArr, 0, StreamGobbler.this.buffer, StreamGobbler.this.write_pos, read);
                            StreamGobbler.this.write_pos += read;
                            StreamGobbler.this.synchronizer.notifyAll();
                        } catch (Throwable th) {
                            throw th;
                        }
                        throw th;
                    }
                } catch (IOException e) {
                    synchronized (StreamGobbler.this.synchronizer) {
                        StreamGobbler.this.exception = e;
                        StreamGobbler.this.synchronizer.notifyAll();
                        return;
                    }
                }
            }
        }
    }

    public StreamGobbler(InputStream inputStream) {
        this.is = inputStream;
        GobblerThread gobblerThread = new GobblerThread();
        this.t = gobblerThread;
        gobblerThread.setDaemon(true);
        gobblerThread.start();
    }

    @Override // java.io.InputStream
    public int available() {
        int i;
        synchronized (this.synchronizer) {
            try {
                if (!this.isClosed) {
                    i = this.write_pos - this.read_pos;
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{2051251874625634976L, -5697944133236865181L, -871627665202440196L, -1354378579740240L, 3490150045939184669L}).toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.synchronizer) {
            try {
                if (this.isClosed) {
                    return;
                }
                this.isClosed = true;
                this.isEOF = true;
                this.synchronizer.notifyAll();
                this.is.close();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.InputStream
    public int read() {
        synchronized (this.synchronizer) {
            if (this.isClosed) {
                throw new IOException(new ObfuscatedString(new long[]{7350160599915993785L, 2291793686487727689L, 2812113982429111342L, 6703217563917683898L, 6537303625286953021L}).toString());
            }
            while (true) {
                int i = this.read_pos;
                if (i == this.write_pos) {
                    IOException iOException = this.exception;
                    if (iOException == null) {
                        if (this.isEOF) {
                            return -1;
                        }
                        try {
                            this.synchronizer.wait();
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    } else {
                        throw iOException;
                    }
                } else {
                    byte[] bArr = this.buffer;
                    this.read_pos = i + 1;
                    return bArr[i] & 255;
                }
            }
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        bArr.getClass();
        if (i < 0 || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0 || i > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        synchronized (this.synchronizer) {
            if (this.isClosed) {
                throw new IOException(new ObfuscatedString(new long[]{-4444537319252661878L, 5688964386533302777L, -4586707189374830534L, 1620460081790509949L, 7742332642855619369L}).toString());
            }
            while (true) {
                int i4 = this.read_pos;
                int i5 = this.write_pos;
                if (i4 == i5) {
                    IOException iOException = this.exception;
                    if (iOException == null) {
                        if (this.isEOF) {
                            return -1;
                        }
                        try {
                            this.synchronizer.wait();
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    } else {
                        throw iOException;
                    }
                } else {
                    int i6 = i5 - i4;
                    if (i6 <= i2) {
                        i2 = i6;
                    }
                    System.arraycopy(this.buffer, i4, bArr, i, i2);
                    this.read_pos += i2;
                    return i2;
                }
            }
        }
    }
}
