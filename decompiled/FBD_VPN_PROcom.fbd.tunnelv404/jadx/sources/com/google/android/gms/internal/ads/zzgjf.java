package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgjf {

    @Nullable
    private Integer zza;

    @Nullable
    private Integer zzb;

    @Nullable
    private Integer zzc;
    private zzgjg zzd;

    public /* synthetic */ zzgjf(zzgje zzgjeVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        this.zzd = zzgjg.zzc;
    }

    public final zzgjf zza(int i) {
        this.zzb = 12;
        return this;
    }

    public final zzgjf zzb(int i) {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format(new ObfuscatedString(new long[]{7744075019243898868L, 3619137879263627767L, -4983278292043719286L, 3361101134741958575L, 4098133651816070561L, 7582662880118674028L, 8935370686165928736L, 7369167413292844070L, -1888266975230741398L, -5378159025081995465L, 2992215116168787031L}).toString(), Integer.valueOf(i)));
        }
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzgjf zzc(int i) {
        this.zzc = 16;
        return this;
    }

    public final zzgjf zzd(zzgjg zzgjgVar) {
        this.zzd = zzgjgVar;
        return this;
    }

    public final zzgji zze() {
        Integer num = this.zza;
        if (num != null) {
            if (this.zzd != null) {
                if (this.zzb != null) {
                    if (this.zzc != null) {
                        int intValue = num.intValue();
                        this.zzb.getClass();
                        this.zzc.getClass();
                        return new zzgji(intValue, 12, 16, this.zzd, null);
                    }
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-9172204030913696680L, -6211623859406752555L, 384007501877601750L, -3828960808362702361L}).toString());
                }
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-8587721274493576310L, -6322393087369280067L, -7437368562043994994L, -2472696779876421438L}).toString());
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-8929266578077735968L, 422388561581523667L, -3273488577076940687L, 2522838227391503686L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-755517286931629814L, -5666471851824659538L, -2596825342601774341L, -1234787613673286863L}).toString());
    }

    private zzgjf() {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        throw null;
    }
}
