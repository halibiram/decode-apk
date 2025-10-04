package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzaia {
    private static final long[] zza = {128, 64, 32, 16, 8, 4, 2, 1};
    private final byte[] zzb = new byte[8];
    private int zzc;
    private int zzd;

    public static int zzb(int i) {
        int i2 = 0;
        while (i2 < 8) {
            int i3 = i2 + 1;
            if ((zza[i2] & i) == 0) {
                i2 = i3;
            } else {
                return i3;
            }
        }
        return -1;
    }

    public static long zzc(byte[] bArr, int i, boolean z) {
        long j = bArr[0] & 255;
        if (z) {
            j &= ~zza[i - 1];
        }
        for (int i2 = 1; i2 < i; i2++) {
            j = (j << 8) | (bArr[i2] & 255);
        }
        return j;
    }

    public final int zza() {
        return this.zzd;
    }

    public final long zzd(zzacv zzacvVar, boolean z, boolean z2, int i) {
        if (this.zzc == 0) {
            if (!zzacvVar.zzn(this.zzb, 0, 1, z)) {
                return -1L;
            }
            int zzb = zzb(this.zzb[0] & 255);
            this.zzd = zzb;
            if (zzb != -1) {
                this.zzc = 1;
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{2226321037468607467L, 3422255594847889550L, 4162666780780854421L, 6697884493615697607L, 3509754014357812182L, 4818212922487165699L}).toString());
            }
        }
        int i2 = this.zzd;
        if (i2 > i) {
            this.zzc = 0;
            return -2L;
        }
        if (i2 != 1) {
            ((zzack) zzacvVar).zzn(this.zzb, 1, i2 - 1, false);
        }
        this.zzc = 0;
        return zzc(this.zzb, this.zzd, z2);
    }

    public final void zze() {
        this.zzc = 0;
        this.zzd = 0;
    }
}
