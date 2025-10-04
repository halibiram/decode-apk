package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzgnm implements zzggd {
    final String zza;
    final Class zzb;
    final zzgus zzc;
    final zzhbl zzd;

    public zzgnm(String str, Class cls, zzgus zzgusVar, zzhbl zzhblVar) {
        this.zzd = zzhblVar;
        this.zza = str;
        this.zzb = cls;
        this.zzc = zzgusVar;
    }

    public static zzggd zzd(String str, Class cls, zzgus zzgusVar, zzhbl zzhblVar) {
        return new zzgnm(str, cls, zzgusVar, zzhblVar);
    }

    @Override // com.google.android.gms.internal.ads.zzggd
    public final zzgut zza(zzgyl zzgylVar) {
        zzgux zza = zzguy.zza();
        zza.zzb(this.zza);
        zza.zzc(zzgylVar);
        zza.zza(zzgvz.zzd);
        zzgpc zze = zzgoe.zzd().zze(zzgnu.zzb().zza(zzgoe.zzd().zzc(zzgoy.zza((zzguy) zza.zzal())), null), zzgox.class, zzggb.zza());
        zzguq zza2 = zzgut.zza();
        zzgox zzgoxVar = (zzgox) zze;
        zza2.zzb(zzgoxVar.zzg());
        zza2.zzc(zzgoxVar.zze());
        zza2.zza(zzgoxVar.zzb());
        return (zzgut) zza2.zzal();
    }

    @Override // com.google.android.gms.internal.ads.zzggd
    public final Class zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzggd
    public final Object zzc(zzgyl zzgylVar) {
        return zzgob.zza().zzc(zzgoe.zzd().zza(zzgox.zza(this.zza, zzgylVar, this.zzc, zzgvz.zzd, null), zzggb.zza()), this.zzb);
    }
}
