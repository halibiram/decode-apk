package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzyf extends zzyc {
    private final boolean zze;
    private final zzxu zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;
    private final int zzn;
    private final boolean zzo;
    private final boolean zzp;
    private final int zzq;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:103:0x009e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzyf(int i, zzcz zzczVar, int i2, zzxu zzxuVar, int i3, int i4, boolean z) {
        super(i, zzczVar, 0);
        int i5;
        boolean z2;
        boolean z3;
        int i6;
        boolean z4;
        int i7;
        boolean z5;
        boolean z6;
        zzam zzamVar;
        String str;
        char c;
        boolean z7;
        zzam zzamVar2;
        int i8;
        int i9;
        float f;
        int i10;
        int i11 = 4;
        int i12 = 0;
        this.zzf = zzxuVar;
        if (true != zzxuVar.zzK) {
            i5 = 16;
        } else {
            i5 = 24;
        }
        if (z) {
            zzam zzamVar3 = this.zzd;
            int i13 = zzamVar3.zzr;
            float f2 = zzamVar3.zzt;
            if (f2 == -1.0f || f2 <= 2.14748365E9f) {
                z2 = true;
                this.zze = z2;
                if (z && (((i8 = (zzamVar2 = this.zzd).zzr) == -1 || i8 >= 0) && ((i9 = zzamVar2.zzs) == -1 || i9 >= 0))) {
                    f = zzamVar2.zzt;
                    if ((f != -1.0f || f >= 0.0f) && ((i10 = zzamVar2.zzi) == -1 || i10 >= 0)) {
                        z3 = true;
                        this.zzg = z3;
                        this.zzh = zzyg.zzo(i3, false);
                        zzam zzamVar4 = this.zzd;
                        this.zzi = zzamVar4.zzi;
                        this.zzj = zzamVar4.zza();
                        this.zzl = zzyg.zza(this.zzd.zzf, 0);
                        i6 = this.zzd.zzf;
                        if (i6 != 0 || (i6 & 1) != 0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        this.zzm = z4;
                        i7 = 0;
                        while (true) {
                            if (i7 >= zzxuVar.zzo.size()) {
                                String str2 = this.zzd.zzm;
                                if (str2 != null && str2.equals(zzxuVar.zzo.get(i7))) {
                                    break;
                                } else {
                                    i7++;
                                }
                            } else {
                                i7 = Integer.MAX_VALUE;
                                break;
                            }
                        }
                        this.zzk = i7;
                        if ((i3 & 384) != 128) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        this.zzo = z5;
                        if ((i3 & 64) != 64) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        this.zzp = z6;
                        zzamVar = this.zzd;
                        str = zzamVar.zzm;
                        if (str != null) {
                            switch (str.hashCode()) {
                                case -1851077871:
                                    if (str.equals(new ObfuscatedString(new long[]{3103597520249384031L, 2620012233782642273L, -5340331451693427491L, -4101427563883780867L}).toString())) {
                                        c = 0;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case -1662735862:
                                    if (str.equals(new ObfuscatedString(new long[]{150158694771420926L, 3619396967549685886L, 9087058047310070789L}).toString())) {
                                        c = 1;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case -1662541442:
                                    if (str.equals(new ObfuscatedString(new long[]{2238282662649928571L, -1555053530671494504L, 7734109511933168088L}).toString())) {
                                        c = 2;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case 1331836730:
                                    if (str.equals(new ObfuscatedString(new long[]{-8247355769997192522L, -5164062935274229608L, 7628771241626574798L}).toString())) {
                                        c = 4;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case 1599127257:
                                    if (str.equals(new ObfuscatedString(new long[]{5346485521108496222L, -2627246922299726113L, -8076732283146498759L, -284560909145486386L}).toString())) {
                                        c = 3;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                default:
                                    c = 65535;
                                    break;
                            }
                            if (c != 0) {
                                if (c != 1) {
                                    if (c != 2) {
                                        if (c != 3) {
                                            if (c == 4) {
                                                i11 = 1;
                                            }
                                        } else {
                                            i11 = 2;
                                        }
                                    } else {
                                        i11 = 3;
                                    }
                                }
                            } else {
                                i11 = 5;
                            }
                            this.zzq = i11;
                            if ((zzamVar.zzf & 16384) == 0) {
                                zzxu zzxuVar2 = this.zzf;
                                if (zzyg.zzo(i3, zzxuVar2.zzT) && ((z7 = this.zze) || zzxuVar2.zzI)) {
                                    i12 = (zzyg.zzo(i3, false) && this.zzg && z7 && zzamVar.zzi != -1 && (i5 & i3) != 0) ? 2 : 1;
                                }
                            }
                            this.zzn = i12;
                        }
                        i11 = 0;
                        this.zzq = i11;
                        if ((zzamVar.zzf & 16384) == 0) {
                        }
                        this.zzn = i12;
                    }
                }
                z3 = false;
                this.zzg = z3;
                this.zzh = zzyg.zzo(i3, false);
                zzam zzamVar42 = this.zzd;
                this.zzi = zzamVar42.zzi;
                this.zzj = zzamVar42.zza();
                this.zzl = zzyg.zza(this.zzd.zzf, 0);
                i6 = this.zzd.zzf;
                if (i6 != 0) {
                }
                z4 = true;
                this.zzm = z4;
                i7 = 0;
                while (true) {
                    if (i7 >= zzxuVar.zzo.size()) {
                    }
                    i7++;
                }
                this.zzk = i7;
                if ((i3 & 384) != 128) {
                }
                this.zzo = z5;
                if ((i3 & 64) != 64) {
                }
                this.zzp = z6;
                zzamVar = this.zzd;
                str = zzamVar.zzm;
                if (str != null) {
                }
                i11 = 0;
                this.zzq = i11;
                if ((zzamVar.zzf & 16384) == 0) {
                }
                this.zzn = i12;
            }
        }
        z2 = false;
        this.zze = z2;
        if (z) {
            f = zzamVar2.zzt;
            if (f != -1.0f) {
            }
            z3 = true;
            this.zzg = z3;
            this.zzh = zzyg.zzo(i3, false);
            zzam zzamVar422 = this.zzd;
            this.zzi = zzamVar422.zzi;
            this.zzj = zzamVar422.zza();
            this.zzl = zzyg.zza(this.zzd.zzf, 0);
            i6 = this.zzd.zzf;
            if (i6 != 0) {
            }
            z4 = true;
            this.zzm = z4;
            i7 = 0;
            while (true) {
                if (i7 >= zzxuVar.zzo.size()) {
                }
                i7++;
            }
            this.zzk = i7;
            if ((i3 & 384) != 128) {
            }
            this.zzo = z5;
            if ((i3 & 64) != 64) {
            }
            this.zzp = z6;
            zzamVar = this.zzd;
            str = zzamVar.zzm;
            if (str != null) {
            }
            i11 = 0;
            this.zzq = i11;
            if ((zzamVar.zzf & 16384) == 0) {
            }
            this.zzn = i12;
        }
        z3 = false;
        this.zzg = z3;
        this.zzh = zzyg.zzo(i3, false);
        zzam zzamVar4222 = this.zzd;
        this.zzi = zzamVar4222.zzi;
        this.zzj = zzamVar4222.zza();
        this.zzl = zzyg.zza(this.zzd.zzf, 0);
        i6 = this.zzd.zzf;
        if (i6 != 0) {
        }
        z4 = true;
        this.zzm = z4;
        i7 = 0;
        while (true) {
            if (i7 >= zzxuVar.zzo.size()) {
            }
            i7++;
        }
        this.zzk = i7;
        if ((i3 & 384) != 128) {
        }
        this.zzo = z5;
        if ((i3 & 64) != 64) {
        }
        this.zzp = z6;
        zzamVar = this.zzd;
        str = zzamVar.zzm;
        if (str != null) {
        }
        i11 = 0;
        this.zzq = i11;
        if ((zzamVar.zzf & 16384) == 0) {
        }
        this.zzn = i12;
    }

    public static /* synthetic */ int zza(zzyf zzyfVar, zzyf zzyfVar2) {
        zzgbj zzgbjVar;
        zzgbj zza;
        zzgbj zzgbjVar2;
        if (zzyfVar.zze && zzyfVar.zzh) {
            zza = zzyg.zzc;
        } else {
            zzgbjVar = zzyg.zzc;
            zza = zzgbjVar.zza();
        }
        zzfzp zzk = zzfzp.zzk();
        Integer valueOf = Integer.valueOf(zzyfVar.zzi);
        Integer valueOf2 = Integer.valueOf(zzyfVar2.zzi);
        boolean z = zzyfVar.zzf.zzB;
        zzgbjVar2 = zzyg.zzd;
        return zzk.zzd(valueOf, valueOf2, zzgbjVar2).zzd(Integer.valueOf(zzyfVar.zzj), Integer.valueOf(zzyfVar2.zzj), zza).zzd(Integer.valueOf(zzyfVar.zzi), Integer.valueOf(zzyfVar2.zzi), zza).zza();
    }

    public static /* synthetic */ int zzd(zzyf zzyfVar, zzyf zzyfVar2) {
        zzfzp zzd = zzfzp.zzk().zze(zzyfVar.zzh, zzyfVar2.zzh).zzb(zzyfVar.zzl, zzyfVar2.zzl).zze(zzyfVar.zzm, zzyfVar2.zzm).zze(zzyfVar.zze, zzyfVar2.zze).zze(zzyfVar.zzg, zzyfVar2.zzg).zzd(Integer.valueOf(zzyfVar.zzk), Integer.valueOf(zzyfVar2.zzk), zzgbj.zzc().zza());
        boolean z = zzyfVar.zzo;
        zzfzp zze = zzd.zze(z, zzyfVar2.zzo);
        boolean z2 = zzyfVar.zzp;
        zzfzp zze2 = zze.zze(z2, zzyfVar2.zzp);
        if (z && z2) {
            zze2 = zze2.zzb(zzyfVar.zzq, zzyfVar2.zzq);
        }
        return zze2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyc
    public final int zzb() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzyc
    public final /* bridge */ /* synthetic */ boolean zzc(zzyc zzycVar) {
        zzyf zzyfVar = (zzyf) zzycVar;
        if (zzfy.zzF(this.zzd.zzm, zzyfVar.zzd.zzm)) {
            boolean z = this.zzf.zzL;
            if (this.zzo == zzyfVar.zzo && this.zzp == zzyfVar.zzp) {
                return true;
            }
            return false;
        }
        return false;
    }
}
