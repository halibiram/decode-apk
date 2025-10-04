package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaxi extends zzaxx {
    private final zzavm zzi;
    private final long zzj;
    private final long zzk;

    public zzaxi(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2, zzavm zzavmVar, long j, long j2) {
        super(zzawjVar, new ObfuscatedString(new long[]{-5707557940111389788L, -3868493935326928427L, 1643537577304218220L, -3722245767351370635L, -8083604928440370507L, -6920717823138048420L, -7822718599141451000L, -6977034970916478514L, 6420594362692463491L}).toString(), new ObfuscatedString(new long[]{241122235116908836L, -2349843674930899629L, -2983191477541311518L, 6045686568362218535L, 5756025618154581087L, 4472442112336173909L, 7890765546379673890L}).toString(), zzasgVar, i, 11);
        this.zzi = zzavmVar;
        this.zzj = j;
        this.zzk = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        zzavm zzavmVar = this.zzi;
        if (zzavmVar != null) {
            zzavk zzavkVar = new zzavk((String) this.zzf.invoke(null, zzavmVar.zzb(), Long.valueOf(this.zzj), Long.valueOf(this.zzk)));
            synchronized (this.zze) {
                try {
                    this.zze.zzz(zzavkVar.zza.longValue());
                    if (zzavkVar.zzb.longValue() >= 0) {
                        this.zze.zzQ(zzavkVar.zzb.longValue());
                    }
                    if (zzavkVar.zzc.longValue() >= 0) {
                        this.zze.zzf(zzavkVar.zzc.longValue());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
