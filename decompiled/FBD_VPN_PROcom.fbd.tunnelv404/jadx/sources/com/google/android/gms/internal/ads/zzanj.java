package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class zzanj implements zzamy {
    private final zzanz zza;
    private String zzb;
    private zzaea zzc;
    private zzani zzd;
    private boolean zze;
    private long zzl;
    private final boolean[] zzf = new boolean[3];
    private final zzann zzg = new zzann(32, 128);
    private final zzann zzh = new zzann(33, 128);
    private final zzann zzi = new zzann(34, 128);
    private final zzann zzj = new zzann(39, 128);
    private final zzann zzk = new zzann(40, 128);
    private long zzm = -9223372036854775807L;
    private final zzfp zzn = new zzfp();

    public zzanj(zzanz zzanzVar) {
        this.zza = zzanzVar;
    }

    @RequiresNonNull({"sampleReader"})
    private final void zzf(byte[] bArr, int i, int i2) {
        this.zzd.zzc(bArr, i, i2);
        if (!this.zze) {
            this.zzg.zza(bArr, i, i2);
            this.zzh.zza(bArr, i, i2);
            this.zzi.zza(bArr, i, i2);
        }
        this.zzj.zza(bArr, i, i2);
        this.zzk.zza(bArr, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01bb  */
    @Override // com.google.android.gms.internal.ads.zzamy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzfp zzfpVar) {
        int i;
        int i2;
        byte[] bArr;
        int i3;
        long j;
        int i4;
        zzek.zzb(this.zzc);
        int i5 = zzfy.zza;
        while (zzfpVar.zzb() > 0) {
            int zzd = zzfpVar.zzd();
            int zze = zzfpVar.zze();
            byte[] zzM = zzfpVar.zzM();
            this.zzl += zzfpVar.zzb();
            this.zzc.zzr(zzfpVar, zzfpVar.zzb());
            while (zzd < zze) {
                int zza = zzgm.zza(zzM, zzd, zze, this.zzf);
                if (zza != zze) {
                    int i6 = zza + 3;
                    int i7 = zzM[i6] & 126;
                    int i8 = zza - zzd;
                    if (i8 > 0) {
                        zzf(zzM, zzd, zza);
                    }
                    int i9 = zze - zza;
                    long j2 = this.zzl - i9;
                    if (i8 < 0) {
                        i = -i8;
                    } else {
                        i = 0;
                    }
                    long j3 = this.zzm;
                    this.zzd.zzb(j2, i9, this.zze);
                    if (!this.zze) {
                        this.zzg.zzd(i);
                        this.zzh.zzd(i);
                        this.zzi.zzd(i);
                        zzann zzannVar = this.zzg;
                        if (zzannVar.zze()) {
                            zzann zzannVar2 = this.zzh;
                            if (zzannVar2.zze()) {
                                zzann zzannVar3 = this.zzi;
                                if (zzannVar3.zze()) {
                                    zzaea zzaeaVar = this.zzc;
                                    i3 = i6;
                                    String str = this.zzb;
                                    int i10 = zzannVar.zzb;
                                    i2 = zze;
                                    bArr = zzM;
                                    byte[] bArr2 = new byte[zzannVar2.zzb + i10 + zzannVar3.zzb];
                                    i4 = i9;
                                    System.arraycopy(zzannVar.zza, 0, bArr2, 0, i10);
                                    j = j2;
                                    System.arraycopy(zzannVar2.zza, 0, bArr2, zzannVar.zzb, zzannVar2.zzb);
                                    System.arraycopy(zzannVar3.zza, 0, bArr2, zzannVar.zzb + zzannVar2.zzb, zzannVar3.zzb);
                                    zzgj zzc = zzgm.zzc(zzannVar2.zza, 5, zzannVar2.zzb);
                                    String zzb = zzem.zzb(zzc.zza, zzc.zzb, zzc.zzc, zzc.zzd, zzc.zzg, zzc.zzh);
                                    zzak zzakVar = new zzak();
                                    zzakVar.zzK(str);
                                    zzakVar.zzW(new ObfuscatedString(new long[]{-568645829663314057L, 7303489993703537246L, 4512132252908919369L}).toString());
                                    zzakVar.zzz(zzb);
                                    zzakVar.zzab(zzc.zzi);
                                    zzakVar.zzI(zzc.zzj);
                                    zzr zzrVar = new zzr();
                                    zzrVar.zzc(zzc.zzl);
                                    zzrVar.zzb(zzc.zzm);
                                    zzrVar.zzd(zzc.zzn);
                                    zzrVar.zzf(zzc.zze + 8);
                                    zzrVar.zza(zzc.zzf + 8);
                                    zzakVar.zzA(zzrVar.zzg());
                                    zzakVar.zzS(zzc.zzk);
                                    zzakVar.zzL(Collections.singletonList(bArr2));
                                    zzaeaVar.zzl(zzakVar.zzac());
                                    this.zze = true;
                                    if (this.zzj.zzd(i)) {
                                        zzann zzannVar4 = this.zzj;
                                        this.zzn.zzI(this.zzj.zza, zzgm.zzb(zzannVar4.zza, zzannVar4.zzb));
                                        this.zzn.zzL(5);
                                        this.zza.zza(j3, this.zzn);
                                    }
                                    if (this.zzk.zzd(i)) {
                                        zzann zzannVar5 = this.zzk;
                                        this.zzn.zzI(this.zzk.zza, zzgm.zzb(zzannVar5.zza, zzannVar5.zzb));
                                        this.zzn.zzL(5);
                                        this.zza.zza(j3, this.zzn);
                                    }
                                    int i11 = i7 >> 1;
                                    this.zzd.zze(j, i4, i11, this.zzm, this.zze);
                                    if (!this.zze) {
                                        this.zzg.zzc(i11);
                                        this.zzh.zzc(i11);
                                        this.zzi.zzc(i11);
                                    }
                                    this.zzj.zzc(i11);
                                    this.zzk.zzc(i11);
                                    zzd = i3;
                                    zze = i2;
                                    zzM = bArr;
                                }
                            }
                        }
                    }
                    i2 = zze;
                    bArr = zzM;
                    i3 = i6;
                    j = j2;
                    i4 = i9;
                    if (this.zzj.zzd(i)) {
                    }
                    if (this.zzk.zzd(i)) {
                    }
                    int i112 = i7 >> 1;
                    this.zzd.zze(j, i4, i112, this.zzm, this.zze);
                    if (!this.zze) {
                    }
                    this.zzj.zzc(i112);
                    this.zzk.zzc(i112);
                    zzd = i3;
                    zze = i2;
                    zzM = bArr;
                } else {
                    zzf(zzM, zzd, zze);
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzb(zzacx zzacxVar, zzaok zzaokVar) {
        zzaokVar.zzc();
        this.zzb = zzaokVar.zzb();
        zzaea zzw = zzacxVar.zzw(zzaokVar.zza(), 2);
        this.zzc = zzw;
        this.zzd = new zzani(zzw);
        this.zza.zzb(zzacxVar, zzaokVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzc(boolean z) {
        zzek.zzb(this.zzc);
        int i = zzfy.zza;
        if (z) {
            this.zzd.zza(this.zzl);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzd(long j, int i) {
        this.zzm = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zze() {
        this.zzl = 0L;
        this.zzm = -9223372036854775807L;
        zzgm.zzf(this.zzf);
        this.zzg.zzb();
        this.zzh.zzb();
        this.zzi.zzb();
        this.zzj.zzb();
        this.zzk.zzb();
        zzani zzaniVar = this.zzd;
        if (zzaniVar != null) {
            zzaniVar.zzd();
        }
    }
}
