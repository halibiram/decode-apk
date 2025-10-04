package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdyg implements zzgej {
    final /* synthetic */ zzdyi zza;

    public zzdyg(zzdyi zzdyiVar) {
        this.zza = zzdyiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        long j;
        zzceu zzceuVar;
        synchronized (this) {
            this.zza.zzc = true;
            zzdyi zzdyiVar = this.zza;
            String obfuscatedString = new ObfuscatedString(new long[]{-6126649987740904904L, 5639421108481683279L, 1565689900063424933L, 4476979954084339513L, 5068322736247570712L, -8033615496677317429L}).toString();
            String obfuscatedString2 = new ObfuscatedString(new long[]{4277073649894343010L, 9089955922629203883L, 1130629884374652583L}).toString();
            long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
            j = this.zza.zzd;
            zzdyiVar.zzv(obfuscatedString, false, obfuscatedString2, (int) (elapsedRealtime - j));
            zzceuVar = this.zza.zze;
            zzceuVar.zzd(new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(@Nullable Object obj) {
        long j;
        Executor executor;
        final String str = (String) obj;
        synchronized (this) {
            this.zza.zzc = true;
            zzdyi zzdyiVar = this.zza;
            String obfuscatedString = new ObfuscatedString(new long[]{3122162821939002093L, 8673423268381228255L, -3844692218781176484L, 950565031102895880L, -2586045719746825364L, -7543172382553894308L}).toString();
            String obfuscatedString2 = new ObfuscatedString(new long[]{-6729151269229464338L}).toString();
            long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
            j = this.zza.zzd;
            zzdyiVar.zzv(obfuscatedString, true, obfuscatedString2, (int) (elapsedRealtime - j));
            executor = this.zza.zzi;
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyf
                @Override // java.lang.Runnable
                public final void run() {
                    zzdyi.zzj(zzdyg.this.zza, str);
                }
            });
        }
    }
}
