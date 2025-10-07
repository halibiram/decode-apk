package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public final class zzgrt implements zzggp {
    private final zzggp zza;
    private final zzgvz zzb;
    private final byte[] zzc;

    private zzgrt(zzggp zzggpVar, zzgvz zzgvzVar, byte[] bArr) {
        this.zza = zzggpVar;
        this.zzb = zzgvzVar;
        this.zzc = bArr;
    }

    public static zzggp zza(zzgno zzgnoVar) {
        byte[] array;
        zzgox zza = zzgnoVar.zza(zzggb.zza());
        zzguq zza2 = zzgut.zza();
        zza2.zzb(zza.zzg());
        zza2.zzc(zza.zze());
        zza2.zza(zza.zzb());
        zzggp zzggpVar = (zzggp) zzghb.zzc((zzgut) zza2.zzal(), zzggp.class);
        zzgvz zzc = zza.zzc();
        zzgvz zzgvzVar = zzgvz.zza;
        int ordinal = zzc.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        throw new GeneralSecurityException(new ObfuscatedString(new long[]{9051288784407109265L, -8065268703541856676L, -5420007563146357463L, -3403381335172572980L, -250822115289352905L}).toString());
                    }
                } else {
                    array = new byte[0];
                }
            }
            array = ByteBuffer.allocate(5).put((byte) 0).putInt(zzgnoVar.zzb().intValue()).array();
        } else {
            array = ByteBuffer.allocate(5).put((byte) 1).putInt(zzgnoVar.zzb().intValue()).array();
        }
        return new zzgrt(zzggpVar, zzc, array);
    }
}
