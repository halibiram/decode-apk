package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public final class zzgqy {

    @Deprecated
    static final zzgwc zza;

    @Deprecated
    static final zzgwc zzb;

    @Deprecated
    static final zzgwc zzc;

    static {
        zzgwc zzc2 = zzgwc.zzc();
        zza = zzc2;
        zzb = zzc2;
        zzc = zzc2;
        try {
            zza();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void zza() {
        zzgre.zzd();
        zzgqi.zzd();
        zzgqr.zza(true);
        if (zzgmw.zzb()) {
            return;
        }
        zzgpu.zzd(true);
    }
}
