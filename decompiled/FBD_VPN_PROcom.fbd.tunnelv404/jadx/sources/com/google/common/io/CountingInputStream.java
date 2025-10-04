package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

@ElementTypesAreNonnullByDefault
@Beta
@GwtIncompatible
/* loaded from: classes2.dex */
public final class CountingInputStream extends FilterInputStream {
    private long count;
    private long mark;

    public CountingInputStream(InputStream inputStream) {
        super((InputStream) Preconditions.checkNotNull(inputStream));
        this.mark = -1L;
    }

    public long getCount() {
        return this.count;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        ((FilterInputStream) this).in.mark(i);
        this.mark = this.count;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.count++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        if (((FilterInputStream) this).in.markSupported()) {
            if (this.mark != -1) {
                ((FilterInputStream) this).in.reset();
                this.count = this.mark;
            } else {
                throw new IOException(new ObfuscatedString(new long[]{4273013571555083033L, -2305236527435720560L, -6072268473324962697L}).toString());
            }
        } else {
            throw new IOException(new ObfuscatedString(new long[]{7848943829514673845L, -7378355656150569016L, 3956558426692882484L, -7050563608258998226L}).toString());
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        long skip = ((FilterInputStream) this).in.skip(j);
        this.count += skip;
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (read != -1) {
            this.count += read;
        }
        return read;
    }
}
