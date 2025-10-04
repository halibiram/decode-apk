package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzajh implements zzacu, zzadu {

    @Deprecated
    public static final zzadb zza = new zzadb() { // from class: com.google.android.gms.internal.ads.zzajf
        @Override // com.google.android.gms.internal.ads.zzadb
        public final /* synthetic */ zzacu[] zza(Uri uri, Map map) {
            int i = zzada.zza;
            return new zzacu[]{new zzajh()};
        }
    };

    @Nullable
    private zzahe zzA;
    private final zzakp zzb;
    private final int zzc;
    private final zzfp zzd;
    private final zzfp zze;
    private final zzfp zzf;
    private final zzfp zzg;
    private final ArrayDeque zzh;
    private final zzajk zzi;
    private final List zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private int zzn;

    @Nullable
    private zzfp zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private boolean zzt;
    private zzacx zzu;
    private zzajg[] zzv;
    private long[][] zzw;
    private int zzx;
    private long zzy;
    private int zzz;

    @Deprecated
    public zzajh() {
        this(zzakp.zza, 16);
    }

    private static int zzf(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static int zzi(zzajp zzajpVar, long j) {
        int zza2 = zzajpVar.zza(j);
        if (zza2 == -1) {
            return zzajpVar.zzb(j);
        }
        return zza2;
    }

    private static long zzj(zzajp zzajpVar, long j, long j2) {
        int zzi = zzi(zzajpVar, j);
        if (zzi == -1) {
            return j2;
        }
        return Math.min(zzajpVar.zzc[zzi], j2);
    }

    private final void zzk() {
        this.zzk = 0;
        this.zzn = 0;
    }

    private final void zzl(long j) {
        zzby zzbyVar;
        zzby zzbyVar2;
        boolean z;
        boolean z2;
        long j2;
        List list;
        int i;
        int i2;
        zzby zzbyVar3;
        int i3;
        zzadk zzadkVar;
        int i4;
        int i5;
        int i6;
        int i7;
        while (!this.zzh.isEmpty() && ((zzaim) this.zzh.peek()).zza == j) {
            zzaim zzaimVar = (zzaim) this.zzh.pop();
            if (zzaimVar.zzd == 1836019574) {
                ArrayList arrayList = new ArrayList();
                int i8 = this.zzz;
                zzadk zzadkVar2 = new zzadk();
                zzain zzb = zzaimVar.zzb(1969517665);
                if (zzb != null) {
                    zzby zzb2 = zzaiw.zzb(zzb);
                    zzadkVar2.zzb(zzb2);
                    zzbyVar = zzb2;
                } else {
                    zzbyVar = null;
                }
                zzaim zza2 = zzaimVar.zza(1835365473);
                if (zza2 != null) {
                    zzbyVar2 = zzaiw.zza(zza2);
                } else {
                    zzbyVar2 = null;
                }
                zzain zzb3 = zzaimVar.zzb(1836476516);
                zzb3.getClass();
                if (i8 == 1) {
                    z = true;
                } else {
                    z = false;
                }
                zzby zzbyVar4 = new zzby(-9223372036854775807L, zzaiw.zzc(zzb3.zza));
                if (1 != (this.zzc & 1)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                long j3 = -9223372036854775807L;
                zzby zzbyVar5 = zzbyVar2;
                List zzd = zzaiw.zzd(zzaimVar, zzadkVar2, -9223372036854775807L, null, z2, z, new zzfws() { // from class: com.google.android.gms.internal.ads.zzaje
                    @Override // com.google.android.gms.internal.ads.zzfws
                    public final Object apply(Object obj) {
                        zzajm zzajmVar = (zzajm) obj;
                        zzadb zzadbVar = zzajh.zza;
                        return zzajmVar;
                    }
                });
                int size = zzd.size();
                long j4 = -9223372036854775807L;
                int i9 = 0;
                int i10 = -1;
                while (true) {
                    j2 = 0;
                    if (i9 >= size) {
                        break;
                    }
                    zzajp zzajpVar = (zzajp) zzd.get(i9);
                    if (zzajpVar.zzb == 0) {
                        list = zzd;
                        i = size;
                        zzadkVar = zzadkVar2;
                        i4 = 1;
                    } else {
                        zzajm zzajmVar = zzajpVar.zza;
                        long j5 = zzajmVar.zze;
                        if (j5 == j3) {
                            j5 = zzajpVar.zzh;
                        }
                        long max = Math.max(j4, j5);
                        list = zzd;
                        zzajg zzajgVar = new zzajg(zzajmVar, zzajpVar, this.zzu.zzw(i9, zzajmVar.zzb));
                        i = size;
                        if (new ObfuscatedString(new long[]{-8693611869642160784L, -704000834788412773L, 1323412358332834354L}).toString().equals(zzajmVar.zzf.zzm)) {
                            i2 = zzajpVar.zze * 16;
                        } else {
                            i2 = zzajpVar.zze + 30;
                        }
                        zzak zzb4 = zzajmVar.zzf.zzb();
                        zzb4.zzO(i2);
                        if (zzajmVar.zzb == 2) {
                            if ((this.zzc & 8) != 0) {
                                zzam zzamVar = zzajmVar.zzf;
                                if (i10 == -1) {
                                    i7 = 1;
                                } else {
                                    i7 = 2;
                                }
                                zzb4.zzU(zzamVar.zzf | i7);
                            }
                            if (j5 > 0 && (i6 = zzajpVar.zzb) > 1) {
                                zzb4.zzH(i6 / (((float) j5) / 1000000.0f));
                            }
                        }
                        int i11 = zzajmVar.zzb;
                        int i12 = zzajd.zzb;
                        if (i11 == 1 && zzadkVar2.zza()) {
                            zzb4.zzF(zzadkVar2.zza);
                            zzb4.zzG(zzadkVar2.zzb);
                        }
                        int i13 = zzajmVar.zzb;
                        if (this.zzj.isEmpty()) {
                            i3 = 3;
                            zzbyVar3 = null;
                        } else {
                            zzbyVar3 = new zzby(this.zzj);
                            i3 = 3;
                        }
                        zzby[] zzbyVarArr = new zzby[i3];
                        zzbyVarArr[0] = zzbyVar3;
                        zzbyVarArr[1] = zzbyVar;
                        zzbyVarArr[2] = zzbyVar4;
                        zzadkVar = zzadkVar2;
                        zzby zzbyVar6 = new zzby(-9223372036854775807L, new zzbx[0]);
                        if (zzbyVar5 != null) {
                            int i14 = 0;
                            while (i14 < zzbyVar5.zza()) {
                                zzbx zzb5 = zzbyVar5.zzb(i14);
                                if (zzb5 instanceof zzgc) {
                                    zzgc zzgcVar = (zzgc) zzb5;
                                    if (zzgcVar.zza.equals(new ObfuscatedString(new long[]{4800175712966613055L, -7828113063060799035L, 7965623487922495608L, -1147577212226279313L}).toString())) {
                                        if (i13 == 2) {
                                            i5 = 1;
                                            zzbyVar6 = zzbyVar6.zzc(zzgcVar);
                                        }
                                    } else {
                                        i5 = 1;
                                        zzbyVar6 = zzbyVar6.zzc(zzgcVar);
                                    }
                                    i14 += i5;
                                }
                                i5 = 1;
                                i14 += i5;
                            }
                        }
                        for (int i15 = 0; i15 < 3; i15++) {
                            zzbyVar6 = zzbyVar6.zzd(zzbyVarArr[i15]);
                        }
                        if (zzbyVar6.zza() > 0) {
                            zzb4.zzP(zzbyVar6);
                        }
                        zzajgVar.zzc.zzl(zzb4.zzac());
                        if (zzajmVar.zzb == 2 && i10 == -1) {
                            i10 = arrayList.size();
                        }
                        arrayList.add(zzajgVar);
                        j4 = max;
                        i4 = 1;
                    }
                    i9 += i4;
                    zzd = list;
                    size = i;
                    zzadkVar2 = zzadkVar;
                    j3 = -9223372036854775807L;
                }
                this.zzx = i10;
                this.zzy = j4;
                zzajg[] zzajgVarArr = (zzajg[]) arrayList.toArray(new zzajg[0]);
                this.zzv = zzajgVarArr;
                int length = zzajgVarArr.length;
                long[][] jArr = new long[length];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i16 = 0; i16 < zzajgVarArr.length; i16++) {
                    jArr[i16] = new long[zzajgVarArr[i16].zzb.zzb];
                    jArr2[i16] = zzajgVarArr[i16].zzb.zzf[0];
                }
                int i17 = 0;
                while (i17 < zzajgVarArr.length) {
                    long j6 = Long.MAX_VALUE;
                    int i18 = -1;
                    for (int i19 = 0; i19 < zzajgVarArr.length; i19++) {
                        if (!zArr[i19]) {
                            long j7 = jArr2[i19];
                            if (j7 <= j6) {
                                i18 = i19;
                                j6 = j7;
                            }
                        }
                    }
                    int i20 = iArr[i18];
                    long[] jArr3 = jArr[i18];
                    jArr3[i20] = j2;
                    zzajp zzajpVar2 = zzajgVarArr[i18].zzb;
                    int i21 = i17;
                    j2 += zzajpVar2.zzd[i20];
                    int i22 = i20 + 1;
                    iArr[i18] = i22;
                    if (i22 < jArr3.length) {
                        jArr2[i18] = zzajpVar2.zzf[i22];
                        i17 = i21;
                    } else {
                        zArr[i18] = true;
                        i17 = i21 + 1;
                    }
                }
                this.zzw = jArr;
                this.zzu.zzD();
                this.zzu.zzO(this);
                this.zzh.clear();
                this.zzk = 2;
            } else if (!this.zzh.isEmpty()) {
                ((zzaim) this.zzh.peek()).zzc(zzaimVar);
            }
        }
        if (this.zzk != 2) {
            zzk();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final long zza() {
        return this.zzy;
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0400, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:217:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0094 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzacu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacv zzacvVar, zzadr zzadrVar) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        zzby zzbyVar;
        while (true) {
            int i2 = this.zzk;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        this.zzi.zza(zzacvVar, zzadrVar, this.zzj);
                        if (zzadrVar.zza == 0) {
                            zzk();
                        }
                        return 1;
                    }
                    long zzf = zzacvVar.zzf();
                    int i3 = this.zzp;
                    if (i3 == -1) {
                        long j = Long.MAX_VALUE;
                        long j2 = Long.MAX_VALUE;
                        long j3 = Long.MAX_VALUE;
                        int i4 = 0;
                        boolean z5 = true;
                        int i5 = -1;
                        int i6 = -1;
                        boolean z6 = true;
                        while (true) {
                            zzajg[] zzajgVarArr = this.zzv;
                            if (i4 >= zzajgVarArr.length) {
                                break;
                            }
                            zzajg zzajgVar = zzajgVarArr[i4];
                            int i7 = zzajgVar.zze;
                            zzajp zzajpVar = zzajgVar.zzb;
                            if (i7 != zzajpVar.zzb) {
                                long j4 = zzajpVar.zzc[i7];
                                long[][] jArr = this.zzw;
                                int i8 = zzfy.zza;
                                long j5 = jArr[i4][i7];
                                long j6 = j4 - zzf;
                                if (j6 < 0 || j6 >= 262144) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (!z) {
                                    if (!z6) {
                                        z2 = false;
                                    }
                                    z6 = z;
                                    i6 = i4;
                                    j3 = j6;
                                    j2 = j5;
                                    if (j5 < j) {
                                        z5 = z;
                                        i5 = i4;
                                        j = j5;
                                    }
                                } else {
                                    z2 = z6;
                                }
                                if (z != z2 || j6 >= j3) {
                                    z6 = z2;
                                    if (j5 < j) {
                                    }
                                }
                                z6 = z;
                                i6 = i4;
                                j3 = j6;
                                j2 = j5;
                                if (j5 < j) {
                                }
                            }
                            i4++;
                        }
                        if (j != Long.MAX_VALUE && z5 && j2 >= j + 10485760) {
                            i3 = i5;
                        } else {
                            i3 = i6;
                        }
                        this.zzp = i3;
                        if (i3 == -1) {
                            return -1;
                        }
                    }
                    zzajg zzajgVar2 = this.zzv[i3];
                    zzaea zzaeaVar = zzajgVar2.zzc;
                    int i9 = zzajgVar2.zze;
                    zzajp zzajpVar2 = zzajgVar2.zzb;
                    long j7 = zzajpVar2.zzc[i9];
                    int i10 = zzajpVar2.zzd[i9];
                    zzaeb zzaebVar = zzajgVar2.zzd;
                    long j8 = (j7 - zzf) + this.zzq;
                    if (j8 >= 0 && j8 < 262144) {
                        if (zzajgVar2.zza.zzg == 1) {
                            j8 += 8;
                            i10 -= 8;
                        }
                        zzacvVar.zzk((int) j8);
                        zzajm zzajmVar = zzajgVar2.zza;
                        int i11 = zzajmVar.zzj;
                        if (i11 != 0) {
                            byte[] zzM = this.zze.zzM();
                            zzM[0] = 0;
                            zzM[1] = 0;
                            zzM[2] = 0;
                            int i12 = 4 - i11;
                            while (this.zzr < i10) {
                                int i13 = this.zzs;
                                if (i13 == 0) {
                                    zzacvVar.zzi(zzM, i12, i11);
                                    this.zzq += i11;
                                    this.zze.zzK(0);
                                    int zzg = this.zze.zzg();
                                    if (zzg >= 0) {
                                        this.zzs = zzg;
                                        this.zzd.zzK(0);
                                        zzaeaVar.zzr(this.zzd, 4);
                                        this.zzr += 4;
                                        i10 += i12;
                                    } else {
                                        throw zzcc.zza(new ObfuscatedString(new long[]{8019097433814576726L, -4719575569482698803L, 5640591659787772308L, 3321585596788618274L}).toString(), null);
                                    }
                                } else {
                                    int zzf2 = zzaeaVar.zzf(zzacvVar, i13, false);
                                    this.zzq += zzf2;
                                    this.zzr += zzf2;
                                    this.zzs -= zzf2;
                                }
                            }
                        } else {
                            if (new ObfuscatedString(new long[]{1415834162861047061L, 489920523065933713L, 2354397829459704945L}).toString().equals(zzajmVar.zzf.zzm)) {
                                if (this.zzr == 0) {
                                    zzaby.zzb(i10, this.zzf);
                                    i = 7;
                                    zzaeaVar.zzr(this.zzf, 7);
                                    this.zzr += 7;
                                } else {
                                    i = 7;
                                }
                                i10 += i;
                            } else if (zzaebVar != null) {
                                zzaebVar.zzd(zzacvVar);
                            }
                            while (true) {
                                int i14 = this.zzr;
                                if (i14 >= i10) {
                                    break;
                                }
                                int zzf3 = zzaeaVar.zzf(zzacvVar, i10 - i14, false);
                                this.zzq += zzf3;
                                this.zzr += zzf3;
                                this.zzs -= zzf3;
                            }
                        }
                        zzajp zzajpVar3 = zzajgVar2.zzb;
                        long j9 = zzajpVar3.zzf[i9];
                        int i15 = zzajpVar3.zzg[i9];
                        if (zzaebVar != null) {
                            zzaebVar.zzc(zzaeaVar, j9, i15, i10, 0, null);
                            if (i9 + 1 == zzajgVar2.zzb.zzb) {
                                zzaebVar.zza(zzaeaVar, null);
                            }
                        } else {
                            zzaeaVar.zzt(j9, i15, i10, 0, null);
                        }
                        zzajgVar2.zze++;
                        this.zzp = -1;
                        this.zzq = 0;
                        this.zzr = 0;
                        this.zzs = 0;
                        return 0;
                    }
                    zzadrVar.zza = j7;
                    return 1;
                }
                long j10 = this.zzm - this.zzn;
                long zzf4 = zzacvVar.zzf() + j10;
                zzfp zzfpVar = this.zzo;
                if (zzfpVar != null) {
                    zzacvVar.zzi(zzfpVar.zzM(), this.zzn, (int) j10);
                    if (this.zzl == 1718909296) {
                        this.zzt = true;
                        zzfpVar.zzK(8);
                        int zzf5 = zzf(zzfpVar.zzg());
                        if (zzf5 == 0) {
                            zzfpVar.zzL(4);
                            while (true) {
                                if (zzfpVar.zzb() > 0) {
                                    zzf5 = zzf(zzfpVar.zzg());
                                    if (zzf5 != 0) {
                                        break;
                                    }
                                } else {
                                    zzf5 = 0;
                                    break;
                                }
                            }
                        }
                        this.zzz = zzf5;
                    } else if (!this.zzh.isEmpty()) {
                        ((zzaim) this.zzh.peek()).zzd(new zzain(this.zzl, zzfpVar));
                    }
                } else {
                    if (!this.zzt && this.zzl == 1835295092) {
                        this.zzz = 1;
                    }
                    if (j10 < 262144) {
                        zzacvVar.zzk((int) j10);
                    } else {
                        zzadrVar.zza = zzacvVar.zzf() + j10;
                        z3 = true;
                        zzl(zzf4);
                        if (z3 && this.zzk != 2) {
                            return 1;
                        }
                    }
                }
                z3 = false;
                zzl(zzf4);
                if (z3) {
                    return 1;
                }
                continue;
            } else {
                if (this.zzn == 0) {
                    if (!zzacvVar.zzn(this.zzg.zzM(), 0, 8, true)) {
                        if (this.zzz == 2 && (this.zzc & 2) != 0) {
                            zzaea zzw = this.zzu.zzw(0, 4);
                            zzahe zzaheVar = this.zzA;
                            if (zzaheVar == null) {
                                zzbyVar = null;
                            } else {
                                zzbyVar = new zzby(-9223372036854775807L, zzaheVar);
                            }
                            zzak zzakVar = new zzak();
                            zzakVar.zzP(zzbyVar);
                            zzw.zzl(zzakVar.zzac());
                            this.zzu.zzD();
                            this.zzu.zzO(new zzadt(-9223372036854775807L, 0L));
                            return -1;
                        }
                        return -1;
                    }
                    this.zzn = 8;
                    this.zzg.zzK(0);
                    this.zzm = this.zzg.zzu();
                    this.zzl = this.zzg.zzg();
                }
                long j11 = this.zzm;
                if (j11 == 1) {
                    zzacvVar.zzi(this.zzg.zzM(), 8, 8);
                    this.zzn += 8;
                    this.zzm = this.zzg.zzv();
                } else if (j11 == 0) {
                    long zzd = zzacvVar.zzd();
                    if (zzd == -1) {
                        zzaim zzaimVar = (zzaim) this.zzh.peek();
                        if (zzaimVar != null) {
                            zzd = zzaimVar.zza;
                        } else {
                            zzd = -1;
                        }
                    }
                    if (zzd != -1) {
                        this.zzm = (zzd - zzacvVar.zzf()) + this.zzn;
                    }
                }
                long j12 = this.zzm;
                int i16 = this.zzn;
                if (j12 >= i16) {
                    int i17 = this.zzl;
                    if (i17 != 1836019574 && i17 != 1953653099 && i17 != 1835297121 && i17 != 1835626086 && i17 != 1937007212 && i17 != 1701082227 && i17 != 1835365473) {
                        if (i17 != 1835296868 && i17 != 1836476516 && i17 != 1751411826 && i17 != 1937011556 && i17 != 1937011827 && i17 != 1937011571 && i17 != 1668576371 && i17 != 1701606260 && i17 != 1937011555 && i17 != 1937011578 && i17 != 1937013298 && i17 != 1937007471 && i17 != 1668232756 && i17 != 1953196132 && i17 != 1718909296 && i17 != 1969517665 && i17 != 1801812339 && i17 != 1768715124) {
                            long zzf6 = zzacvVar.zzf();
                            long j13 = this.zzn;
                            long j14 = zzf6 - j13;
                            if (this.zzl == 1836086884) {
                                this.zzA = new zzahe(0L, j14, -9223372036854775807L, j14 + j13, this.zzm - j13);
                            }
                            this.zzo = null;
                            this.zzk = 1;
                        } else {
                            boolean z7 = false;
                            zzek.zzf(z7);
                            if (this.zzm <= 2147483647L) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            zzek.zzf(z4);
                            zzfp zzfpVar2 = new zzfp((int) this.zzm);
                            System.arraycopy(this.zzg.zzM(), 0, zzfpVar2.zzM(), 0, 8);
                            this.zzo = zzfpVar2;
                            this.zzk = 1;
                        }
                    } else {
                        long zzf7 = zzacvVar.zzf();
                        long j15 = this.zzm;
                        long j16 = zzf7 + j15;
                        long j17 = this.zzn;
                        if (j15 != j17 && this.zzl == 1835365473) {
                            this.zzf.zzH(8);
                            zzacvVar.zzh(this.zzf.zzM(), 0, 8);
                            zzaiw.zze(this.zzf);
                            zzacvVar.zzk(this.zzf.zzd());
                            zzacvVar.zzj();
                        }
                        long j18 = j16 - j17;
                        this.zzh.push(new zzaim(this.zzl, j18));
                        if (this.zzm == this.zzn) {
                            zzl(j18);
                        } else {
                            zzk();
                        }
                    }
                } else {
                    throw zzcc.zzc(new ObfuscatedString(new long[]{7679049912311869473L, 4877914204751478920L, 7666934628353401698L, 4348198014655611504L, 1319117430177006440L, -3238678025558067642L, 8816951902379049887L}).toString());
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzc(zzacx zzacxVar) {
        if ((this.zzc & 16) == 0) {
            zzacxVar = new zzaks(zzacxVar, this.zzb);
        }
        this.zzu = zzacxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzd(long j, long j2) {
        this.zzh.clear();
        this.zzn = 0;
        this.zzp = -1;
        this.zzq = 0;
        this.zzr = 0;
        this.zzs = 0;
        if (j == 0) {
            if (this.zzk != 3) {
                zzk();
                return;
            } else {
                this.zzi.zzb();
                this.zzj.clear();
                return;
            }
        }
        for (zzajg zzajgVar : this.zzv) {
            zzajp zzajpVar = zzajgVar.zzb;
            int zza2 = zzajpVar.zza(j2);
            if (zza2 == -1) {
                zza2 = zzajpVar.zzb(j2);
            }
            zzajgVar.zze = zza2;
            zzaeb zzaebVar = zzajgVar.zzd;
            if (zzaebVar != null) {
                zzaebVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final boolean zze(zzacv zzacvVar) {
        boolean z;
        if ((this.zzc & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        return zzajl.zzb(zzacvVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final zzads zzg(long j) {
        long j2;
        long j3;
        int zzb;
        zzajg[] zzajgVarArr = this.zzv;
        if (zzajgVarArr.length == 0) {
            zzadv zzadvVar = zzadv.zza;
            return new zzads(zzadvVar, zzadvVar);
        }
        int i = this.zzx;
        long j4 = -1;
        if (i != -1) {
            zzajp zzajpVar = zzajgVarArr[i].zzb;
            int zzi = zzi(zzajpVar, j);
            if (zzi == -1) {
                zzadv zzadvVar2 = zzadv.zza;
                return new zzads(zzadvVar2, zzadvVar2);
            }
            long j5 = zzajpVar.zzf[zzi];
            j2 = zzajpVar.zzc[zzi];
            if (j5 < j && zzi < zzajpVar.zzb - 1 && (zzb = zzajpVar.zzb(j)) != -1 && zzb != zzi) {
                j3 = zzajpVar.zzf[zzb];
                j4 = zzajpVar.zzc[zzb];
            } else {
                j3 = -9223372036854775807L;
            }
            j = j5;
        } else {
            j2 = Long.MAX_VALUE;
            j3 = -9223372036854775807L;
        }
        int i2 = 0;
        while (true) {
            zzajg[] zzajgVarArr2 = this.zzv;
            if (i2 >= zzajgVarArr2.length) {
                break;
            }
            if (i2 != this.zzx) {
                zzajp zzajpVar2 = zzajgVarArr2[i2].zzb;
                long zzj = zzj(zzajpVar2, j, j2);
                if (j3 != -9223372036854775807L) {
                    j4 = zzj(zzajpVar2, j3, j4);
                }
                j2 = zzj;
            }
            i2++;
        }
        zzadv zzadvVar3 = new zzadv(j, j2);
        if (j3 == -9223372036854775807L) {
            return new zzads(zzadvVar3, zzadvVar3);
        }
        return new zzads(zzadvVar3, new zzadv(j3, j4));
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final boolean zzh() {
        return true;
    }

    public zzajh(zzakp zzakpVar, int i) {
        this.zzb = zzakpVar;
        this.zzc = i;
        this.zzk = (i & 4) != 0 ? 3 : 0;
        this.zzi = new zzajk();
        this.zzj = new ArrayList();
        this.zzg = new zzfp(16);
        this.zzh = new ArrayDeque();
        this.zzd = new zzfp(zzgm.zza);
        this.zze = new zzfp(4);
        this.zzf = new zzfp();
        this.zzp = -1;
        this.zzu = zzacx.zza;
        this.zzv = new zzajg[0];
    }
}
