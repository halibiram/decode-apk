package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.io.Reader;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
class MultiReader extends Reader {

    @CheckForNull
    private Reader current;
    private final Iterator<? extends CharSource> it;

    public MultiReader(Iterator<? extends CharSource> it) {
        this.it = it;
        advance();
    }

    private void advance() {
        close();
        if (this.it.hasNext()) {
            this.current = this.it.next().openStream();
        }
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Reader reader = this.current;
        if (reader != null) {
            try {
                reader.close();
            } finally {
                this.current = null;
            }
        }
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        Preconditions.checkNotNull(cArr);
        Reader reader = this.current;
        if (reader == null) {
            return -1;
        }
        int read = reader.read(cArr, i, i2);
        if (read == -1) {
            advance();
            return read(cArr, i, i2);
        }
        return read;
    }

    @Override // java.io.Reader
    public boolean ready() {
        Reader reader = this.current;
        if (reader != null && reader.ready()) {
            return true;
        }
        return false;
    }

    @Override // java.io.Reader
    public long skip(long j) {
        boolean z;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{8689963533804097826L, 8516614179260335848L, -3699511369341529886L}).toString());
        if (j > 0) {
            while (true) {
                Reader reader = this.current;
                if (reader == null) {
                    break;
                }
                long skip = reader.skip(j);
                if (skip > 0) {
                    return skip;
                }
                advance();
            }
        }
        return 0L;
    }
}
