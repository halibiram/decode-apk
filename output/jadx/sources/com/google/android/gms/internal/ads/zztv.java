package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zztv implements zzwh {
    public final zzwh zza;
    final /* synthetic */ zztw zzb;
    private boolean zzc;

    public zztv(zztw zztwVar, zzwh zzwhVar) {
        this.zzb = zztwVar;
        this.zza = zzwhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwh
    public final int zza(zzlb zzlbVar, zzih zzihVar, int i) {
        zztw zztwVar = this.zzb;
        if (zztwVar.zzq()) {
            return -3;
        }
        if (this.zzc) {
            zzihVar.zzc(4);
            return -4;
        }
        long zzb = zztwVar.zzb();
        int zza = this.zza.zza(zzlbVar, zzihVar, i);
        if (zza == -5) {
            zzam zzamVar = zzlbVar.zza;
            zzamVar.getClass();
            int i2 = zzamVar.zzC;
            int i3 = 0;
            if (i2 == 0) {
                if (zzamVar.zzD != 0) {
                    i2 = 0;
                }
                return -5;
            }
            if (this.zzb.zzb == Long.MIN_VALUE) {
                i3 = zzamVar.zzD;
            }
            zzak zzb2 = zzamVar.zzb();
            zzb2.zzF(i2);
            zzb2.zzG(i3);
            zzlbVar.zza = zzb2.zzac();
            return -5;
        }
        long j = this.zzb.zzb;
        if (j != Long.MIN_VALUE && ((zza == -4 && zzihVar.zze >= j) || (zza == -3 && zzb == Long.MIN_VALUE && !zzihVar.zzd))) {
            zzihVar.zzb();
            zzihVar.zzc(4);
            this.zzc = true;
            return -4;
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzwh
    public final int zzb(long j) {
        if (this.zzb.zzq()) {
            return -3;
        }
        return this.zza.zzb(j);
    }

    public final void zzc() {
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzwh
    public final void zzd() {
        this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzwh
    public final boolean zze() {
        if (!this.zzb.zzq() && this.zza.zze()) {
            return true;
        }
        return false;
    }
}
