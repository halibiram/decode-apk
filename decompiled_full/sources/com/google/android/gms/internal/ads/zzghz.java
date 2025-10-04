package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzghz extends zzghi {
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final int zzd;
    private final zzghx zze;
    private final zzghw zzf;

    public /* synthetic */ zzghz(int i, int i2, int i3, int i4, zzghx zzghxVar, zzghw zzghwVar, zzghy zzghyVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = zzghxVar;
        this.zzf = zzghwVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzghz)) {
            return false;
        }
        zzghz zzghzVar = (zzghz) obj;
        if (zzghzVar.zza != this.zza || zzghzVar.zzb != this.zzb || zzghzVar.zzc != this.zzc || zzghzVar.zzd != this.zzd || zzghzVar.zze != this.zze || zzghzVar.zzf != this.zzf) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzghz.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzd), this.zze, this.zzf);
    }

    public final String toString() {
        zzghw zzghwVar = this.zzf;
        String valueOf = String.valueOf(this.zze);
        String valueOf2 = String.valueOf(zzghwVar);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-685124084855685573L, -233659905806547404L, 7966784559439451435L, -4325651652801633739L, 6192097963113554322L, 2728041072999363180L}).toString());
        sb.append(valueOf);
        sb.append(new ObfuscatedString(new long[]{-7494670639179991963L, -77129780686866970L, -9137687032786635621L}).toString());
        sb.append(valueOf2);
        sb.append(new ObfuscatedString(new long[]{-5200599966791581020L, -8017416387582237506L}).toString());
        sb.append(this.zzc);
        sb.append(new ObfuscatedString(new long[]{-1913482642388949151L, -1777138491385023818L, 2420835841627705471L}).toString());
        sb.append(this.zzd);
        sb.append(new ObfuscatedString(new long[]{-6550745992122594831L, -2170622710482153523L, -4909785035354294460L}).toString());
        sb.append(this.zza);
        sb.append(new ObfuscatedString(new long[]{-1763011888889670221L, -3910162252085303256L, 928834328819725912L, -2207040649442039916L}).toString());
        sb.append(this.zzb);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1553081604049643569L, -6416461120484814426L, 1682242170305761869L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzggq
    public final boolean zza() {
        return this.zze != zzghx.zzc;
    }

    public final int zzb() {
        return this.zza;
    }

    public final int zzc() {
        return this.zzb;
    }

    public final int zzd() {
        return this.zzc;
    }

    public final int zze() {
        return this.zzd;
    }

    public final zzghw zzf() {
        return this.zzf;
    }

    public final zzghx zzg() {
        return this.zze;
    }
}
