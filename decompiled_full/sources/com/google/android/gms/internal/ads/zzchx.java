package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzchx implements zzbng {
    @Nullable
    private static final Integer zzb(Map map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt((String) map.get(str)));
        } catch (NumberFormatException unused) {
            zzcec.zzj(new ObfuscatedString(new long[]{4954919677081981197L, -7849141525939721420L, -7171146146674280587L, 3174993592646565399L, -1777208111434147574L, -4224327994439790451L}).toString() + str + new ObfuscatedString(new long[]{5761927765788383150L, -5706683121451351510L}).toString() + ((String) map.get(str)));
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzchw zzchwVar;
        zzcho zza;
        zzcgl zzcglVar = (zzcgl) obj;
        if (zzcec.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove(new ObfuscatedString(new long[]{-337977937777353697L, 8306155940729976575L, 6989471765205706083L, -448094396839674985L}).toString());
            zzcec.zze(new ObfuscatedString(new long[]{-5253493231188742377L, 5221785952175074124L, 5266387710875956633L}).toString().concat(jSONObject.toString()));
        }
        String obfuscatedString = new ObfuscatedString(new long[]{-506613530336357225L, 3749843129018300129L}).toString();
        zzchp zzy = com.google.android.gms.ads.internal.zzt.zzy();
        if (map.containsKey(obfuscatedString)) {
            if (!zzy.zzd(zzcglVar)) {
                zzcec.zzj(new ObfuscatedString(new long[]{643041325192418015L, 5023409414731860981L, -1643704462464423437L, 7229139497064303409L, -5325511256007654294L, 3522050398106632480L, -6634055212374330989L}).toString());
                return;
            }
            return;
        }
        String str = (String) map.get(new ObfuscatedString(new long[]{-3279123044334066563L, -6368987396562289L}).toString());
        Integer zzb = zzb(map, new ObfuscatedString(new long[]{-220729064273673354L, 7399717751831586119L, -686625228683465108L, -7456542304671181853L}).toString());
        Integer zzb2 = zzb(map, new ObfuscatedString(new long[]{2829349895264241032L, 6884679076628348865L, 8123869311962391530L, 1555926137680457305L, 3396718655028994938L}).toString());
        Integer zzb3 = zzb(map, new ObfuscatedString(new long[]{6370555554590806157L, 2575630358407384902L, -942515606744818787L, -5878870768777491514L}).toString());
        zzcgk zzcgkVar = new zzcgk((String) map.get(new ObfuscatedString(new long[]{8746028706287285795L, -1839320557354961135L}).toString()));
        boolean z = zzcgkVar.zzl;
        if (str != null) {
            String[] strArr = {str};
            String str2 = (String) map.get(new ObfuscatedString(new long[]{5251391308187716498L, 5277440408772183971L}).toString());
            if (str2 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str2);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i = 0; i < jSONArray.length(); i++) {
                        strArr2[i] = jSONArray.getString(i);
                    }
                    strArr = strArr2;
                } catch (JSONException unused) {
                    AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{7582591966977953410L, -4107628010151066108L, 7709690721390553659L, 2452585613442351476L, 8349325728659303597L, -462769316266142319L, -8697519812009481264L}), str2);
                    strArr = null;
                }
            }
            if (strArr == null) {
                strArr = new String[]{str};
            }
            if (z) {
                Iterator it = zzy.iterator();
                while (true) {
                    if (it.hasNext()) {
                        zzcho zzchoVar = (zzcho) it.next();
                        if (zzchoVar.zza == zzcglVar && str.equals(zzchoVar.zze())) {
                            zza = zzchoVar;
                            break;
                        }
                    } else {
                        zza = null;
                        break;
                    }
                }
            } else {
                zza = zzy.zza(zzcglVar);
            }
            if (zza != null) {
                zzcec.zzj(new ObfuscatedString(new long[]{710522029882760716L, -1295598542105876791L, -3617245694446099083L, -7381748250952821897L, -4452562032514536889L, 1601473411538789728L}).toString());
                return;
            }
            if (zzcglVar.zzj() == null) {
                zzcec.zzj(new ObfuscatedString(new long[]{-7859692445498468491L, 4618991081438307149L, 1529048548032181118L, -4485058021642747456L, 1757197237708922991L, -3178991810614165319L}).toString());
                return;
            }
            Integer zzb4 = zzb(map, new ObfuscatedString(new long[]{8401072276376318253L, 4642346441564610501L}).toString());
            if (zzb4 == null) {
                zzb4 = 0;
            }
            if (zzb != null) {
                zzcglVar.zzA(zzb.intValue());
            }
            if (zzb2 != null) {
                zzcglVar.zzy(zzb2.intValue());
            }
            if (zzb3 != null) {
                zzcglVar.zzx(zzb3.intValue());
            }
            int intValue = zzb4.intValue();
            zzchi zzchiVar = zzcglVar.zzj().zzb;
            if (intValue > 0) {
                int i2 = zzcgkVar.zzh;
                int zzu = zzcgc.zzu();
                if (zzu < i2) {
                    zzchwVar = new zzcif(zzcglVar, zzcgkVar);
                } else if (zzu < zzcgkVar.zzb) {
                    zzchwVar = new zzcic(zzcglVar, zzcgkVar);
                } else {
                    zzchwVar = new zzcia(zzcglVar);
                }
            } else {
                zzchwVar = new zzchz(zzcglVar);
            }
            new zzcho(zzcglVar, zzchwVar, str, strArr).zzb();
        } else {
            zzcho zza2 = zzy.zza(zzcglVar);
            if (zza2 != null) {
                zzchwVar = zza2.zzb;
            } else {
                zzcec.zzj(new ObfuscatedString(new long[]{298526162627908188L, 8539999071554451217L, 6080231278256086630L, -2833861118499849962L, 6585268076806573158L}).toString());
                return;
            }
        }
        Integer zzb5 = zzb(map, new ObfuscatedString(new long[]{4718163445489795831L, 226475054295380113L, 6286210342208597102L}).toString());
        if (zzb5 != null) {
            zzchwVar.zzs(zzb5.intValue());
        }
        Integer zzb6 = zzb(map, new ObfuscatedString(new long[]{2678769234984937247L, -804322715361894459L, -6338643542912271663L}).toString());
        if (zzb6 != null) {
            zzchwVar.zzr(zzb6.intValue());
        }
        Integer zzb7 = zzb(map, new ObfuscatedString(new long[]{-1048694717183900210L, -8794858604745874398L, 3325373924809637110L, 7766967155083635886L}).toString());
        if (zzb7 != null) {
            zzchwVar.zzp(zzb7.intValue());
        }
        Integer zzb8 = zzb(map, new ObfuscatedString(new long[]{-6099407950189665135L, -8155261811711237777L, -7848285825425816361L, 7733791910368126826L, -4516587941263179396L}).toString());
        if (zzb8 != null) {
            zzchwVar.zzq(zzb8.intValue());
        }
    }
}
