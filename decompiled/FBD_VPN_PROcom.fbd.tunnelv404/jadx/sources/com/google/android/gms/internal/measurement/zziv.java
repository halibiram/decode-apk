package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zziv extends zziy {
    private final int zzc;

    public zziv(byte[] bArr, int i, int i2) {
        super(bArr);
        zzjb.zzj(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zziy, com.google.android.gms.internal.measurement.zzjb
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-3471373750768626072L, 8221463453621741431L, -7371792519242482480L}), new StringBuilder(), i));
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-3865472570949890894L, 6548335269691922251L, -8538113025906966699L}).toString());
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-4917534701233276484L, -5434363390190989630L}), sb, i2));
        }
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zziy, com.google.android.gms.internal.measurement.zzjb
    public final byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zziy, com.google.android.gms.internal.measurement.zzjb
    public final int zzd() {
        return this.zzc;
    }
}
