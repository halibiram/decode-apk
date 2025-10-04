package com.google.android.gms.internal.consent_sdk;

import android.util.JsonReader;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzck {

    @Nullable
    public String zza;

    @Nullable
    public String zzb;

    @Nullable
    public String zzc;
    public int zzf = 1;
    public List zzd = Collections.emptyList();
    public List zze = Collections.emptyList();
    public int zzg = 1;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x033e, code lost:
    
        switch(r9) {
            case 0: goto L151;
            case 1: goto L150;
            case 2: goto L149;
            case 3: goto L148;
            case 4: goto L147;
            case 5: goto L146;
            case 6: goto L145;
            case 7: goto L144;
            default: goto L165;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x035b, code lost:
    
        r11 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x035e, code lost:
    
        r11 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0360, code lost:
    
        r11 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0362, code lost:
    
        r11 = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0364, code lost:
    
        r11 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0366, code lost:
    
        r11 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0368, code lost:
    
        r11 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0369, code lost:
    
        r6.zzf = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x035a, code lost:
    
        throw new java.io.IOException(new com.panda912.muddy.ObfuscatedString(new long[]{-4495666375427080296L, 3595903176519416560L, -600431996143061230L, -3290625527428315472L, -8498023084392928113L, 6563343443221663821L, -2751889355219340914L, 7814518760459298314L, -8985276721035283540L, -5254845453650265225L, 1573482845836580661L, 8386570596036891485L, -3298237934112102050L, -8442088159819443020L, -4620909456389189796L, 1881105700283360334L}).toString().concat(r7));
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0235  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzck zza(JsonReader jsonReader) {
        char c;
        char c2;
        char c3;
        int i;
        zzck zzckVar = new zzck();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c4 = 65535;
            int i2 = 1;
            switch (nextName.hashCode()) {
                case -2001388947:
                    if (nextName.equals(new ObfuscatedString(new long[]{-8704460351856470003L, -2676750252490755681L, 4893179245872812326L}).toString())) {
                        c = 0;
                        break;
                    }
                    break;
                case -1938755376:
                    if (nextName.equals(new ObfuscatedString(new long[]{4274241619392497697L, 4449353697305762439L, 4530050822385233713L}).toString())) {
                        c = 3;
                        break;
                    }
                    break;
                case -1851537225:
                    if (nextName.equals(new ObfuscatedString(new long[]{4516121730234450520L, 8799942143775886166L, 146268336743280921L, 6008511757318186308L}).toString())) {
                        c = 2;
                        break;
                    }
                    break;
                case -1324537865:
                    if (nextName.equals(new ObfuscatedString(new long[]{2033195357510371025L, 8707465519675459286L, -2319913001356467063L, 4863850820623946476L}).toString())) {
                        c = 6;
                        break;
                    }
                    break;
                case -1161803523:
                    if (nextName.equals(new ObfuscatedString(new long[]{-4082676190914120260L, 3862596636742747955L}).toString())) {
                        c = 5;
                        break;
                    }
                    break;
                case -986806987:
                    if (nextName.equals(new ObfuscatedString(new long[]{7752801847299808459L, -6281521310838210739L, 7459643093941678184L, -8358121826211530585L}).toString())) {
                        c = 4;
                        break;
                    }
                    break;
                case -790907624:
                    if (nextName.equals(new ObfuscatedString(new long[]{-6352963118642887224L, 7678374428342045870L, -1883342410316836802L, -8598961370158203555L}).toString())) {
                        c = 1;
                        break;
                    }
                    break;
            }
            c = 65535;
            switch (c) {
                case 0:
                    String nextString = jsonReader.nextString();
                    switch (nextString.hashCode()) {
                        case -2058725357:
                            if (nextString.equals(new ObfuscatedString(new long[]{-5684798980416899878L, 5276094903572230035L, 1828553388037104228L, 1304160281802475737L, -5398562029203155780L}).toString())) {
                                c4 = 4;
                                break;
                            }
                            break;
                        case -1969035850:
                            if (nextString.equals(new ObfuscatedString(new long[]{6994341754915124964L, -5790464979912141784L, 168486380630498526L, 8658876155675578817L}).toString())) {
                                c4 = 6;
                                break;
                            }
                            break;
                        case -1263695752:
                            if (nextString.equals(new ObfuscatedString(new long[]{-7307146153426210905L, -237351752082918526L, -2815804539205885968L, 3513263243900442294L}).toString())) {
                                c4 = 0;
                                break;
                            }
                            break;
                        case -954325659:
                            if (nextString.equals(new ObfuscatedString(new long[]{-1345900990136301045L, -6707251234309202325L, -7417217099881799527L, -3256874158216094053L, 3350461033260846900L, 4209678890936445481L}).toString())) {
                                c4 = 2;
                                break;
                            }
                            break;
                        case -918677260:
                            if (nextString.equals(new ObfuscatedString(new long[]{-63467660104910603L, -4809900189546668487L, -1912310135185059382L, -6191405210671249712L, -2120486274164007572L, 2968884868561336069L, 484723406203600490L}).toString())) {
                                c4 = 7;
                                break;
                            }
                            break;
                        case 429411856:
                            if (nextString.equals(new ObfuscatedString(new long[]{-7010265384055009769L, -1996536119899897314L, 6007753333547795031L, 5380582348648320819L, -1081681885206833483L}).toString())) {
                                c4 = 3;
                                break;
                            }
                            break;
                        case 467888915:
                            if (nextString.equals(new ObfuscatedString(new long[]{3653953580668563560L, -2312478827950716118L, 1011346444529464401L, 544081536887029295L, -5201012929483742562L}).toString())) {
                                c4 = 1;
                                break;
                            }
                            break;
                        case 1725474845:
                            if (nextString.equals(new ObfuscatedString(new long[]{4502770034447631914L, -2840341326229952113L, -8633151518354491692L, 7209992650774865572L, -3065701385079533446L}).toString())) {
                                c4 = 5;
                                break;
                            }
                            break;
                    }
                case 1:
                    zzckVar.zza = jsonReader.nextString();
                    break;
                case 2:
                    zzckVar.zzb = jsonReader.nextString();
                    break;
                case 3:
                    zzckVar.zzc = jsonReader.nextString();
                    break;
                case 4:
                    zzckVar.zzd = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        zzckVar.zzd.add(jsonReader.nextString());
                    }
                    jsonReader.endArray();
                    break;
                case 5:
                    zzckVar.zze = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        zzcj zzcjVar = new zzcj();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String nextName2 = jsonReader.nextName();
                            int hashCode = nextName2.hashCode();
                            if (hashCode != -2105551094) {
                                if (hashCode == 1583758243 && nextName2.equals(new ObfuscatedString(new long[]{-1219432110082585922L, 6913815649180646985L, 2252388051580137449L}).toString())) {
                                    c2 = 0;
                                }
                                c2 = 65535;
                            } else {
                                if (nextName2.equals(new ObfuscatedString(new long[]{-4208141361640254723L, -1005707598128537157L, 3589621404249076052L}).toString())) {
                                    c2 = 1;
                                }
                                c2 = 65535;
                            }
                            if (c2 != 0) {
                                if (c2 != 1) {
                                    jsonReader.skipValue();
                                } else {
                                    zzcjVar.zza = jsonReader.nextString();
                                }
                            } else {
                                String nextString2 = jsonReader.nextString();
                                int hashCode2 = nextString2.hashCode();
                                if (hashCode2 != 64208429) {
                                    if (hashCode2 != 82862015) {
                                        if (hashCode2 == 1856333582 && nextString2.equals(new ObfuscatedString(new long[]{8160930860627182966L, 5082865489994970118L, 564632490361237899L, 3910470020952684642L}).toString())) {
                                            c3 = 0;
                                            if (c3 == 0) {
                                                if (c3 != 1) {
                                                    if (c3 == 2) {
                                                        i = 3;
                                                    } else {
                                                        throw new IOException(new ObfuscatedString(new long[]{1898713044721415400L, 4718829204578325096L, 2940270622342506792L, 1263687134921678964L, 968209792509829340L, 467549436426931292L, -5758513428417460319L, -4170943043504826582L, 3767588809765586744L, -4150381336745426763L, 5093863325741828830L, 1279229409804002932L, 2523299913627030783L, -7891798435222324625L, 4752070617503804912L, -4116337479536498743L, -7979970939851453267L}).toString().concat(nextString2));
                                                    }
                                                } else {
                                                    i = 2;
                                                }
                                            } else {
                                                i = 1;
                                            }
                                            zzcjVar.zzb = i;
                                        }
                                        c3 = 65535;
                                        if (c3 == 0) {
                                        }
                                        zzcjVar.zzb = i;
                                    } else {
                                        if (nextString2.equals(new ObfuscatedString(new long[]{-1230415317686827212L, 1882009753187770583L}).toString())) {
                                            c3 = 1;
                                            if (c3 == 0) {
                                            }
                                            zzcjVar.zzb = i;
                                        }
                                        c3 = 65535;
                                        if (c3 == 0) {
                                        }
                                        zzcjVar.zzb = i;
                                    }
                                } else {
                                    if (nextString2.equals(new ObfuscatedString(new long[]{-3292757541326237855L, -891573338611790732L}).toString())) {
                                        c3 = 2;
                                        if (c3 == 0) {
                                        }
                                        zzcjVar.zzb = i;
                                    }
                                    c3 = 65535;
                                    if (c3 == 0) {
                                    }
                                    zzcjVar.zzb = i;
                                }
                            }
                        }
                        jsonReader.endObject();
                        zzckVar.zze.add(zzcjVar);
                    }
                    jsonReader.endArray();
                    break;
                case 6:
                    String nextString3 = jsonReader.nextString();
                    int hashCode3 = nextString3.hashCode();
                    if (hashCode3 != -1888946261) {
                        if (hashCode3 != 389487519) {
                            if (hashCode3 == 433141802 && nextString3.equals(new ObfuscatedString(new long[]{-264522082614347601L, 2633965392921097353L}).toString())) {
                                c4 = 0;
                            }
                        } else if (nextString3.equals(new ObfuscatedString(new long[]{940363929836801492L, 9015438071954368066L}).toString())) {
                            c4 = 1;
                        }
                    } else if (nextString3.equals(new ObfuscatedString(new long[]{2404237269981005077L, -8441881928437207996L, -9070453471805214453L}).toString())) {
                        c4 = 2;
                    }
                    if (c4 != 0) {
                        if (c4 != 1) {
                            if (c4 == 2) {
                                i2 = 3;
                            } else {
                                throw new IOException(new ObfuscatedString(new long[]{5759769764355895469L, 9158011696790688235L, 3187285824578046701L, -569202783516886597L, 3685919454581307422L, 4179717790010422139L, 9181373428724164711L, 6977304216153768020L, 1537413200609519615L, -7042528039485612621L, 8820042648601815139L, -5951076447062313732L, -2832085359615113798L, -4949030629172781268L, -4794478039446214084L, -5352945737584833845L, -6000729266059347789L, 5098340326900680993L}).toString().concat(nextString3));
                            }
                        } else {
                            i2 = 2;
                        }
                    }
                    zzckVar.zzg = i2;
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return zzckVar;
    }
}
