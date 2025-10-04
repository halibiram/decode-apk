package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzesy implements zzexq {
    private static final Object zzb = new Object();
    final Context zza;
    private final String zzc;
    private final String zzd;
    private final zzcyb zze;
    private final zzfip zzf;
    private final zzfhh zzg;
    private final com.google.android.gms.ads.internal.util.zzg zzh = com.google.android.gms.ads.internal.zzt.zzo().zzi();
    private final zzdwa zzi;
    private final zzcyo zzj;

    public zzesy(Context context, String str, String str2, zzcyb zzcybVar, zzfip zzfipVar, zzfhh zzfhhVar, zzdwa zzdwaVar, zzcyo zzcyoVar) {
        this.zza = context;
        this.zzc = str;
        this.zzd = str2;
        this.zze = zzcybVar;
        this.zzf = zzfipVar;
        this.zzg = zzfhhVar;
        this.zzi = zzdwaVar;
        this.zzj = zzcyoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        final Bundle bundle = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhy)).booleanValue()) {
            zzdwa zzdwaVar = this.zzi;
            zzdwaVar.zza().put(new ObfuscatedString(new long[]{-502650610203117398L, 2622891352118727258L}).toString(), this.zzc);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfA)).booleanValue()) {
            this.zze.zzk(this.zzg.zzd);
            bundle.putAll(this.zzf.zzb());
        }
        return zzgen.zzh(new zzexp() { // from class: com.google.android.gms.internal.ads.zzesx
            @Override // com.google.android.gms.internal.ads.zzexp
            public final void zzj(Object obj) {
                zzesy.this.zzc(bundle, (Bundle) obj);
            }
        });
    }

    public final /* synthetic */ void zzc(Bundle bundle, Bundle bundle2) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfA)).booleanValue()) {
            bundle2.putBundle(new ObfuscatedString(new long[]{-5741445354918559963L, 2256461316592642107L, -4238268575993410176L}).toString(), bundle);
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfz)).booleanValue()) {
                synchronized (zzb) {
                    this.zze.zzk(this.zzg.zzd);
                    bundle2.putBundle(new ObfuscatedString(new long[]{-4551836518611653892L, -4039084257425828896L, -3306766690311870340L}).toString(), this.zzf.zzb());
                }
            } else {
                this.zze.zzk(this.zzg.zzd);
                bundle2.putBundle(new ObfuscatedString(new long[]{2226701589928223777L, 8714497844861855289L, -8538421011884611140L}).toString(), this.zzf.zzb());
            }
        }
        bundle2.putString(new ObfuscatedString(new long[]{3585769526769238982L, 8180028756491734821L}).toString(), this.zzc);
        if (!this.zzh.zzQ()) {
            bundle2.putString(new ObfuscatedString(new long[]{-725506368958135546L, 372608010074972147L, 7063394089404857588L}).toString(), this.zzd);
        }
        bundle2.putBoolean(new ObfuscatedString(new long[]{9109062888123015991L, -5025848630676560961L, -7389916275578090277L, 5504934150048221849L}).toString(), !this.zzh.zzQ());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfB)).booleanValue()) {
            try {
                String obfuscatedString = new ObfuscatedString(new long[]{1327962639812434534L, -7107685987649367896L}).toString();
                com.google.android.gms.ads.internal.zzt.zzp();
                bundle2.putString(obfuscatedString, com.google.android.gms.ads.internal.util.zzt.zzp(this.zza));
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-8027708532013673177L, -7646774749579940101L, 5634749585229183940L, -26980309013437920L}).toString());
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfC)).booleanValue() && this.zzg.zzf != null) {
            Bundle bundle3 = new Bundle();
            bundle3.putLong(new ObfuscatedString(new long[]{7260524358412647138L, 4484226955933962978L}).toString(), this.zzj.zzb(this.zzg.zzf));
            bundle3.putInt(new ObfuscatedString(new long[]{-373192579341090314L, -678483171100903196L}).toString(), this.zzj.zza(this.zzg.zzf));
            bundle2.putBundle(new ObfuscatedString(new long[]{-3649826103409548585L, -8661087081812275253L, 1338918129012633028L, 6225725819172275004L}).toString(), bundle3);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjy)).booleanValue() && com.google.android.gms.ads.internal.zzt.zzo().zza() > 0) {
            bundle2.putInt(new ObfuscatedString(new long[]{7372222287308608112L, -4026160132498968955L}).toString(), com.google.android.gms.ads.internal.zzt.zzo().zza());
        }
    }
}
