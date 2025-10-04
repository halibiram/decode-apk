package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzdab {
    private final zzflm zza;
    private final zzcei zzb;
    private final ApplicationInfo zzc;
    private final String zzd;
    private final List zze;
    private final PackageInfo zzf;
    private final zzhgx zzg;
    private final String zzh;
    private final zzext zzi;
    private final com.google.android.gms.ads.internal.util.zzg zzj;
    private final zzfhh zzk;
    private final zzdgg zzl;

    public zzdab(zzflm zzflmVar, zzcei zzceiVar, ApplicationInfo applicationInfo, String str, List list, @Nullable PackageInfo packageInfo, zzhgx zzhgxVar, com.google.android.gms.ads.internal.util.zzg zzgVar, String str2, zzext zzextVar, zzfhh zzfhhVar, zzdgg zzdggVar) {
        this.zza = zzflmVar;
        this.zzb = zzceiVar;
        this.zzc = applicationInfo;
        this.zzd = str;
        this.zze = list;
        this.zzf = packageInfo;
        this.zzg = zzhgxVar;
        this.zzh = str2;
        this.zzi = zzextVar;
        this.zzj = zzgVar;
        this.zzk = zzfhhVar;
        this.zzl = zzdggVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ zzbze zza(ListenableFuture listenableFuture) {
        boolean z;
        Bundle bundle = (Bundle) listenableFuture.get();
        String str = (String) ((ListenableFuture) this.zzg.zzb()).get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhh)).booleanValue() && this.zzj.zzQ()) {
            z = true;
        } else {
            z = false;
        }
        String str2 = this.zzh;
        PackageInfo packageInfo = this.zzf;
        List list = this.zze;
        String str3 = this.zzd;
        return new zzbze(bundle, this.zzb, this.zzc, str3, list, packageInfo, str, str2, null, null, z, this.zzk.zzb());
    }

    public final ListenableFuture zzb() {
        this.zzl.zza();
        return zzfkw.zzc(this.zzi.zza(new Bundle()), zzflg.zza, this.zza).zza();
    }

    public final ListenableFuture zzc() {
        final ListenableFuture zzb = zzb();
        return this.zza.zza(zzflg.zzb, zzb, (ListenableFuture) this.zzg.zzb()).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdaa
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzdab.this.zza(zzb);
            }
        }).zza();
    }
}
