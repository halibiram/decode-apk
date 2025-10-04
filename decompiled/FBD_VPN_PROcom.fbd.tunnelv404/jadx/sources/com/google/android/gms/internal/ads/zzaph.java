package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes2.dex */
public final class zzaph {
    public static long zza(ByteBuffer byteBuffer) {
        zzg(byteBuffer);
        return zze(byteBuffer, byteBuffer.position() + 16);
    }

    public static long zzb(ByteBuffer byteBuffer) {
        zzg(byteBuffer);
        return zze(byteBuffer, byteBuffer.position() + 12);
    }

    public static Pair zzc(RandomAccessFile randomAccessFile) {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair zzf = zzf(randomAccessFile, 0);
        if (zzf != null) {
            return zzf;
        }
        return zzf(randomAccessFile, 65535);
    }

    public static void zzd(ByteBuffer byteBuffer, long j) {
        zzg(byteBuffer);
        int position = byteBuffer.position() + 16;
        if (j >= 0 && j <= 4294967295L) {
            byteBuffer.putInt(byteBuffer.position() + position, (int) j);
        } else {
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{3595581681373422303L, -3017125593276087210L, 3860959557593513452L, -5899809232766636128L, 3335847691125056891L}), new StringBuilder(), j));
        }
    }

    private static long zze(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getInt(i) & 4294967295L;
    }

    private static Pair zzf(RandomAccessFile randomAccessFile, int i) {
        int i2;
        long length = randomAccessFile.length();
        if (length >= 22) {
            ByteBuffer allocate = ByteBuffer.allocate(((int) Math.min(i, (-22) + length)) + 22);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            long capacity = length - allocate.capacity();
            randomAccessFile.seek(capacity);
            randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
            zzg(allocate);
            int capacity2 = allocate.capacity();
            if (capacity2 >= 22) {
                int i3 = capacity2 - 22;
                int min = Math.min(i3, 65535);
                for (int i4 = 0; i4 < min; i4++) {
                    i2 = i3 - i4;
                    if (allocate.getInt(i2) == 101010256 && ((char) allocate.getShort(i2 + 20)) == i4) {
                        break;
                    }
                }
            }
            i2 = -1;
            if (i2 != -1) {
                allocate.position(i2);
                ByteBuffer slice = allocate.slice();
                slice.order(ByteOrder.LITTLE_ENDIAN);
                return Pair.create(slice, Long.valueOf(capacity + i2));
            }
            return null;
        }
        return null;
    }

    private static void zzg(ByteBuffer byteBuffer) {
        if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
        } else {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{4088209917631330115L, 7929507178433546730L, 449624717587696563L, -7484148002813082180L, 5815233224573677381L, 7773340890487519431L, 7034101692857492954L}).toString());
        }
    }
}
