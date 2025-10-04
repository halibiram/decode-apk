package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgjs {

    @Nullable
    private Integer zza;
    private zzgjt zzb;

    public /* synthetic */ zzgjs(zzgjr zzgjrVar) {
        this.zza = null;
        this.zzb = zzgjt.zzc;
    }

    public final zzgjs zza(int i) {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format(new ObfuscatedString(new long[]{5190412340101365812L, -2564639427424300011L, 5540614339895110222L, -220864723400902655L, 5437812055112096748L, 5570724515652252558L, -5795164373274862228L, -839936154044151592L, 5080589892305323168L, -8755701836766534108L}).toString(), Integer.valueOf(i)));
        }
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzgjs zzb(zzgjt zzgjtVar) {
        this.zzb = zzgjtVar;
        return this;
    }

    public final zzgjv zzc() {
        Integer num = this.zza;
        if (num != null) {
            if (this.zzb != null) {
                return new zzgjv(num.intValue(), this.zzb, null);
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{1974602978972556593L, -8931392855617836672L, 5864459609946039467L, 1967993237134541528L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{6296646101879875441L, -5133472658133029599L, 1046996696615466423L, 7042123361558040492L}).toString());
    }

    private zzgjs() {
        this.zza = null;
        throw null;
    }
}
