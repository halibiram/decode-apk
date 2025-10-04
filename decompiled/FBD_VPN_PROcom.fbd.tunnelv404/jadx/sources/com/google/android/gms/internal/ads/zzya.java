package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzya extends zzyc implements Comparable {
    private final int zze;
    private final boolean zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;

    /* JADX WARN: Multi-variable type inference failed */
    public zzya(int i, zzcz zzczVar, int i2, zzxu zzxuVar, int i3, @Nullable String str) {
        super(i, zzczVar, i2);
        boolean z;
        boolean z2;
        zzgaa zzgaaVar;
        int i4;
        boolean z3;
        boolean z4;
        boolean z5;
        int i5 = 0;
        this.zzf = zzyg.zzo(i3, false);
        int i6 = this.zzd.zze;
        int i7 = zzxuVar.zzy;
        if (1 != (i6 & 1)) {
            z = false;
        } else {
            z = true;
        }
        this.zzg = z;
        if ((i6 & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.zzh = z2;
        if (zzxuVar.zzw.isEmpty()) {
            zzgaaVar = zzgaa.zzm(new ObfuscatedString(new long[]{-1653640149212338176L}).toString());
        } else {
            zzgaaVar = zzxuVar.zzw;
        }
        int i8 = 0;
        while (true) {
            if (i8 < zzgaaVar.size()) {
                i4 = zzyg.zzb(this.zzd, (String) zzgaaVar.get(i8), false);
                if (i4 > 0) {
                    break;
                } else {
                    i8++;
                }
            } else {
                i8 = Integer.MAX_VALUE;
                i4 = 0;
                break;
            }
        }
        this.zzi = i8;
        this.zzj = i4;
        int zza = zzyg.zza(this.zzd.zzf, zzxuVar.zzx);
        this.zzk = zza;
        if ((this.zzd.zzf & 1088) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.zzm = z3;
        if (zzyg.zzh(str) == null) {
            z4 = true;
        } else {
            z4 = false;
        }
        int zzb = zzyg.zzb(this.zzd, str, z4);
        this.zzl = zzb;
        if (i4 > 0 || ((zzxuVar.zzw.isEmpty() && zza > 0) || this.zzg || (this.zzh && zzb > 0))) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (zzyg.zzo(i3, zzxuVar.zzT) && z5) {
            i5 = 1;
        }
        this.zze = i5;
    }

    @Override // java.lang.Comparable
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzya zzyaVar) {
        zzgbj zza;
        zzfzp zze = zzfzp.zzk().zze(this.zzf, zzyaVar.zzf).zzd(Integer.valueOf(this.zzi), Integer.valueOf(zzyaVar.zzi), zzgbj.zzc().zza()).zzb(this.zzj, zzyaVar.zzj).zzb(this.zzk, zzyaVar.zzk).zze(this.zzg, zzyaVar.zzg);
        Boolean valueOf = Boolean.valueOf(this.zzh);
        Boolean valueOf2 = Boolean.valueOf(zzyaVar.zzh);
        if (this.zzj == 0) {
            zza = zzgbj.zzc();
        } else {
            zza = zzgbj.zzc().zza();
        }
        zzfzp zzb = zze.zzd(valueOf, valueOf2, zza).zzb(this.zzl, zzyaVar.zzl);
        if (this.zzk == 0) {
            zzb = zzb.zzf(this.zzm, zzyaVar.zzm);
        }
        return zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyc
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzyc
    public final /* bridge */ /* synthetic */ boolean zzc(zzyc zzycVar) {
        return false;
    }
}
