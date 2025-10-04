package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzaxm extends zzaxx {
    public zzaxm(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2) {
        super(zzawjVar, new ObfuscatedString(new long[]{2195732724246134017L, -8580558211478202318L, -6624807007638827361L, -7064913571998152634L, 1962388709160460871L, 6710728671170667920L, 1119514989159702927L, -330663678447029970L, -623891436784364459L}).toString(), new ObfuscatedString(new long[]{431872189343163452L, 934895866460570433L, 307483015779134015L, -8422419824910868064L, -8044090015485415774L, 2930640314415544324L, -6274953323044074518L}).toString(), zzasgVar, i, 73);
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        int i = 1;
        try {
            boolean booleanValue = ((Boolean) this.zzf.invoke(null, this.zzb.zzb())).booleanValue();
            zzasg zzasgVar = this.zze;
            if (true == booleanValue) {
                i = 2;
            }
            zzasgVar.zzaf(i);
        } catch (InvocationTargetException unused) {
            this.zze.zzaf(3);
        }
    }
}
