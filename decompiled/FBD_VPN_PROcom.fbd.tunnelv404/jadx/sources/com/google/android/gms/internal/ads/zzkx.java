package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzkx {
    public zzly zza;
    public int zzb;
    public boolean zzc;
    public int zzd;
    public boolean zze;
    public int zzf;
    private boolean zzg;

    public zzkx(zzly zzlyVar) {
        this.zza = zzlyVar;
    }

    public final void zza(int i) {
        this.zzg = 1 == ((this.zzg ? 1 : 0) | i);
        this.zzb += i;
    }

    public final void zzb(int i) {
        this.zzg = true;
        this.zze = true;
        this.zzf = i;
    }

    public final void zzc(zzly zzlyVar) {
        this.zzg |= this.zza != zzlyVar;
        this.zza = zzlyVar;
    }

    public final void zzd(int i) {
        boolean z = true;
        if (this.zzc && this.zzd != 5) {
            if (i != 5) {
                z = false;
            }
            zzek.zzd(z);
        } else {
            this.zzg = true;
            this.zzc = true;
            this.zzd = i;
        }
    }
}
