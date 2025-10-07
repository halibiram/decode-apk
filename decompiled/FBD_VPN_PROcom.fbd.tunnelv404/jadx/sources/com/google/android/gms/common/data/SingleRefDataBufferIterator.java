package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.NoSuchElementException;

@KeepForSdk
/* loaded from: classes2.dex */
public class SingleRefDataBufferIterator<T> extends DataBufferIterator<T> {
    private T zac;

    public SingleRefDataBufferIterator(@NonNull DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.DataBufferIterator, java.util.Iterator
    @NonNull
    public final T next() {
        if (hasNext()) {
            int i = this.zab + 1;
            this.zab = i;
            if (i == 0) {
                T t = (T) Preconditions.checkNotNull(this.zaa.get(0));
                this.zac = t;
                if (!(t instanceof DataBufferRef)) {
                    String valueOf = String.valueOf(t.getClass());
                    StringBuilder sb = new StringBuilder(valueOf.length() + 44);
                    sb.append(new ObfuscatedString(new long[]{5589912622570985550L, 4821063815312614964L, -3569089838032517454L, 7833969273498505953L, 181589737623648113L}).toString());
                    sb.append(valueOf);
                    throw new IllegalStateException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8572377413734248006L, 5342707701508425312L, -474608974140428921L}), sb));
                }
            } else {
                ((DataBufferRef) Preconditions.checkNotNull(this.zac)).zaa(this.zab);
            }
            return this.zac;
        }
        int i2 = this.zab;
        throw new NoSuchElementException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-6527043931330961606L, 3292961787800626952L, -7277807102458311074L, 6760733576822985635L, 7246062825842986433L, 3041919523570883259L}), new StringBuilder(46), i2));
    }
}
