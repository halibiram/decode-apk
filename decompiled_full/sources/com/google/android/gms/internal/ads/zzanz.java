package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzanz {
    private final List zza;
    private final zzaea[] zzb;

    public zzanz(List list) {
        this.zza = list;
        this.zzb = new zzaea[list.size()];
    }

    public final void zza(long j, zzfp zzfpVar) {
        zzach.zza(j, zzfpVar, this.zzb);
    }

    public final void zzb(zzacx zzacxVar, zzaok zzaokVar) {
        boolean z;
        for (int i = 0; i < this.zzb.length; i++) {
            zzaokVar.zzc();
            zzaea zzw = zzacxVar.zzw(zzaokVar.zza(), 3);
            zzam zzamVar = (zzam) this.zza.get(i);
            String str = zzamVar.zzm;
            if (new ObfuscatedString(new long[]{3220524768530267573L, 6221113639057887907L, -5308017205844158705L, 2596155841448180958L}).toString().equals(str) || new ObfuscatedString(new long[]{-8697451119475551005L, -1908605929057024523L, 321548709173982192L, -4309404705316220479L}).toString().equals(str)) {
                z = true;
            } else {
                z = false;
            }
            zzek.zze(z, new ObfuscatedString(new long[]{-8722960837812727762L, -6328929444797217069L, -5969881964666521999L, -2497201614104942004L, 2592332653745370665L, 3442563533538644705L, -497539089843049125L}).toString().concat(String.valueOf(str)));
            String str2 = zzamVar.zzb;
            if (str2 == null) {
                str2 = zzaokVar.zzb();
            }
            zzak zzakVar = new zzak();
            zzakVar.zzK(str2);
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
