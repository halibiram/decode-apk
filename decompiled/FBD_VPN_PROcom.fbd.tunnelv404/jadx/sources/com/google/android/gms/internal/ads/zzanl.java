package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;

/* loaded from: classes2.dex */
public final class zzanl implements zzamy {

    @Nullable
    private final String zza;
    private final zzfp zzb;
    private final zzfo zzc;
    private zzaea zzd;
    private String zze;
    private zzam zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private long zzk;
    private boolean zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private boolean zzp;
    private long zzq;
    private int zzr;
    private long zzs;
    private int zzt;

    @Nullable
    private String zzu;

    public zzanl(@Nullable String str) {
        this.zza = str;
        zzfp zzfpVar = new zzfp(1024);
        this.zzb = zzfpVar;
        byte[] zzM = zzfpVar.zzM();
        this.zzc = new zzfo(zzM, zzM.length);
        this.zzk = -9223372036854775807L;
    }

    private final int zzf(zzfo zzfoVar) {
        int zza = zzfoVar.zza();
        zzabr zzb = zzabs.zzb(zzfoVar, true);
        this.zzu = zzb.zzc;
        this.zzr = zzb.zza;
        this.zzt = zzb.zzb;
        return zza - zzfoVar.zza();
    }

    private static long zzg(zzfo zzfoVar) {
        return zzfoVar.zzd((zzfoVar.zzd(2) + 1) * 8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x0165, code lost:
    
        if (r23.zzl == false) goto L87;
     */
    @Override // com.google.android.gms.internal.ads.zzamy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzfp zzfpVar) {
        int zzd;
        int i;
        int i2;
        boolean zzo;
        zzek.zzb(this.zzd);
        while (zzfpVar.zzb() > 0) {
            int i3 = this.zzg;
            boolean z = true;
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 != 2) {
                        int min = Math.min(zzfpVar.zzb(), this.zzi - this.zzh);
                        zzfpVar.zzG(this.zzc.zza, this.zzh, min);
                        int i4 = this.zzh + min;
                        this.zzh = i4;
                        if (i4 == this.zzi) {
                            this.zzc.zzk(0);
                            zzfo zzfoVar = this.zzc;
                            if (!zzfoVar.zzo()) {
                                this.zzl = true;
                                int zzd2 = zzfoVar.zzd(1);
                                if (zzd2 == 1) {
                                    i2 = zzfoVar.zzd(1);
                                    i = 1;
                                } else {
                                    i = zzd2;
                                    i2 = 0;
                                }
                                this.zzm = i2;
                                if (i2 == 0) {
                                    if (i == 1) {
                                        zzg(zzfoVar);
                                        i = 1;
                                    }
                                    if (zzfoVar.zzo()) {
                                        this.zzn = zzfoVar.zzd(6);
                                        int zzd3 = zzfoVar.zzd(4);
                                        int zzd4 = zzfoVar.zzd(3);
                                        if (zzd3 == 0 && zzd4 == 0) {
                                            if (i == 0) {
                                                int zzc = zzfoVar.zzc();
                                                int zzf = zzf(zzfoVar);
                                                zzfoVar.zzk(zzc);
                                                byte[] bArr = new byte[(zzf + 7) / 8];
                                                zzfoVar.zzg(bArr, 0, zzf);
                                                zzak zzakVar = new zzak();
                                                zzakVar.zzK(this.zze);
                                                zzakVar.zzW(new ObfuscatedString(new long[]{-2567452523020887955L, 4883030845166439158L, 8006983866917699962L}).toString());
                                                zzakVar.zzz(this.zzu);
                                                zzakVar.zzy(this.zzt);
                                                zzakVar.zzX(this.zzr);
                                                zzakVar.zzL(Collections.singletonList(bArr));
                                                zzakVar.zzN(this.zza);
                                                zzam zzac = zzakVar.zzac();
                                                if (!zzac.equals(this.zzf)) {
                                                    this.zzf = zzac;
                                                    this.zzs = 1024000000 / zzac.zzA;
                                                    this.zzd.zzl(zzac);
                                                }
                                            } else {
                                                zzfoVar.zzm(((int) zzg(zzfoVar)) - zzf(zzfoVar));
                                            }
                                            int zzd5 = zzfoVar.zzd(3);
                                            this.zzo = zzd5;
                                            if (zzd5 != 0) {
                                                if (zzd5 != 1) {
                                                    if (zzd5 != 3 && zzd5 != 4 && zzd5 != 5) {
                                                        if (zzd5 != 6 && zzd5 != 7) {
                                                            throw new IllegalStateException();
                                                        }
                                                        zzfoVar.zzm(1);
                                                    } else {
                                                        zzfoVar.zzm(6);
                                                    }
                                                } else {
                                                    zzfoVar.zzm(9);
                                                }
                                            } else {
                                                zzfoVar.zzm(8);
                                            }
                                            boolean zzo2 = zzfoVar.zzo();
                                            this.zzp = zzo2;
                                            this.zzq = 0L;
                                            if (zzo2) {
                                                if (i == 1) {
                                                    this.zzq = zzg(zzfoVar);
                                                }
                                                do {
                                                    zzo = zzfoVar.zzo();
                                                    this.zzq = (this.zzq << 8) + zzfoVar.zzd(8);
                                                } while (zzo);
                                            }
                                            if (zzfoVar.zzo()) {
                                                zzfoVar.zzm(8);
                                            }
                                        } else {
                                            throw zzcc.zza(null, null);
                                        }
                                    } else {
                                        throw zzcc.zza(null, null);
                                    }
                                } else {
                                    throw zzcc.zza(null, null);
                                }
                            }
                            if (this.zzm == 0) {
                                if (this.zzn == 0) {
                                    if (this.zzo == 0) {
                                        int i5 = 0;
                                        do {
                                            zzd = zzfoVar.zzd(8);
                                            i5 += zzd;
                                        } while (zzd == 255);
                                        int zzc2 = zzfoVar.zzc();
                                        if ((zzc2 & 7) == 0) {
                                            this.zzb.zzK(zzc2 >> 3);
                                        } else {
                                            zzfoVar.zzg(this.zzb.zzM(), 0, i5 * 8);
                                            this.zzb.zzK(0);
                                        }
                                        this.zzd.zzr(this.zzb, i5);
                                        if (this.zzk == -9223372036854775807L) {
                                            z = false;
                                        }
                                        zzek.zzf(z);
                                        this.zzd.zzt(this.zzk, 1, i5, 0, null);
                                        this.zzk += this.zzs;
                                        if (this.zzp) {
                                            zzfoVar.zzm((int) this.zzq);
                                        }
                                        this.zzg = 0;
                                    } else {
                                        throw zzcc.zza(null, null);
                                    }
                                } else {
                                    throw zzcc.zza(null, null);
                                }
                            } else {
                                throw zzcc.zza(null, null);
                            }
                        } else {
                            continue;
                        }
                    } else {
                        int zzm = ((this.zzj & (-225)) << 8) | zzfpVar.zzm();
                        this.zzi = zzm;
                        zzfp zzfpVar2 = this.zzb;
                        if (zzm > zzfpVar2.zzM().length) {
                            zzfpVar2.zzH(zzm);
                            zzfo zzfoVar2 = this.zzc;
                            byte[] zzM = this.zzb.zzM();
                            zzfoVar2.zzj(zzM, zzM.length);
                        }
                        this.zzh = 0;
                        this.zzg = 3;
                    }
                } else {
                    int zzm2 = zzfpVar.zzm();
                    if ((zzm2 & 224) == 224) {
                        this.zzj = zzm2;
                        this.zzg = 2;
                    } else if (zzm2 != 86) {
                        this.zzg = 0;
                    }
                }
            } else if (zzfpVar.zzm() == 86) {
                this.zzg = 1;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzb(zzacx zzacxVar, zzaok zzaokVar) {
        zzaokVar.zzc();
        this.zzd = zzacxVar.zzw(zzaokVar.zza(), 1);
        this.zze = zzaokVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzd(long j, int i) {
        this.zzk = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zze() {
        this.zzg = 0;
        this.zzk = -9223372036854775807L;
        this.zzl = false;
    }
}
