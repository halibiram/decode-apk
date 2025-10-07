package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public final class zzghg {

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
        zzghl.zzd();
        zzgqy.zza();
        zzght.zza(true);
        zzgjd.zza(true);
        if (zzgmw.zzb()) {
            return;
        }
        zzgil.zza(true);
        zzgjq.zza(true);
        zzgke.zza(true);
        zzgko.zza(true);
        zzgks.zza(true);
        zzglw.zza(true);
    }
}
