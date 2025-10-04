package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
final class zzgch extends FilterInputStream {
    private long zza;
    private long zzb;

    public zzgch(InputStream inputStream, long j) {
        super(inputStream);
        boolean z;
        this.zzb = -1L;
        inputStream.getClass();
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzfxe.zzf(z, new ObfuscatedString(new long[]{-64394907330833851L, -1649958846411148494L, 969230148334539493L, 7575986505593895552L, -1891428814608015325L}).toString());
        this.zza = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        return (int) Math.min(((FilterInputStream) this).in.available(), this.zza);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
        ((FilterInputStream) this).in.mark(i);
        this.zzb = this.zza;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (this.zza == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.zza--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (((FilterInputStream) this).in.markSupported()) {
            if (this.zzb != -1) {
                ((FilterInputStream) this).in.reset();
                this.zza = this.zzb;
            } else {
                throw new IOException(new ObfuscatedString(new long[]{2685316031495922970L, -1305995639479230781L, -8584090179805318713L}).toString());
            }
        } else {
            throw new IOException(new ObfuscatedString(new long[]{4190033562272594435L, -265763634113313084L, 7576465410277854319L, -7677050185442768444L}).toString());
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        long skip = ((FilterInputStream) this).in.skip(Math.min(j, this.zza));
        this.zza -= skip;
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        long j = this.zza;
        if (j == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read(bArr, i, (int) Math.min(i2, j));
        if (read != -1) {
            this.zza -= read;
        }
        return read;
    }
}
