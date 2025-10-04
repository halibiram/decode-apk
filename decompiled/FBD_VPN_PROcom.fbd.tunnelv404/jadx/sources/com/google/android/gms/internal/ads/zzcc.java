package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes2.dex */
public class zzcc extends IOException {
    public final boolean zza;
    public final int zzb;

    public zzcc(@Nullable String str, @Nullable Throwable th, boolean z, int i) {
        super(str, th);
        this.zza = z;
        this.zzb = i;
    }

    public static zzcc zza(@Nullable String str, @Nullable Throwable th) {
        return new zzcc(str, th, true, 1);
    }

    public static zzcc zzb(@Nullable String str, @Nullable Throwable th) {
        return new zzcc(str, th, true, 0);
    }

    public static zzcc zzc(@Nullable String str) {
        return new zzcc(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    @Nullable
    public final String getMessage() {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(super.getMessage());
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-7650377082525436640L, -3846926801071506542L, 7134584664650565141L, -8503822692457826584L}).toString());
        m3341xc20437a5.append(this.zza);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{2609233525602095094L, 9123979806970192718L, -2992954121311614367L}).toString());
        m3341xc20437a5.append(this.zzb);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7157633138341898300L, -4558473467159873317L}), m3341xc20437a5);
    }
}
