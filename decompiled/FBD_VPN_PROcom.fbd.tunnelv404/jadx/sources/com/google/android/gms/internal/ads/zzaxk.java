package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaxk extends zzaxx {
    private static volatile String zzi;
    private static final Object zzj = new Object();

    public zzaxk(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2) {
        super(zzawjVar, new ObfuscatedString(new long[]{-4106467300855812720L, 4587460746283083274L, 4302860841621263688L, 5197916675643786591L, -70699340906560992L, 64641945056570643L, -223561419839858967L, -265996088616306996L, 7837313448854946232L}).toString(), new ObfuscatedString(new long[]{-3294268549779227983L, 9140990998467882193L, -8791787628841805122L, 6253665164851297103L, 2680927614313877779L, -8042380322712472865L, -2121989634735585135L}).toString(), zzasgVar, i, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        this.zze.zzB(new ObfuscatedString(new long[]{7880005094234718644L, 4843172814960034133L}).toString());
        if (zzi == null) {
            synchronized (zzj) {
                try {
                    if (zzi == null) {
                        zzi = (String) this.zzf.invoke(null, null);
                    }
                } finally {
                }
            }
        }
        synchronized (this.zze) {
            this.zze.zzB(zzi);
        }
    }
}
