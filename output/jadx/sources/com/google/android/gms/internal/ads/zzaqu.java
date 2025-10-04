package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.io.FilterInputStream;
import java.io.InputStream;

@VisibleForTesting
/* loaded from: classes2.dex */
final class zzaqu extends FilterInputStream {
    private final long zza;
    private long zzb;

    public zzaqu(InputStream inputStream, long j) {
        super(inputStream);
        this.zza = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = super.read();
        if (read != -1) {
            this.zzb++;
        }
        return read;
    }

    public final long zza() {
        return this.zza - this.zzb;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.zzb += read;
        }
        return read;
    }
}
