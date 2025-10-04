package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;

/* loaded from: classes2.dex */
public final class zzgcu extends zzgcv {
    public static int zza(long j) {
        boolean z;
        int i = (int) j;
        if (i == j) {
            z = true;
        } else {
            z = false;
        }
        zzfxe.zzg(z, new ObfuscatedString(new long[]{-8258650117674248443L, 6347200759381702162L, -5441158384942135277L}).toString(), j);
        return i;
    }

    public static int zzb(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), LockFreeTaskQueueCore.MAX_CAPACITY_MASK);
    }

    public static int zzc(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }
}
