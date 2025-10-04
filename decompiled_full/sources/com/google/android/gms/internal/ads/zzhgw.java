package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzhgw {
    public static final zzhgw zza = new zzhgw(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final zzhgw zzb = new zzhgw(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final zzhgw zzc = new zzhgw(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final zzhgw zzd = new zzhgw(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public final double zze;
    public final double zzf;
    public final double zzg;
    public final double zzh;
    public final double zzi;
    public final double zzj;
    public final double zzk;
    public final double zzl;
    public final double zzm;

    public zzhgw(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.zze = d5;
        this.zzf = d6;
        this.zzg = d7;
        this.zzh = d;
        this.zzi = d2;
        this.zzj = d3;
        this.zzk = d4;
        this.zzl = d8;
        this.zzm = d9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzhgw.class != obj.getClass()) {
            return false;
        }
        zzhgw zzhgwVar = (zzhgw) obj;
        if (Double.compare(zzhgwVar.zzh, this.zzh) == 0 && Double.compare(zzhgwVar.zzi, this.zzi) == 0 && Double.compare(zzhgwVar.zzj, this.zzj) == 0 && Double.compare(zzhgwVar.zzk, this.zzk) == 0 && Double.compare(zzhgwVar.zzl, this.zzl) == 0 && Double.compare(zzhgwVar.zzm, this.zzm) == 0 && Double.compare(zzhgwVar.zze, this.zze) == 0 && Double.compare(zzhgwVar.zzf, this.zzf) == 0 && Double.compare(zzhgwVar.zzg, this.zzg) == 0) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.zze);
        long j = doubleToLongBits ^ (doubleToLongBits >>> 32);
        long doubleToLongBits2 = Double.doubleToLongBits(this.zzf);
        long j2 = doubleToLongBits2 ^ (doubleToLongBits2 >>> 32);
        long doubleToLongBits3 = Double.doubleToLongBits(this.zzg);
        long j3 = doubleToLongBits3 ^ (doubleToLongBits3 >>> 32);
        long doubleToLongBits4 = Double.doubleToLongBits(this.zzh);
        long j4 = doubleToLongBits4 ^ (doubleToLongBits4 >>> 32);
        long doubleToLongBits5 = Double.doubleToLongBits(this.zzi);
        long j5 = doubleToLongBits5 ^ (doubleToLongBits5 >>> 32);
        long doubleToLongBits6 = Double.doubleToLongBits(this.zzj);
        long j6 = doubleToLongBits6 ^ (doubleToLongBits6 >>> 32);
        long doubleToLongBits7 = Double.doubleToLongBits(this.zzk);
        long j7 = doubleToLongBits7 ^ (doubleToLongBits7 >>> 32);
        long doubleToLongBits8 = Double.doubleToLongBits(this.zzl);
        long j8 = doubleToLongBits8 ^ (doubleToLongBits8 >>> 32);
        long doubleToLongBits9 = Double.doubleToLongBits(this.zzm);
        return (((((((((((((((((int) j) * 31) + ((int) j2)) * 31) + ((int) j3)) * 31) + ((int) j4)) * 31) + ((int) j5)) * 31) + ((int) j6)) * 31) + ((int) j7)) * 31) + ((int) j8)) * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(zza)) {
            return new ObfuscatedString(new long[]{2775903195804330310L, 1661597881221712714L, 4163822824159752701L}).toString();
        }
        if (equals(zzb)) {
            return new ObfuscatedString(new long[]{5976987231055417995L, -5649298947453253818L, -7310236051074549445L}).toString();
        }
        if (equals(zzc)) {
            return new ObfuscatedString(new long[]{7314963915372175928L, 6512638603806684150L, 6368801788357097444L}).toString();
        }
        if (equals(zzd)) {
            return new ObfuscatedString(new long[]{5554726852686353489L, -8679273420457314262L, 5665057934458449306L}).toString();
        }
        double d = this.zze;
        double d2 = this.zzf;
        double d3 = this.zzg;
        double d4 = this.zzh;
        double d5 = this.zzi;
        double d6 = this.zzj;
        double d7 = this.zzk;
        double d8 = this.zzl;
        double d9 = this.zzm;
        StringBuilder sb = new StringBuilder(260);
        sb.append(new ObfuscatedString(new long[]{8973110387904772218L, -2671905949832495424L, -1972342891490266830L}).toString());
        sb.append(d);
        sb.append(new ObfuscatedString(new long[]{-434096737477144530L, -5750939619538608122L}).toString());
        sb.append(d2);
        sb.append(new ObfuscatedString(new long[]{-1074072441355322089L, -2323260184386165376L}).toString());
        sb.append(d3);
        sb.append(new ObfuscatedString(new long[]{-6805446261362715525L, -4915075168319797515L}).toString());
        sb.append(d4);
        sb.append(new ObfuscatedString(new long[]{-222347105937165246L, -212570546635556274L}).toString());
        sb.append(d5);
        sb.append(new ObfuscatedString(new long[]{6664547232934836821L, -1226281979732860647L}).toString());
        sb.append(d6);
        sb.append(new ObfuscatedString(new long[]{-7754233994897869796L, -7365868782413968862L}).toString());
        sb.append(d7);
        sb.append(new ObfuscatedString(new long[]{-4569794219427721570L, -1322558375115114286L}).toString());
        sb.append(d8);
        sb.append(new ObfuscatedString(new long[]{-4842755136587144561L, -7326015009191649053L}).toString());
        sb.append(d9);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8502335682361529462L, 313422220110563043L}), sb);
    }
}
