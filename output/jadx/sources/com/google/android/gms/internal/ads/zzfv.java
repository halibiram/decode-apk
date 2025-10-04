package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzfv {
    private long[] zza;
    private Object[] zzb;
    private int zzc;
    private int zzd;

    public zzfv(int i) {
        this.zza = new long[10];
        this.zzb = new Object[10];
    }

    @Nullable
    private final Object zzf() {
        boolean z;
        if (this.zzd > 0) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzf(z);
        Object[] objArr = this.zzb;
        int i = this.zzc;
        Object obj = objArr[i];
        objArr[i] = null;
        this.zzc = (i + 1) % objArr.length;
        this.zzd--;
        return obj;
    }

    public final synchronized int zza() {
        return this.zzd;
    }

    @Nullable
    public final synchronized Object zzb() {
        if (this.zzd == 0) {
            return null;
        }
        return zzf();
    }

    @Nullable
    public final synchronized Object zzc(long j) {
        Object obj;
        obj = null;
        while (this.zzd > 0 && j - this.zza[this.zzc] >= 0) {
            obj = zzf();
        }
        return obj;
    }

    public final synchronized void zzd(long j, Object obj) {
        try {
            if (this.zzd > 0) {
                if (j <= this.zza[((this.zzc + r0) - 1) % this.zzb.length]) {
                    zze();
                }
            }
            int length = this.zzb.length;
            if (this.zzd >= length) {
                int i = length + length;
                long[] jArr = new long[i];
                Object[] objArr = new Object[i];
                int i2 = this.zzc;
                int i3 = length - i2;
                System.arraycopy(this.zza, i2, jArr, 0, i3);
                System.arraycopy(this.zzb, this.zzc, objArr, 0, i3);
                int i4 = this.zzc;
                if (i4 > 0) {
                    System.arraycopy(this.zza, 0, jArr, i3, i4);
                    System.arraycopy(this.zzb, 0, objArr, i3, this.zzc);
                }
                this.zza = jArr;
                this.zzb = objArr;
                this.zzc = 0;
            }
            int i5 = this.zzc;
            int i6 = this.zzd;
            Object[] objArr2 = this.zzb;
            int length2 = (i5 + i6) % objArr2.length;
            this.zza[length2] = j;
            objArr2[length2] = obj;
            this.zzd = i6 + 1;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zze() {
        this.zzc = 0;
        this.zzd = 0;
        Arrays.fill(this.zzb, (Object) null);
    }

    public zzfv() {
        this(10);
    }
}
