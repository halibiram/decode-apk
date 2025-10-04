package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
final class zzaon {
    private final List zza;
    private final zzaea[] zzb;

    public zzaon(List list) {
        this.zza = list;
        this.zzb = new zzaea[list.size()];
    }

    public final void zza(long j, zzfp zzfpVar) {
        if (zzfpVar.zzb() >= 9) {
            int zzg = zzfpVar.zzg();
            int zzg2 = zzfpVar.zzg();
            int zzm = zzfpVar.zzm();
            if (zzg == 434 && zzg2 == 1195456820 && zzm == 3) {
                zzach.zzb(j, zzfpVar, this.zzb);
            }
        }
    }

    public final void zzb(zzacx zzacxVar, zzaok zzaokVar) {
        boolean z;
        for (int i = 0; i < this.zzb.length; i++) {
            zzaokVar.zzc();
            zzaea zzw = zzacxVar.zzw(zzaokVar.zza(), 3);
            zzam zzamVar = (zzam) this.zza.get(i);
            String str = zzamVar.zzm;
            if (new ObfuscatedString(new long[]{-2591421843721608379L, -4291037104669036738L, -241670567083454663L, 2467940098648907036L}).toString().equals(str) || new ObfuscatedString(new long[]{8211123765294221534L, -2519363883221290212L, 4517942876015825772L, -8554950535283622065L}).toString().equals(str)) {
                z = true;
            } else {
                z = false;
            }
            zzek.zze(z, new ObfuscatedString(new long[]{5277674628399718673L, 3369587258058112502L, -2425525646296827032L, -7417773490591947191L, 1028427017901434268L, 3172314913722598111L, -8273092397252864292L}).toString().concat(String.valueOf(str)));
            zzak zzakVar = new zzak();
            zzakVar.zzK(zzaokVar.zzb());
            zzakVar.zzW(str);
            zzakVar.zzY(zzamVar.zze);
            zzakVar.zzN(zzamVar.zzd);
            zzakVar.zzw(zzamVar.zzE);
            zzakVar.zzL(zzamVar.zzo);
            zzw.zzl(zzakVar.zzac());
            this.zzb[i] = zzw;
        }
    }
}
