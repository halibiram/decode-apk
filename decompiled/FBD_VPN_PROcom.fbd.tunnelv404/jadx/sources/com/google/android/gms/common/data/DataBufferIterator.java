package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Iterator;
import java.util.NoSuchElementException;

@KeepForSdk
/* loaded from: classes2.dex */
public class DataBufferIterator<T> implements Iterator<T> {

    @NonNull
    protected final DataBuffer<T> zaa;
    protected int zab = -1;

    public DataBufferIterator(@NonNull DataBuffer<T> dataBuffer) {
        this.zaa = (DataBuffer) Preconditions.checkNotNull(dataBuffer);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zab < this.zaa.getCount() - 1) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    @NonNull
    public T next() {
        if (hasNext()) {
            DataBuffer<T> dataBuffer = this.zaa;
            int i = this.zab + 1;
            this.zab = i;
            return dataBuffer.get(i);
        }
        int i2 = this.zab;
        throw new NoSuchElementException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-4953667621180425487L, -7328902101117743313L, -7403420744167740785L, -6629961530116223430L, -8949210115134380114L, 696110462137946818L}), new StringBuilder(46), i2));
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{7288539418553214488L, 8444116469417504722L, 6734266999384490566L, 1664409814862882021L, -5600182667312439263L, 4338024239590492650L, -5146794448529145959L}).toString());
    }
}
