package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzchk implements zzbng {
    private boolean zza;

    private static int zzb(Context context, Map map, String str, int i) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                com.google.android.gms.ads.internal.client.zzay.zzb();
                i = zzcdv.zzx(context, Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                zzcec.zzj(new ObfuscatedString(new long[]{7150190341043683361L, 2776488072661792355L, 1300852066961029471L}).toString() + str + new ObfuscatedString(new long[]{-5941844392731288230L, 3832209649838951612L, -5727348206222775960L, -2774039519723169139L}).toString() + str2);
            }
        }
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-4989254220966736903L, -60407664867447364L, 1422097956950244189L, 292289284983077896L}).toString() + str + new ObfuscatedString(new long[]{8141968897824017430L, -6893010901568541736L, 5729418009927940061L}).toString() + str2 + new ObfuscatedString(new long[]{-5813168527663529359L, 5271114635509121554L}).toString() + i + new ObfuscatedString(new long[]{-4149209760982012970L, 437251565244688412L}).toString());
        }
        return i;
    }

    private static void zzc(zzcfz zzcfzVar, Map map) {
        String str = (String) map.get(new ObfuscatedString(new long[]{6864087552853633554L, -5478868877486098056L, -4478700135993210036L}).toString());
        String str2 = (String) map.get(new ObfuscatedString(new long[]{-8955878038356446069L, -1847644738566269105L, -7180259961942784471L}).toString());
        String str3 = (String) map.get(new ObfuscatedString(new long[]{3781874061498275302L, 5025702094855773054L, -8175444606820033835L, -8698107173795278320L}).toString());
        String str4 = (String) map.get(new ObfuscatedString(new long[]{-4575097012199150427L, 2840946200579138857L, 4874168691435862683L, 888329807474595879L, 4973126139522569748L}).toString());
        String str5 = (String) map.get(new ObfuscatedString(new long[]{-6451527086481482457L, -3206719216910656661L, 6536714865899528137L, -8218574772419862948L}).toString());
        if (str != null) {
            try {
                zzcfzVar.zzB(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                zzcec.zzj(String.format(new ObfuscatedString(new long[]{-521870116216173755L, 2533988188295233746L, 6181375315254107513L, 8076590012168790136L, 7734121982233741813L, 4441755990134544724L, -5143000359766206765L, -4568953304078937293L, -1421257587786787949L, -7669986732438820658L}).toString(), str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzcfzVar.zzA(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzcfzVar.zzy(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzcfzVar.zzz(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzcfzVar.zzD(Integer.parseInt(str5));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:148:0x05e6  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x05b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzbng
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        int min;
        int min2;
        int i;
        Integer valueOf;
        String str;
        zzcgl zzcglVar = (zzcgl) obj;
        String str2 = (String) map.get(new ObfuscatedString(new long[]{-9186512121487454792L, -8544945828110573778L}).toString());
        if (str2 == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{-3250540060436143920L, 6801719679231010447L, -7572058812471945566L, -1945831405816864864L, -4405386372002027607L}).toString());
            return;
        }
        Integer valueOf2 = map.containsKey(new ObfuscatedString(new long[]{-6545482856719092114L, -3436695590124533354L}).toString()) ? Integer.valueOf(Integer.parseInt((String) map.get(new ObfuscatedString(new long[]{-2808152309881615958L, -4216976933050035329L}).toString()))) : null;
        Integer zzb = zzcglVar.zzo() != null ? zzcglVar.zzo().zzb() : null;
        if (valueOf2 != null && zzb != null && !valueOf2.equals(zzb) && !str2.equals(new ObfuscatedString(new long[]{5846399577278221134L, 1657394893641851751L}).toString())) {
            zzcec.zzi(String.format(Locale.US, new ObfuscatedString(new long[]{7182099015351996018L, 4217441326546368306L, -7355150865268313896L, -4270835201619466183L, -3970138346298321758L, 8752588865382966418L, 8557152194624593310L, -8325965036507125315L, -4639913536895836212L, 3682174704555410001L}).toString(), valueOf2, zzb));
            return;
        }
        if (zzcec.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove(new ObfuscatedString(new long[]{9164162470652966890L, 5506334906746802287L, 5141388097032939957L, 5695371992402146773L}).toString());
            zzcec.zze(new ObfuscatedString(new long[]{-7648604331460352257L, 3248812272955203442L, 2945734026767588110L}).toString() + str2 + new ObfuscatedString(new long[]{-1083049178138066456L, 8783971391500232774L}).toString() + jSONObject.toString());
        }
        if (new ObfuscatedString(new long[]{-5647929675004655246L, -3654057821726659941L, -514366493301211601L}).toString().equals(str2)) {
            String str3 = (String) map.get(new ObfuscatedString(new long[]{-6245463883078361753L, 3081449246881014183L}).toString());
            if (TextUtils.isEmpty(str3)) {
                zzcec.zzj(new ObfuscatedString(new long[]{-3594956723206267968L, -8037949609105303000L, -3583324214915392483L, -2985659940463071707L, 4550119005355617431L, -891549543306455981L, 7115182560003227692L, 9156298145157883865L}).toString());
                return;
            }
            try {
                zzcglVar.setBackgroundColor(Color.parseColor(str3));
                return;
            } catch (IllegalArgumentException unused) {
                zzcec.zzj(new ObfuscatedString(new long[]{2921055969080209360L, -2197202803698376309L, -4244742193662769895L, 8369940403102920202L, -7762557945399885404L, 263979120938900707L, -4091631750339699755L, -217011707206914568L}).toString());
                return;
            }
        }
        if (new ObfuscatedString(new long[]{-2973919171864508226L, -11664503563003589L, -3185186734546471919L}).toString().equals(str2)) {
            String str4 = (String) map.get(new ObfuscatedString(new long[]{6591766209044612690L, -4213391190702101588L}).toString());
            if (TextUtils.isEmpty(str4)) {
                zzcec.zzj(new ObfuscatedString(new long[]{-5037278497705751903L, 5547266265407987704L, 3127756357804926475L, 6470225236607909469L, 7595803849555886635L, 616113446831213551L, -4951793641850584552L, 1948510764427982725L, -7821456235677382910L}).toString());
                return;
            }
            try {
                zzcglVar.zzB(Color.parseColor(str4));
                return;
            } catch (IllegalArgumentException unused2) {
                zzcec.zzj(new ObfuscatedString(new long[]{-1162283400444581304L, 5819763648633090955L, 5422490500181421482L, -3020827375643363599L, -3446861220388071313L, -5864229484047801259L, -4749139429367857740L, -4925243435674705241L}).toString());
                return;
            }
        }
        if (new ObfuscatedString(new long[]{8871429781773461704L, 974891564292361037L, 913722074040081044L}).toString().equals(str2)) {
            String str5 = (String) map.get(new ObfuscatedString(new long[]{-8284233024379002908L, 3780536525021830396L, -1299688369357148643L}).toString());
            if (str5 == null) {
                zzcec.zzj(new ObfuscatedString(new long[]{-3706961925028347864L, 781983804518004781L, 561965678303143780L, -7789037061236753591L, 8319030294817164L, 7840423060542712232L, 8260587340641794398L, -2886841520081623808L, 8182060225401115646L}).toString());
                HashMap hashMap = new HashMap();
                hashMap.put(new ObfuscatedString(new long[]{-5298882582639838038L, 713805073215462593L}).toString(), new ObfuscatedString(new long[]{-6675466233822026316L, -325035578665811058L, 3192908197602138741L}).toString());
                hashMap.put(new ObfuscatedString(new long[]{-3428918000820744975L, -4545147506468699014L}).toString(), new ObfuscatedString(new long[]{6015796454239309303L, -6826144028761909226L, 7624765863324644786L}).toString());
                zzcglVar.zzd(new ObfuscatedString(new long[]{-2346166044356801983L, 3851873592022208793L, -2136703713884577427L}).toString(), hashMap);
                return;
            }
            HashMap hashMap2 = new HashMap();
            for (String str6 : str5.split(new ObfuscatedString(new long[]{-7630364622933672141L, -4957976723105370204L}).toString())) {
                hashMap2.put(str6, com.google.android.gms.ads.internal.util.zzcn.zza(str6.trim()));
            }
            HashMap hashMap3 = new HashMap();
            hashMap3.put(new ObfuscatedString(new long[]{-4916650235061893517L, -8266111709133452368L}).toString(), new ObfuscatedString(new long[]{182919431959131470L, -2358530611901696049L, 2211085828152497526L}).toString());
            hashMap3.put(new ObfuscatedString(new long[]{4439461120025100156L, -7237600010830540685L, -1371548571715463912L}).toString(), hashMap2);
            zzcglVar.zzd(new ObfuscatedString(new long[]{8369091183015206467L, 4432293417416622338L, -7871346797753505724L}).toString(), hashMap3);
            return;
        }
        zzcga zzo = zzcglVar.zzo();
        if (zzo == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{-272209990563735955L, -1088872141461881892L, -2496603184144272591L, 7522476679762545696L, 234625618899952272L, 6472886665260579980L, -7792318448419036624L, -1086765871362481710L}).toString());
            return;
        }
        boolean equals = new ObfuscatedString(new long[]{-1981096528716411706L, -1559158534670794027L}).toString().equals(str2);
        boolean equals2 = new ObfuscatedString(new long[]{-2724821937304030643L, 878071121560981287L}).toString().equals(str2);
        if (!equals && !equals2) {
            zzcki zzq = zzcglVar.zzq();
            if (zzq != null) {
                if (new ObfuscatedString(new long[]{5441654283658262983L, -3531038269168903555L, -7327776952259471212L}).toString().equals(str2)) {
                    String str7 = (String) map.get(new ObfuscatedString(new long[]{-2252692072283330715L, -5039499546452758177L, 1110141395491936172L}).toString());
                    if (str7 == null) {
                        zzcec.zzj(new ObfuscatedString(new long[]{-3695970127760282435L, 1611856115719242851L, -5842330479060341443L, 1257880748109974907L, 3526125535950148544L, 4294637255973216603L, 83727718837749298L, -396517508747549575L, -7546789550287532193L}).toString());
                        return;
                    }
                    try {
                        zzq.zzt(Float.parseFloat(str7));
                        return;
                    } catch (NumberFormatException unused3) {
                        AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{2668930295516986111L, 8418211601559868883L, -2735919442657031110L, 1265347035533261113L, -5897763123885369011L, 3235205855849512397L, 1661271663848259707L, 5153822692252121257L, -4996132647772680669L, -662928383800090335L}), str7);
                        return;
                    }
                }
                if (new ObfuscatedString(new long[]{5190384444232836297L, 5212519869072819313L}).toString().equals(str2)) {
                    zzq.zzu();
                    return;
                }
            }
            zzcfz zza = zzo.zza();
            if (zza == null) {
                HashMap hashMap4 = new HashMap();
                hashMap4.put(new ObfuscatedString(new long[]{-2993929205922506535L, -2572111672915169480L}).toString(), new ObfuscatedString(new long[]{-9214396414398530432L, -3683751534815355892L, 7503332835103800846L}).toString());
                zzcglVar.zzd(new ObfuscatedString(new long[]{5950633439147887518L, 3419272370145782677L, 2355461133873528775L}).toString(), hashMap4);
                return;
            }
            if (new ObfuscatedString(new long[]{4483012842660716250L, -1222773916321850719L}).toString().equals(str2)) {
                Context context = zzcglVar.getContext();
                int zzb2 = zzb(context, map, new ObfuscatedString(new long[]{1195615721354215646L, 1759645787243198564L}).toString(), 0);
                float zzb3 = zzb(context, map, new ObfuscatedString(new long[]{1058434867323862742L, -3870183247486923179L}).toString(), 0);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, zzb2, zzb3, 0);
                zza.zzx(obtain);
                obtain.recycle();
                return;
            }
            if (new ObfuscatedString(new long[]{-4865820294412851248L, -3186926790162109221L, 2568085712517725105L}).toString().equals(str2)) {
                String str8 = (String) map.get(new ObfuscatedString(new long[]{4770707706235293409L, -3826093339665168851L}).toString());
                if (str8 == null) {
                    zzcec.zzj(new ObfuscatedString(new long[]{-8892875636785753663L, -79858904995701631L, 5644106013771283684L, 4247297511926968438L, 8095511388335985063L, 6036944037036916241L, 3851445376012311995L, 1356226772523762389L}).toString());
                    return;
                }
                try {
                    zza.zzw((int) (Float.parseFloat(str8) * 1000.0f));
                    return;
                } catch (NumberFormatException unused4) {
                    AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{-1764436301740583268L, 3077822882728978586L, -2885294454980666065L, -6887257430170845665L, 4928407235424710872L, 4390216034678624970L, 5967306216775051584L, 4939298303618560760L, -1977822585766506222L}), str8);
                    return;
                }
            }
            if (new ObfuscatedString(new long[]{-3139043124950202416L, 2930077254810477645L}).toString().equals(str2)) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzG)).booleanValue()) {
                    zza.setVisibility(8);
                    return;
                } else {
                    zza.setVisibility(4);
                    return;
                }
            }
            if (new ObfuscatedString(new long[]{8246516678902812551L, 535105324147627222L}).toString().equals(str2)) {
                zza.zzr(valueOf2);
                return;
            }
            if (new ObfuscatedString(new long[]{-8631233355482230560L, -8401938666795877494L, 8749288416994282254L}).toString().equals(str2)) {
                zzc(zza, map);
                return;
            }
            if (new ObfuscatedString(new long[]{-6042557812965941835L, -19749397997588039L}).toString().equals(str2)) {
                if (Boolean.parseBoolean((String) map.get(new ObfuscatedString(new long[]{-1688204277529912776L, -1028210109437532184L}).toString()))) {
                    zza.zzs();
                    return;
                } else {
                    zza.zzI();
                    return;
                }
            }
            if (new ObfuscatedString(new long[]{5856160011626471518L, -2088087127192895823L}).toString().equals(str2)) {
                zza.zzu();
                return;
            }
            if (new ObfuscatedString(new long[]{-4439154571188831812L, 1002142035742494809L}).toString().equals(str2)) {
                zza.zzv();
                return;
            }
            if (new ObfuscatedString(new long[]{1311117072727293668L, -3018502865623757697L}).toString().equals(str2)) {
                zza.setVisibility(0);
                return;
            }
            if (new ObfuscatedString(new long[]{1993801237622711026L, 7034604486892087281L}).toString().equals(str2)) {
                String str9 = (String) map.get(new ObfuscatedString(new long[]{7105400047620534760L, -8997420644367973097L}).toString());
                String obfuscatedString = new ObfuscatedString(new long[]{-8240916532662345429L, -5056382958494566042L, 7915833296257451298L, -1743222910579247940L}).toString();
                if (map.containsKey(obfuscatedString)) {
                    try {
                        valueOf = Integer.valueOf(Integer.parseInt((String) map.get(obfuscatedString)));
                    } catch (NumberFormatException unused5) {
                        AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{967741116169853336L, 1338331102972519836L, 5345664050703555346L, -4730986435897729885L, -3401042418587350085L, -5733708717376001616L, 5485718531303308260L, -4463281783270358937L, -806386428335850744L, -5500298066630267107L}), String.valueOf((String) map.get(obfuscatedString)));
                    }
                    String[] strArr = {str9};
                    str = (String) map.get(new ObfuscatedString(new long[]{4841936102486434120L, 1085554225790474991L}).toString());
                    if (str != null) {
                        try {
                            JSONArray jSONArray = new JSONArray(str);
                            String[] strArr2 = new String[jSONArray.length()];
                            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                strArr2[i2] = jSONArray.getString(i2);
                            }
                            strArr = strArr2;
                        } catch (JSONException unused6) {
                            AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{-7339187983731420110L, -8754037449199363310L, -2152970653385099632L, -6451826133125355455L, 254478334458649459L, -8128820237130399259L, 6058380278588539984L}), str);
                            strArr = new String[]{str9};
                        }
                    }
                    if (valueOf != null) {
                        zzcglVar.zzA(valueOf.intValue());
                    }
                    zza.zzE(str9, strArr);
                    return;
                }
                valueOf = null;
                String[] strArr3 = {str9};
                str = (String) map.get(new ObfuscatedString(new long[]{4841936102486434120L, 1085554225790474991L}).toString());
                if (str != null) {
                }
                if (valueOf != null) {
                }
                zza.zzE(str9, strArr3);
                return;
            }
            if (new ObfuscatedString(new long[]{-63368500828884056L, 3705682884635976772L, 44676864032107577L}).toString().equals(str2)) {
                Context context2 = zzcglVar.getContext();
                zza.zzH(zzb(context2, map, new ObfuscatedString(new long[]{2230761840981278165L, -1093276504846705383L}).toString(), 0), zzb(context2, map, new ObfuscatedString(new long[]{3387330662527568849L, 3095992741167447970L}).toString(), 0));
                if (this.zza) {
                    return;
                }
                zzcglVar.zzu();
                this.zza = true;
                return;
            }
            if (new ObfuscatedString(new long[]{4157921859032482645L, -539829284340135421L}).toString().equals(str2)) {
                String str10 = (String) map.get(new ObfuscatedString(new long[]{4148035408078669869L, -2363605457056147316L}).toString());
                if (str10 == null) {
                    zzcec.zzj(new ObfuscatedString(new long[]{-3963692295630946706L, 1370666715416075453L, 3748305734745877407L, 7296016912332865059L, -4217091965014625994L, -6383725909992433543L, 3743317052808170596L}).toString());
                    return;
                }
                try {
                    zza.zzG(Float.parseFloat(str10));
                    return;
                } catch (NumberFormatException unused7) {
                    AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{-8553866370871717019L, 6304893677866229739L, 5591796640090081587L, -3771163648589233588L, 539334058072948759L, 659393349950088046L, -8486127384241928736L, -2147651051991971798L, 1986619947027584909L}), str10);
                    return;
                }
            }
            if (new ObfuscatedString(new long[]{6679512621494995166L, 5741491523494939499L, 7919266106024445641L}).toString().equals(str2)) {
                zza.zzn();
                return;
            } else {
                AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{2944499405066413596L, -252358502218401769L, -3469110864909654138L, 4628547127986013859L}), str2);
                return;
            }
        }
        Context context3 = zzcglVar.getContext();
        int zzb4 = zzb(context3, map, new ObfuscatedString(new long[]{6757336838943653152L, 2504048665521687565L}).toString(), 0);
        int zzb5 = zzb(context3, map, new ObfuscatedString(new long[]{7847445850677666836L, -429014983632067544L}).toString(), 0);
        int zzb6 = zzb(context3, map, new ObfuscatedString(new long[]{-6957040414487681392L, 3254420961705036783L}).toString(), -1);
        zzbfu zzbfuVar = zzbgc.zzdK;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue()) {
            if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{5188265400651629873L, 8225370610177694763L, -6385637332809040607L, 2313924704914798653L, 4165994158173151423L, -8953792912412723153L}).toString() + zzb6 + new ObfuscatedString(new long[]{7098821659570210802L, -9197551825481718318L, 3042145205833431530L, 6719675028697642596L, 6143878152541515740L, -1036760611820688485L}).toString() + zzcglVar.zzh() + new ObfuscatedString(new long[]{3674273340547081833L, 5236748051854809963L}).toString() + zzb4 + new ObfuscatedString(new long[]{8991246958222668146L, -6769205070394166755L}).toString());
            }
            min = Math.min(zzb6, zzcglVar.zzh() - zzb4);
        } else if (zzb6 == -1) {
            min = zzcglVar.zzh();
        } else {
            min = Math.min(zzb6, zzcglVar.zzh());
        }
        int zzb7 = zzb(context3, map, new ObfuscatedString(new long[]{5499852118239907082L, 6176278875258581445L}).toString(), -1);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue()) {
            if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-2371457958303115958L, -4969282093056875932L, 227973747920536225L, 7374429600304573580L, 7153672983483592015L, 7052912395921630141L}).toString() + zzb7 + new ObfuscatedString(new long[]{8487322648566747815L, 6794054853465919821L, -8051526216975353734L, 5454742802200760762L, -2611190243027283937L, 1488722448493398641L}).toString() + zzcglVar.zzg() + new ObfuscatedString(new long[]{-4438843505272218637L, 6760994175119333017L}).toString() + zzb5 + new ObfuscatedString(new long[]{-6911944786517368254L, 263635814050440847L}).toString());
            }
            min2 = Math.min(zzb7, zzcglVar.zzg() - zzb5);
        } else if (zzb7 == -1) {
            min2 = zzcglVar.zzg();
        } else {
            min2 = Math.min(zzb7, zzcglVar.zzg());
        }
        int i3 = min2;
        try {
            i = Integer.parseInt((String) map.get(new ObfuscatedString(new long[]{-937641993623078855L, 7625205469721510301L}).toString()));
        } catch (NumberFormatException unused8) {
            i = 0;
        }
        boolean parseBoolean = Boolean.parseBoolean((String) map.get(new ObfuscatedString(new long[]{-2438602516224838088L, -220471951255775016L, -3195175455883495108L}).toString()));
        if (equals && zzo.zza() == null) {
            zzo.zzd(zzb4, zzb5, min, i3, i, parseBoolean, new zzcgk((String) map.get(new ObfuscatedString(new long[]{7629266495715958622L, 1253380383682901303L}).toString())));
            zzcfz zza2 = zzo.zza();
            if (zza2 != null) {
                zzc(zza2, map);
                return;
            }
            return;
        }
        zzo.zzc(zzb4, zzb5, min, i3);
    }
}
