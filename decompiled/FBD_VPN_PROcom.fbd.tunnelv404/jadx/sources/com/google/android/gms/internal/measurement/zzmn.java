package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final class zzmn extends zzml {
    @Override // com.google.android.gms.internal.measurement.zzml
    public final /* synthetic */ int zza(Object obj) {
        return ((zzmm) obj).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    public final /* synthetic */ int zzb(Object obj) {
        return ((zzmm) obj).zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    public final /* synthetic */ Object zzc(Object obj) {
        return ((zzkc) obj).zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    public final /* bridge */ /* synthetic */ Object zzd(Object obj, Object obj2) {
        zzmm zzmmVar = (zzmm) obj2;
        if (zzmmVar.equals(zzmm.zzc())) {
            return obj;
        }
        return zzmm.zzd((zzmm) obj, zzmmVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    public final /* synthetic */ Object zze() {
        return zzmm.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    public final /* bridge */ /* synthetic */ void zzf(Object obj, int i, long j) {
        ((zzmm) obj).zzh(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    public final void zzg(Object obj) {
        ((zzkc) obj).zzc.zzf();
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    public final /* synthetic */ void zzh(Object obj, Object obj2) {
        ((zzkc) obj).zzc = (zzmm) obj2;
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    public final /* synthetic */ void zzi(Object obj, zznd zzndVar) {
        ((zzmm) obj).zzi(zzndVar);
    }
}
