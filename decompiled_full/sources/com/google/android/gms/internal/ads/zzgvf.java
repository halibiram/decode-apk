package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgvf extends zzgzu implements zzhbf {
    private static final zzgvf zzb;
    private int zzd;
    private zzgut zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zzgvf zzgvfVar = new zzgvf();
        zzb = zzgvfVar;
        zzgzu.zzaU(zzgvf.class, zzgvfVar);
    }

    private zzgvf() {
    }

    public static zzgve zzd() {
        return (zzgve) zzb.zzaA();
    }

    public static /* synthetic */ void zzg(zzgvf zzgvfVar, zzgut zzgutVar) {
        zzgutVar.getClass();
        zzgvfVar.zze = zzgutVar;
        zzgvfVar.zzd |= 1;
    }

    public final int zza() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzgvc zzgvcVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzgve(zzgvcVar);
                }
                return new zzgvf();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003\u000b\u0004\f", new Object[]{new ObfuscatedString(new long[]{9088163536562133942L, -8807443257456233813L}).toString(), new ObfuscatedString(new long[]{-6236814717252051774L, 7984360828536878934L}).toString(), new ObfuscatedString(new long[]{-8111296702187722284L, -2118619428838179154L}).toString(), new ObfuscatedString(new long[]{3643179281375713557L, 4529567381235791707L}).toString(), new ObfuscatedString(new long[]{5280138723359547183L, 4656086913135044721L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgut zzc() {
        zzgut zzgutVar = this.zze;
        if (zzgutVar == null) {
            return zzgut.zze();
        }
        return zzgutVar;
    }

    public final zzgvz zzf() {
        zzgvz zzb2 = zzgvz.zzb(this.zzh);
        if (zzb2 == null) {
            return zzgvz.zzf;
        }
        return zzb2;
    }

    public final boolean zzj() {
        return (this.zzd & 1) != 0;
    }

    public final int zzk() {
        int i = this.zzf;
        int i2 = i != 0 ? i != 1 ? i != 2 ? i != 3 ? 0 : 5 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}
