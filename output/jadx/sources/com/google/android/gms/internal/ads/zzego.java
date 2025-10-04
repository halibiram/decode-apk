package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes2.dex */
public final class zzego implements zzfln {
    private final zzegc zza;
    private final zzegg zzb;

    public zzego(zzegc zzegcVar, zzegg zzeggVar) {
        this.zza = zzegcVar;
        this.zzb = zzeggVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzbL(zzflg zzflgVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzbM(zzflg zzflgVar, String str, Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgj)).booleanValue() && zzflg.zzd == zzflgVar && this.zza.zzc() != 0) {
            this.zza.zzf(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zza.zzc());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzbN(zzflg zzflgVar, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgj)).booleanValue()) {
            if (zzflg.zzd == zzflgVar) {
                this.zza.zzg(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime());
                return;
            }
            if (zzflg.zzA != zzflgVar && zzflg.zzc != zzflgVar) {
                return;
            }
            this.zza.zzh(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime());
            final zzegg zzeggVar = this.zzb;
            final long zzd = this.zza.zzd();
            zzeggVar.zza.zza(new zzfkp() { // from class: com.google.android.gms.internal.ads.zzegf
                @Override // com.google.android.gms.internal.ads.zzfkp
                public final Object zza(Object obj) {
                    SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                    if (!zzegg.this.zzf()) {
                        long j = zzd;
                        zzbdx zzg = zzbdy.zzg();
                        zzg.zzh(j);
                        byte[] zzax = ((zzbdy) zzg.zzal()).zzax();
                        zzegn.zzg(sQLiteDatabase, false, false);
                        zzegn.zzd(sQLiteDatabase, j, zzax);
                        return null;
                    }
                    return null;
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzd(zzflg zzflgVar, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgj)).booleanValue() && zzflg.zzd == zzflgVar && this.zza.zzc() != 0) {
            this.zza.zzf(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zza.zzc());
        }
    }
}
