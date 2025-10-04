package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public final class zzgoy implements zzgpc {
    private final zzgxq zza;
    private final zzguy zzb;

    private zzgoy(zzguy zzguyVar, zzgxq zzgxqVar) {
        this.zzb = zzguyVar;
        this.zza = zzgxqVar;
    }

    public static zzgoy zza(zzguy zzguyVar) {
        String zzh = zzguyVar.zzh();
        Charset charset = zzgpm.zza;
        byte[] bArr = new byte[zzh.length()];
        for (int i = 0; i < zzh.length(); i++) {
            char charAt = zzh.charAt(i);
            if (charAt >= '!' && charAt <= '~') {
                bArr[i] = (byte) charAt;
            } else {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{2398956916081428727L, 3034492483744410787L, -6834950886137729430L, -4450634956150253139L, 3587698128370560888L, 8460472937317774716L}).toString() + charAt);
            }
        }
        return new zzgoy(zzguyVar, zzgxq.zzb(bArr));
    }

    public static zzgoy zzb(zzguy zzguyVar) {
        return new zzgoy(zzguyVar, zzgpm.zza(zzguyVar.zzh()));
    }

    public final zzguy zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgpc
    public final zzgxq zzd() {
        return this.zza;
    }
}
