package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgin {

    @Nullable
    private Integer zza;

    @Nullable
    private Integer zzb;

    @Nullable
    private Integer zzc;
    private zzgio zzd;

    public /* synthetic */ zzgin(zzgim zzgimVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        this.zzd = zzgio.zzc;
    }

    public final zzgin zza(int i) {
        if (i != 12 && i != 16) {
            throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{-8523960407944882189L, -800056942218203510L, 4835361699241970277L, -4751895225910963392L, 5658654020694648111L, -2276488409917522495L, 2162789633069492657L, 8617801896713953060L, 5091028221081949706L, 5313181384912374732L}).toString(), Integer.valueOf(i)));
        }
        this.zzb = Integer.valueOf(i);
        return this;
    }

    public final zzgin zzb(int i) {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format(new ObfuscatedString(new long[]{-8024837664485068403L, -9188993005587058221L, -4348249227077429385L, -4417482094307244862L, 4583173780193550302L, -5385011703007673874L, 8128578397925895115L, -3558592174748170927L, -4477111750290814271L, -3023310970362170318L, 3008526888179327339L}).toString(), Integer.valueOf(i)));
        }
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzgin zzc(int i) {
        this.zzc = 16;
        return this;
    }

    public final zzgin zzd(zzgio zzgioVar) {
        this.zzd = zzgioVar;
        return this;
    }

    public final zzgiq zze() {
        Integer num = this.zza;
        if (num != null) {
            if (this.zzb != null) {
                if (this.zzd != null) {
                    if (this.zzc != null) {
                        int intValue = num.intValue();
                        int intValue2 = this.zzb.intValue();
                        this.zzc.getClass();
                        return new zzgiq(intValue, intValue2, 16, this.zzd, null);
                    }
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-6415930223169928341L, 6465853542281658116L, -8630725877630725169L, -546948681776404243L}).toString());
                }
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-8318635266260552392L, -1537773415125632277L, -8342553905140872169L, 3066723373975622459L}).toString());
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-2577516551736911690L, 1846758646745270631L, -7009112251594228135L, -8415098619151295310L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{2237349569680518765L, -9083405389962845782L, 6571912164929494220L, 7113268580254513447L}).toString());
    }

    private zzgin() {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        throw null;
    }
}
