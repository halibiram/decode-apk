package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzehg implements zzgej {
    final /* synthetic */ zzfkp zza;

    public zzehg(zzehh zzehhVar, zzfkp zzfkpVar) {
        this.zza = zzfkpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        zzcec.zzg(new ObfuscatedString(new long[]{8970153215910403864L, 2310859555958484444L, -7141361593995054030L, 6137571385899474024L, 2899286601793971110L, 5394322290021387928L, 4819532685084469368L}).toString().concat(String.valueOf(th.getMessage())));
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            this.zza.zza((SQLiteDatabase) obj);
        } catch (Exception e) {
            zzcec.zzg(new ObfuscatedString(new long[]{4002526884242173833L, -6859881803381381118L, -1692891819306986792L, 707395067778571161L, 7958919046668903029L, 6881303338515619980L, -2747935843326090153L, 6903495721279909558L, -9061961173652568900L}).toString().concat(String.valueOf(e.getMessage())));
        }
    }
}
