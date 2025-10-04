package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzepa {

    @GuardedBy("this")
    private final Map zza = new HashMap();

    @GuardedBy("this")
    private final Map zzb = new HashMap();

    @GuardedBy("this")
    private final Map zzc = new HashMap();
    private final Map zzd = new HashMap();
    private final Map zze = new HashMap();
    private final Executor zzf;
    private JSONObject zzg;

    public zzepa(Executor executor) {
        this.zzf = executor;
    }

    private final synchronized zzgad zzh(String str) {
        HashMap hashMap;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zzc())) {
                boolean matches = Pattern.matches((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcW), str);
                boolean matches2 = Pattern.matches((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcX), str);
                if (matches) {
                    hashMap = new HashMap(this.zze);
                } else if (matches2) {
                    hashMap = new HashMap(this.zzd);
                }
                return zzgad.zzc(hashMap);
            }
            return zzgad.zzd();
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized List zzi(JSONObject jSONObject, String str) {
        ArrayList arrayList;
        synchronized (this) {
            try {
                arrayList = new ArrayList();
                if (jSONObject != null) {
                    Bundle zzo = zzo(jSONObject.optJSONObject(new ObfuscatedString(new long[]{-3330684820029456093L, -1530401220812728206L}).toString()));
                    JSONArray optJSONArray = jSONObject.optJSONArray(new ObfuscatedString(new long[]{4152300198625677290L, -7465769100512830020L, 3217362740519446647L}).toString());
                    if (optJSONArray != null) {
                        ArrayList arrayList2 = new ArrayList();
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            String optString = optJSONArray.optString(i, new ObfuscatedString(new long[]{-4044274366693716629L}).toString());
                            if (!TextUtils.isEmpty(optString)) {
                                arrayList2.add(optString);
                            }
                        }
                        int size = arrayList2.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            String str2 = (String) arrayList2.get(i2);
                            zzg(str2);
                            if (((zzepc) this.zza.get(str2)) != null) {
                                arrayList.add(new zzepc(str2, str, zzo));
                            }
                        }
                    }
                }
            } finally {
            }
        }
        return arrayList;
    }

    public final synchronized void zzj() {
        this.zzb.clear();
        this.zza.clear();
        this.zze.clear();
        this.zzd.clear();
        zzm();
        zzn();
        zzk();
    }

    private final synchronized void zzk() {
        JSONObject zzf;
        int i = 4;
        synchronized (this) {
            try {
                if (!((Boolean) zzbig.zzb.zze()).booleanValue()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbM)).booleanValue() && (zzf = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zzf()) != null) {
                        JSONArray jSONArray = zzf.getJSONArray(new ObfuscatedString(new long[]{-2473703284989814065L, -1635121363585664857L, 2140241439192540107L}).toString());
                        boolean z = false;
                        int i2 = 0;
                        while (i2 < jSONArray.length()) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i2);
                            long[] jArr = new long[i];
                            // fill-array-data instruction
                            jArr[0] = 8043502158078715193L;
                            jArr[1] = -5224671859112408307L;
                            jArr[2] = 7986026012405079396L;
                            jArr[3] = -7347244177547012410L;
                            String optString = jSONObject.optString(new ObfuscatedString(jArr).toString());
                            JSONArray optJSONArray = jSONObject.optJSONArray(new ObfuscatedString(new long[]{2443064206339500592L, -243337120043299715L, 7961480334418994005L}).toString());
                            if (!TextUtils.isEmpty(optString)) {
                                int i3 = 0;
                                while (i3 < optJSONArray.length()) {
                                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i3);
                                    boolean optBoolean = jSONObject2.optBoolean(new ObfuscatedString(new long[]{6555635833598861536L, -5344706171995763696L, 3942639274518176154L}).toString(), z);
                                    long[] jArr2 = new long[i];
                                    // fill-array-data instruction
                                    jArr2[0] = -5710878417777204203L;
                                    jArr2[1] = -4941484163161744817L;
                                    jArr2[2] = 4969537546800963919L;
                                    jArr2[3] = -4281811314226996454L;
                                    boolean optBoolean2 = jSONObject2.optBoolean(new ObfuscatedString(jArr2).toString(), z);
                                    boolean optBoolean3 = jSONObject2.optBoolean(new ObfuscatedString(new long[]{7224969999766961325L, -4838052767437824021L, 4946320841987034433L, 2707077546833648020L, 347969126026946931L, -7905612770444655722L}).toString(), z);
                                    String optString2 = jSONObject2.optString(new ObfuscatedString(new long[]{-7762891572150815590L, -6230695370594605900L}).toString());
                                    zzepe zzepeVar = new zzepe(optString, optBoolean2, optBoolean, optBoolean3, new Bundle());
                                    if (optString2.equals(new ObfuscatedString(new long[]{6948065685364861285L, 4381497079959444503L}).toString())) {
                                        this.zzd.put(optString, zzepeVar);
                                    } else if (optString2.equals(new ObfuscatedString(new long[]{8889725625473943977L, -8273808413811786245L, 7878830021598148609L}).toString())) {
                                        this.zze.put(optString, zzepeVar);
                                    }
                                    i3++;
                                    i = 4;
                                    z = false;
                                }
                            }
                            i2++;
                            i = 4;
                            z = false;
                        }
                    }
                }
            } catch (JSONException e) {
                com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{6065905856577066695L, 417268492145517173L, 3539762287889118907L, -2768465530525495808L, 3283816836178130460L}).toString(), e);
            } finally {
            }
        }
    }

    private final synchronized void zzl(String str, String str2, List list) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                Map map = (Map) this.zzc.get(str);
                if (map == null) {
                    map = new HashMap();
                }
                this.zzc.put(str, map);
                List list2 = (List) map.get(str2);
                if (list2 == null) {
                    list2 = new ArrayList();
                }
                list2.addAll(list);
                map.put(str2, list2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized void zzm() {
        String optString;
        JSONArray optJSONArray;
        try {
            JSONObject zzf = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zzf();
            if (zzf != null) {
                try {
                    JSONArray optJSONArray2 = zzf.optJSONArray(new ObfuscatedString(new long[]{4362161982039706481L, -1907279423743503138L, -3024004422700180072L, 1181982919045402775L}).toString());
                    this.zzg = zzf.optJSONObject(new ObfuscatedString(new long[]{-1813861244680860237L, 2825412032009013213L, -4688279901977861150L}).toString());
                    if (optJSONArray2 != null) {
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            JSONObject jSONObject = optJSONArray2.getJSONObject(i);
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkr)).booleanValue()) {
                                optString = jSONObject.optString(new ObfuscatedString(new long[]{5320468919087338729L, 4071892537070710890L, 8352555233205948165L}).toString(), new ObfuscatedString(new long[]{7056570268767039135L}).toString()).toLowerCase(Locale.ROOT);
                            } else {
                                optString = jSONObject.optString(new ObfuscatedString(new long[]{-2189187423447101281L, -5813665772932584358L, 9049918185443548751L}).toString(), new ObfuscatedString(new long[]{2859560434298804879L}).toString());
                            }
                            String optString2 = jSONObject.optString(new ObfuscatedString(new long[]{-8912388463242161866L, -1034852995352362519L}).toString(), new ObfuscatedString(new long[]{-5746003784095482489L}).toString());
                            ArrayList arrayList = new ArrayList();
                            JSONObject optJSONObject = jSONObject.optJSONObject(new ObfuscatedString(new long[]{7300998949895946042L, 6347886701858141417L, -6446576885516151776L}).toString());
                            if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray(new ObfuscatedString(new long[]{-3791964290303525025L, -5540397418259689972L, -1163290848845861333L}).toString())) != null) {
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    arrayList.addAll(zzi(optJSONArray.getJSONObject(i2), optString2));
                                }
                            }
                            zzl(optString2, optString, arrayList);
                        }
                    }
                } catch (JSONException e) {
                    com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{9117586829092051947L, -1745585065397232124L, 1617533202851203228L, -4366930432796748761L, -5353608899732707686L}).toString(), e);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized void zzn() {
        JSONObject zzf;
        if (!((Boolean) zzbig.zzg.zze()).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbL)).booleanValue() && (zzf = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zzf()) != null) {
                try {
                    JSONArray jSONArray = zzf.getJSONArray(new ObfuscatedString(new long[]{3907404415643484479L, -6475030435758451007L, -5486756827795569268L}).toString());
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        Bundle zzo = zzo(jSONObject.optJSONObject(new ObfuscatedString(new long[]{3617273276937492365L, 7948375954356053680L}).toString()));
                        String optString = jSONObject.optString(new ObfuscatedString(new long[]{1931992918888372525L, 3448356745183933536L, -6147624356806864516L, 8859091443050753388L}).toString());
                        boolean optBoolean = jSONObject.optBoolean(new ObfuscatedString(new long[]{-2339296578576883275L, -7594759552434219671L}).toString(), false);
                        boolean optBoolean2 = jSONObject.optBoolean(new ObfuscatedString(new long[]{6582112281967759554L, 2290352823710444610L, -6147541358557452776L}).toString(), false);
                        if (!TextUtils.isEmpty(optString)) {
                            this.zzb.put(optString, new zzepe(optString, optBoolean2, optBoolean, true, zzo));
                        }
                    }
                } catch (JSONException e) {
                    com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{3329765865700905559L, 7999320035952545974L, -7371427875701880357L, -6031033552783691484L, -6104017228861947951L}).toString(), e);
                }
            }
        }
    }

    private static final Bundle zzo(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                bundle.putString(next, jSONObject.optString(next, new ObfuscatedString(new long[]{-7383658394822258732L}).toString()));
            }
        }
        return bundle;
    }

    public final synchronized Map zza(String str, String str2) {
        HashMap hashMap;
        Bundle bundle;
        try {
            Map zzb = zzb(str, str2);
            zzgad zzh = zzh(str2);
            hashMap = new HashMap();
            for (Map.Entry entry : ((zzgad) zzb).entrySet()) {
                String str3 = (String) entry.getKey();
                if (zzh.containsKey(str3)) {
                    zzepe zzepeVar = (zzepe) zzh.get(str3);
                    List list = (List) entry.getValue();
                    boolean z = zzepeVar.zzb;
                    boolean z2 = zzepeVar.zzc;
                    boolean z3 = zzepeVar.zzd;
                    if (list != null && !list.isEmpty()) {
                        bundle = (Bundle) list.get(0);
                    } else {
                        bundle = new Bundle();
                    }
                    hashMap.put(str3, new zzepe(str3, z, z2, z3, bundle));
                }
            }
            zzgce it = zzh.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry2 = (Map.Entry) it.next();
                String str4 = (String) entry2.getKey();
                if (!hashMap.containsKey(str4) && ((zzepe) entry2.getValue()).zzd) {
                    hashMap.put(str4, (zzepe) entry2.getValue());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return hashMap;
    }

    public final synchronized Map zzb(String str, String str2) {
        Map map;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zzc()) && (map = (Map) this.zzc.get(str)) != null) {
                List<zzepc> list = (List) map.get(str2);
                if (list == null) {
                    String zza = zzduh.zza(this.zzg, str2, str);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkr)).booleanValue()) {
                        zza = zza.toLowerCase(Locale.ROOT);
                    }
                    list = (List) map.get(zza);
                }
                if (list != null) {
                    HashMap hashMap = new HashMap();
                    for (zzepc zzepcVar : list) {
                        String str3 = zzepcVar.zza;
                        if (!hashMap.containsKey(str3)) {
                            hashMap.put(str3, new ArrayList());
                        }
                        ((List) hashMap.get(str3)).add(zzepcVar.zzc);
                    }
                    return zzgad.zzc(hashMap);
                }
            }
            return zzgad.zzd();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized Map zzc() {
        if (TextUtils.isEmpty(com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zzc())) {
            return zzgad.zzd();
        }
        return zzgad.zzc(this.zzb);
    }

    public final void zze() {
        com.google.android.gms.ads.internal.zzt.zzo().zzi().zzq(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeoz
            @Override // java.lang.Runnable
            public final void run() {
                zzepa.this.zzf();
            }
        });
        this.zzf.execute(new zzeoy(this));
    }

    public final /* synthetic */ void zzf() {
        this.zzf.execute(new zzeoy(this));
    }

    public final synchronized void zzg(String str) {
        if (!TextUtils.isEmpty(str) && !this.zza.containsKey(str)) {
            this.zza.put(str, new zzepc(str, new ObfuscatedString(new long[]{-3447533913925731513L}).toString(), new Bundle()));
        }
    }
}
