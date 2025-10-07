package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzduf {
    private final Map zza = new ConcurrentHashMap();
    private JSONObject zzb;
    private final Executor zzc;
    private boolean zzd;
    private JSONObject zze;

    public zzduf(Executor executor) {
        this.zzc = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzg, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final synchronized void zzf() {
        JSONObject zzf;
        JSONObject jSONObject;
        Map map;
        try {
            this.zzd = true;
            zzcdf zzh = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh();
            if (zzh != null && (zzf = zzh.zzf()) != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdU)).booleanValue()) {
                    jSONObject = zzf.optJSONObject(new ObfuscatedString(new long[]{-6970789578053205584L, -2532203134222411817L, -8505788319910174029L}).toString());
                } else {
                    jSONObject = null;
                }
                this.zzb = jSONObject;
                this.zze = zzf.optJSONObject(new ObfuscatedString(new long[]{2613633501465318327L, -437617584111955021L, 346655224940237786L}).toString());
                JSONArray optJSONArray = zzf.optJSONArray(new ObfuscatedString(new long[]{8752692254323915041L, 7844553483026706105L, 5871281396185247151L, 1268985768166073955L}).toString());
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                        if (optJSONObject != null) {
                            String optString = optJSONObject.optString(new ObfuscatedString(new long[]{5447355312069564014L, -4450586722123517447L, -1238025745448040962L}).toString());
                            String optString2 = optJSONObject.optString(new ObfuscatedString(new long[]{-2697237262131046981L, 6048874510179886347L}).toString());
                            JSONObject optJSONObject2 = optJSONObject.optJSONObject(new ObfuscatedString(new long[]{12630588498476900L, -1206080319769793202L, 6654943036824729681L}).toString());
                            if (optString != null && optJSONObject2 != null && optString2 != null) {
                                if (this.zza.containsKey(optString2)) {
                                    map = (Map) this.zza.get(optString2);
                                } else {
                                    ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                                    this.zza.put(optString2, concurrentHashMap);
                                    map = concurrentHashMap;
                                }
                                map.put(optString, optJSONObject2);
                            }
                        }
                    }
                }
            }
        } finally {
        }
    }

    @CheckForNull
    public final JSONObject zza() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdU)).booleanValue()) {
            return null;
        }
        return this.zzb;
    }

    @CheckForNull
    public final JSONObject zzb(String str, String str2) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdT)).booleanValue() && str != null && str2 != null) {
            if (!this.zzd) {
                zzf();
            }
            Map map = (Map) this.zza.get(str2);
            if (map != null) {
                JSONObject jSONObject = (JSONObject) map.get(str);
                if (jSONObject != null) {
                    return jSONObject;
                }
                String zza = zzduh.zza(this.zze, str, str2);
                if (zza != null) {
                    return (JSONObject) map.get(zza);
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public final void zzc() {
        com.google.android.gms.ads.internal.zzt.zzo().zzi().zzq(new Runnable() { // from class: com.google.android.gms.internal.ads.zzduc
            @Override // java.lang.Runnable
            public final void run() {
                zzduf.this.zze();
            }
        });
        this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdud
            @Override // java.lang.Runnable
            public final void run() {
                zzduf.this.zzf();
            }
        });
    }

    public final /* synthetic */ void zze() {
        this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdue
            @Override // java.lang.Runnable
            public final void run() {
                zzduf.this.zzd();
            }
        });
    }
}
