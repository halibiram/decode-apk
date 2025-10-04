package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbsp {
    public final List zza;
    public final List zzb;
    public final List zzc;
    public final List zzd;
    public final List zze;
    public final List zzf;
    public final String zzg;
    public final String zzh;

    public zzbsp(JSONObject jSONObject) {
        if (zzcec.zzm(2)) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{5174587178591533004L, 7103693348719681664L, -3254467432268046780L, 4733845257531015509L, -8275124564197192386L}).toString().concat(String.valueOf(jSONObject.toString(2))));
        }
        JSONArray jSONArray = jSONObject.getJSONArray(new ObfuscatedString(new long[]{4906618338328423326L, -6644682891552676855L, 1671362627132618736L}).toString());
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                zzbso zzbsoVar = new zzbso(jSONArray.getJSONObject(i2));
                new ObfuscatedString(new long[]{-1077613237709805041L, -8518200838777136927L}).toString().equalsIgnoreCase(zzbsoVar.zzv);
                arrayList.add(zzbsoVar);
                if (i < 0) {
                    Iterator it = zzbsoVar.zzc.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (((String) it.next()).equals(new ObfuscatedString(new long[]{-6732479205701049471L, 8605932904839461033L, 6103382507534877192L, -7179761050116247612L, -2713999362188244893L, 2622087108127345143L, 8811938876009074556L}).toString())) {
                                i = i2;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            } catch (JSONException unused) {
            }
        }
        jSONArray.length();
        this.zza = DesugarCollections.unmodifiableList(arrayList);
        this.zzg = jSONObject.optString(new ObfuscatedString(new long[]{6156977365460534387L, -7625331363267863481L}).toString());
        jSONObject.optInt(new ObfuscatedString(new long[]{-5124936853264205938L, 7147531561532227474L, 8606737332197930342L}).toString(), -1);
        jSONObject.optLong(new ObfuscatedString(new long[]{-7096811853386536105L, -4056590276905369749L, 5760026580842050206L}).toString(), -1L);
        JSONObject optJSONObject = jSONObject.optJSONObject(new ObfuscatedString(new long[]{-2024047789461485719L, 115941418125688775L}).toString());
        if (optJSONObject != null) {
            optJSONObject.optLong(new ObfuscatedString(new long[]{2595275752331285741L, -3884217475889811917L, -189556757648675288L, 2896107325486832568L, 312388442171736492L}).toString(), -1L);
            com.google.android.gms.ads.internal.zzt.zzg();
            this.zzb = zzbsq.zza(optJSONObject, new ObfuscatedString(new long[]{-8800756499524619441L, -1576871503742858217L, 8219204208745592564L}).toString());
            com.google.android.gms.ads.internal.zzt.zzg();
            this.zzc = zzbsq.zza(optJSONObject, new ObfuscatedString(new long[]{-2445687986957814122L, -7414586641691257914L}).toString());
            com.google.android.gms.ads.internal.zzt.zzg();
            this.zzd = zzbsq.zza(optJSONObject, new ObfuscatedString(new long[]{1180817160625212594L, 540188349673328296L, 6271683621340369437L, 3211090029954032538L}).toString());
            com.google.android.gms.ads.internal.zzt.zzg();
            this.zze = zzbsq.zza(optJSONObject, new ObfuscatedString(new long[]{1789471390108061888L, -7888286167742042924L, -6204413666544501535L}).toString());
            com.google.android.gms.ads.internal.zzt.zzg();
            this.zzf = zzbsq.zza(optJSONObject, new ObfuscatedString(new long[]{-5496519837082028227L, -8517629295671879790L, 3896272709078161980L}).toString());
            optJSONObject.optBoolean(new ObfuscatedString(new long[]{-2811770947787017302L, 5014356466506210613L, -4545890067593111795L, -308136845849985599L}).toString(), false);
            optJSONObject.optLong(new ObfuscatedString(new long[]{4639995300535682763L, -5438807216146625679L}).toString(), -1L);
            zzcag zza = zzcag.zza(optJSONObject.optJSONArray(new ObfuscatedString(new long[]{-175354242523724684L, 2040261094426267157L}).toString()));
            if (zza == null) {
                this.zzh = null;
            } else {
                this.zzh = zza.zza;
            }
            optJSONObject.optBoolean(new ObfuscatedString(new long[]{8823922592141516856L, -8850236648513902940L, -3423837004744681646L, -4907916374383214254L}).toString(), false);
            optJSONObject.optBoolean(new ObfuscatedString(new long[]{6555502369915660581L, 7800988383966992244L, -5968007696949849184L, -5156958302531698262L, 4996691987695346145L}).toString(), false);
            optJSONObject.optBoolean(new ObfuscatedString(new long[]{7688070074446878760L, -8958277080094784542L, 1456852027478974189L, -6542912080441784560L}).toString(), false);
            optJSONObject.optBoolean(new ObfuscatedString(new long[]{1903512912182238588L, 7532756796946338444L, 5447918759362558130L, 4963953025250459880L, 4868186100790551178L}).toString(), false);
            return;
        }
        this.zzb = null;
        this.zzc = null;
        this.zzd = null;
        this.zze = null;
        this.zzf = null;
        this.zzh = null;
    }
}
