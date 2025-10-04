package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.math.BigInteger;

/* loaded from: classes2.dex */
public final class zzcdn {
    private BigInteger zza = BigInteger.ONE;
    private String zzb = new ObfuscatedString(new long[]{2306126555975955873L, 7001794953954049116L}).toString();

    public final synchronized String zza() {
        String bigInteger;
        bigInteger = this.zza.toString();
        this.zza = this.zza.add(BigInteger.ONE);
        this.zzb = bigInteger;
        return bigInteger;
    }

    public final synchronized String zzb() {
        return this.zzb;
    }
}
