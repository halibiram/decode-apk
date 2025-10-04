package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgpw {

    @Nullable
    private Integer zza;

    @Nullable
    private Integer zzb;
    private zzgpx zzc;

    public /* synthetic */ zzgpw(zzgpv zzgpvVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = zzgpx.zzd;
    }

    public final zzgpw zza(int i) {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format(new ObfuscatedString(new long[]{3308609710901433826L, 2490689974879169336L, -5161170911589928820L, -6600484071044577702L, -3319441089517684482L, -5782515942825805021L, -3295870203237476881L, 1966772448527454702L, -3190730486710465220L, 8564088344838160118L}).toString(), Integer.valueOf(i * 8)));
        }
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzgpw zzb(int i) {
        if (i >= 10 && i <= 16) {
            this.zzb = Integer.valueOf(i);
            return this;
        }
        throw new GeneralSecurityException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{3257970212232069681L, 5387285465392372794L, 6951143379981340422L, -4006657163027422946L, 5574955005582194482L, 7885461002660830047L}), new StringBuilder(), i));
    }

    public final zzgpw zzc(zzgpx zzgpxVar) {
        this.zzc = zzgpxVar;
        return this;
    }

    public final zzgpz zzd() {
        Integer num = this.zza;
        if (num != null) {
            if (this.zzb != null) {
                if (this.zzc != null) {
                    return new zzgpz(num.intValue(), this.zzb.intValue(), this.zzc, null);
                }
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-2682344659789591087L, -4780647867925298378L, 1124306255449850023L}).toString());
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{7708843740396900964L, -4279461701624509540L, -3479037595753264760L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{5222726823318866213L, -1338878009235662002L, 2108440505778242635L}).toString());
    }

    private zzgpw() {
        this.zza = null;
        this.zzb = null;
        throw null;
    }
}
