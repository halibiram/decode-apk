package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzfuv extends zzfvo {
    private int zza;
    private String zzb;
    private byte zzc;

    @Override // com.google.android.gms.internal.ads.zzfvo
    public final zzfvo zza(String str) {
        this.zzb = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvo
    public final zzfvo zzb(int i) {
        this.zza = i;
        this.zzc = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvo
    public final zzfvp zzc() {
        if (this.zzc == 1) {
            return new zzfux(this.zza, this.zzb, null);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-7072142405154259798L, -4289302212925199798L, -5681230174437035091L, -4040386155368475408L, 2019907597243320421L, -3510557940575397704L}).toString());
    }
}
