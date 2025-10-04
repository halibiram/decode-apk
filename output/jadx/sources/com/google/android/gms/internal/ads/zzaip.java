package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzaip {
    public final int zza;
    public int zzb;
    public int zzc;
    public long zzd;
    private final boolean zze;
    private final zzfp zzf;
    private final zzfp zzg;
    private int zzh;
    private int zzi;

    public zzaip(zzfp zzfpVar, zzfp zzfpVar2, boolean z) {
        this.zzg = zzfpVar;
        this.zzf = zzfpVar2;
        this.zze = z;
        zzfpVar2.zzK(12);
        this.zza = zzfpVar2.zzp();
        zzfpVar.zzK(12);
        this.zzi = zzfpVar.zzp();
        zzacy.zzb(zzfpVar.zzg() == 1, new ObfuscatedString(new long[]{4141218686100227670L, -7701457400198154143L, -2767486231641360081L, -6051984659251029942L}).toString());
        this.zzb = -1;
    }

    public final boolean zza() {
        long zzu;
        int i = this.zzb + 1;
        this.zzb = i;
        if (i == this.zza) {
            return false;
        }
        if (this.zze) {
            zzu = this.zzf.zzv();
        } else {
            zzu = this.zzf.zzu();
        }
        this.zzd = zzu;
        if (this.zzb == this.zzh) {
            this.zzc = this.zzg.zzp();
            this.zzg.zzL(4);
            int i2 = -1;
            int i3 = this.zzi - 1;
            this.zzi = i3;
            if (i3 > 0) {
                i2 = (-1) + this.zzg.zzp();
            }
            this.zzh = i2;
        }
        return true;
    }
}
