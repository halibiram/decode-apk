package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzan implements zzd {
    private final Application zza;
    private final zzap zzb;
    private final Executor zzc;

    public zzan(Application application, zzap zzapVar, Executor executor) {
        this.zza = application;
        this.zzb = zzapVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzd
    public final Executor zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzd
    public final boolean zzb(String str, JSONObject jSONObject) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode != 94746189) {
            if (hashCode == 113399775 && str.equals(new ObfuscatedString(new long[]{6225574733041726843L, -8461261933165794031L}).toString())) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals(new ObfuscatedString(new long[]{5603294715278004293L, -1160746151575761401L}).toString())) {
                c = 1;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                return false;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray(new ObfuscatedString(new long[]{-7405367499941704851L, -286654949818202173L}).toString());
            if (optJSONArray != null && optJSONArray.length() != 0) {
                HashSet hashSet = new HashSet();
                int length = optJSONArray.length();
                for (int i = 0; i < length; i++) {
                    String optString = optJSONArray.optString(i);
                    if (TextUtils.isEmpty(optString)) {
                        new ObfuscatedString(new long[]{-2021247065571834835L, -7728360753323266403L, 3652077921998204519L, 4882588575703852798L, -8440961962797453765L, 45352613040183129L}).toString();
                        new ObfuscatedString(new long[]{-5883486914750812017L, 1393198864625364871L, 5703130309455281751L, 6285995493210795720L}).toString();
                    } else {
                        hashSet.add(optString);
                    }
                }
                zzco.zzb(this.zza, hashSet);
            } else {
                String valueOf = String.valueOf(jSONObject.toString());
                new ObfuscatedString(new long[]{7268692771204469112L, -4745178655934090355L, 7350754683687323685L, 57871937394407902L}).toString();
                new ObfuscatedString(new long[]{1169386643250575083L, -1250807234442883718L, 8108560554597751745L, -1509353238970522787L, -453893481267302368L}).toString().concat(valueOf);
            }
            return true;
        }
        zzcn zzcnVar = new zzcn(this.zza);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object opt = jSONObject.opt(next);
            String.valueOf(opt);
            new ObfuscatedString(new long[]{390734077853281776L, -3863628089521627627L, 7348910196822116394L, 7887856995372253596L}).toString();
            new ObfuscatedString(new long[]{5121901625476988448L, 900500547590826879L}).toString();
            new ObfuscatedString(new long[]{-6389521797899649554L, 92801656226259426L, 1761022713043064854L, -8494086534411666393L}).toString();
            if (zzcnVar.zzc(next, opt)) {
                this.zzb.zzd().add(next);
            } else {
                String valueOf2 = String.valueOf(next);
                new ObfuscatedString(new long[]{-836975661635506300L, -8336196537851933381L, -537346012075647435L, 602897184388305055L}).toString();
                new ObfuscatedString(new long[]{-538623229405364454L, -8470708482672467912L, -4499844370418268185L, 3274596671743026513L}).toString().concat(valueOf2);
            }
        }
        this.zzb.zzf();
        zzcnVar.zzb();
        return true;
    }
}
