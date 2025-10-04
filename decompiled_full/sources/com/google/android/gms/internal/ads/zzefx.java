package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzefx implements zzgej {
    final /* synthetic */ zzfkp zza;

    public zzefx(zzefy zzefyVar, zzfkp zzfkpVar) {
        this.zza = zzfkpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        zzcec.zzg(new ObfuscatedString(new long[]{-6064032116965456156L, -2030161906182861428L, -7833032721331793616L, -6845132059803529926L, 8918154302463060572L, 1935641766989663432L}).toString().concat(String.valueOf(th.getMessage())));
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            this.zza.zza((SQLiteDatabase) obj);
        } catch (Exception e) {
            zzcec.zzg(new ObfuscatedString(new long[]{-764980802501043598L, -5896853105306372119L, 3675244221541514551L, 2670995176581813700L, -5458202453678494113L, -840960834429312748L, 3172862269076115868L, 4788702294242017170L}).toString().concat(String.valueOf(e.getMessage())));
        }
    }
}
