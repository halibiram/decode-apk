package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbnf {
    public static final zzbng zza = new zzbng() { // from class: com.google.android.gms.internal.ads.zzbmd
        @Override // com.google.android.gms.internal.ads.zzbng
        public final void zza(Object obj, Map map) {
            String obfuscatedString;
            boolean z;
            zzckn zzcknVar = (zzckn) obj;
            zzbng zzbngVar = zzbnf.zza;
            String str = (String) map.get(new ObfuscatedString(new long[]{-7825929933933741493L, 1571719883344148990L}).toString());
            if (TextUtils.isEmpty(str)) {
                zzcec.zzj(new ObfuscatedString(new long[]{6810303273809934681L, 7924457586266723425L, 7869600861382952238L, 7495500685204911732L, 107980166661273060L, 74007243391110324L}).toString());
                return;
            }
            String[] split = str.split(new ObfuscatedString(new long[]{6817344617492813424L, 865735926456608889L}).toString());
            HashMap hashMap = new HashMap();
            PackageManager packageManager = zzcknVar.getContext().getPackageManager();
            for (String str2 : split) {
                String[] split2 = str2.split(new ObfuscatedString(new long[]{-7663377246652302983L, 8091363778529987216L}).toString(), 2);
                String trim = split2[0].trim();
                if (split2.length > 1) {
                    obfuscatedString = split2[1].trim();
                } else {
                    obfuscatedString = new ObfuscatedString(new long[]{8714024383019573778L, 4315707562668888239L, -4409345632033339048L, 456156436771400600L, -7455413736395074493L}).toString();
                }
                if (packageManager.resolveActivity(new Intent(obfuscatedString, Uri.parse(trim)), 65536) != null) {
                    z = true;
                } else {
                    z = false;
                }
                Boolean valueOf = Boolean.valueOf(z);
                hashMap.put(str2, valueOf);
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{4124340068983607321L, -3415481740349064185L, 2302487250092684119L}).toString() + str2 + new ObfuscatedString(new long[]{-6353278950299754277L, 1603763581984875647L}).toString() + valueOf);
            }
            ((zzbqa) zzcknVar).zzd(new ObfuscatedString(new long[]{-8631150838432657871L, -8923048916110017493L, 704912045914858231L}).toString(), hashMap);
        }
    };
    public static final zzbng zzb = new zzbng() { // from class: com.google.android.gms.internal.ads.zzbmf
        @Override // com.google.android.gms.internal.ads.zzbng
        public final void zza(Object obj, Map map) {
            boolean z;
            zzckn zzcknVar = (zzckn) obj;
            zzbng zzbngVar = zzbnf.zza;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzid)).booleanValue()) {
                zzcec.zzj(new ObfuscatedString(new long[]{1489026486544652782L, 3334814081270699772L, 8604687875583574111L, 1329339780417182493L, -1258962857041321553L}).toString());
                return;
            }
            String str = (String) map.get(new ObfuscatedString(new long[]{2156914598821432977L, -5696245598672060282L, -427824033594457874L}).toString());
            if (TextUtils.isEmpty(str)) {
                zzcec.zzj(new ObfuscatedString(new long[]{211112307026628321L, 6791741049446878559L, -6870965270432945397L, -4032283891436453675L, 4142549628657854091L, 662575712670542344L}).toString());
                return;
            }
            HashMap hashMap = new HashMap();
            if (zzcknVar.getContext().getPackageManager().getLaunchIntentForPackage(str) != null) {
                z = true;
            } else {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            hashMap.put(str, valueOf);
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{6020364199706479422L, 5880168760512491707L, -3396516066641385179L}).toString() + str + new ObfuscatedString(new long[]{-5088650383307420682L, -6643383803996367500L}).toString() + valueOf);
            ((zzbqa) zzcknVar).zzd(new ObfuscatedString(new long[]{-5040841648631196333L, 7814819046503692889L, 6963537339009696414L}).toString(), hashMap);
        }
    };
    public static final zzbng zzc = new zzbng() { // from class: com.google.android.gms.internal.ads.zzbmi
        @Override // com.google.android.gms.internal.ads.zzbng
        public final void zza(Object obj, Map map) {
            zzbnf.zzb((zzckn) obj, map);
        }
    };
    public static final zzbng zzd = new zzbmx();
    public static final zzbng zze = new zzbmy();
    public static final zzbng zzf = new zzbng() { // from class: com.google.android.gms.internal.ads.zzbmj
        @Override // com.google.android.gms.internal.ads.zzbng
        public final void zza(Object obj, Map map) {
            zzckn zzcknVar = (zzckn) obj;
            zzbng zzbngVar = zzbnf.zza;
            String str = (String) map.get(new ObfuscatedString(new long[]{-781626677435208922L, 4100726173369333428L}).toString());
            if (str == null) {
                zzcec.zzj(new ObfuscatedString(new long[]{-3224974758029557800L, -8621542015653765235L, -8456644003378794070L, 1613399593412075442L, -3076431124776062234L}).toString());
            } else {
                new com.google.android.gms.ads.internal.util.zzca(zzcknVar.getContext(), ((zzcku) zzcknVar).zzn().zza, str).zzb();
            }
        }
    };
    public static final zzbng zzg = new zzbmz();
    public static final zzbng zzh = new zzbna();
    public static final zzbng zzi = new zzbng() { // from class: com.google.android.gms.internal.ads.zzbmh
        @Override // com.google.android.gms.internal.ads.zzbng
        public final void zza(Object obj, Map map) {
            zzckt zzcktVar = (zzckt) obj;
            zzbng zzbngVar = zzbnf.zza;
            String str = (String) map.get(new ObfuscatedString(new long[]{2014691914859491786L, 4118118391336673455L}).toString());
            String str2 = (String) map.get(new ObfuscatedString(new long[]{2474158336926672474L, -3825818423940009723L}).toString());
            String str3 = (String) map.get(new ObfuscatedString(new long[]{-3083921892489189980L, 8831698061216656656L}).toString());
            try {
                int parseInt = Integer.parseInt(str);
                int parseInt2 = Integer.parseInt(str2);
                int parseInt3 = Integer.parseInt(str3);
                zzavi zzI = zzcktVar.zzI();
                if (zzI != null) {
                    zzI.zzc().zzl(parseInt, parseInt2, parseInt3);
                }
            } catch (NumberFormatException unused) {
                zzcec.zzj(new ObfuscatedString(new long[]{8619191317993142737L, 4610441159926941761L, 818878427691767269L, 3426130957626924848L, 5857652594025754187L, 9101264935299549246L, 1550012246047579070L}).toString());
            }
        }
    };
    public static final zzbng zzj = new zzbnb();
    public static final zzbng zzk = new zzbnc();
    public static final zzbng zzl = new zzchk();
    public static final zzbng zzm = new zzchl();
    public static final zzbng zzn = new zzblz();
    public static final zzbnv zzo = new zzbnv();
    public static final zzbng zzp = new zzbnd();
    public static final zzbng zzq = new zzbne();
    public static final zzbng zzr = new zzbmk();
    public static final zzbng zzs = new zzbml();
    public static final zzbng zzt = new zzbmm();
    public static final zzbng zzu = new zzbmn();
    public static final zzbng zzv = new zzbmo();
    public static final zzbng zzw = new zzbmp();
    public static final zzbng zzx = new zzbmq();
    public static final zzbng zzy = new zzbmr();
    public static final zzbng zzz = new zzbms();
    public static final zzbng zzA = new zzbmt();
    public static final zzbng zzB = new zzbmv();
    public static final zzbng zzC = new zzbmw();

    public static ListenableFuture zza(zzcjk zzcjkVar, String str) {
        Uri parse = Uri.parse(str);
        try {
            zzavi zzI = zzcjkVar.zzI();
            zzfhl zzQ = zzcjkVar.zzQ();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlr)).booleanValue() && zzQ != null) {
                if (zzI != null && zzI.zzf(parse)) {
                    parse = zzQ.zza(parse, zzcjkVar.getContext(), zzcjkVar.zzF(), zzcjkVar.zzi());
                }
            } else if (zzI != null && zzI.zzf(parse)) {
                parse = zzI.zza(parse, zzcjkVar.getContext(), zzcjkVar.zzF(), zzcjkVar.zzi());
            }
        } catch (zzavj unused) {
            AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{-2617908423787284519L, 3871903404415109756L, -545534207858912723L, 2697895364726315628L, -781180295016164817L, 5275983767125124475L}), str);
        }
        final String zzb2 = zzccj.zzb(parse, zzcjkVar.getContext());
        long longValue = ((Long) zzbhz.zze.zze()).longValue();
        if (longValue > 0 && longValue <= 240304702) {
            zzgee zzu2 = zzgee.zzu(zzcjkVar.zzS());
            zzbma zzbmaVar = new zzfws() { // from class: com.google.android.gms.internal.ads.zzbma
                @Override // com.google.android.gms.internal.ads.zzfws
                public final Object apply(Object obj) {
                    Throwable th = (Throwable) obj;
                    zzbng zzbngVar = zzbnf.zza;
                    if (((Boolean) zzbhz.zzk.zze()).booleanValue()) {
                        com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{6516176641951129672L, -5954828691407194238L, -5814942148015256199L, -5724070054083737197L, -4344815132896182741L}).toString());
                    }
                    return new ObfuscatedString(new long[]{3270062757248836300L, 3475622502787812019L, 6994584631666024965L, -3320519026510894758L}).toString();
                }
            };
            zzgey zzgeyVar = zzcep.zzf;
            return zzgen.zze(zzgen.zzm(zzgen.zze(zzu2, Throwable.class, zzbmaVar, zzgeyVar), new zzfws() { // from class: com.google.android.gms.internal.ads.zzbmb
                @Override // com.google.android.gms.internal.ads.zzfws
                public final Object apply(Object obj) {
                    String str2 = (String) obj;
                    zzbng zzbngVar = zzbnf.zza;
                    String str3 = zzb2;
                    if (str2 != null) {
                        if (((Boolean) zzbhz.zzf.zze()).booleanValue()) {
                            String[] strArr = {new ObfuscatedString(new long[]{4293514556065681820L, 1783226193761187611L, 4896174437487081014L}).toString(), new ObfuscatedString(new long[]{2713935767397951375L, -6653613880010042741L, -5531396399833699269L, 5409129833231641346L}).toString(), new ObfuscatedString(new long[]{8126865318416132411L, 6292270306679692683L, -7690798347654475191L, -650467697692592715L}).toString()};
                            String host = Uri.parse(str3).getHost();
                            for (int i = 0; i < 3; i++) {
                                if (!host.endsWith(strArr[i])) {
                                }
                            }
                        }
                        String str4 = (String) zzbhz.zza.zze();
                        String str5 = (String) zzbhz.zzb.zze();
                        if (!TextUtils.isEmpty(str4)) {
                            str3 = str3.replace(str4, str2);
                        }
                        if (!TextUtils.isEmpty(str5)) {
                            Uri parse2 = Uri.parse(str3);
                            if (TextUtils.isEmpty(parse2.getQueryParameter(str5))) {
                                return parse2.buildUpon().appendQueryParameter(str5, str2).toString();
                            }
                        }
                    }
                    return str3;
                }
            }, zzgeyVar), Throwable.class, new zzfws() { // from class: com.google.android.gms.internal.ads.zzbmc
                @Override // com.google.android.gms.internal.ads.zzfws
                public final Object apply(Object obj) {
                    Throwable th = (Throwable) obj;
                    zzbng zzbngVar = zzbnf.zza;
                    if (((Boolean) zzbhz.zzk.zze()).booleanValue()) {
                        com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{2671233642655319455L, -6215969690989329919L, 8858663952711178933L, 268651055877353032L, -6652276631400220699L}).toString());
                    }
                    return zzb2;
                }
            }, zzgeyVar);
        }
        return zzgen.zzh(zzb2);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:(3:10|11|12)|(11:49|50|(10:16|(1:18)|19|(1:21)|22|(1:24)|25|(1:27)|28|(2:30|(1:32)))|33|34|35|(1:37)(1:45)|38|39|40|41)|14|(0)|33|34|35|(0)(0)|38|39|40|41|8) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0165, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0166, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzh(new com.panda912.muddy.ObfuscatedString(new long[]{1939490802497074614L, -59515204219423978L, -6092075820893655649L, 1245855360089698339L, -5110426138460328076L, 3443046389407660745L, 3473377342673397092L}).toString(), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x014d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x014e, code lost:
    
        com.google.android.gms.ads.internal.zzt.zzo().zzw(r0, r1.toString());
        r15 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x015f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void zzb(zzckn zzcknVar, Map map) {
        String optString;
        String optString2;
        String optString3;
        String optString4;
        String optString5;
        String optString6;
        String optString7;
        Intent parseUri;
        ResolveInfo resolveInfo;
        boolean z;
        int i = 3;
        PackageManager packageManager = zzcknVar.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get(new ObfuscatedString(new long[]{2973944553730349715L, 795105616663098061L}).toString())).getJSONArray(new ObfuscatedString(new long[]{5236853673532253962L, -9142264059466706033L}).toString());
                JSONObject jSONObject = new JSONObject();
                int i2 = 0;
                while (i2 < jSONArray.length()) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        optString = jSONObject2.optString(new ObfuscatedString(new long[]{8796929163376925868L, 859462447979552422L}).toString());
                        optString2 = jSONObject2.optString(new ObfuscatedString(new long[]{2673480268519310862L, 7934562351907287464L}).toString());
                        optString3 = jSONObject2.optString(new ObfuscatedString(new long[]{3111416792716442091L, 5052452183896676515L}).toString());
                        optString4 = jSONObject2.optString(new ObfuscatedString(new long[]{1181336690191738658L, -8519057467348169455L}).toString());
                        optString5 = jSONObject2.optString(new ObfuscatedString(new long[]{-7263490582759681774L, 8765193280344446473L}).toString());
                        optString6 = jSONObject2.optString(new ObfuscatedString(new long[]{1826162319427645602L, 8169220042462706981L}).toString());
                        long[] jArr = new long[i];
                        // fill-array-data instruction
                        jArr[0] = -2880796171607932575L;
                        jArr[1] = 5096219360541245985L;
                        jArr[2] = 9146334615012731180L;
                        optString7 = jSONObject2.optString(new ObfuscatedString(jArr).toString());
                    } catch (JSONException e) {
                        zzcec.zzh(new ObfuscatedString(new long[]{2692198143008426880L, 5458553991348999199L, -8026262827631480729L, -1133390480638669285L, -2381667092882930817L}).toString(), e);
                    }
                    if (!TextUtils.isEmpty(optString7)) {
                        try {
                            parseUri = Intent.parseUri(optString7, 0);
                        } catch (URISyntaxException e2) {
                            zzcec.zzh(new ObfuscatedString(new long[]{5388047181676709284L, 4731996095084277023L, -1801074955939597249L, 3680007274429807541L}).toString().concat(String.valueOf(optString7)), e2);
                        }
                        if (parseUri == null) {
                            parseUri = new Intent();
                            if (!TextUtils.isEmpty(optString2)) {
                                parseUri.setData(Uri.parse(optString2));
                            }
                            if (!TextUtils.isEmpty(optString3)) {
                                parseUri.setAction(optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                parseUri.setType(optString4);
                            }
                            if (!TextUtils.isEmpty(optString5)) {
                                parseUri.setPackage(optString5);
                            }
                            if (!TextUtils.isEmpty(optString6)) {
                                String[] split = optString6.split(new ObfuscatedString(new long[]{1908519762936874593L, -7744283793142251063L}).toString(), 2);
                                if (split.length == 2) {
                                    parseUri.setComponent(new ComponentName(split[0], split[1]));
                                }
                            }
                        }
                        Intent intent = parseUri;
                        resolveInfo = packageManager.resolveActivity(intent, 65536);
                        if (resolveInfo == null) {
                            z = true;
                        } else {
                            z = false;
                        }
                        jSONObject.put(optString, z);
                        i2++;
                        i = 3;
                    }
                    parseUri = null;
                    if (parseUri == null) {
                    }
                    Intent intent2 = parseUri;
                    resolveInfo = packageManager.resolveActivity(intent2, 65536);
                    if (resolveInfo == null) {
                    }
                    jSONObject.put(optString, z);
                    i2++;
                    i = 3;
                }
                ((zzbqa) zzcknVar).zze(new ObfuscatedString(new long[]{-2939785804025040317L, 4787975943123257107L, -7838615230981480583L}).toString(), jSONObject);
            } catch (JSONException unused) {
                ((zzbqa) zzcknVar).zze(new ObfuscatedString(new long[]{2637989918286092521L, 5844725973146832083L, -2125944792127263876L}).toString(), new JSONObject());
            }
        } catch (JSONException unused2) {
            ((zzbqa) zzcknVar).zze(new ObfuscatedString(new long[]{-396955423576530981L, 2030645466985503938L, -2856080907582758580L}).toString(), new JSONObject());
        }
    }

    public static void zzc(Map map, zzdiu zzdiuVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkl)).booleanValue() && map.containsKey(new ObfuscatedString(new long[]{-4886290623653024404L, -4308156468024833351L}).toString()) && ((String) map.get(new ObfuscatedString(new long[]{769278612847068560L, -7655188440362850186L}).toString())).equals(new ObfuscatedString(new long[]{-1620847585844339751L, -8561508371514029937L}).toString()) && zzdiuVar != null) {
            zzdiuVar.zzs();
        }
    }
}
