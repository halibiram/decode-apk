package com.trilead.ssh2.channel;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public final class ChannelOutputStream extends OutputStream {
    Channel c;
    boolean isClosed = false;

    public ChannelOutputStream(Channel channel) {
        this.c = channel;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.isClosed) {
            this.isClosed = true;
            Channel channel = this.c;
            channel.cm.sendEOF(channel);
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        if (!this.isClosed) {
        } else {
            throw new IOException(new ObfuscatedString(new long[]{-3385370156639749650L, 5688226674988225977L, -1135314372173879920L, 8629623383079842002L, 584113513872501448L}).toString());
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int i3;
        if (!this.isClosed) {
            bArr.getClass();
            if (i < 0 || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0 || i > bArr.length) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == 0) {
                return;
            }
            Channel channel = this.c;
            channel.cm.sendData(channel, bArr, i, i2);
            return;
        }
        throw new IOException(new ObfuscatedString(new long[]{-2181581438241127778L, -1417661462717666536L, 2229651064589215178L, 5541693232673020074L, -7148233695754085584L}).toString());
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }
}
