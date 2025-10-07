package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzafa implements zzacu {
    public static final zzadb zza = new zzadb() { // from class: com.google.android.gms.internal.ads.zzaez
        @Override // com.google.android.gms.internal.ads.zzadb
        public final /* synthetic */ zzacu[] zza(Uri uri, Map map) {
            int i = zzada.zza;
            return new zzacu[]{new zzafa(0)};
        }
    };
    private final byte[] zzb;
    private final zzfp zzc;
    private final zzadc zzd;
    private zzacx zze;
    private zzaea zzf;
    private int zzg;

    @Nullable
    private zzby zzh;
    private zzadh zzi;
    private int zzj;
    private int zzk;
    private zzaey zzl;
    private int zzm;
    private long zzn;

    public zzafa() {
        this(0);
    }

    private final long zza(zzfp zzfpVar, boolean z) {
        boolean z2;
        this.zzi.getClass();
        int zzd = zzfpVar.zzd();
        while (zzd <= zzfpVar.zze() - 16) {
            zzfpVar.zzK(zzd);
            if (zzadd.zzc(zzfpVar, this.zzi, this.zzk, this.zzd)) {
                zzfpVar.zzK(zzd);
                return this.zzd.zza;
            }
            zzd++;
        }
        if (z) {
            while (zzd <= zzfpVar.zze() - this.zzj) {
                zzfpVar.zzK(zzd);
                try {
                    z2 = zzadd.zzc(zzfpVar, this.zzi, this.zzk, this.zzd);
                } catch (IndexOutOfBoundsException unused) {
                    z2 = false;
                }
                if (zzfpVar.zzd() <= zzfpVar.zze() && z2) {
                    zzfpVar.zzK(zzd);
                    return this.zzd.zza;
                }
                zzd++;
            }
            zzfpVar.zzK(zzfpVar.zze());
            return -1L;
        }
        zzfpVar.zzK(zzd);
        return -1L;
    }

    private final void zzf() {
        long j = this.zzn * 1000000;
        zzadh zzadhVar = this.zzi;
        int i = zzfy.zza;
        this.zzf.zzt(j / zzadhVar.zze, 1, this.zzm, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final int zzb(zzacv zzacvVar, zzadr zzadrVar) {
        boolean zzo;
        zzadu zzadtVar;
        int i = this.zzg;
        boolean z = true;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            this.zzf.getClass();
                            zzadh zzadhVar = this.zzi;
                            zzadhVar.getClass();
                            zzaey zzaeyVar = this.zzl;
                            if (zzaeyVar != null && zzaeyVar.zze()) {
                                return zzaeyVar.zza(zzacvVar, zzadrVar);
                            }
                            if (this.zzn == -1) {
                                this.zzn = zzadd.zzb(zzacvVar, zzadhVar);
                                return 0;
                            }
                            zzfp zzfpVar = this.zzc;
                            int zze = zzfpVar.zze();
                            if (zze < 32768) {
                                int zza2 = zzacvVar.zza(zzfpVar.zzM(), zze, 32768 - zze);
                                if (zza2 != -1) {
                                    z = false;
                                }
                                if (!z) {
                                    this.zzc.zzJ(zze + zza2);
                                } else if (this.zzc.zzb() == 0) {
                                    zzf();
                                    return -1;
                                }
                            } else {
                                z = false;
                            }
                            zzfp zzfpVar2 = this.zzc;
                            int zzd = zzfpVar2.zzd();
                            int i2 = this.zzm;
                            int i3 = this.zzj;
                            if (i2 < i3) {
                                zzfpVar2.zzL(Math.min(i3 - i2, zzfpVar2.zzb()));
                            }
                            long zza3 = zza(this.zzc, z);
                            zzfp zzfpVar3 = this.zzc;
                            int zzd2 = zzfpVar3.zzd() - zzd;
                            zzfpVar3.zzK(zzd);
                            zzady.zzb(this.zzf, this.zzc, zzd2);
                            this.zzm += zzd2;
                            if (zza3 != -1) {
                                zzf();
                                this.zzm = 0;
                                this.zzn = zza3;
                            }
                            zzfp zzfpVar4 = this.zzc;
                            if (zzfpVar4.zzb() >= 16) {
                                return 0;
                            }
                            int zzb = zzfpVar4.zzb();
                            System.arraycopy(zzfpVar4.zzM(), zzfpVar4.zzd(), zzfpVar4.zzM(), 0, zzb);
                            this.zzc.zzK(0);
                            this.zzc.zzJ(zzb);
                            return 0;
                        }
                        zzacvVar.zzj();
                        zzfp zzfpVar5 = new zzfp(2);
                        ((zzack) zzacvVar).zzm(zzfpVar5.zzM(), 0, 2, false);
                        int zzq = zzfpVar5.zzq();
                        if ((zzq >> 2) == 16382) {
                            zzacvVar.zzj();
                            this.zzk = zzq;
                            zzacx zzacxVar = this.zze;
                            int i4 = zzfy.zza;
                            long zzf = zzacvVar.zzf();
                            long zzd3 = zzacvVar.zzd();
                            zzadh zzadhVar2 = this.zzi;
                            zzadhVar2.getClass();
                            if (zzadhVar2.zzk != null) {
                                zzadtVar = new zzadf(zzadhVar2, zzf);
                            } else if (zzd3 != -1 && zzadhVar2.zzj > 0) {
                                zzaey zzaeyVar2 = new zzaey(zzadhVar2, this.zzk, zzf, zzd3);
                                this.zzl = zzaeyVar2;
                                zzadtVar = zzaeyVar2.zzb();
                            } else {
                                zzadtVar = new zzadt(zzadhVar2.zza(), 0L);
                            }
                            zzacxVar.zzO(zzadtVar);
                            this.zzg = 5;
                            return 0;
                        }
                        zzacvVar.zzj();
                        throw zzcc.zza(new ObfuscatedString(new long[]{7306659997470061684L, 2853797094739556890L, -6431158496678849986L, 9213187851010784003L, 5277666596438738052L, -827564307452045989L, 2771283185859859868L}).toString(), null);
                    }
                    zzadh zzadhVar3 = this.zzi;
                    do {
                        zzacvVar.zzj();
                        zzfo zzfoVar = new zzfo(new byte[4], 4);
                        zzack zzackVar = (zzack) zzacvVar;
                        zzackVar.zzm(zzfoVar.zza, 0, 4, false);
                        zzo = zzfoVar.zzo();
                        int zzd4 = zzfoVar.zzd(7);
                        int zzd5 = zzfoVar.zzd(24) + 4;
                        if (zzd4 == 0) {
                            byte[] bArr = new byte[38];
                            zzackVar.zzn(bArr, 0, 38, false);
                            zzadhVar3 = new zzadh(bArr, 4);
                        } else if (zzadhVar3 != null) {
                            if (zzd4 == 3) {
                                zzfp zzfpVar6 = new zzfp(zzd5);
                                zzackVar.zzn(zzfpVar6.zzM(), 0, zzd5, false);
                                zzadhVar3 = zzadhVar3.zzf(zzade.zzb(zzfpVar6));
                            } else if (zzd4 == 4) {
                                zzfp zzfpVar7 = new zzfp(zzd5);
                                zzackVar.zzn(zzfpVar7.zzM(), 0, zzd5, false);
                                zzfpVar7.zzL(4);
                                zzadhVar3 = zzadhVar3.zzg(Arrays.asList(zzaeg.zzc(zzfpVar7, false, false).zzb));
                            } else if (zzd4 == 6) {
                                zzfp zzfpVar8 = new zzfp(zzd5);
                                zzackVar.zzn(zzfpVar8.zzM(), 0, zzd5, false);
                                zzfpVar8.zzL(4);
                                zzadhVar3 = zzadhVar3.zze(zzgaa.zzm(zzafw.zzb(zzfpVar8)));
                            } else {
                                zzackVar.zzo(zzd5, false);
                            }
                        } else {
                            throw new IllegalArgumentException();
                        }
                        int i5 = zzfy.zza;
                        this.zzi = zzadhVar3;
                    } while (!zzo);
                    zzadhVar3.getClass();
                    this.zzj = Math.max(zzadhVar3.zzc, 6);
                    this.zzf.zzl(this.zzi.zzc(this.zzb, this.zzh));
                    this.zzg = 4;
                    return 0;
                }
                zzfp zzfpVar9 = new zzfp(4);
                ((zzack) zzacvVar).zzn(zzfpVar9.zzM(), 0, 4, false);
                if (zzfpVar9.zzu() == 1716281667) {
                    this.zzg = 3;
                    return 0;
                }
                throw zzcc.zza(new ObfuscatedString(new long[]{7174587775172595951L, -6306972997308695824L, 7434595680731014588L, 3122836098641089426L, -6999757985696982994L, -1972541667505466309L}).toString(), null);
            }
            ((zzack) zzacvVar).zzm(this.zzb, 0, 42, false);
            zzacvVar.zzj();
            this.zzg = 2;
            return 0;
        }
        zzacvVar.zzj();
        long zze2 = zzacvVar.zze();
        zzby zza4 = zzade.zza(zzacvVar, true);
        ((zzack) zzacvVar).zzo((int) (zzacvVar.zze() - zze2), false);
        this.zzh = zza4;
        this.zzg = 1;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzc(zzacx zzacxVar) {
        this.zze = zzacxVar;
        this.zzf = zzacxVar.zzw(0, 1);
        zzacxVar.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzd(long j, long j2) {
        long j3 = 0;
        if (j == 0) {
            this.zzg = 0;
        } else {
            zzaey zzaeyVar = this.zzl;
            if (zzaeyVar != null) {
                zzaeyVar.zzd(j2);
            }
        }
        if (j2 != 0) {
            j3 = -1;
        }
        this.zzn = j3;
        this.zzm = 0;
        this.zzc.zzH(0);
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final boolean zze(zzacv zzacvVar) {
        zzade.zza(zzacvVar, false);
        zzfp zzfpVar = new zzfp(4);
        ((zzack) zzacvVar).zzm(zzfpVar.zzM(), 0, 4, false);
        if (zzfpVar.zzu() != 1716281667) {
            return false;
        }
        return true;
    }

    public zzafa(int i) {
        this.zzb = new byte[42];
        this.zzc = new zzfp(new byte[32768], 0);
        this.zzd = new zzadc();
        this.zzg = 0;
    }
}
