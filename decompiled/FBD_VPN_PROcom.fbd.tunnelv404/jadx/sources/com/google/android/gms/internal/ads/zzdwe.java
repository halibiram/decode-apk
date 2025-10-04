package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzdwe {
    final /* synthetic */ zzdwf zza;
    private final Map zzb = new ConcurrentHashMap();

    @VisibleForTesting
    public zzdwe(zzdwf zzdwfVar) {
        this.zza = zzdwfVar;
    }

    public static /* bridge */ /* synthetic */ zzdwe zza(zzdwe zzdweVar) {
        Map map;
        zzdwf zzdwfVar = zzdweVar.zza;
        Map map2 = zzdweVar.zzb;
        map = zzdwfVar.zzc;
        map2.putAll(map);
        return zzdweVar;
    }

    public final zzdwe zzb(String str, String str2) {
        this.zzb.put(str, str2);
        return this;
    }

    public final zzdwe zzc(String str, @Nullable String str2) {
        if (!TextUtils.isEmpty(str2)) {
            this.zzb.put(str, str2);
        }
        return this;
    }

    public final zzdwe zzd(zzfgm zzfgmVar) {
        this.zzb.put(new ObfuscatedString(new long[]{9141267105944141141L, 5108957027351544229L}).toString(), zzfgmVar.zzx);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzha)).booleanValue()) {
            zzc(new ObfuscatedString(new long[]{-3546175840865584443L, -4976306515840619656L}).toString(), zzfgmVar.zzao);
        }
        return this;
    }

    public final zzdwe zze(zzfgp zzfgpVar) {
        this.zzb.put(new ObfuscatedString(new long[]{5584699220646985899L, 1328386334334979728L}).toString(), zzfgpVar.zzb);
        return this;
    }

    public final String zzf() {
        zzdwk zzdwkVar;
        zzdwkVar = this.zza.zza;
        return zzdwkVar.zzb(this.zzb);
    }

    public final void zzg() {
        Executor executor;
        executor = this.zza.zzb;
        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdwc
            @Override // java.lang.Runnable
            public final void run() {
                zzdwe.this.zzi();
            }
        });
    }

    public final void zzh() {
        Executor executor;
        executor = this.zza.zzb;
        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdwd
            @Override // java.lang.Runnable
            public final void run() {
                zzdwe.this.zzj();
            }
        });
    }

    public final /* synthetic */ void zzi() {
        zzdwk zzdwkVar;
        zzdwkVar = this.zza.zza;
        zzdwkVar.zzf(this.zzb);
    }

    public final /* synthetic */ void zzj() {
        zzdwk zzdwkVar;
        zzdwkVar = this.zza.zza;
        zzdwkVar.zze(this.zzb);
    }
}
