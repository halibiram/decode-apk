package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzeuj implements zzexq {
    private final Context zza;
    private final zzgey zzb;

    public zzeuj(Context context, zzgey zzgeyVar) {
        this.zza = context;
        this.zzb = zzgeyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 19;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeui
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String zzj;
                String zzk;
                String str;
                com.google.android.gms.ads.internal.zzt.zzp();
                zzazp zzg = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzg();
                Bundle bundle = null;
                if (zzg != null && (!com.google.android.gms.ads.internal.zzt.zzo().zzi().zzN() || !com.google.android.gms.ads.internal.zzt.zzo().zzi().zzO())) {
                    if (zzg.zzh()) {
                        zzg.zzg();
                    }
                    zzazf zza = zzg.zza();
                    if (zza != null) {
                        zzj = zza.zzd();
                        str = zza.zze();
                        zzk = zza.zzf();
                        if (zzj != null) {
                            com.google.android.gms.ads.internal.zzt.zzo().zzi().zzw(zzj);
                        }
                        if (zzk != null) {
                            com.google.android.gms.ads.internal.zzt.zzo().zzi().zzy(zzk);
                        }
                    } else {
                        zzj = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzj();
                        zzk = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzk();
                        str = null;
                    }
                    Bundle bundle2 = new Bundle(1);
                    if (!com.google.android.gms.ads.internal.zzt.zzo().zzi().zzO()) {
                        if (zzk != null && !TextUtils.isEmpty(zzk)) {
                            bundle2.putString(new ObfuscatedString(new long[]{-6180400949339260049L, -6589364526507711049L, -6308722502911723849L}).toString(), zzk);
                        } else {
                            bundle2.putString(new ObfuscatedString(new long[]{7546264508488187102L, 7304419732641445337L, 6754851441462962206L}).toString(), new ObfuscatedString(new long[]{-6976093858346544860L, 2687473779593424347L}).toString());
                        }
                    }
                    if (zzj != null && !com.google.android.gms.ads.internal.zzt.zzo().zzi().zzN()) {
                        bundle2.putString(new ObfuscatedString(new long[]{-3310520481527654352L, -4464186837462556866L, 7173678552362328005L}).toString(), zzj);
                        if (!zzj.equals(str)) {
                            bundle2.putString(new ObfuscatedString(new long[]{-2781459846244326420L, 7181681288804733535L}).toString(), str);
                        }
                    }
                    if (!bundle2.isEmpty()) {
                        bundle = bundle2;
                    }
                }
                return new zzeuk(bundle);
            }
        });
    }
}
