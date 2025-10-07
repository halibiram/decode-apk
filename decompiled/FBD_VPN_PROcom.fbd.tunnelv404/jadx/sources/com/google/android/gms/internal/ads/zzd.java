package com.google.android.gms.internal.ads;

import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzd {
    private final zzc[] zzk;
    public static final zzd zza = new zzd(null, new zzc[0], 0, -9223372036854775807L, 0);
    private static final zzc zzf = new zzc(0).zzb(0);
    private static final String zzg = Integer.toString(1, 36);
    private static final String zzh = Integer.toString(2, 36);
    private static final String zzi = Integer.toString(3, 36);
    private static final String zzj = Integer.toString(4, 36);

    @Deprecated
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zza
    };
    public final long zzd = 0;
    public final int zzc = 0;
    public final int zze = 0;

    private zzd(@Nullable Object obj, zzc[] zzcVarArr, long j, long j2, int i) {
        this.zzk = zzcVarArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzd.class == obj.getClass()) {
            zzd zzdVar = (zzd) obj;
            if (zzfy.zzF(null, null) && Arrays.equals(this.zzk, zzdVar.zzk)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzk) + (((int) (-9223372036854775807L)) * 961);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{1143488446668817203L, 5382318068724626601L, -9081845825736541923L, -6181084001961199127L}).toString());
        sb.append((Object) null);
        sb.append(new ObfuscatedString(new long[]{-8764966402073659959L, 842440534499869384L, -266326632626917757L, -2089229320972570930L, 805776466770125051L, -3235894242599991506L}).toString());
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1007469569107678502L, -8713760642449177262L}), sb);
    }

    public final zzc zza(@IntRange(from = 0) int i) {
        if (i < 0) {
            return zzf;
        }
        return this.zzk[i];
    }

    public final boolean zzb(int i) {
        zza(-1);
        zzn zznVar = zzc.zzb;
        return false;
    }
}
