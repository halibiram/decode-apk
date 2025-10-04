package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.math.RoundingMode;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class zzaen implements zzacu {
    private int zzc;
    private zzaeo zze;
    private long zzh;

    @Nullable
    private zzaeq zzi;
    private int zzm;
    private boolean zzn;
    private final zzfp zza = new zzfp(12);
    private final zzaem zzb = new zzaem(null);
    private zzacx zzd = new zzacs();
    private zzaeq[] zzg = new zzaeq[0];
    private long zzk = -1;
    private long zzl = -1;
    private int zzj = -1;
    private long zzf = -9223372036854775807L;

    @Nullable
    private final zzaeq zzf(int i) {
        for (zzaeq zzaeqVar : this.zzg) {
            if (zzaeqVar.zzg(i)) {
                return zzaeqVar;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0035 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    @Override // com.google.android.gms.internal.ads.zzacu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacv zzacvVar, zzadr zzadrVar) {
        boolean z;
        int i = 3;
        int i2 = 4;
        long j = this.zzh;
        if (j != -1) {
            long zzf = zzacvVar.zzf();
            if (j >= zzf && j <= 262144 + zzf) {
                ((zzack) zzacvVar).zzo((int) (j - zzf), false);
            } else {
                zzadrVar.zza = j;
                z = true;
                this.zzh = -1L;
                if (!z) {
                    return 1;
                }
                int i3 = this.zzc;
                int i4 = 12;
                zzaeq zzaeqVar = null;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            long j2 = 0;
                            if (i3 != 3) {
                                if (i3 != 4) {
                                    if (i3 != 5) {
                                        if (zzacvVar.zzf() >= this.zzl) {
                                            return -1;
                                        }
                                        zzaeq zzaeqVar2 = this.zzi;
                                        if (zzaeqVar2 != null) {
                                            if (!zzaeqVar2.zzh(zzacvVar)) {
                                                return 0;
                                            }
                                            this.zzi = null;
                                            return 0;
                                        }
                                        if ((zzacvVar.zzf() & 1) == 1) {
                                            ((zzack) zzacvVar).zzo(1, false);
                                        }
                                        zzack zzackVar = (zzack) zzacvVar;
                                        zzackVar.zzm(this.zza.zzM(), 0, 12, false);
                                        this.zza.zzK(0);
                                        int zzi = this.zza.zzi();
                                        if (zzi == 1414744396) {
                                            this.zza.zzK(8);
                                            if (this.zza.zzi() != 1769369453) {
                                                i4 = 8;
                                            }
                                            zzackVar.zzo(i4, false);
                                            zzacvVar.zzj();
                                            return 0;
                                        }
                                        int zzi2 = this.zza.zzi();
                                        if (zzi == 1263424842) {
                                            this.zzh = zzacvVar.zzf() + zzi2 + 8;
                                            return 0;
                                        }
                                        zzackVar.zzo(8, false);
                                        zzacvVar.zzj();
                                        zzaeq zzf2 = zzf(zzi);
                                        if (zzf2 == null) {
                                            this.zzh = zzacvVar.zzf() + zzi2;
                                            return 0;
                                        }
                                        zzf2.zze(zzi2);
                                        this.zzi = zzf2;
                                        return 0;
                                    }
                                    zzfp zzfpVar = new zzfp(this.zzm);
                                    ((zzack) zzacvVar).zzn(zzfpVar.zzM(), 0, this.zzm, false);
                                    if (zzfpVar.zzb() >= 16) {
                                        int zzd = zzfpVar.zzd();
                                        zzfpVar.zzL(8);
                                        long zzi3 = zzfpVar.zzi();
                                        long j3 = this.zzk;
                                        if (zzi3 <= j3) {
                                            j2 = j3 + 8;
                                        }
                                        zzfpVar.zzK(zzd);
                                    }
                                    while (zzfpVar.zzb() >= 16) {
                                        int zzi4 = zzfpVar.zzi();
                                        int zzi5 = zzfpVar.zzi();
                                        long zzi6 = zzfpVar.zzi() + j2;
                                        zzfpVar.zzi();
                                        zzaeq zzf3 = zzf(zzi4);
                                        if (zzf3 != null) {
                                            if ((zzi5 & 16) == 16) {
                                                zzf3.zzb(zzi6);
                                            }
                                            zzf3.zzd();
                                        }
                                    }
                                    for (zzaeq zzaeqVar3 : this.zzg) {
                                        zzaeqVar3.zzc();
                                    }
                                    this.zzn = true;
                                    this.zzd.zzO(new zzaek(this, this.zzf));
                                    this.zzc = 6;
                                    this.zzh = this.zzk;
                                    return 0;
                                }
                                ((zzack) zzacvVar).zzn(this.zza.zzM(), 0, 8, false);
                                this.zza.zzK(0);
                                zzfp zzfpVar2 = this.zza;
                                int zzi7 = zzfpVar2.zzi();
                                int zzi8 = zzfpVar2.zzi();
                                if (zzi7 == 829973609) {
                                    this.zzc = 5;
                                    this.zzm = zzi8;
                                } else {
                                    this.zzh = zzacvVar.zzf() + zzi8;
                                }
                                return 0;
                            }
                            long j4 = this.zzk;
                            if (j4 != -1 && zzacvVar.zzf() != j4) {
                                this.zzh = j4;
                                return 0;
                            }
                            ((zzack) zzacvVar).zzm(this.zza.zzM(), 0, 12, false);
                            zzacvVar.zzj();
                            this.zza.zzK(0);
                            this.zzb.zza(this.zza);
                            zzfp zzfpVar3 = this.zza;
                            zzaem zzaemVar = this.zzb;
                            int zzi9 = zzfpVar3.zzi();
                            int i5 = zzaemVar.zza;
                            if (i5 == 1179011410) {
                                ((zzack) zzacvVar).zzo(12, false);
                                return 0;
                            }
                            if (i5 == 1414744396 && zzi9 == 1769369453) {
                                long zzf4 = zzacvVar.zzf();
                                this.zzk = zzf4;
                                long j5 = zzf4 + zzaemVar.zzb + 8;
                                this.zzl = j5;
                                if (!this.zzn) {
                                    zzaeo zzaeoVar = this.zze;
                                    zzaeoVar.getClass();
                                    if ((zzaeoVar.zzb & 16) != 16) {
                                        this.zzd.zzO(new zzadt(this.zzf, 0L));
                                        this.zzn = true;
                                    } else {
                                        this.zzc = 4;
                                        this.zzh = j5;
                                        return 0;
                                    }
                                }
                                this.zzh = zzacvVar.zzf() + 12;
                                this.zzc = 6;
                                return 0;
                            }
                            this.zzh = zzacvVar.zzf() + zzaemVar.zzb + 8;
                            return 0;
                        }
                        int i6 = this.zzj - 4;
                        zzfp zzfpVar4 = new zzfp(i6);
                        ((zzack) zzacvVar).zzn(zzfpVar4.zzM(), 0, i6, false);
                        zzaer zzc = zzaer.zzc(1819436136, zzfpVar4);
                        if (zzc.zza() == 1819436136) {
                            zzaeo zzaeoVar2 = (zzaeo) zzc.zzb(zzaeo.class);
                            if (zzaeoVar2 != null) {
                                this.zze = zzaeoVar2;
                                this.zzf = zzaeoVar2.zzc * zzaeoVar2.zza;
                                ArrayList arrayList = new ArrayList();
                                zzgaa zzgaaVar = zzc.zza;
                                int size = zzgaaVar.size();
                                int i7 = 0;
                                int i8 = 0;
                                while (i7 < size) {
                                    zzaej zzaejVar = (zzaej) zzgaaVar.get(i7);
                                    if (zzaejVar.zza() == 1819440243) {
                                        zzaer zzaerVar = (zzaer) zzaejVar;
                                        int i9 = i8 + 1;
                                        zzaep zzaepVar = (zzaep) zzaerVar.zzb(zzaep.class);
                                        zzaes zzaesVar = (zzaes) zzaerVar.zzb(zzaes.class);
                                        if (zzaepVar == null) {
                                            long[] jArr = new long[i];
                                            // fill-array-data instruction
                                            jArr[0] = 1037275445051008349L;
                                            jArr[1] = 4046963186545306152L;
                                            jArr[2] = -7530695306713310769L;
                                            long[] jArr2 = new long[i2];
                                            // fill-array-data instruction
                                            jArr2[0] = -7346682971678254323L;
                                            jArr2[1] = 2570830118730707593L;
                                            jArr2[2] = 2445451360253881780L;
                                            jArr2[3] = -3023365154662378048L;
                                            zzff.zzf(new ObfuscatedString(jArr).toString(), new ObfuscatedString(jArr2).toString());
                                        } else if (zzaesVar == null) {
                                            long[] jArr3 = new long[i];
                                            // fill-array-data instruction
                                            jArr3[0] = 284710122800348061L;
                                            jArr3[1] = 3079791779204493656L;
                                            jArr3[2] = 5145070460511166613L;
                                            long[] jArr4 = new long[i2];
                                            // fill-array-data instruction
                                            jArr4[0] = 514795233370625245L;
                                            jArr4[1] = 6491670033197283122L;
                                            jArr4[2] = 6465393735434749370L;
                                            jArr4[3] = 6067961551676722515L;
                                            zzff.zzf(new ObfuscatedString(jArr3).toString(), new ObfuscatedString(jArr4).toString());
                                        } else {
                                            long zzs = zzfy.zzs(zzaepVar.zzd, zzaepVar.zzb * 1000000, zzaepVar.zzc, RoundingMode.FLOOR);
                                            zzam zzamVar = zzaesVar.zza;
                                            zzak zzb = zzamVar.zzb();
                                            zzb.zzJ(i8);
                                            int i10 = zzaepVar.zze;
                                            if (i10 != 0) {
                                                zzb.zzO(i10);
                                            }
                                            zzaet zzaetVar = (zzaet) zzaerVar.zzb(zzaet.class);
                                            if (zzaetVar != null) {
                                                zzb.zzM(zzaetVar.zza);
                                            }
                                            int zzb2 = zzcb.zzb(zzamVar.zzm);
                                            if (zzb2 != 1) {
                                                if (zzb2 == 2) {
                                                    zzb2 = 2;
                                                } else {
                                                    zzaeqVar = null;
                                                }
                                            }
                                            zzaea zzw = this.zzd.zzw(i8, zzb2);
                                            zzw.zzl(zzb.zzac());
                                            zzaeqVar = new zzaeq(i8, zzb2, zzs, zzaepVar.zzd, zzw);
                                            this.zzf = zzs;
                                        }
                                        if (zzaeqVar != null) {
                                            arrayList.add(zzaeqVar);
                                        }
                                        i8 = i9;
                                    }
                                    i7++;
                                    i = 3;
                                    i2 = 4;
                                    zzaeqVar = null;
                                }
                                this.zzg = (zzaeq[]) arrayList.toArray(new zzaeq[0]);
                                this.zzd.zzD();
                                this.zzc = 3;
                                return 0;
                            }
                            throw zzcc.zza(new ObfuscatedString(new long[]{3161272134575422105L, 4766341666984150993L, -8539143574824987244L, 7798237920633956093L}).toString(), null);
                        }
                        throw zzcc.zza(new ObfuscatedString(new long[]{6239681117335078369L, 514732213700766301L, -6421487167269547519L, 5782771039809122277L, -3112824062416203542L}).toString() + zzc.zza(), null);
                    }
                    ((zzack) zzacvVar).zzn(this.zza.zzM(), 0, 12, false);
                    this.zza.zzK(0);
                    zzaem zzaemVar2 = this.zzb;
                    zzfp zzfpVar5 = this.zza;
                    zzaemVar2.zza(zzfpVar5);
                    int i11 = zzaemVar2.zza;
                    if (i11 == 1414744396) {
                        zzaemVar2.zzc = zzfpVar5.zzi();
                        zzaem zzaemVar3 = this.zzb;
                        int i12 = zzaemVar3.zzc;
                        if (i12 == 1819436136) {
                            this.zzj = zzaemVar3.zzb;
                            this.zzc = 2;
                            return 0;
                        }
                        throw zzcc.zza(new ObfuscatedString(new long[]{5861666459780429374L, 4021813167303691646L, -8118505666095089051L, -9077568861090912028L}).toString() + i12, null);
                    }
                    throw zzcc.zza(new ObfuscatedString(new long[]{-8649261167329011701L, 7469418740781382220L, 13198613991314666L, 3508033442220447787L}).toString() + i11, null);
                }
                if (zze(zzacvVar)) {
                    ((zzack) zzacvVar).zzo(12, false);
                    this.zzc = 1;
                    return 0;
                }
                throw zzcc.zza(new ObfuscatedString(new long[]{5962295140249402374L, 3023822550705383098L, 8059781938177928755L, 7828568658543829101L, 5362746193298618912L}).toString(), null);
            }
        }
        z = false;
        this.zzh = -1L;
        if (!z) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzc(zzacx zzacxVar) {
        this.zzc = 0;
        this.zzd = zzacxVar;
        this.zzh = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzd(long j, long j2) {
        this.zzh = -1L;
        this.zzi = null;
        int i = 0;
        for (zzaeq zzaeqVar : this.zzg) {
            zzaeqVar.zzf(j);
        }
        if (j == 0) {
            if (this.zzg.length != 0) {
                i = 3;
            }
            this.zzc = i;
            return;
        }
        this.zzc = 6;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final boolean zze(zzacv zzacvVar) {
        ((zzack) zzacvVar).zzm(this.zza.zzM(), 0, 12, false);
        this.zza.zzK(0);
        if (this.zza.zzi() != 1179011410) {
            return false;
        }
        this.zza.zzL(4);
        if (this.zza.zzi() != 541677121) {
            return false;
        }
        return true;
    }
}
