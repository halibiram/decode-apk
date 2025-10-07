package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzefd implements zzfkp {
    private static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{-4397723938666361865L, -4240508226807097424L, 5070721805977087513L, 6080137030199129334L}).toString(), 2);
    private final String zzb;
    private final zzfmo zzc;
    private final zzfmz zzd;

    public zzefd(String str, zzfmz zzfmzVar, zzfmo zzfmoVar) {
        this.zzb = str;
        this.zzd = zzfmzVar;
        this.zzc = zzfmoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfkp
    public final /* bridge */ /* synthetic */ Object zza(Object obj) {
        JSONObject jSONObject;
        zzbzh zzbzhVar;
        zzead zzeadVar;
        String obfuscatedString;
        zzbzh zzbzhVar2;
        zzbzh zzbzhVar3;
        zzbzh zzbzhVar4;
        zzbzh zzbzhVar5;
        zzbzh zzbzhVar6;
        zzbzh zzbzhVar7;
        zzbzh zzbzhVar8;
        JSONObject jSONObject2;
        zzefc zzefcVar = (zzefc) obj;
        jSONObject = zzefcVar.zza;
        int optInt = jSONObject.optInt(new ObfuscatedString(new long[]{4470101323433072379L, 5734847715820796067L, 4913875254100145154L, -5205858359008242106L}).toString(), 60000);
        zzbzhVar = zzefcVar.zzb;
        if (zzbzhVar.zza() == -2) {
            HashMap hashMap = new HashMap();
            zzbzhVar2 = zzefcVar.zzb;
            if (zzbzhVar2.zzh() && !TextUtils.isEmpty(this.zzb)) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaO)).booleanValue()) {
                    String str = this.zzb;
                    String obfuscatedString2 = new ObfuscatedString(new long[]{-5645865810426847416L}).toString();
                    if (!TextUtils.isEmpty(str)) {
                        Matcher matcher = zza.matcher(str);
                        while (matcher.find()) {
                            String group = matcher.group(1);
                            if (group != null) {
                                Locale locale = Locale.ROOT;
                                if (group.toLowerCase(locale).startsWith(new ObfuscatedString(new long[]{-7699862776656417540L, -2584051167178041157L}).toString()) || group.toLowerCase(locale).startsWith(new ObfuscatedString(new long[]{-401094630991693598L, -7572860999300895575L}).toString())) {
                                    if (!TextUtils.isEmpty(obfuscatedString2)) {
                                        obfuscatedString2 = obfuscatedString2.concat(new ObfuscatedString(new long[]{6722330096316774442L, 133659723729085390L}).toString());
                                    }
                                    obfuscatedString2 = obfuscatedString2.concat(group);
                                }
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(obfuscatedString2)) {
                        hashMap.put(new ObfuscatedString(new long[]{1612309092772043181L, -779475577580464362L}).toString(), obfuscatedString2);
                    }
                } else {
                    hashMap.put(new ObfuscatedString(new long[]{-4930864644512445531L, 3272215691328388846L}).toString(), this.zzb);
                }
            }
            zzbzhVar3 = zzefcVar.zzb;
            if (zzbzhVar3.zzi()) {
                jSONObject2 = zzefcVar.zza;
                zzefe.zza(hashMap, jSONObject2);
            }
            zzbzhVar4 = zzefcVar.zzb;
            String obfuscatedString3 = new ObfuscatedString(new long[]{8938250026971386265L}).toString();
            if (zzbzhVar4 != null) {
                zzbzhVar7 = zzefcVar.zzb;
                if (!TextUtils.isEmpty(zzbzhVar7.zzd())) {
                    zzbzhVar8 = zzefcVar.zzb;
                    obfuscatedString3 = zzbzhVar8.zzd();
                }
            }
            zzfmz zzfmzVar = this.zzd;
            zzfmo zzfmoVar = this.zzc;
            zzfmoVar.zzf(true);
            zzfmzVar.zza(zzfmoVar);
            zzbzhVar5 = zzefcVar.zzb;
            String zze = zzbzhVar5.zze();
            byte[] bytes = obfuscatedString3.getBytes(zzfwq.zzc);
            zzbzhVar6 = zzefcVar.zzb;
            return new zzeey(zze, optInt, hashMap, bytes, new ObfuscatedString(new long[]{6565004485923746616L}).toString(), zzbzhVar6.zzi());
        }
        if (zzbzhVar.zza() == 1) {
            if (zzbzhVar.zzf() != null) {
                obfuscatedString = TextUtils.join(new ObfuscatedString(new long[]{967532258351249398L, 1663282802146439254L}).toString(), zzbzhVar.zzf());
                zzcec.zzg(obfuscatedString);
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-2899720886048801320L}).toString();
            }
            zzeadVar = new zzead(2, new ObfuscatedString(new long[]{4974208017823984130L, 875151508082689638L, 5094521990746228214L, -4916583595644849743L, 6388075832299689154L}).toString().concat(String.valueOf(obfuscatedString)));
        } else {
            zzeadVar = new zzead(1);
        }
        zzfmz zzfmzVar2 = this.zzd;
        zzfmo zzfmoVar2 = this.zzc;
        zzfmoVar2.zzg(zzeadVar);
        zzfmoVar2.zzf(false);
        zzfmzVar2.zza(zzfmoVar2);
        throw zzeadVar;
    }
}
