package com.google.android.gms.internal.ads;

import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class zzanh implements zzamy {
    private final zzanz zza;
    private long zze;
    private String zzg;
    private zzaea zzh;
    private zzang zzi;
    private boolean zzj;
    private boolean zzl;
    private final boolean[] zzf = new boolean[3];
    private final zzann zzb = new zzann(7, 128);
    private final zzann zzc = new zzann(8, 128);
    private final zzann zzd = new zzann(6, 128);
    private long zzk = -9223372036854775807L;
    private final zzfp zzm = new zzfp();

    public zzanh(zzanz zzanzVar, boolean z, boolean z2) {
        this.zza = zzanzVar;
    }

    @RequiresNonNull({"sampleReader"})
    private final void zzf(byte[] bArr, int i, int i2) {
        if (!this.zzj) {
            this.zzb.zza(bArr, i, i2);
            this.zzc.zza(bArr, i, i2);
        }
        this.zzd.zza(bArr, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01c4  */
    @Override // com.google.android.gms.internal.ads.zzamy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzfp zzfpVar) {
        int i;
        int i2;
        byte[] bArr;
        int i3;
        int i4;
        int i5;
        zzek.zzb(this.zzh);
        int i6 = zzfy.zza;
        int zzd = zzfpVar.zzd();
        int zze = zzfpVar.zze();
        byte[] zzM = zzfpVar.zzM();
        this.zze += zzfpVar.zzb();
        this.zzh.zzr(zzfpVar, zzfpVar.zzb());
        while (true) {
            int zza = zzgm.zza(zzM, zzd, zze, this.zzf);
            if (zza != zze) {
                int i7 = zza + 3;
                int i8 = zzM[i7] & Ascii.US;
                int i9 = zza - zzd;
                if (i9 > 0) {
                    zzf(zzM, zzd, zza);
                }
                int i10 = zze - zza;
                long j = this.zze - i10;
                if (i9 < 0) {
                    i = -i9;
                } else {
                    i = 0;
                }
                long j2 = this.zzk;
                if (!this.zzj) {
                    this.zzb.zzd(i);
                    this.zzc.zzd(i);
                    if (!this.zzj) {
                        if (this.zzb.zze() && this.zzc.zze()) {
                            ArrayList arrayList = new ArrayList();
                            zzann zzannVar = this.zzb;
                            arrayList.add(Arrays.copyOf(zzannVar.zza, zzannVar.zzb));
                            zzann zzannVar2 = this.zzc;
                            arrayList.add(Arrays.copyOf(zzannVar2.zza, zzannVar2.zzb));
                            zzann zzannVar3 = this.zzb;
                            zzgl zze2 = zzgm.zze(zzannVar3.zza, 4, zzannVar3.zzb);
                            zzann zzannVar4 = this.zzc;
                            zzgk zzd2 = zzgm.zzd(zzannVar4.zza, 4, zzannVar4.zzb);
                            i3 = i7;
                            String zza2 = zzem.zza(zze2.zza, zze2.zzb, zze2.zzc);
                            zzaea zzaeaVar = this.zzh;
                            zzak zzakVar = new zzak();
                            i2 = zze;
                            zzakVar.zzK(this.zzg);
                            bArr = zzM;
                            i4 = i8;
                            zzakVar.zzW(new ObfuscatedString(new long[]{2637374889834963513L, -7957951229277356227L, 8722600589311162954L}).toString());
                            zzakVar.zzz(zza2);
                            zzakVar.zzab(zze2.zze);
                            zzakVar.zzI(zze2.zzf);
                            zzr zzrVar = new zzr();
                            zzrVar.zzc(zze2.zzj);
                            zzrVar.zzb(zze2.zzk);
                            zzrVar.zzd(zze2.zzl);
                            zzrVar.zzf(zze2.zzh + 8);
                            zzrVar.zza(zze2.zzi + 8);
                            zzakVar.zzA(zzrVar.zzg());
                            zzakVar.zzS(zze2.zzg);
                            zzakVar.zzL(arrayList);
                            zzaeaVar.zzl(zzakVar.zzac());
                            this.zzj = true;
                            this.zzi.zzc(zze2);
                            this.zzi.zzb(zzd2);
                            this.zzb.zzb();
                            this.zzc.zzb();
                        }
                    } else {
                        i2 = zze;
                        bArr = zzM;
                        i3 = i7;
                        i4 = i8;
                        zzann zzannVar5 = this.zzb;
                        if (zzannVar5.zze()) {
                            this.zzi.zzc(zzgm.zze(zzannVar5.zza, 4, zzannVar5.zzb));
                            this.zzb.zzb();
                        } else {
                            zzann zzannVar6 = this.zzc;
                            if (zzannVar6.zze()) {
                                this.zzi.zzb(zzgm.zzd(zzannVar6.zza, 4, zzannVar6.zzb));
                                this.zzc.zzb();
                            }
                        }
                    }
                    if (this.zzd.zzd(i)) {
                        zzann zzannVar7 = this.zzd;
                        this.zzm.zzI(this.zzd.zza, zzgm.zzb(zzannVar7.zza, zzannVar7.zzb));
                        this.zzm.zzK(4);
                        this.zza.zza(j2, this.zzm);
                    }
                    if (this.zzi.zzf(j, i10, this.zzj)) {
                        this.zzl = false;
                    }
                    long j3 = this.zzk;
                    if (this.zzj) {
                        i5 = i4;
                        this.zzb.zzc(i5);
                        this.zzc.zzc(i5);
                    } else {
                        i5 = i4;
                    }
                    this.zzd.zzc(i5);
                    this.zzi.zze(j, i5, j3, this.zzl);
                    zzd = i3;
                    zze = i2;
                    zzM = bArr;
                }
                i2 = zze;
                bArr = zzM;
                i3 = i7;
                i4 = i8;
                if (this.zzd.zzd(i)) {
                }
                if (this.zzi.zzf(j, i10, this.zzj)) {
                }
                long j32 = this.zzk;
                if (this.zzj) {
                }
                this.zzd.zzc(i5);
                this.zzi.zze(j, i5, j32, this.zzl);
                zzd = i3;
                zze = i2;
                zzM = bArr;
            } else {
                zzf(zzM, zzd, zze);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzb(zzacx zzacxVar, zzaok zzaokVar) {
        zzaokVar.zzc();
        this.zzg = zzaokVar.zzb();
        zzaea zzw = zzacxVar.zzw(zzaokVar.zza(), 2);
        this.zzh = zzw;
        this.zzi = new zzang(zzw, false, false);
        this.zza.zzb(zzacxVar, zzaokVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzc(boolean z) {
        zzek.zzb(this.zzh);
        int i = zzfy.zza;
        if (z) {
            this.zzi.zza(this.zze);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzd(long j, int i) {
        this.zzk = j;
        int i2 = i & 2;
        this.zzl = (i2 != 0) | this.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zze() {
        this.zze = 0L;
        this.zzl = false;
        this.zzk = -9223372036854775807L;
        zzgm.zzf(this.zzf);
        this.zzb.zzb();
        this.zzc.zzb();
        this.zzd.zzb();
        zzang zzangVar = this.zzi;
        if (zzangVar != null) {
            zzangVar.zzd();
        }
    }
}
