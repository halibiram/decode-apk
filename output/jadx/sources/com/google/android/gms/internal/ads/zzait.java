package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zzait implements zzair {
    private final int zza;
    private final int zzb;
    private final zzfp zzc;

    public zzait(zzain zzainVar, zzam zzamVar) {
        zzfp zzfpVar = zzainVar.zza;
        this.zzc = zzfpVar;
        zzfpVar.zzK(12);
        int zzp = zzfpVar.zzp();
        if (new ObfuscatedString(new long[]{1714173237354301688L, -8787879103081796560L, -868052599612112002L}).toString().equals(zzamVar.zzm)) {
            int zzl = zzfy.zzl(zzamVar.zzB, zzamVar.zzz);
            if (zzp == 0 || zzp % zzl != 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{9084111953150615114L, -3313008033599318236L, 2185275105144393074L, -3880577824720307780L, -3933010038279791971L, -4717184138391443966L, 3453484111306166474L}).toString());
                sb.append(zzl);
                zzff.zzf(new ObfuscatedString(new long[]{-6390371109706689177L, 7320870395709872611L, -5661571111861381519L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8276751288020028382L, 5616660686929166537L, 1867988962328039932L, 3993452640824128145L}), sb, zzp));
                zzp = zzl;
            }
        }
        this.zza = zzp == 0 ? -1 : zzp;
        this.zzb = zzfpVar.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzair
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzair
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzair
    public final int zzc() {
        int i = this.zza;
        if (i == -1) {
            return this.zzc.zzp();
        }
        return i;
    }
}
