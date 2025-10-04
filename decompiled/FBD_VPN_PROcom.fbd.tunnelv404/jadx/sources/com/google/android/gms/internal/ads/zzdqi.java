package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdqi {
    private final Executor zza;
    private final zzdqd zzb;

    public zzdqi(Executor executor, zzdqd zzdqdVar) {
        this.zza = executor;
        this.zzb = zzdqdVar;
    }

    public final ListenableFuture zza(JSONObject jSONObject, String str) {
        ListenableFuture zzh;
        JSONArray optJSONArray = jSONObject.optJSONArray(new ObfuscatedString(new long[]{3651670236402960916L, 4301092643418682660L, 2372098999081331248L}).toString());
        if (optJSONArray == null) {
            return zzgen.zzh(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject == null) {
                zzh = zzgen.zzh(null);
            } else {
                final String optString = optJSONObject.optString(new ObfuscatedString(new long[]{-8710044557314689493L, 4145206696210063367L}).toString());
                if (optString == null) {
                    zzh = zzgen.zzh(null);
                } else {
                    String optString2 = optJSONObject.optString(new ObfuscatedString(new long[]{1702217333177785872L, 1548469681790926411L}).toString());
                    if (new ObfuscatedString(new long[]{-7752187895056994168L, 7008042103099023772L}).toString().equals(optString2)) {
                        zzh = zzgen.zzh(new zzdqh(optString, optJSONObject.optString(new ObfuscatedString(new long[]{-3804166397324277774L, 3537838145745835661L, 2534922930651988106L}).toString())));
                    } else if (new ObfuscatedString(new long[]{-2559724614113053367L, -3503862213821893301L}).toString().equals(optString2)) {
                        zzh = zzgen.zzm(this.zzb.zze(optJSONObject, new ObfuscatedString(new long[]{7141758051739593912L, -6529379542383381255L, 738422549715719160L}).toString()), new zzfws() { // from class: com.google.android.gms.internal.ads.zzdqf
                            @Override // com.google.android.gms.internal.ads.zzfws
                            public final Object apply(Object obj) {
                                return new zzdqh(optString, (zzbiz) obj);
                            }
                        }, this.zza);
                    } else {
                        zzh = zzgen.zzh(null);
                    }
                }
            }
            arrayList.add(zzh);
        }
        return zzgen.zzm(zzgen.zzd(arrayList), new zzfws() { // from class: com.google.android.gms.internal.ads.zzdqg
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                ArrayList arrayList2 = new ArrayList();
                for (zzdqh zzdqhVar : (List) obj) {
                    if (zzdqhVar != null) {
                        arrayList2.add(zzdqhVar);
                    }
                }
                return arrayList2;
            }
        }, this.zza);
    }
}
