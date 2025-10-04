package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaxd extends zzaxx {
    private final zzawk zzi;

    public zzaxd(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2, zzawk zzawkVar) {
        super(zzawjVar, new ObfuscatedString(new long[]{4033289990956700000L, 290835770854806761L, 6079420399883849731L, -2089561790202947587L, 3856842658078644423L, 1849763951141314382L, 9104925824618061143L, -4390446908497754151L, 1680670130275661672L}).toString(), new ObfuscatedString(new long[]{-7654452926609021296L, 8975622370747392476L, -7745494338269086019L, 9079385299152232055L, -3324711003234045736L, 5685933376355248925L, 4681018109568161315L}).toString(), zzasgVar, i, 85);
        this.zzi = zzawkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        long[] jArr = (long[]) this.zzf.invoke(null, Long.valueOf(this.zzi.zzd()), Long.valueOf(this.zzi.zzh()), Long.valueOf(this.zzi.zzb()), Long.valueOf(this.zzi.zzf()));
        synchronized (this.zze) {
            this.zze.zzv(jArr[0]);
            this.zze.zzu(jArr[1]);
        }
    }
}
