package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.primitives.SignedBytes;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzamr implements zzamy {
    private final zzfo zza;
    private final zzfp zzb;

    @Nullable
    private final String zzc;
    private String zzd;
    private zzaea zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private long zzi;
    private zzam zzj;
    private int zzk;
    private long zzl;

    public zzamr() {
        this(null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a3, code lost:
    
        if (new com.panda912.muddy.ObfuscatedString(new long[]{6360183617474433003L, -6475968978904579513L, -8987573568332745426L}).toString().equals(r3.zzm) == false) goto L25;
     */
    @Override // com.google.android.gms.internal.ads.zzamy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzfp zzfpVar) {
        boolean z;
        boolean z2;
        zzek.zzb(this.zze);
        while (zzfpVar.zzb() > 0) {
            int i = this.zzf;
            boolean z3 = true;
            if (i != 0) {
                if (i != 1) {
                    int min = Math.min(zzfpVar.zzb(), this.zzk - this.zzg);
                    this.zze.zzr(zzfpVar, min);
                    int i2 = this.zzg + min;
                    this.zzg = i2;
                    if (i2 == this.zzk) {
                        if (this.zzl == -9223372036854775807L) {
                            z3 = false;
                        }
                        zzek.zzf(z3);
                        this.zze.zzt(this.zzl, 1, this.zzk, 0, null);
                        this.zzl += this.zzi;
                        this.zzf = 0;
                    }
                } else {
                    byte[] zzM = this.zzb.zzM();
                    int min2 = Math.min(zzfpVar.zzb(), 16 - this.zzg);
                    zzfpVar.zzG(zzM, this.zzg, min2);
                    int i3 = this.zzg + min2;
                    this.zzg = i3;
                    if (i3 == 16) {
                        this.zza.zzk(0);
                        zzabx zza = zzaby.zza(this.zza);
                        zzam zzamVar = this.zzj;
                        if (zzamVar != null && zzamVar.zzz == 2 && zza.zza == zzamVar.zzA) {
                        }
                        zzak zzakVar = new zzak();
                        zzakVar.zzK(this.zzd);
                        zzakVar.zzW(new ObfuscatedString(new long[]{6313078515733054680L, -5738832060896189845L, -2634619148852626569L}).toString());
                        zzakVar.zzy(2);
                        zzakVar.zzX(zza.zza);
                        zzakVar.zzN(this.zzc);
                        zzam zzac = zzakVar.zzac();
                        this.zzj = zzac;
                        this.zze.zzl(zzac);
                        this.zzk = zza.zzb;
                        this.zzi = (zza.zzc * 1000000) / this.zzj.zzA;
                        this.zzb.zzK(0);
                        this.zze.zzr(this.zzb, 16);
                        this.zzf = 2;
                    }
                }
            } else {
                while (zzfpVar.zzb() > 0) {
                    if (!this.zzh) {
                        if (zzfpVar.zzm() == 172) {
                            z = true;
                        } else {
                            z = false;
                        }
                        this.zzh = z;
                    } else {
                        int zzm = zzfpVar.zzm();
                        if (zzm == 172) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.zzh = z2;
                        byte b = SignedBytes.MAX_POWER_OF_TWO;
                        if (zzm != 64) {
                            if (zzm == 65) {
                                zzm = 65;
                            }
                        }
                        this.zzf = 1;
                        zzfp zzfpVar2 = this.zzb;
                        zzfpVar2.zzM()[0] = -84;
                        if (zzm == 65) {
                            b = 65;
                        }
                        zzfpVar2.zzM()[1] = b;
                        this.zzg = 2;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzb(zzacx zzacxVar, zzaok zzaokVar) {
        zzaokVar.zzc();
        this.zzd = zzaokVar.zzb();
        this.zze = zzacxVar.zzw(zzaokVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzd(long j, int i) {
        this.zzl = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zze() {
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = false;
        this.zzl = -9223372036854775807L;
    }

    public zzamr(@Nullable String str) {
        zzfo zzfoVar = new zzfo(new byte[16], 16);
        this.zza = zzfoVar;
        this.zzb = new zzfp(zzfoVar.zza);
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = false;
        this.zzl = -9223372036854775807L;
        this.zzc = str;
    }
}
