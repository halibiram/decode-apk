package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class zzdwn {
    protected final Context zzc;
    protected final Executor zzd;
    protected final zzceh zze;
    private final zzfmg zzg;
    protected final String zza = (String) zzbhu.zzb.zze();
    protected final Map zzb = new HashMap();
    private final AtomicBoolean zzj = new AtomicBoolean();
    private final AtomicReference zzk = new AtomicReference(new Bundle());
    protected final boolean zzf = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbX)).booleanValue();
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzca)).booleanValue();
    private final boolean zzi = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhb)).booleanValue();

    public zzdwn(Executor executor, zzceh zzcehVar, zzfmg zzfmgVar, Context context) {
        this.zzd = executor;
        this.zze = zzcehVar;
        this.zzg = zzfmgVar;
        this.zzc = context;
    }

    private final void zza(Map map, boolean z) {
        if (!map.isEmpty()) {
            if (map.isEmpty()) {
                zzcec.zze(new ObfuscatedString(new long[]{-3194545014079801497L, -2167348710880965804L, 1549785672982754520L, 6775431441733587023L}).toString());
            } else {
                if (!this.zzj.getAndSet(true)) {
                    final String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjZ);
                    this.zzk.set(com.google.android.gms.ads.internal.util.zzad.zza(this.zzc, str, new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.internal.ads.zzdwm
                        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str2) {
                            zzdwn.this.zzd(str, sharedPreferences, str2);
                        }
                    }));
                }
                Bundle bundle = (Bundle) this.zzk.get();
                for (String str2 : bundle.keySet()) {
                    map.put(str2, String.valueOf(bundle.get(str2)));
                }
            }
            final String zza = this.zzg.zza(map);
            com.google.android.gms.ads.internal.util.zze.zza(zza);
            boolean parseBoolean = Boolean.parseBoolean((String) map.get(new ObfuscatedString(new long[]{-5444162300351816267L, 2497233025251915015L}).toString()));
            if (this.zzf) {
                if (!z || this.zzh) {
                    if (!parseBoolean || this.zzi) {
                        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdwl
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzdwn.this.zze.zza(zza);
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        zzcec.zze(new ObfuscatedString(new long[]{-4469023156161866027L, -4559348364383491656L, 33422283129840717L}).toString());
    }

    public final String zzb(Map map) {
        return this.zzg.zza(map);
    }

    public final ConcurrentHashMap zzc() {
        return new ConcurrentHashMap(this.zzb);
    }

    public final /* synthetic */ void zzd(String str, SharedPreferences sharedPreferences, String str2) {
        this.zzk.set(com.google.android.gms.ads.internal.util.zzad.zzb(this.zzc, str));
    }

    public final void zze(Map map) {
        zza(map, true);
    }

    public final void zzf(Map map) {
        zza(map, false);
    }
}
