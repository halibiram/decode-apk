package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zzafh extends zzafg {
    private final zzfp zzb;
    private final zzfp zzc;
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;

    public zzafh(zzaea zzaeaVar) {
        super(zzaeaVar);
        this.zzb = new zzfp(zzgm.zza);
        this.zzc = new zzfp(4);
    }

    @Override // com.google.android.gms.internal.ads.zzafg
    public final boolean zza(zzfp zzfpVar) {
        int zzm = zzfpVar.zzm();
        int i = zzm >> 4;
        int i2 = zzm & 15;
        if (i2 == 7) {
            this.zzg = i;
            if (i != 5) {
                return true;
            }
            return false;
        }
        throw new zzaff(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-7006153611687689649L, -7649512542566952457L, 4712101622737222779L, 4904373191976456231L, 5282526681782976573L}), new StringBuilder(), i2));
    }

    @Override // com.google.android.gms.internal.ads.zzafg
    public final boolean zzb(zzfp zzfpVar, long j) {
        int i;
        int i2;
        int zzm = zzfpVar.zzm();
        long zzh = zzfpVar.zzh();
        if (zzm == 0) {
            if (!this.zze) {
                zzfp zzfpVar2 = new zzfp(new byte[zzfpVar.zzb()]);
                zzfpVar.zzG(zzfpVar2.zzM(), 0, zzfpVar.zzb());
                zzabz zza = zzabz.zza(zzfpVar2);
                this.zzd = zza.zzb;
                zzak zzakVar = new zzak();
                zzakVar.zzW(new ObfuscatedString(new long[]{-8098635223000738625L, -5518331949177463150L, 3127380371111211540L}).toString());
                zzakVar.zzz(zza.zzk);
                zzakVar.zzab(zza.zzc);
                zzakVar.zzI(zza.zzd);
                zzakVar.zzS(zza.zzj);
                zzakVar.zzL(zza.zza);
                this.zza.zzl(zzakVar.zzac());
                this.zze = true;
                return false;
            }
        } else if (zzm == 1 && this.zze) {
            if (this.zzg == 1) {
                i = 1;
            } else {
                i = 0;
            }
            if (!this.zzf) {
                if (i != 0) {
                    i2 = 1;
                }
            } else {
                i2 = i;
            }
            byte[] zzM = this.zzc.zzM();
            zzM[0] = 0;
            zzM[1] = 0;
            zzM[2] = 0;
            int i3 = 4 - this.zzd;
            int i4 = 0;
            while (zzfpVar.zzb() > 0) {
                zzfpVar.zzG(this.zzc.zzM(), i3, this.zzd);
                this.zzc.zzK(0);
                zzfp zzfpVar3 = this.zzc;
                zzfp zzfpVar4 = this.zzb;
                int zzp = zzfpVar3.zzp();
                zzfpVar4.zzK(0);
                this.zza.zzr(this.zzb, 4);
                this.zza.zzr(zzfpVar, zzp);
                i4 = i4 + 4 + zzp;
            }
            this.zza.zzt((zzh * 1000) + j, i2, i4, 0, null);
            this.zzf = true;
            return true;
        }
        return false;
    }
}
