package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzank implements zzamy {
    private zzaea zzb;
    private boolean zzc;
    private int zze;
    private int zzf;
    private final zzfp zza = new zzfp(10);
    private long zzd = -9223372036854775807L;

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zza(zzfp zzfpVar) {
        zzek.zzb(this.zzb);
        if (!this.zzc) {
            return;
        }
        int zzb = zzfpVar.zzb();
        int i = this.zzf;
        if (i < 10) {
            int min = Math.min(zzb, 10 - i);
            System.arraycopy(zzfpVar.zzM(), zzfpVar.zzd(), this.zza.zzM(), this.zzf, min);
            if (this.zzf + min == 10) {
                this.zza.zzK(0);
                if (this.zza.zzm() == 73 && this.zza.zzm() == 68 && this.zza.zzm() == 51) {
                    this.zza.zzL(3);
                    this.zze = this.zza.zzl() + 10;
                } else {
                    zzff.zzf(new ObfuscatedString(new long[]{-5116844611517878240L, 9162060170229575445L, 6427408392853798764L}).toString(), new ObfuscatedString(new long[]{-6742545704959999886L, -4169489689992882073L, 3906024567391320697L, -8188155284219234882L, -7844328682282933205L}).toString());
                    this.zzc = false;
                    return;
                }
            }
        }
        int min2 = Math.min(zzb, this.zze - this.zzf);
        this.zzb.zzr(zzfpVar, min2);
        this.zzf += min2;
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzb(zzacx zzacxVar, zzaok zzaokVar) {
        zzaokVar.zzc();
        zzaea zzw = zzacxVar.zzw(zzaokVar.zza(), 5);
        this.zzb = zzw;
        zzak zzakVar = new zzak();
        zzakVar.zzK(zzaokVar.zzb());
        zzakVar.zzW(new ObfuscatedString(new long[]{421248800990096792L, 8365755911445829593L, 1670431731971046470L}).toString());
        zzw.zzl(zzakVar.zzac());
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzc(boolean z) {
        int i;
        boolean z2;
        zzek.zzb(this.zzb);
        if (this.zzc && (i = this.zze) != 0 && this.zzf == i) {
            if (this.zzd != -9223372036854775807L) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzek.zzf(z2);
            this.zzb.zzt(this.zzd, 1, this.zze, 0, null);
            this.zzc = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzd(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.zzc = true;
        this.zzd = j;
        this.zze = 0;
        this.zzf = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zze() {
        this.zzc = false;
        this.zzd = -9223372036854775807L;
    }
}
