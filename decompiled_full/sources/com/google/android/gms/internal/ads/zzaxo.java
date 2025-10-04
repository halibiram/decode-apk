package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaxo extends zzaxx {
    private final boolean zzi;

    public zzaxo(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2) {
        super(zzawjVar, new ObfuscatedString(new long[]{4606417773911479614L, -6698332453838919998L, 7095498474337108683L, 2292085438483115062L, -1481748749403776434L, 1486025054468799906L, -4398643489971626105L, -2798784052584097079L, -1578169394364149130L}).toString(), new ObfuscatedString(new long[]{8868041690067625780L, 3333042850974416054L, -7217994437551894229L, -5117845454329885835L, -852021099387985966L, 2868476003042632959L, 5817486207424988708L}).toString(), zzasgVar, i, 61);
        this.zzi = zzawjVar.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        long longValue = ((Long) this.zzf.invoke(null, this.zzb.zzb(), Boolean.valueOf(this.zzi))).longValue();
        synchronized (this.zze) {
            this.zze.zzE(longValue);
        }
    }
}
