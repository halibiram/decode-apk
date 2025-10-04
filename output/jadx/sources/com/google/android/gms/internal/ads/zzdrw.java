package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzdrw implements Callable {
    private final com.google.android.gms.ads.internal.zza zza;
    private final zzcjx zzb;
    private final Context zzc;
    private final zzdwf zzd;
    private final zzflw zze;
    private final zzehh zzf;
    private final Executor zzg;
    private final zzavi zzh;
    private final zzcei zzi;
    private final zzfny zzj;
    private final zzehs zzk;
    private final zzfhl zzl;

    public zzdrw(Context context, Executor executor, zzavi zzaviVar, zzcei zzceiVar, com.google.android.gms.ads.internal.zza zzaVar, zzcjx zzcjxVar, zzehh zzehhVar, zzfny zzfnyVar, zzdwf zzdwfVar, zzflw zzflwVar, zzehs zzehsVar, zzfhl zzfhlVar) {
        this.zzc = context;
        this.zzg = executor;
        this.zzh = zzaviVar;
        this.zzi = zzceiVar;
        this.zza = zzaVar;
        this.zzb = zzcjxVar;
        this.zzf = zzehhVar;
        this.zzj = zzfnyVar;
        this.zzd = zzdwfVar;
        this.zze = zzflwVar;
        this.zzk = zzehsVar;
        this.zzl = zzfhlVar;
    }

    public static /* bridge */ /* synthetic */ Context zza(zzdrw zzdrwVar) {
        return zzdrwVar.zzc;
    }

    public static /* bridge */ /* synthetic */ zzavi zzb(zzdrw zzdrwVar) {
        return zzdrwVar.zzh;
    }

    public static /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.zza zzc(zzdrw zzdrwVar) {
        return zzdrwVar.zza;
    }

    public static /* bridge */ /* synthetic */ zzcei zzd(zzdrw zzdrwVar) {
        return zzdrwVar.zzi;
    }

    public static /* bridge */ /* synthetic */ zzcjx zze(zzdrw zzdrwVar) {
        return zzdrwVar.zzb;
    }

    public static /* bridge */ /* synthetic */ zzdwf zzf(zzdrw zzdrwVar) {
        return zzdrwVar.zzd;
    }

    public static /* bridge */ /* synthetic */ zzehh zzg(zzdrw zzdrwVar) {
        return zzdrwVar.zzf;
    }

    public static /* bridge */ /* synthetic */ zzehs zzh(zzdrw zzdrwVar) {
        return zzdrwVar.zzk;
    }

    public static /* bridge */ /* synthetic */ zzfhl zzi(zzdrw zzdrwVar) {
        return zzdrwVar.zzl;
    }

    public static /* bridge */ /* synthetic */ zzflw zzj(zzdrw zzdrwVar) {
        return zzdrwVar.zze;
    }

    public static /* bridge */ /* synthetic */ zzfny zzk(zzdrw zzdrwVar) {
        return zzdrwVar.zzj;
    }

    public static /* bridge */ /* synthetic */ Executor zzl(zzdrw zzdrwVar) {
        return zzdrwVar.zzg;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        zzdrz zzdrzVar = new zzdrz(this);
        zzdrzVar.zzh();
        return zzdrzVar;
    }
}
