package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzhcr extends zzhcp {
    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* synthetic */ int zza(Object obj) {
        return ((zzhcq) obj).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* synthetic */ int zzb(Object obj) {
        return ((zzhcq) obj).zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* bridge */ /* synthetic */ Object zzc(Object obj) {
        zzgzu zzgzuVar = (zzgzu) obj;
        zzhcq zzhcqVar = zzgzuVar.zzc;
        if (zzhcqVar == zzhcq.zzc()) {
            zzhcq zzf = zzhcq.zzf();
            zzgzuVar.zzc = zzf;
            return zzf;
        }
        return zzhcqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* synthetic */ Object zzd(Object obj) {
        return ((zzgzu) obj).zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* bridge */ /* synthetic */ Object zze(Object obj, Object obj2) {
        if (!zzhcq.zzc().equals(obj2)) {
            if (zzhcq.zzc().equals(obj)) {
                return zzhcq.zze((zzhcq) obj, (zzhcq) obj2);
            }
            ((zzhcq) obj).zzd((zzhcq) obj2);
            return obj;
        }
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* synthetic */ Object zzf() {
        return zzhcq.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* synthetic */ Object zzg(Object obj) {
        ((zzhcq) obj).zzh();
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* bridge */ /* synthetic */ void zzh(Object obj, int i, int i2) {
        ((zzhcq) obj).zzj((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* bridge */ /* synthetic */ void zzi(Object obj, int i, long j) {
        ((zzhcq) obj).zzj((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* bridge */ /* synthetic */ void zzj(Object obj, int i, Object obj2) {
        ((zzhcq) obj).zzj((i << 3) | 3, obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* bridge */ /* synthetic */ void zzk(Object obj, int i, zzgyl zzgylVar) {
        ((zzhcq) obj).zzj((i << 3) | 2, zzgylVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* bridge */ /* synthetic */ void zzl(Object obj, int i, long j) {
        ((zzhcq) obj).zzj(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final void zzm(Object obj) {
        ((zzgzu) obj).zzc.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* synthetic */ void zzn(Object obj, Object obj2) {
        ((zzgzu) obj).zzc = (zzhcq) obj2;
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* synthetic */ void zzo(Object obj, Object obj2) {
        ((zzgzu) obj).zzc = (zzhcq) obj2;
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final boolean zzq(zzhbq zzhbqVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhcp
    public final /* synthetic */ void zzr(Object obj, zzgzb zzgzbVar) {
        ((zzhcq) obj).zzk(zzgzbVar);
    }
}
