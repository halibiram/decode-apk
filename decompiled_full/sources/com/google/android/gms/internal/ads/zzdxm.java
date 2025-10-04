package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.JsonReader;
import com.google.android.gms.ads.RequestConfiguration;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzdxm extends zzbog {
    private final zzdxp zza;
    private final zzdxk zzb;
    private final Map zzc = new HashMap();

    public zzdxm(zzdxp zzdxpVar, zzdxk zzdxkVar) {
        this.zza = zzdxpVar;
        this.zzb = zzdxkVar;
    }

    private static com.google.android.gms.ads.internal.client.zzl zzc(Map map) {
        char c;
        com.google.android.gms.ads.internal.client.zzm zzmVar = new com.google.android.gms.ads.internal.client.zzm();
        String str = (String) map.get(new ObfuscatedString(new long[]{-6457557591838161082L, -583820172925467580L, 8120083516188119429L}).toString());
        if (str == null) {
            return zzmVar.zza();
        }
        JsonReader jsonReader = new JsonReader(new StringReader(Uri.decode(str)));
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                switch (nextName.hashCode()) {
                    case -1289032093:
                        if (nextName.equals(new ObfuscatedString(new long[]{-7573866818330310653L, -1323741768881273281L}).toString())) {
                            c = 0;
                            break;
                        }
                        break;
                    case -839117230:
                        if (nextName.equals(new ObfuscatedString(new long[]{-1853966949185072985L, -8945230889893118701L, 6693996578100944605L}).toString())) {
                            c = 2;
                            break;
                        }
                        break;
                    case -733436947:
                        if (nextName.equals(new ObfuscatedString(new long[]{-1582387786913609314L, 6858824042039249144L, 3509393740971494796L, -4217197750054641614L}).toString())) {
                            c = 4;
                            break;
                        }
                        break;
                    case -99890337:
                        if (nextName.equals(new ObfuscatedString(new long[]{-5286976958257925070L, 1801897347641684633L, -7473335992262573748L, -3486870306841946166L}).toString())) {
                            c = 6;
                            break;
                        }
                        break;
                    case 523149226:
                        if (nextName.equals(new ObfuscatedString(new long[]{-3758633931580863462L, 6082595216153430145L}).toString())) {
                            c = 1;
                            break;
                        }
                        break;
                    case 597632527:
                        if (nextName.equals(new ObfuscatedString(new long[]{-1413804540850118065L, -2349786619211771103L, -8702278387393050831L, 2551115749040058325L}).toString())) {
                            c = 5;
                            break;
                        }
                        break;
                    case 1411582723:
                        if (nextName.equals(new ObfuscatedString(new long[]{-8522128234625744455L, 73025809216796423L, -9191446633731847008L, -7692837063336381064L, 6642533287951098782L}).toString())) {
                            c = 3;
                            break;
                        }
                        break;
                }
                c = 65535;
                switch (c) {
                    case 0:
                        jsonReader.beginObject();
                        Bundle bundle = new Bundle();
                        while (jsonReader.hasNext()) {
                            bundle.putString(jsonReader.nextName(), jsonReader.nextString());
                        }
                        jsonReader.endObject();
                        zzmVar.zzb(bundle);
                        break;
                    case 1:
                        jsonReader.beginArray();
                        ArrayList arrayList = new ArrayList();
                        while (jsonReader.hasNext()) {
                            arrayList.add(jsonReader.nextString());
                        }
                        jsonReader.endArray();
                        zzmVar.zze(arrayList);
                        break;
                    case 2:
                        zzmVar.zzd(jsonReader.nextBoolean());
                        break;
                    case 3:
                        if (jsonReader.nextBoolean()) {
                            zzmVar.zzg(1);
                            break;
                        } else {
                            zzmVar.zzg(0);
                            break;
                        }
                    case 4:
                        if (jsonReader.nextBoolean()) {
                            zzmVar.zzh(1);
                            break;
                        } else {
                            zzmVar.zzh(0);
                            break;
                        }
                    case 5:
                        String nextString = jsonReader.nextString();
                        if (!RequestConfiguration.zza.contains(nextString)) {
                            break;
                        } else {
                            zzmVar.zzf(nextString);
                            break;
                        }
                    case 6:
                        zzmVar.zzc(jsonReader.nextInt());
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
        } catch (IOException unused) {
            zzcec.zze(new ObfuscatedString(new long[]{6415409417492778971L, -5725914180287199813L, 1950143360967575131L, -578454244703883303L, -2359813739084482893L, -6499591631287132089L, 1223611901603516131L, -1112274040629761563L}).toString());
        }
        com.google.android.gms.ads.internal.client.zzl zza = zzmVar.zza();
        Bundle bundle2 = zza.zzm.getBundle(new ObfuscatedString(new long[]{4946542698974680768L, -2936775568888739856L, -8334239393301298544L, -5095083128964332223L, -3816949476650873028L, -8286808791111909322L, -3337319829613535131L}).toString());
        if (bundle2 == null) {
            bundle2 = zza.zzc;
            zza.zzm.putBundle(new ObfuscatedString(new long[]{-465429398276379051L, 1776145493913898946L, 6119530629836091800L, -1569292725097949906L, -1583259616281230633L, -4863513630648882005L, 718251142360187472L}).toString(), bundle2);
        }
        return new com.google.android.gms.ads.internal.client.zzl(zza.zza, zza.zzb, bundle2, zza.zzd, zza.zze, zza.zzf, zza.zzg, zza.zzh, zza.zzi, zza.zzj, zza.zzk, zza.zzl, zza.zzm, zza.zzn, zza.zzo, zza.zzp, zza.zzq, zza.zzr, zza.zzs, zza.zzt, zza.zzu, zza.zzv, zza.zzw, zza.zzx, zza.zzy);
    }

    @Override // com.google.android.gms.internal.ads.zzboh
    public final void zze() {
        this.zzc.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzboh
    public final void zzf(String str) {
        char c;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjF)).booleanValue()) {
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-4721880620054131898L, 6448163251550075921L, 4113038241234924538L, -7977442088861448481L}).toString().concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        com.google.android.gms.ads.internal.zzt.zzp();
        Map zzO = com.google.android.gms.ads.internal.util.zzt.zzO(parse);
        String str2 = (String) zzO.get(new ObfuscatedString(new long[]{-5789590492768278640L, 6225683444394362365L}).toString());
        if (TextUtils.isEmpty(str2)) {
            zzcec.zze(new ObfuscatedString(new long[]{2497921264640933687L, 6299015225974171521L, -3789135205750186140L, -1940980425618786457L, -8695416438934322699L, 5090336824371914062L}).toString());
            return;
        }
        int hashCode = str2.hashCode();
        char c2 = 65535;
        if (hashCode != 579053441) {
            if (hashCode == 871091088 && str2.equals(new ObfuscatedString(new long[]{7357419190385425247L, -6066441403848085507L, 5474166620125523022L}).toString())) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str2.equals(new ObfuscatedString(new long[]{4894532739094806499L, 5928637091441428570L, -8434641529898588888L}).toString())) {
                c = 1;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                String str3 = (String) zzO.get(new ObfuscatedString(new long[]{-5862459124773309150L, 3546795931188738295L}).toString());
                try {
                    Objects.requireNonNull(str3);
                    long parseLong = Long.parseLong(str3);
                    switch (str2.hashCode()) {
                        case -1790951212:
                            if (str2.equals(new ObfuscatedString(new long[]{2234533467578901333L, 8360501117522035978L, 8508452164812626853L, -8694739557396394478L}).toString())) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case -1266374734:
                            if (str2.equals(new ObfuscatedString(new long[]{-8661933063120586254L, 8205745229388751656L, -7570983504522007410L}).toString())) {
                                c2 = 5;
                                break;
                            }
                            break;
                        case -257098725:
                            if (str2.equals(new ObfuscatedString(new long[]{7166811211863430385L, 251125422662871235L, -5831967724187475951L}).toString())) {
                                c2 = 4;
                                break;
                            }
                            break;
                        case 393881811:
                            if (str2.equals(new ObfuscatedString(new long[]{5677077842454053427L, -5965239257994178199L, -2059841880451776341L, 922844467597571577L}).toString())) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case 585513149:
                            if (str2.equals(new ObfuscatedString(new long[]{6631081273975141947L, -5128552026053906756L, -6786744664726584017L, 7439615670997182730L}).toString())) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 1671767583:
                            if (str2.equals(new ObfuscatedString(new long[]{-7782449164406903642L, 5575853115909336885L}).toString())) {
                                c2 = 6;
                                break;
                            }
                            break;
                        case 2109237041:
                            if (str2.equals(new ObfuscatedString(new long[]{7784492763566022549L, 1330381508070485177L, -7869010359482101797L, 7511183794636425775L}).toString())) {
                                c2 = 3;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            if (this.zzc.size() >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjG)).intValue()) {
                                zzcec.zzj(new ObfuscatedString(new long[]{1729039880899267059L, 5488880523850693247L, -1031174769833715700L, -4556557624761253473L, -7694552446892396666L, -4028772920508797339L, -2366611247023967354L, -4655778904275062323L}).toString());
                                this.zzb.zzi(parseLong);
                                return;
                            }
                            Map map = this.zzc;
                            Long valueOf = Long.valueOf(parseLong);
                            if (map.containsKey(valueOf)) {
                                zzcec.zze(new ObfuscatedString(new long[]{-4222588257298753458L, 1743349149202975563L, -6366458290325799077L, 2031592120389075644L, 541846599054419890L, 1454352639678328052L, 5968384996408546206L}).toString());
                                this.zzb.zzi(parseLong);
                                return;
                            }
                            String str4 = (String) zzO.get(new ObfuscatedString(new long[]{8490374138018790007L, -6461977350100647550L}).toString());
                            if (TextUtils.isEmpty(str4)) {
                                zzcec.zzj(new ObfuscatedString(new long[]{4398717069517782868L, -4668520394204739170L, -6556057315992899157L, -239907064464990674L, 4077835603176564715L, -721022765112180953L, 866594559472116615L}).toString());
                                this.zzb.zzi(parseLong);
                                return;
                            }
                            zzdxg zzb = this.zza.zzb();
                            zzb.zzb(parseLong);
                            zzb.zza(str4);
                            this.zzc.put(valueOf, zzb.zzc().zza());
                            this.zzb.zzh(parseLong);
                            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-5111082549930490560L, 8483668480112306587L, 4497641901943071571L, 2511522085916858825L, -7436518642200352941L}).toString() + parseLong + new ObfuscatedString(new long[]{118513648852084143L, 5790168420826711004L, -8391593115726763729L}).toString() + str4);
                            return;
                        case 1:
                            zzdxf zzdxfVar = (zzdxf) this.zzc.get(Long.valueOf(parseLong));
                            if (zzdxfVar == null) {
                                zzcec.zze(new ObfuscatedString(new long[]{-6048074530375869988L, -1326755878152206352L, 1579392835303352330L, -8124940199468945121L, -3405522147952630860L, 5653070515343335531L, 9192101609745166541L}).toString());
                                this.zzb.zzf(parseLong);
                                return;
                            } else {
                                zzdxfVar.zzb(zzc(zzO));
                                return;
                            }
                        case 2:
                            zzdxf zzdxfVar2 = (zzdxf) this.zzc.get(Long.valueOf(parseLong));
                            if (zzdxfVar2 == null) {
                                zzcec.zze(new ObfuscatedString(new long[]{7096826035004034698L, 8878717318729369752L, -9115133667509206055L, -6039204051500279564L, -4086862239445446204L, 6185179908733623430L, -8358685517838631150L}).toString());
                                this.zzb.zzf(parseLong);
                                return;
                            } else {
                                zzdxfVar2.zzc();
                                return;
                            }
                        case 3:
                            if (this.zzc.size() >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjG)).intValue()) {
                                zzcec.zzj(new ObfuscatedString(new long[]{4543494866176096071L, -1544045064957463351L, 6691996360186926980L, 1671796883734010579L, 7387436823260569220L, -1169573674313074137L, 6980726176691295107L, 7386420291515716008L}).toString());
                                this.zzb.zzi(parseLong);
                                return;
                            }
                            Map map2 = this.zzc;
                            Long valueOf2 = Long.valueOf(parseLong);
                            if (map2.containsKey(valueOf2)) {
                                zzcec.zze(new ObfuscatedString(new long[]{-6081571482603123022L, 9038940439396297939L, -9172778243662457003L, -228232776912624867L, 3914573160843039971L, -6400006549986983018L, 6219715749490823314L}).toString());
                                this.zzb.zzi(parseLong);
                                return;
                            }
                            String str5 = (String) zzO.get(new ObfuscatedString(new long[]{9148516821915499353L, -2237068031460626638L}).toString());
                            if (TextUtils.isEmpty(str5)) {
                                zzcec.zzj(new ObfuscatedString(new long[]{-3458678943382842761L, -8925145799287265887L, 2110623748755380015L, 653826811843360535L, 3265986652256905096L, -3398472238981395794L, 8059689459507267102L}).toString());
                                this.zzb.zzi(parseLong);
                                return;
                            }
                            zzdxg zzb2 = this.zza.zzb();
                            zzb2.zzb(parseLong);
                            zzb2.zza(str5);
                            this.zzc.put(valueOf2, zzb2.zzc().zzb());
                            this.zzb.zzh(parseLong);
                            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-6777446986096373701L, -4649522426455977810L, -1474904464481134286L, 8962423181494338014L}).toString() + parseLong + new ObfuscatedString(new long[]{4725636220179087266L, 5163522136483143121L, 1709760068090132744L}).toString() + str5);
                            return;
                        case 4:
                            zzdxf zzdxfVar3 = (zzdxf) this.zzc.get(Long.valueOf(parseLong));
                            if (zzdxfVar3 == null) {
                                zzcec.zze(new ObfuscatedString(new long[]{-3965850801377187338L, 711606281600678809L, -5557481947431441830L, -2518837426273174953L, 2561105846057114149L, -4383561362983012366L, -4353775635475265643L}).toString());
                                this.zzb.zzq(parseLong);
                                return;
                            } else {
                                zzdxfVar3.zzb(zzc(zzO));
                                return;
                            }
                        case 5:
                            zzdxf zzdxfVar4 = (zzdxf) this.zzc.get(Long.valueOf(parseLong));
                            if (zzdxfVar4 == null) {
                                zzcec.zze(new ObfuscatedString(new long[]{4613620679850538979L, 767080390036611417L, -4690430745306291831L, -8225483228098634295L, -2311823762956986312L, 6347556656211603275L, 4043152905680589597L}).toString());
                                this.zzb.zzq(parseLong);
                                return;
                            } else {
                                zzdxfVar4.zzc();
                                return;
                            }
                        case 6:
                            Map map3 = this.zzc;
                            Long valueOf3 = Long.valueOf(parseLong);
                            zzdxf zzdxfVar5 = (zzdxf) map3.get(valueOf3);
                            if (zzdxfVar5 == null) {
                                zzcec.zze(new ObfuscatedString(new long[]{1116419610616381296L, 4445364880057130545L, 4123503658780532177L, 1185327638098002527L, -6595462567810534419L, 1041821177414448129L, -8674257574583526066L, -1424647118862312098L}).toString());
                                return;
                            }
                            zzdxfVar5.zza();
                            this.zzc.remove(valueOf3);
                            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{3314382363246537122L, -7871151646558615534L, 1025518220639635201L}).toString() + parseLong);
                            return;
                        default:
                            zzcec.zze(new ObfuscatedString(new long[]{-978972394277847199L, -6684378919737086777L, 8368409215649532418L, 8067195857037566672L, 6548246587569482175L, 373446098682066194L}).toString().concat(str2));
                            return;
                    }
                } catch (NullPointerException | NumberFormatException unused) {
                    zzcec.zze(new ObfuscatedString(new long[]{-6800961918512001245L, -6518066624351485920L, 6249044833030700570L, -9156424203971481733L, 4871782303481150997L, -3117507831853665232L, 5750725262694293624L}).toString().concat(String.valueOf(str3)));
                    return;
                }
            }
            Iterator it = this.zzc.values().iterator();
            while (it.hasNext()) {
                ((zzdxf) it.next()).zza();
            }
            this.zzc.clear();
            return;
        }
        this.zzc.clear();
        this.zzb.zza();
    }
}
