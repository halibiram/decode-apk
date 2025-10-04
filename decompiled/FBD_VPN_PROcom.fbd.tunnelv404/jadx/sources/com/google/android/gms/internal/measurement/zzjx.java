package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzjx implements zzlh {
    private static final zzjx zza = new zzjx();

    private zzjx() {
    }

    public static zzjx zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final zzlg zzb(Class cls) {
        if (zzkc.class.isAssignableFrom(cls)) {
            try {
                return (zzlg) zzkc.zzbC(cls.asSubclass(zzkc.class)).zzl(3, null, null);
            } catch (Exception e) {
                throw new RuntimeException(new ObfuscatedString(new long[]{2838740879068010276L, -1787538670251646534L, -6231731783903235593L, -7350988568773646912L, 3252781657894745166L}).toString().concat(cls.getName()), e);
            }
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5318166238845588253L, -15156082875974787L, -4548128434342661786L, -7916739291860023478L, -2124245712660997459L}).toString().concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final boolean zzc(Class cls) {
        return zzkc.class.isAssignableFrom(cls);
    }
}
