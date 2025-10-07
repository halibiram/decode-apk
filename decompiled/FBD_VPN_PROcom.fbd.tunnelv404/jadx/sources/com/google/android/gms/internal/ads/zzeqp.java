package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeqp {
    private final zzequ zza;
    private final String zzb;

    @Nullable
    private com.google.android.gms.ads.internal.client.zzdn zzc;

    public zzeqp(zzequ zzequVar, String str) {
        this.zza = zzequVar;
        this.zzb = str;
    }

    @Nullable
    public final synchronized String zza() {
        String str;
        str = null;
        try {
            com.google.android.gms.ads.internal.client.zzdn zzdnVar = this.zzc;
            if (zzdnVar != null) {
                str = zzdnVar.zzg();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-1853196558727990038L, 4025753566963733596L, -3550522105852413048L, -5225317202312150366L, -6855349788096262300L, -3065089912622946299L}).toString(), e);
            return null;
        }
        return str;
    }

    @Nullable
    public final synchronized String zzb() {
        String str;
        str = null;
        try {
            com.google.android.gms.ads.internal.client.zzdn zzdnVar = this.zzc;
            if (zzdnVar != null) {
                str = zzdnVar.zzg();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-8759118755222570545L, -9084515707564620941L, -7328164700189577721L, -418984016343417296L, 4033438015036054414L, -5165366517530728855L}).toString(), e);
            return null;
        }
        return str;
    }

    public final synchronized void zzd(com.google.android.gms.ads.internal.client.zzl zzlVar, int i) {
        this.zzc = null;
        zzeqv zzeqvVar = new zzeqv(i);
        zzeqo zzeqoVar = new zzeqo(this);
        this.zza.zzb(zzlVar, this.zzb, zzeqvVar, zzeqoVar);
    }

    public final synchronized boolean zze() {
        return this.zza.zza();
    }
}
