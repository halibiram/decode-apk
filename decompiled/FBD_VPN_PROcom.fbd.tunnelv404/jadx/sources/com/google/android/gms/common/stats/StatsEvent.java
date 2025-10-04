package com.google.android.gms.common.stats;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

@KeepForSdk
@Deprecated
/* loaded from: classes2.dex */
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {

    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface Types {

        @KeepForSdk
        public static final int EVENT_TYPE_ACQUIRE_WAKE_LOCK = 7;

        @KeepForSdk
        public static final int EVENT_TYPE_RELEASE_WAKE_LOCK = 8;
    }

    @NonNull
    public final String toString() {
        long zzb = zzb();
        int zza = zza();
        String zzc = zzc();
        StringBuilder sb = new StringBuilder();
        sb.append(zzb);
        sb.append(new ObfuscatedString(new long[]{-3588849305799942348L, -8314022737080900271L}).toString());
        sb.append(zza);
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-5946780631434601921L, 2641724229364945822L}), sb, zzc);
    }

    public abstract int zza();

    public abstract long zzb();

    @NonNull
    public abstract String zzc();
}
