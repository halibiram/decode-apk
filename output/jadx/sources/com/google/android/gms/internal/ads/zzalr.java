package com.google.android.gms.internal.ads;

import android.text.Layout;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes2.dex */
public final class zzalr implements zzakr {
    private final XmlPullParserFactory zzi;
    private static final Pattern zzc = Pattern.compile(new ObfuscatedString(new long[]{2831565202464223114L, 1399526730764016705L, 519609431676617610L, 7132946682267522383L, 3900049116234275972L, -5154568453964703084L, 4389651840084652668L, -4582537797370974630L, -7002284024569581192L, 9218610858349399557L, -4439509583881527720L, 4694439681901089969L}).toString());
    private static final Pattern zzd = Pattern.compile(new ObfuscatedString(new long[]{-1702858387570741407L, -5553944401538454659L, -6607027527341161146L, -8956886902300723538L, 7244675882030498092L, -8043420865135116500L}).toString());
    private static final Pattern zze = Pattern.compile(new ObfuscatedString(new long[]{1214828546612665869L, 6633025164374910259L, 1345584872167227708L, -914965068277992421L, -1437790091744789831L}).toString());
    static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{-8793047087533452892L, 5110973973431806736L, 1412865891454181421L, -1431719651647162380L}).toString());
    static final Pattern zzb = Pattern.compile(new ObfuscatedString(new long[]{4252358548060512667L, 6123467807430554223L, 4825225060169177500L, -1268861108341607976L, 7291159799937483052L}).toString());
    private static final Pattern zzf = Pattern.compile(new ObfuscatedString(new long[]{4804511942202818024L, -7298082914102254032L, 973283941027131830L, -3315877472583296787L, 1107322342636596805L}).toString());
    private static final Pattern zzg = Pattern.compile(new ObfuscatedString(new long[]{-8047420375303888630L, -1892507579421887362L, -4489926653533087962L}).toString());
    private static final zzalp zzh = new zzalp(30.0f, 1, 1);

    public zzalr() {
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.zzi = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException(new ObfuscatedString(new long[]{-5636904172087887519L, 5982201515583060236L, -9022570276908947036L, 6999394534453316973L, 7409263017143787118L, -7627635353703674540L, -4546948646356241722L}).toString(), e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e4, code lost:
    
        if (r13.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-7538632035504885700L, 3820201280522527936L}).toString()) != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static long zzc(String str, zzalp zzalpVar) {
        double d;
        double d2;
        double d3;
        double d4;
        Matcher matcher = zzc.matcher(str);
        char c = 2;
        if (matcher.matches()) {
            String group = matcher.group(1);
            group.getClass();
            long parseLong = Long.parseLong(group) * 3600;
            String group2 = matcher.group(2);
            group2.getClass();
            long parseLong2 = Long.parseLong(group2) * 60;
            String group3 = matcher.group(3);
            group3.getClass();
            double d5 = parseLong + parseLong2;
            double parseLong3 = Long.parseLong(group3);
            String group4 = matcher.group(4);
            double d6 = 0.0d;
            if (group4 != null) {
                d3 = Double.parseDouble(group4);
            } else {
                d3 = 0.0d;
            }
            double d7 = d5 + parseLong3;
            String group5 = matcher.group(5);
            if (group5 != null) {
                d4 = ((float) Long.parseLong(group5)) / zzalpVar.zza;
            } else {
                d4 = 0.0d;
            }
            double d8 = d7 + d3;
            if (matcher.group(6) != null) {
                d6 = (Long.parseLong(r13) / zzalpVar.zzb) / zzalpVar.zza;
            }
            return (long) ((d8 + d4 + d6) * 1000000.0d);
        }
        Matcher matcher2 = zzd.matcher(str);
        if (matcher2.matches()) {
            String group6 = matcher2.group(1);
            group6.getClass();
            double parseDouble = Double.parseDouble(group6);
            String group7 = matcher2.group(2);
            group7.getClass();
            int hashCode = group7.hashCode();
            if (hashCode != 102) {
                if (hashCode != 104) {
                    if (hashCode != 109) {
                        if (hashCode != 3494) {
                            if (hashCode != 115) {
                                if (hashCode == 116 && group7.equals(new ObfuscatedString(new long[]{-5774840289220149795L, -3218394262567902193L}).toString())) {
                                    c = 5;
                                }
                                c = 65535;
                            }
                        } else {
                            if (group7.equals(new ObfuscatedString(new long[]{3484059811466052475L, 3396169304449893237L}).toString())) {
                                c = 3;
                            }
                            c = 65535;
                        }
                    } else {
                        if (group7.equals(new ObfuscatedString(new long[]{-8492284245557933795L, -8132304361897338163L}).toString())) {
                            c = 1;
                        }
                        c = 65535;
                    }
                } else {
                    if (group7.equals(new ObfuscatedString(new long[]{3388605574324985295L, -2878191036147079108L}).toString())) {
                        c = 0;
                    }
                    c = 65535;
                }
            } else {
                if (group7.equals(new ObfuscatedString(new long[]{-4246452876770451062L, 8718848655550612679L}).toString())) {
                    c = 4;
                }
                c = 65535;
            }
            if (c != 0) {
                if (c != 1) {
                    if (c != 3) {
                        if (c != 4) {
                            if (c == 5) {
                                d2 = zzalpVar.zzc;
                            }
                            return (long) (parseDouble * 1000000.0d);
                        }
                        d2 = zzalpVar.zza;
                    } else {
                        d2 = 1000.0d;
                    }
                    parseDouble /= d2;
                    return (long) (parseDouble * 1000000.0d);
                }
                d = 60.0d;
            } else {
                d = 3600.0d;
            }
            parseDouble *= d;
            return (long) (parseDouble * 1000000.0d);
        }
        throw new zzakn(new ObfuscatedString(new long[]{4115905981936577294L, 3642762144994538421L, 1475183279185612730L, 1771679026968926414L, 9195165381090697482L}).toString().concat(String.valueOf(str)));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    private static Layout.Alignment zzd(String str) {
        char c;
        String zza2 = zzfwk.zza(str);
        switch (zza2.hashCode()) {
            case -1364013995:
                if (zza2.equals(new ObfuscatedString(new long[]{-2938863682104789610L, 2510653306078385938L}).toString())) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 100571:
                if (zza2.equals(new ObfuscatedString(new long[]{1076209017508016140L, 5047657791791847369L}).toString())) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 3317767:
                if (zza2.equals(new ObfuscatedString(new long[]{-357392352137569288L, 7066883789839594651L}).toString())) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 108511772:
                if (zza2.equals(new ObfuscatedString(new long[]{8941203306938546115L, -3865295731206964496L}).toString())) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 109757538:
                if (zza2.equals(new ObfuscatedString(new long[]{6430262881030668917L, -6025240715303785254L}).toString())) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0 && c != 1) {
            if (c != 2 && c != 3) {
                if (c != 4) {
                    return null;
                }
                return Layout.Alignment.ALIGN_CENTER;
            }
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return Layout.Alignment.ALIGN_NORMAL;
    }

    private static zzalu zze(@Nullable zzalu zzaluVar) {
        return zzaluVar == null ? new zzalu() : zzaluVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x039b, code lost:
    
        r0 = zze(r0);
        r0.zzx(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x03a4, code lost:
    
        r0 = zze(r0);
        r0.zzx(3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x03ad, code lost:
    
        r0 = zze(r0);
        r0.zzx(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x03b6, code lost:
    
        r0 = zze(r0);
        r0.zzx(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0279, code lost:
    
        if (r14 == 0) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x027b, code lost:
    
        if (r14 == 1) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x027d, code lost:
    
        if (r14 == 2) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x027f, code lost:
    
        if (r14 == 3) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0283, code lost:
    
        r0 = zze(r0);
        r0.zzC(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x028c, code lost:
    
        r0 = zze(r0);
        r0.zzC(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0295, code lost:
    
        r0 = zze(r0);
        r0.zzu(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x029e, code lost:
    
        r0 = zze(r0);
        r0.zzu(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x038d, code lost:
    
        if (r14 == 0) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x038f, code lost:
    
        if (r14 == 1) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0391, code lost:
    
        if (r14 == 2) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0393, code lost:
    
        if (r14 == 3) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0395, code lost:
    
        if (r14 == r3) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0397, code lost:
    
        if (r14 == 5) goto L137;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static zzalu zzf(XmlPullParser xmlPullParser, zzalu zzaluVar) {
        char c;
        Matcher matcher;
        String group;
        float min;
        int i = 4;
        int attributeCount = xmlPullParser.getAttributeCount();
        boolean z = false;
        zzalu zzaluVar2 = zzaluVar;
        int i2 = 0;
        while (i2 < attributeCount) {
            String attributeValue = xmlPullParser.getAttributeValue(i2);
            String attributeName = xmlPullParser.getAttributeName(i2);
            int i3 = -1;
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals(new ObfuscatedString(new long[]{7185016617568101562L, 7496028348423937293L, -3473135810322685917L}).toString())) {
                        c = 6;
                        break;
                    }
                    break;
                case -1224696685:
                    if (attributeName.equals(new ObfuscatedString(new long[]{2936790786589994238L, -2657552255396327246L, 2989840627453972208L}).toString())) {
                        c = 3;
                        break;
                    }
                    break;
                case -1065511464:
                    if (attributeName.equals(new ObfuscatedString(new long[]{-2602480369785017206L, -42479375234337004L, 3526981479167363116L}).toString())) {
                        c = 7;
                        break;
                    }
                    break;
                case -879295043:
                    if (attributeName.equals(new ObfuscatedString(new long[]{7680182118947465419L, 469293314644452427L, 8282167557981765834L}).toString())) {
                        c = '\f';
                        break;
                    }
                    break;
                case -734428249:
                    if (attributeName.equals(new ObfuscatedString(new long[]{8518814990589390163L, -2556422064184928805L, -6608648285608176304L}).toString())) {
                        c = 5;
                        break;
                    }
                    break;
                case 3355:
                    if (attributeName.equals(new ObfuscatedString(new long[]{-2331802737098689818L, 4544725104890730264L}).toString())) {
                        c = 0;
                        break;
                    }
                    break;
                case 3511770:
                    if (attributeName.equals(new ObfuscatedString(new long[]{-8379368434523045278L, 8292196533080008416L}).toString())) {
                        c = '\n';
                        break;
                    }
                    break;
                case 94842723:
                    if (attributeName.equals(new ObfuscatedString(new long[]{-301853057677405933L, -7201385557444840477L}).toString())) {
                        c = 2;
                        break;
                    }
                    break;
                case 109403361:
                    if (attributeName.equals(new ObfuscatedString(new long[]{2277979680747605585L, -6333457744651710325L}).toString())) {
                        c = 14;
                        break;
                    }
                    break;
                case 110138194:
                    if (attributeName.equals(new ObfuscatedString(new long[]{-6139679521593714432L, 8327823908110115206L, -5456989494937065711L}).toString())) {
                        c = '\t';
                        break;
                    }
                    break;
                case 365601008:
                    if (attributeName.equals(new ObfuscatedString(new long[]{-6699252174703597880L, -5433062276245679414L}).toString())) {
                        c = 4;
                        break;
                    }
                    break;
                case 921125321:
                    if (attributeName.equals(new ObfuscatedString(new long[]{-1805411715085931836L, 2404491272528863383L, 8433708101415726352L}).toString())) {
                        c = '\r';
                        break;
                    }
                    break;
                case 1115953443:
                    if (attributeName.equals(new ObfuscatedString(new long[]{1451878514828964314L, 1352644071060916268L, -3072766392038606267L}).toString())) {
                        c = 11;
                        break;
                    }
                    break;
                case 1287124693:
                    if (attributeName.equals(new ObfuscatedString(new long[]{2101130105385962550L, -972453912784962744L, -4071518123533352823L}).toString())) {
                        c = 1;
                        break;
                    }
                    break;
                case 1754920356:
                    if (attributeName.equals(new ObfuscatedString(new long[]{7307911236641242521L, 4226517429350467140L, 138610981805857213L}).toString())) {
                        c = '\b';
                        break;
                    }
                    break;
            }
            c = 65535;
            switch (c) {
                case 0:
                    if (!new ObfuscatedString(new long[]{-7244812095657766879L, -7750974225444001051L}).toString().equals(xmlPullParser.getName())) {
                        break;
                    } else {
                        zzaluVar2 = zze(zzaluVar2);
                        zzaluVar2.zzs(attributeValue);
                        break;
                    }
                case 1:
                    zzaluVar2 = zze(zzaluVar2);
                    try {
                        zzaluVar2.zzm(zzen.zzb(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        zzff.zzf(new ObfuscatedString(new long[]{-184118494775269559L, 2373144076944436335L, 8545593851826187645L}).toString(), new ObfuscatedString(new long[]{5810041477429257259L, 4798947346856881051L, 4107356728634525917L, -1173420949017798699L, -6106255403039033890L, -5384679754849182321L}).toString().concat(String.valueOf(attributeValue)));
                        break;
                    }
                case 2:
                    zzaluVar2 = zze(zzaluVar2);
                    try {
                        zzaluVar2.zzo(zzen.zzb(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused2) {
                        zzff.zzf(new ObfuscatedString(new long[]{9089691631629729724L, 6748441972854653360L, -5099264887983534839L}).toString(), new ObfuscatedString(new long[]{1977887892172852366L, 8642635898928783384L, 1585067157105377005L, 574967753124341294L, -18989304768790619L}).toString().concat(String.valueOf(attributeValue)));
                        break;
                    }
                case 3:
                    zzaluVar2 = zze(zzaluVar2);
                    zzaluVar2.zzp(attributeValue);
                    break;
                case 4:
                    try {
                        zzaluVar2 = zze(zzaluVar2);
                        String obfuscatedString = new ObfuscatedString(new long[]{3009624875741148465L, -4838917851366525215L}).toString();
                        int i4 = zzfy.zza;
                        String[] split = attributeValue.split(obfuscatedString, -1);
                        int length = split.length;
                        if (length == 1) {
                            matcher = zze.matcher(attributeValue);
                        } else if (length == 2) {
                            matcher = zze.matcher(split[1]);
                            zzff.zzf(new ObfuscatedString(new long[]{-4551804513905154641L, 5965609013834758710L, 7552038007478126962L}).toString(), new ObfuscatedString(new long[]{-4704285372347005681L, 1182257249314176215L, 6112232053576615292L, -1605899865076481308L, 5527993768748431734L, 7558358578915686247L, -56812070155560868L, -6348415444537066704L, -4007449313383385103L, 2054222888131357424L, -6711655025297096362L, 7494520146815881437L, 2725358855726794187L, 9005181612666467137L, -6496627520670064607L}).toString());
                        } else {
                            throw new zzakn(new ObfuscatedString(new long[]{-6752488864877667494L, -1328432135197322583L, -5513310919967962427L, -7340140767275695988L, 7367129430241515509L, -2889175000002669644L}).toString() + length + new ObfuscatedString(new long[]{1048642217614456870L, 4249389364480467153L}).toString());
                        }
                        if (matcher.matches()) {
                            String group2 = matcher.group(3);
                            if (group2 != null) {
                                int hashCode = group2.hashCode();
                                if (hashCode != 37) {
                                    if (hashCode != 3240) {
                                        if (hashCode == 3592 && group2.equals(new ObfuscatedString(new long[]{5168548476309194232L, 8266121764314895L}).toString())) {
                                            i3 = 0;
                                        }
                                    } else if (group2.equals(new ObfuscatedString(new long[]{6889996319992988004L, 4677286724670753871L}).toString())) {
                                        i3 = 1;
                                    }
                                } else if (group2.equals(new ObfuscatedString(new long[]{-3992269911176128955L, -2667836232411209447L}).toString())) {
                                    i3 = 2;
                                }
                                if (i3 == 0) {
                                    zzaluVar2.zzr(1);
                                } else if (i3 == 1) {
                                    zzaluVar2.zzr(2);
                                } else if (i3 == 2) {
                                    zzaluVar2.zzr(3);
                                } else {
                                    throw new zzakn(new ObfuscatedString(new long[]{-5312949449208255642L, -2524277293104570599L, -4033855704744338184L, 6922405613645133353L, 280712981125497995L}).toString() + group2 + new ObfuscatedString(new long[]{-9176982900643063937L, 4962860987214604834L}).toString());
                                }
                                String group3 = matcher.group(1);
                                if (group3 == null) {
                                    throw null;
                                }
                                zzaluVar2.zzq(Float.parseFloat(group3));
                                break;
                            } else {
                                throw null;
                            }
                        } else {
                            throw new zzakn(new ObfuscatedString(new long[]{-7175175231237873288L, -6302664390752108314L, 510760264382012881L, -1834145234415714359L, -5543287799545490994L, 1297561242595138575L}).toString() + attributeValue + new ObfuscatedString(new long[]{1135158778356942472L, 336484094358428638L}).toString());
                        }
                    } catch (zzakn unused3) {
                        zzff.zzf(new ObfuscatedString(new long[]{2469628961988958877L, 7422106227733853834L, 4637173477240512357L}).toString(), new ObfuscatedString(new long[]{-4134010789908586846L, -2930719967836267408L, 6729912489157209299L, 6881169485464438321L, 7940834640757381712L}).toString().concat(String.valueOf(attributeValue)));
                        break;
                    }
                case 5:
                    zzaluVar2 = zze(zzaluVar2);
                    zzaluVar2.zzn(new ObfuscatedString(new long[]{4721801410421283802L, 4609880381859788387L}).toString().equalsIgnoreCase(attributeValue));
                    break;
                case 6:
                    zzaluVar2 = zze(zzaluVar2);
                    zzaluVar2.zzt(new ObfuscatedString(new long[]{-3613848197596594497L, -4805820008927226842L}).toString().equalsIgnoreCase(attributeValue));
                    break;
                case 7:
                    zzaluVar2 = zze(zzaluVar2);
                    zzaluVar2.zzz(zzd(attributeValue));
                    break;
                case '\b':
                    zzaluVar2 = zze(zzaluVar2);
                    zzaluVar2.zzv(zzd(attributeValue));
                    break;
                case '\t':
                    String zza2 = zzfwk.zza(attributeValue);
                    int hashCode2 = zza2.hashCode();
                    if (hashCode2 != 96673) {
                        if (hashCode2 == 3387192 && zza2.equals(new ObfuscatedString(new long[]{-1828107072773938192L, 8067805611341425543L}).toString())) {
                            i3 = 0;
                        }
                    } else if (zza2.equals(new ObfuscatedString(new long[]{1929640714971510798L, -5301544326860620834L}).toString())) {
                        i3 = 1;
                    }
                    if (i3 == 0) {
                        zzaluVar2 = zze(zzaluVar2);
                        zzaluVar2.zzA(z);
                        break;
                    } else if (i3 == 1) {
                        zzaluVar2 = zze(zzaluVar2);
                        zzaluVar2.zzA(true);
                        break;
                    } else {
                        break;
                    }
                case '\n':
                    String zza3 = zzfwk.zza(attributeValue);
                    switch (zza3.hashCode()) {
                        case -618561360:
                            if (zza3.equals(new ObfuscatedString(new long[]{-2750928089735139389L, -5756584737445195698L, -2877051571396450149L}).toString())) {
                                i3 = 2;
                                break;
                            }
                            break;
                        case -410956671:
                            if (zza3.equals(new ObfuscatedString(new long[]{-7046273972153242348L, 5925287728626027807L, 6312418432317232462L}).toString())) {
                                i3 = 0;
                                break;
                            }
                            break;
                        case -250518009:
                            if (zza3.equals(new ObfuscatedString(new long[]{-1551997657116348682L, 615092208639943402L, -1519600341113223940L}).toString())) {
                                i3 = 5;
                                break;
                            }
                            break;
                        case -136074796:
                            if (zza3.equals(new ObfuscatedString(new long[]{-4940151017602732753L, -452821833911152622L, -6851971938631133899L}).toString())) {
                                i3 = 4;
                                break;
                            }
                            break;
                        case 3016401:
                            if (zza3.equals(new ObfuscatedString(new long[]{2790719234458531345L, -3097183845831925418L}).toString())) {
                                i3 = 1;
                                break;
                            }
                            break;
                        case 3556653:
                            if (zza3.equals(new ObfuscatedString(new long[]{-5751890907347809077L, 3303689723843065788L}).toString())) {
                                i3 = 3;
                                break;
                            }
                            break;
                    }
                case 11:
                    String zza4 = zzfwk.zza(attributeValue);
                    int hashCode3 = zza4.hashCode();
                    if (hashCode3 != -1392885889) {
                        if (hashCode3 == 92734940 && zza4.equals(new ObfuscatedString(new long[]{5668163672879664882L, 7702328054914392010L}).toString())) {
                            i3 = 1;
                        }
                    } else if (zza4.equals(new ObfuscatedString(new long[]{328838185698702041L, -4104491294838841344L}).toString())) {
                        i3 = 0;
                    }
                    if (i3 == 0) {
                        zzaluVar2 = zze(zzaluVar2);
                        zzaluVar2.zzw(1);
                        break;
                    } else if (i3 == 1) {
                        zzaluVar2 = zze(zzaluVar2);
                        zzaluVar2.zzw(2);
                        break;
                    } else {
                        break;
                    }
                case '\f':
                    String zza5 = zzfwk.zza(attributeValue);
                    switch (zza5.hashCode()) {
                        case -1461280213:
                            if (zza5.equals(new ObfuscatedString(new long[]{7092551153300535846L, 2412718810491665621L, -7371484171071283424L}).toString())) {
                                i3 = 3;
                                break;
                            }
                            break;
                        case -1026963764:
                            if (zza5.equals(new ObfuscatedString(new long[]{-5881534667033726666L, -5927460229319382881L, -6350004464321765551L}).toString())) {
                                i3 = 2;
                                break;
                            }
                            break;
                        case 913457136:
                            if (zza5.equals(new ObfuscatedString(new long[]{3127440560307050273L, -284001571858902169L, -2788371232105575506L}).toString())) {
                                i3 = 1;
                                break;
                            }
                            break;
                        case 1679736913:
                            if (zza5.equals(new ObfuscatedString(new long[]{8826685072648673772L, 3936208587748368700L, -6550801321282560032L}).toString())) {
                                i3 = 0;
                                break;
                            }
                            break;
                    }
                case '\r':
                    zzaluVar2 = zze(zzaluVar2);
                    zzaluVar2.zzB(zzaln.zza(attributeValue));
                    break;
                case 14:
                    zzalu zze2 = zze(zzaluVar2);
                    Matcher matcher2 = zza.matcher(attributeValue);
                    if (!matcher2.matches()) {
                        zzff.zzf(new ObfuscatedString(new long[]{2817504917884376729L, -2298117227149981404L, -710866457661784720L}).toString(), new ObfuscatedString(new long[]{7477913592980014038L, -3133162855265203554L, -9022853245638668904L, -5671477091121836768L, 5773826890494233645L}).toString().concat(String.valueOf(attributeValue)));
                    } else {
                        try {
                            group = matcher2.group(1);
                        } catch (NumberFormatException e) {
                            long[] jArr = new long[i];
                            // fill-array-data instruction
                            jArr[0] = -1329530552656248531L;
                            jArr[1] = -759517087499737619L;
                            jArr[2] = -6276336866177639402L;
                            jArr[3] = -6461511138663373739L;
                            zzff.zzg(new ObfuscatedString(new long[]{-3461569534858380066L, 5639707441772008801L, 1154029160837113251L}).toString(), new ObfuscatedString(jArr).toString().concat(String.valueOf(attributeValue)), e);
                        }
                        if (group != null) {
                            min = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(group)));
                            zze2.zzy(min);
                            zzaluVar2 = zze2;
                            break;
                        } else {
                            throw null;
                            break;
                        }
                    }
                    min = Float.MAX_VALUE;
                    zze2.zzy(min);
                    zzaluVar2 = zze2;
            }
            i2++;
            i = 4;
            z = false;
        }
        return zzaluVar2;
    }

    private static String[] zzg(String str) {
        String trim = str.trim();
        if (trim.isEmpty()) {
            return new String[0];
        }
        int i = zzfy.zza;
        return trim.split(new ObfuscatedString(new long[]{7466353050042420255L, 6520824847196423589L}).toString(), -1);
    }

    @Override // com.google.android.gms.internal.ads.zzakr
    public final void zza(byte[] bArr, int i, int i2, zzakq zzakqVar, zzep zzepVar) {
        zzakl.zza(zzb(bArr, i, i2), zzakqVar, zzepVar);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:61|(1:(9:64|65|66|67|68|30|(2:34|(1:36)(4:37|38|39|(2:41|(2:43|33)(3:44|45|46))(3:48|49|50)))|32|33)(1:71))|72|65|66|67|68|30|(0)|32|33) */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0535, code lost:
    
        if (com.google.android.gms.internal.ads.zzfz.zzc(r11, new com.panda912.muddy.ObfuscatedString(new long[]{-1033482258561267824L, 4088035171553077083L}).toString()) != false) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0537, code lost:
    
        r11.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x054d, code lost:
    
        if (com.google.android.gms.internal.ads.zzfz.zzc(r11, new com.panda912.muddy.ObfuscatedString(new long[]{-2422001297020456311L, 3849182675300607039L}).toString()) == false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x054f, code lost:
    
        r2 = com.google.android.gms.internal.ads.zzfz.zza(r11, new com.panda912.muddy.ObfuscatedString(new long[]{2812964917743022106L, -4115313665089708540L}).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0562, code lost:
    
        if (r2 == null) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0564, code lost:
    
        r14.put(r2, r11.nextText());
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x057e, code lost:
    
        if (com.google.android.gms.internal.ads.zzfz.zzb(r11, new com.panda912.muddy.ObfuscatedString(new long[]{714568722487168908L, 8956376167107429141L}).toString()) == false) goto L443;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0262, code lost:
    
        com.google.android.gms.internal.ads.zzff.zzf(new com.panda912.muddy.ObfuscatedString(new long[]{1812562025493070912L, 6847263252400942499L, 2793910705403188647L}).toString(), new com.panda912.muddy.ObfuscatedString(new long[]{3070522563869468282L, -5802302975122230427L, 2968422092464722799L, -6629260203390703583L, -8574256967769025512L, 6038807510108113981L}).toString().concat(r3));
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:309:0x0985. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:125:0x04cb A[Catch: IOException -> 0x00cf, XmlPullParserException -> 0x00d3, TryCatch #14 {IOException -> 0x00cf, XmlPullParserException -> 0x00d3, blocks: (B:3:0x0008, B:5:0x0084, B:7:0x008e, B:9:0x0094, B:11:0x00a8, B:13:0x00ca, B:14:0x00d9, B:16:0x00fb, B:19:0x0116, B:20:0x013b, B:22:0x0164, B:23:0x016b, B:25:0x0193, B:26:0x019a, B:30:0x0289, B:34:0x02a2, B:36:0x02ae, B:39:0x02d5, B:41:0x02db, B:43:0x02e6, B:46:0x02f3, B:50:0x02f5, B:51:0x02f6, B:52:0x01cc, B:54:0x01d8, B:57:0x01ff, B:59:0x0205, B:61:0x0210, B:65:0x021c, B:68:0x0226, B:70:0x0262, B:75:0x025d, B:78:0x0261, B:86:0x031e, B:88:0x0337, B:90:0x034c, B:92:0x0361, B:94:0x0376, B:96:0x038b, B:98:0x03a0, B:100:0x03b5, B:102:0x03ca, B:104:0x03df, B:106:0x03f4, B:108:0x0409, B:110:0x041e, B:112:0x0433, B:114:0x0448, B:117:0x045e, B:120:0x0b8e, B:121:0x049e, B:123:0x04b3, B:125:0x04cb, B:127:0x04e9, B:129:0x04f1, B:131:0x04ff, B:133:0x0505, B:135:0x092a, B:144:0x050d, B:146:0x0522, B:148:0x0537, B:150:0x054f, B:152:0x0564, B:153:0x056b, B:158:0x0581, B:163:0x0925, B:164:0x059c, B:166:0x05b1, B:171:0x05c6, B:173:0x05cc, B:175:0x05d8, B:176:0x065d, B:178:0x0672, B:182:0x0681, B:184:0x0687, B:186:0x0695, B:187:0x071e, B:189:0x0733, B:202:0x0794, B:204:0x07ab, B:218:0x0818, B:238:0x06a1, B:241:0x06a3, B:242:0x06a4, B:243:0x06cb, B:246:0x06d3, B:249:0x06fb, B:253:0x0701, B:255:0x070c, B:259:0x082b, B:264:0x0830, B:262:0x082f, B:267:0x0858, B:268:0x0880, B:271:0x05e2, B:274:0x05e4, B:275:0x05e5, B:276:0x060b, B:279:0x0613, B:282:0x063b, B:286:0x0641, B:288:0x064c, B:292:0x08aa, B:297:0x08af, B:295:0x08ae, B:299:0x08d5, B:301:0x08fe, B:304:0x0944, B:308:0x0979, B:326:0x0a37, B:328:0x0a4b, B:332:0x0b12, B:324:0x0a7f, B:333:0x0a58, B:336:0x0a62, B:339:0x0a6d, B:340:0x0a73, B:341:0x0a79, B:366:0x0a90, B:370:0x0a9f, B:373:0x0aa8, B:379:0x0ad1, B:380:0x0aef, B:382:0x0b00, B:384:0x0ada, B:400:0x0b3e, B:403:0x0b4b, B:406:0x0b4f, B:408:0x0b68, B:410:0x0b72, B:413:0x0b79, B:414:0x0b7a, B:417:0x0b82, B:420:0x0b89, B:428:0x0ba5), top: B:2:0x0008, inners: #2, #5, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x050d A[Catch: IOException -> 0x00cf, XmlPullParserException -> 0x00d3, TryCatch #14 {IOException -> 0x00cf, XmlPullParserException -> 0x00d3, blocks: (B:3:0x0008, B:5:0x0084, B:7:0x008e, B:9:0x0094, B:11:0x00a8, B:13:0x00ca, B:14:0x00d9, B:16:0x00fb, B:19:0x0116, B:20:0x013b, B:22:0x0164, B:23:0x016b, B:25:0x0193, B:26:0x019a, B:30:0x0289, B:34:0x02a2, B:36:0x02ae, B:39:0x02d5, B:41:0x02db, B:43:0x02e6, B:46:0x02f3, B:50:0x02f5, B:51:0x02f6, B:52:0x01cc, B:54:0x01d8, B:57:0x01ff, B:59:0x0205, B:61:0x0210, B:65:0x021c, B:68:0x0226, B:70:0x0262, B:75:0x025d, B:78:0x0261, B:86:0x031e, B:88:0x0337, B:90:0x034c, B:92:0x0361, B:94:0x0376, B:96:0x038b, B:98:0x03a0, B:100:0x03b5, B:102:0x03ca, B:104:0x03df, B:106:0x03f4, B:108:0x0409, B:110:0x041e, B:112:0x0433, B:114:0x0448, B:117:0x045e, B:120:0x0b8e, B:121:0x049e, B:123:0x04b3, B:125:0x04cb, B:127:0x04e9, B:129:0x04f1, B:131:0x04ff, B:133:0x0505, B:135:0x092a, B:144:0x050d, B:146:0x0522, B:148:0x0537, B:150:0x054f, B:152:0x0564, B:153:0x056b, B:158:0x0581, B:163:0x0925, B:164:0x059c, B:166:0x05b1, B:171:0x05c6, B:173:0x05cc, B:175:0x05d8, B:176:0x065d, B:178:0x0672, B:182:0x0681, B:184:0x0687, B:186:0x0695, B:187:0x071e, B:189:0x0733, B:202:0x0794, B:204:0x07ab, B:218:0x0818, B:238:0x06a1, B:241:0x06a3, B:242:0x06a4, B:243:0x06cb, B:246:0x06d3, B:249:0x06fb, B:253:0x0701, B:255:0x070c, B:259:0x082b, B:264:0x0830, B:262:0x082f, B:267:0x0858, B:268:0x0880, B:271:0x05e2, B:274:0x05e4, B:275:0x05e5, B:276:0x060b, B:279:0x0613, B:282:0x063b, B:286:0x0641, B:288:0x064c, B:292:0x08aa, B:297:0x08af, B:295:0x08ae, B:299:0x08d5, B:301:0x08fe, B:304:0x0944, B:308:0x0979, B:326:0x0a37, B:328:0x0a4b, B:332:0x0b12, B:324:0x0a7f, B:333:0x0a58, B:336:0x0a62, B:339:0x0a6d, B:340:0x0a73, B:341:0x0a79, B:366:0x0a90, B:370:0x0a9f, B:373:0x0aa8, B:379:0x0ad1, B:380:0x0aef, B:382:0x0b00, B:384:0x0ada, B:400:0x0b3e, B:403:0x0b4b, B:406:0x0b4f, B:408:0x0b68, B:410:0x0b72, B:413:0x0b79, B:414:0x0b7a, B:417:0x0b82, B:420:0x0b89, B:428:0x0ba5), top: B:2:0x0008, inners: #2, #5, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0925 A[Catch: IOException -> 0x00cf, XmlPullParserException -> 0x00d3, TryCatch #14 {IOException -> 0x00cf, XmlPullParserException -> 0x00d3, blocks: (B:3:0x0008, B:5:0x0084, B:7:0x008e, B:9:0x0094, B:11:0x00a8, B:13:0x00ca, B:14:0x00d9, B:16:0x00fb, B:19:0x0116, B:20:0x013b, B:22:0x0164, B:23:0x016b, B:25:0x0193, B:26:0x019a, B:30:0x0289, B:34:0x02a2, B:36:0x02ae, B:39:0x02d5, B:41:0x02db, B:43:0x02e6, B:46:0x02f3, B:50:0x02f5, B:51:0x02f6, B:52:0x01cc, B:54:0x01d8, B:57:0x01ff, B:59:0x0205, B:61:0x0210, B:65:0x021c, B:68:0x0226, B:70:0x0262, B:75:0x025d, B:78:0x0261, B:86:0x031e, B:88:0x0337, B:90:0x034c, B:92:0x0361, B:94:0x0376, B:96:0x038b, B:98:0x03a0, B:100:0x03b5, B:102:0x03ca, B:104:0x03df, B:106:0x03f4, B:108:0x0409, B:110:0x041e, B:112:0x0433, B:114:0x0448, B:117:0x045e, B:120:0x0b8e, B:121:0x049e, B:123:0x04b3, B:125:0x04cb, B:127:0x04e9, B:129:0x04f1, B:131:0x04ff, B:133:0x0505, B:135:0x092a, B:144:0x050d, B:146:0x0522, B:148:0x0537, B:150:0x054f, B:152:0x0564, B:153:0x056b, B:158:0x0581, B:163:0x0925, B:164:0x059c, B:166:0x05b1, B:171:0x05c6, B:173:0x05cc, B:175:0x05d8, B:176:0x065d, B:178:0x0672, B:182:0x0681, B:184:0x0687, B:186:0x0695, B:187:0x071e, B:189:0x0733, B:202:0x0794, B:204:0x07ab, B:218:0x0818, B:238:0x06a1, B:241:0x06a3, B:242:0x06a4, B:243:0x06cb, B:246:0x06d3, B:249:0x06fb, B:253:0x0701, B:255:0x070c, B:259:0x082b, B:264:0x0830, B:262:0x082f, B:267:0x0858, B:268:0x0880, B:271:0x05e2, B:274:0x05e4, B:275:0x05e5, B:276:0x060b, B:279:0x0613, B:282:0x063b, B:286:0x0641, B:288:0x064c, B:292:0x08aa, B:297:0x08af, B:295:0x08ae, B:299:0x08d5, B:301:0x08fe, B:304:0x0944, B:308:0x0979, B:326:0x0a37, B:328:0x0a4b, B:332:0x0b12, B:324:0x0a7f, B:333:0x0a58, B:336:0x0a62, B:339:0x0a6d, B:340:0x0a73, B:341:0x0a79, B:366:0x0a90, B:370:0x0a9f, B:373:0x0aa8, B:379:0x0ad1, B:380:0x0aef, B:382:0x0b00, B:384:0x0ada, B:400:0x0b3e, B:403:0x0b4b, B:406:0x0b4f, B:408:0x0b68, B:410:0x0b72, B:413:0x0b79, B:414:0x0b7a, B:417:0x0b82, B:420:0x0b89, B:428:0x0ba5), top: B:2:0x0008, inners: #2, #5, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0777  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x07ab A[Catch: IOException -> 0x00cf, XmlPullParserException -> 0x00d3, TRY_LEAVE, TryCatch #14 {IOException -> 0x00cf, XmlPullParserException -> 0x00d3, blocks: (B:3:0x0008, B:5:0x0084, B:7:0x008e, B:9:0x0094, B:11:0x00a8, B:13:0x00ca, B:14:0x00d9, B:16:0x00fb, B:19:0x0116, B:20:0x013b, B:22:0x0164, B:23:0x016b, B:25:0x0193, B:26:0x019a, B:30:0x0289, B:34:0x02a2, B:36:0x02ae, B:39:0x02d5, B:41:0x02db, B:43:0x02e6, B:46:0x02f3, B:50:0x02f5, B:51:0x02f6, B:52:0x01cc, B:54:0x01d8, B:57:0x01ff, B:59:0x0205, B:61:0x0210, B:65:0x021c, B:68:0x0226, B:70:0x0262, B:75:0x025d, B:78:0x0261, B:86:0x031e, B:88:0x0337, B:90:0x034c, B:92:0x0361, B:94:0x0376, B:96:0x038b, B:98:0x03a0, B:100:0x03b5, B:102:0x03ca, B:104:0x03df, B:106:0x03f4, B:108:0x0409, B:110:0x041e, B:112:0x0433, B:114:0x0448, B:117:0x045e, B:120:0x0b8e, B:121:0x049e, B:123:0x04b3, B:125:0x04cb, B:127:0x04e9, B:129:0x04f1, B:131:0x04ff, B:133:0x0505, B:135:0x092a, B:144:0x050d, B:146:0x0522, B:148:0x0537, B:150:0x054f, B:152:0x0564, B:153:0x056b, B:158:0x0581, B:163:0x0925, B:164:0x059c, B:166:0x05b1, B:171:0x05c6, B:173:0x05cc, B:175:0x05d8, B:176:0x065d, B:178:0x0672, B:182:0x0681, B:184:0x0687, B:186:0x0695, B:187:0x071e, B:189:0x0733, B:202:0x0794, B:204:0x07ab, B:218:0x0818, B:238:0x06a1, B:241:0x06a3, B:242:0x06a4, B:243:0x06cb, B:246:0x06d3, B:249:0x06fb, B:253:0x0701, B:255:0x070c, B:259:0x082b, B:264:0x0830, B:262:0x082f, B:267:0x0858, B:268:0x0880, B:271:0x05e2, B:274:0x05e4, B:275:0x05e5, B:276:0x060b, B:279:0x0613, B:282:0x063b, B:286:0x0641, B:288:0x064c, B:292:0x08aa, B:297:0x08af, B:295:0x08ae, B:299:0x08d5, B:301:0x08fe, B:304:0x0944, B:308:0x0979, B:326:0x0a37, B:328:0x0a4b, B:332:0x0b12, B:324:0x0a7f, B:333:0x0a58, B:336:0x0a62, B:339:0x0a6d, B:340:0x0a73, B:341:0x0a79, B:366:0x0a90, B:370:0x0a9f, B:373:0x0aa8, B:379:0x0ad1, B:380:0x0aef, B:382:0x0b00, B:384:0x0ada, B:400:0x0b3e, B:403:0x0b4b, B:406:0x0b4f, B:408:0x0b68, B:410:0x0b72, B:413:0x0b79, B:414:0x0b7a, B:417:0x0b82, B:420:0x0b89, B:428:0x0ba5), top: B:2:0x0008, inners: #2, #5, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x080b  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0786  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0943  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x02a2 A[Catch: IOException -> 0x00cf, XmlPullParserException -> 0x00d3, TryCatch #14 {IOException -> 0x00cf, XmlPullParserException -> 0x00d3, blocks: (B:3:0x0008, B:5:0x0084, B:7:0x008e, B:9:0x0094, B:11:0x00a8, B:13:0x00ca, B:14:0x00d9, B:16:0x00fb, B:19:0x0116, B:20:0x013b, B:22:0x0164, B:23:0x016b, B:25:0x0193, B:26:0x019a, B:30:0x0289, B:34:0x02a2, B:36:0x02ae, B:39:0x02d5, B:41:0x02db, B:43:0x02e6, B:46:0x02f3, B:50:0x02f5, B:51:0x02f6, B:52:0x01cc, B:54:0x01d8, B:57:0x01ff, B:59:0x0205, B:61:0x0210, B:65:0x021c, B:68:0x0226, B:70:0x0262, B:75:0x025d, B:78:0x0261, B:86:0x031e, B:88:0x0337, B:90:0x034c, B:92:0x0361, B:94:0x0376, B:96:0x038b, B:98:0x03a0, B:100:0x03b5, B:102:0x03ca, B:104:0x03df, B:106:0x03f4, B:108:0x0409, B:110:0x041e, B:112:0x0433, B:114:0x0448, B:117:0x045e, B:120:0x0b8e, B:121:0x049e, B:123:0x04b3, B:125:0x04cb, B:127:0x04e9, B:129:0x04f1, B:131:0x04ff, B:133:0x0505, B:135:0x092a, B:144:0x050d, B:146:0x0522, B:148:0x0537, B:150:0x054f, B:152:0x0564, B:153:0x056b, B:158:0x0581, B:163:0x0925, B:164:0x059c, B:166:0x05b1, B:171:0x05c6, B:173:0x05cc, B:175:0x05d8, B:176:0x065d, B:178:0x0672, B:182:0x0681, B:184:0x0687, B:186:0x0695, B:187:0x071e, B:189:0x0733, B:202:0x0794, B:204:0x07ab, B:218:0x0818, B:238:0x06a1, B:241:0x06a3, B:242:0x06a4, B:243:0x06cb, B:246:0x06d3, B:249:0x06fb, B:253:0x0701, B:255:0x070c, B:259:0x082b, B:264:0x0830, B:262:0x082f, B:267:0x0858, B:268:0x0880, B:271:0x05e2, B:274:0x05e4, B:275:0x05e5, B:276:0x060b, B:279:0x0613, B:282:0x063b, B:286:0x0641, B:288:0x064c, B:292:0x08aa, B:297:0x08af, B:295:0x08ae, B:299:0x08d5, B:301:0x08fe, B:304:0x0944, B:308:0x0979, B:326:0x0a37, B:328:0x0a4b, B:332:0x0b12, B:324:0x0a7f, B:333:0x0a58, B:336:0x0a62, B:339:0x0a6d, B:340:0x0a73, B:341:0x0a79, B:366:0x0a90, B:370:0x0a9f, B:373:0x0aa8, B:379:0x0ad1, B:380:0x0aef, B:382:0x0b00, B:384:0x0ada, B:400:0x0b3e, B:403:0x0b4b, B:406:0x0b4f, B:408:0x0b68, B:410:0x0b72, B:413:0x0b79, B:414:0x0b7a, B:417:0x0b82, B:420:0x0b89, B:428:0x0ba5), top: B:2:0x0008, inners: #2, #5, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0acd  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x0b00 A[Catch: IOException -> 0x00cf, XmlPullParserException -> 0x00d3, zzakn -> 0x0a54, TRY_LEAVE, TryCatch #7 {zzakn -> 0x0a54, blocks: (B:326:0x0a37, B:328:0x0a4b, B:324:0x0a7f, B:333:0x0a58, B:336:0x0a62, B:339:0x0a6d, B:340:0x0a73, B:341:0x0a79, B:366:0x0a90, B:370:0x0a9f, B:373:0x0aa8, B:379:0x0ad1, B:380:0x0aef, B:382:0x0b00, B:384:0x0ada), top: B:325:0x0a37 }] */
    /* JADX WARN: Removed duplicated region for block: B:389:0x0aeb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzakm zzb(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        long j;
        zzalo zzaloVar;
        long j2;
        long j3;
        long j4;
        int i5;
        int i6;
        zzals zzalsVar;
        String group;
        float f;
        float parseInt;
        String group2;
        float f2;
        float parseInt2;
        float f3;
        int i7;
        String zza2;
        int i8;
        char c;
        char c2;
        char c3;
        float f4;
        zzalp zzalpVar;
        String group3;
        boolean z;
        String zza3;
        String group4;
        int i9 = 4;
        int i10 = 1;
        int i11 = 6;
        int i12 = 3;
        int i13 = 2;
        try {
            XmlPullParser newPullParser = this.zzi.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put(new ObfuscatedString(new long[]{168321406452312919L}).toString(), new zzals(new ObfuscatedString(new long[]{3198984601666924045L}).toString(), -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE));
            newPullParser.setInput(new ByteArrayInputStream(bArr, i, i2), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            int eventType = newPullParser.getEventType();
            zzalp zzalpVar2 = zzh;
            zzalv zzalvVar = null;
            zzalq zzalqVar = null;
            int i14 = 0;
            int i15 = 15;
            while (eventType != i10) {
                zzalo zzaloVar2 = (zzalo) arrayDeque.peek();
                if (i14 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == i13) {
                        long[] jArr = new long[i13];
                        // fill-array-data instruction
                        jArr[0] = 6023254201375328710L;
                        jArr[1] = 3547537741779491055L;
                        if (new ObfuscatedString(jArr).toString().equals(name)) {
                            long[] jArr2 = new long[i11];
                            // fill-array-data instruction
                            jArr2[0] = 3217262258169747747L;
                            jArr2[1] = 4453862540077385033L;
                            jArr2[2] = 5826692593647516702L;
                            jArr2[3] = 535815997607351924L;
                            jArr2[4] = -3635042996781029068L;
                            jArr2[5] = 3881034998258984726L;
                            long[] jArr3 = new long[i12];
                            // fill-array-data instruction
                            jArr3[0] = 1138685468535928462L;
                            jArr3[1] = 8516629850532493920L;
                            jArr3[2] = 1196425427720460348L;
                            String attributeValue = newPullParser.getAttributeValue(new ObfuscatedString(jArr2).toString(), new ObfuscatedString(jArr3).toString());
                            int parseInt3 = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
                            long[] jArr4 = new long[i11];
                            // fill-array-data instruction
                            jArr4[0] = 2884869208124041944L;
                            jArr4[1] = 4804178725802888582L;
                            jArr4[2] = -4576223385429179820L;
                            jArr4[3] = 6621872519211447715L;
                            jArr4[4] = -6217140799402214068L;
                            jArr4[5] = -5928534894727171854L;
                            long[] jArr5 = new long[i9];
                            // fill-array-data instruction
                            jArr5[0] = -6851209094556021398L;
                            jArr5[1] = 4822968373009431774L;
                            jArr5[2] = 2065113885435260313L;
                            jArr5[3] = 79512303246350544L;
                            String attributeValue2 = newPullParser.getAttributeValue(new ObfuscatedString(jArr4).toString(), new ObfuscatedString(jArr5).toString());
                            if (attributeValue2 != null) {
                                long[] jArr6 = new long[i13];
                                // fill-array-data instruction
                                jArr6[0] = -1958663435662182764L;
                                jArr6[1] = -6717069869599906232L;
                                String obfuscatedString = new ObfuscatedString(jArr6).toString();
                                int i16 = zzfy.zza;
                                long[] jArr7 = new long[i11];
                                // fill-array-data instruction
                                jArr7[0] = -6029646984369027438L;
                                jArr7[1] = 616301652785036456L;
                                jArr7[2] = -7049953216674241457L;
                                jArr7[3] = 8790037541922861719L;
                                jArr7[4] = 8344832524429844535L;
                                jArr7[5] = 2734622889086411768L;
                                zzek.zze(attributeValue2.split(obfuscatedString, -1).length == i13, new ObfuscatedString(jArr7).toString());
                                f4 = Integer.parseInt(r4[0]) / Integer.parseInt(r4[1]);
                            } else {
                                f4 = 1.0f;
                            }
                            zzalp zzalpVar3 = zzh;
                            int i17 = zzalpVar3.zzb;
                            long[] jArr8 = new long[i11];
                            // fill-array-data instruction
                            jArr8[0] = -7481107199101552255L;
                            jArr8[1] = 5328344803474037099L;
                            jArr8[2] = 115720853052697560L;
                            jArr8[3] = 6799789176501616108L;
                            jArr8[4] = 522862492344829222L;
                            jArr8[5] = 6292032682885711596L;
                            String attributeValue3 = newPullParser.getAttributeValue(new ObfuscatedString(jArr8).toString(), new ObfuscatedString(new long[]{-1604008874509129759L, -4033615721358567404L, -7950243411736426795L}).toString());
                            int parseInt4 = attributeValue3 != null ? Integer.parseInt(attributeValue3) : i17;
                            int i18 = zzalpVar3.zzc;
                            String attributeValue4 = newPullParser.getAttributeValue(new ObfuscatedString(new long[]{5989066344825351498L, -4939808764775178572L, 5291540823903384391L, 8184620240338283844L, -6025674039866665853L, 8742026271741710300L}).toString(), new ObfuscatedString(new long[]{-3532913568009145952L, -7357112143197828404L}).toString());
                            zzalp zzalpVar4 = new zzalp(parseInt3 * f4, parseInt4, attributeValue4 != null ? Integer.parseInt(attributeValue4) : i18);
                            String attributeValue5 = newPullParser.getAttributeValue(new ObfuscatedString(new long[]{3191704275950480475L, -6313576975690779787L, 4845113489923280585L, 535630374048782269L, 4158854125765531569L, 5622737945498784107L}).toString(), new ObfuscatedString(new long[]{-3630992569958626263L, -801752076917558425L, 9088528197343391203L}).toString());
                            if (attributeValue5 != null) {
                                Matcher matcher = zzg.matcher(attributeValue5);
                                if (!matcher.matches()) {
                                    zzff.zzf(new ObfuscatedString(new long[]{-1389528356780449720L, -468271026987945759L, -8613123560942243211L}).toString(), new ObfuscatedString(new long[]{3416815675715334089L, 2022925462098836030L, 3126235774158004656L, -5358964280346397795L, -5187058122943719174L, -5060242284632173957L}).toString().concat(attributeValue5));
                                } else {
                                    try {
                                        group3 = matcher.group(1);
                                    } catch (NumberFormatException unused) {
                                        zzalpVar = zzalpVar4;
                                    }
                                    if (group3 != null) {
                                        int parseInt5 = Integer.parseInt(group3);
                                        String group5 = matcher.group(2);
                                        if (group5 != null) {
                                            int parseInt6 = Integer.parseInt(group5);
                                            if (parseInt5 != 0) {
                                                if (parseInt6 != 0) {
                                                    z = true;
                                                    StringBuilder sb = new StringBuilder();
                                                    zzalpVar = zzalpVar4;
                                                    sb.append(new ObfuscatedString(new long[]{-990186464676464997L, -4138230365964269887L, -5073699320743114917L, -2018531710080480101L}).toString());
                                                    sb.append(parseInt5);
                                                    sb.append(new ObfuscatedString(new long[]{8273160323176529758L, -7063599283582360118L}).toString());
                                                    sb.append(parseInt6);
                                                    zzek.zze(z, sb.toString());
                                                    i15 = parseInt6;
                                                    zza3 = zzfz.zza(newPullParser, new ObfuscatedString(new long[]{5580336224835268904L, -7604450001621616635L}).toString());
                                                    if (zza3 != null) {
                                                        Matcher matcher2 = zzf.matcher(zza3);
                                                        if (!matcher2.matches()) {
                                                            zzff.zzf(new ObfuscatedString(new long[]{3363055934405036690L, -7246425096076926703L, 4778457142069004344L}).toString(), new ObfuscatedString(new long[]{4669448167654343489L, 8916402447897826791L, -5631498348707628304L, -952845519181319725L, 7171155806618264536L}).toString().concat(zza3));
                                                        } else {
                                                            try {
                                                                group4 = matcher2.group(1);
                                                            } catch (NumberFormatException unused2) {
                                                                zzff.zzf(new ObfuscatedString(new long[]{1280249291931014105L, -5118903963086479961L, 5465781351438617221L}).toString(), new ObfuscatedString(new long[]{-5716444156087241069L, -8566816912123122576L, 5856894625018350319L, -3023028192101107550L, 2277177899938279515L}).toString().concat(zza3));
                                                            }
                                                            if (group4 != null) {
                                                                int parseInt7 = Integer.parseInt(group4);
                                                                String group6 = matcher2.group(2);
                                                                if (group6 == null) {
                                                                    throw null;
                                                                }
                                                                zzalqVar = new zzalq(parseInt7, Integer.parseInt(group6));
                                                                zzalpVar2 = zzalpVar;
                                                            } else {
                                                                throw null;
                                                            }
                                                        }
                                                    }
                                                    zzalqVar = null;
                                                    zzalpVar2 = zzalpVar;
                                                } else {
                                                    parseInt6 = 0;
                                                }
                                            }
                                            z = false;
                                            StringBuilder sb2 = new StringBuilder();
                                            zzalpVar = zzalpVar4;
                                            sb2.append(new ObfuscatedString(new long[]{-990186464676464997L, -4138230365964269887L, -5073699320743114917L, -2018531710080480101L}).toString());
                                            sb2.append(parseInt5);
                                            sb2.append(new ObfuscatedString(new long[]{8273160323176529758L, -7063599283582360118L}).toString());
                                            sb2.append(parseInt6);
                                            zzek.zze(z, sb2.toString());
                                            i15 = parseInt6;
                                            zza3 = zzfz.zza(newPullParser, new ObfuscatedString(new long[]{5580336224835268904L, -7604450001621616635L}).toString());
                                            if (zza3 != null) {
                                            }
                                            zzalqVar = null;
                                            zzalpVar2 = zzalpVar;
                                        } else {
                                            throw null;
                                        }
                                    } else {
                                        throw null;
                                    }
                                }
                            }
                            zzalpVar = zzalpVar4;
                            i15 = 15;
                            zza3 = zzfz.zza(newPullParser, new ObfuscatedString(new long[]{5580336224835268904L, -7604450001621616635L}).toString());
                            if (zza3 != null) {
                            }
                            zzalqVar = null;
                            zzalpVar2 = zzalpVar;
                        }
                        int i19 = i15;
                        zzalq zzalqVar2 = zzalqVar;
                        if (!name.equals(new ObfuscatedString(new long[]{8685812200973132526L, -2667602142243672187L}).toString()) && !name.equals(new ObfuscatedString(new long[]{-8500704069763703959L, 7540973672042185453L}).toString()) && !name.equals(new ObfuscatedString(new long[]{3517015212701420108L, -922965169643927873L}).toString()) && !name.equals(new ObfuscatedString(new long[]{-4854154377196931259L, 6031111379772901804L}).toString()) && !name.equals(new ObfuscatedString(new long[]{8867178196262524929L, 3109305677904789755L}).toString()) && !name.equals(new ObfuscatedString(new long[]{-368881269272034465L, -8079307666921529248L}).toString()) && !name.equals(new ObfuscatedString(new long[]{77380194314235248L, 826958406801355582L}).toString()) && !name.equals(new ObfuscatedString(new long[]{468793632005800207L, 5357410402636827605L}).toString()) && !name.equals(new ObfuscatedString(new long[]{-8697422758283602771L, 2542684535471804756L}).toString()) && !name.equals(new ObfuscatedString(new long[]{5061306427342781602L, -740863896022679946L}).toString()) && !name.equals(new ObfuscatedString(new long[]{-7623492112708243509L, -425356595450899208L}).toString()) && !name.equals(new ObfuscatedString(new long[]{3284727242284736615L, -1131743023070169568L}).toString()) && !name.equals(new ObfuscatedString(new long[]{7327234680485550481L, 4007172740562672320L}).toString()) && !name.equals(new ObfuscatedString(new long[]{8548914781714193795L, -3073380140773634531L}).toString()) && !name.equals(new ObfuscatedString(new long[]{-5319567853086740028L, -7911132358723905400L, 4073812509059541146L}).toString())) {
                            zzff.zze(new ObfuscatedString(new long[]{-223288382436631959L, 7922465509704354516L, -2473923250549650961L}).toString(), new ObfuscatedString(new long[]{-2688775641196759770L, 6259969208027146660L, -3856222477719289875L, 8677675505332985920L, -6024158621352573272L}).toString() + newPullParser.getName());
                            i15 = i19;
                            zzalqVar = zzalqVar2;
                            i14 = 1;
                        }
                        if (!new ObfuscatedString(new long[]{3870404898761602621L, 290714771547793752L}).toString().equals(name)) {
                            try {
                                String obfuscatedString2 = new ObfuscatedString(new long[]{2374734500286425384L}).toString();
                                int attributeCount = newPullParser.getAttributeCount();
                                zzalu zzf2 = zzf(newPullParser, null);
                                String str = obfuscatedString2;
                                int i20 = 0;
                                long j5 = -9223372036854775807L;
                                long j6 = -9223372036854775807L;
                                long j7 = -9223372036854775807L;
                                String[] strArr = null;
                                String str2 = null;
                                while (i20 < attributeCount) {
                                    try {
                                        String attributeName = newPullParser.getAttributeName(i20);
                                        String attributeValue6 = newPullParser.getAttributeValue(i20);
                                        switch (attributeName.hashCode()) {
                                            case -934795532:
                                                i3 = i19;
                                                i5 = 2;
                                                if (attributeName.equals(new ObfuscatedString(new long[]{-7140633616335132565L, 8823229399451986397L}).toString())) {
                                                    i6 = 4;
                                                    break;
                                                }
                                                i6 = -1;
                                                break;
                                            case 99841:
                                                i3 = i19;
                                                i5 = 2;
                                                if (attributeName.equals(new ObfuscatedString(new long[]{-7910753627766913131L, -3699656608657876952L}).toString())) {
                                                    i6 = 2;
                                                    break;
                                                }
                                                i6 = -1;
                                                break;
                                            case 100571:
                                                i3 = i19;
                                                i5 = 2;
                                                if (attributeName.equals(new ObfuscatedString(new long[]{6835688985799667304L, -5217022066407390201L}).toString())) {
                                                    i6 = 1;
                                                    break;
                                                }
                                                i6 = -1;
                                                break;
                                            case 93616297:
                                                i3 = i19;
                                                i5 = 2;
                                                if (attributeName.equals(new ObfuscatedString(new long[]{3319916739630780436L, -659854100683048766L}).toString())) {
                                                    i6 = 0;
                                                    break;
                                                }
                                                i6 = -1;
                                                break;
                                            case 109780401:
                                                i3 = i19;
                                                i5 = 2;
                                                if (attributeName.equals(new ObfuscatedString(new long[]{2965231930446559891L, 7313438534944045873L}).toString())) {
                                                    i6 = 3;
                                                    break;
                                                }
                                                i6 = -1;
                                                break;
                                            case 1292595405:
                                                i3 = i19;
                                                if (attributeName.equals(new ObfuscatedString(new long[]{-3071578643637425988L, -2326223763998482500L, 3755300130840244255L}).toString())) {
                                                    i6 = 5;
                                                    i5 = 2;
                                                    break;
                                                }
                                                i5 = 2;
                                                i6 = -1;
                                                break;
                                            default:
                                                i3 = i19;
                                                i5 = 2;
                                                i6 = -1;
                                                break;
                                        }
                                        if (i6 == 0) {
                                            j6 = zzc(attributeValue6, zzalpVar2);
                                        } else if (i6 == 1) {
                                            j5 = zzc(attributeValue6, zzalpVar2);
                                        } else if (i6 == i5) {
                                            j7 = zzc(attributeValue6, zzalpVar2);
                                        } else if (i6 == 3) {
                                            String[] zzg2 = zzg(attributeValue6);
                                            if (zzg2.length > 0) {
                                                strArr = zzg2;
                                            }
                                        } else if (i6 != 4) {
                                            if (i6 == 5) {
                                                try {
                                                    long[] jArr9 = new long[i5];
                                                    // fill-array-data instruction
                                                    jArr9[0] = -1930358393836635209L;
                                                    jArr9[1] = -5773437919440678086L;
                                                    if (attributeValue6.startsWith(new ObfuscatedString(jArr9).toString())) {
                                                        str2 = attributeValue6.substring(1);
                                                    }
                                                } catch (zzakn e) {
                                                    e = e;
                                                    zzff.zzg(new ObfuscatedString(new long[]{-8863016794027972508L, 6904783726841613346L, -5201866615093954818L}).toString(), new ObfuscatedString(new long[]{8947274920170121510L, 8160963892474412350L, 5307212621801376354L, -8626795137176918599L}).toString(), e);
                                                    zzalqVar = zzalqVar2;
                                                    i15 = i3;
                                                    i14 = 1;
                                                    newPullParser.next();
                                                    eventType = newPullParser.getEventType();
                                                    i9 = 4;
                                                    i10 = 1;
                                                    i11 = 6;
                                                    i12 = 3;
                                                    i13 = 2;
                                                }
                                            }
                                        } else if (hashMap2.containsKey(attributeValue6)) {
                                            str = attributeValue6;
                                        }
                                        i20++;
                                        i19 = i3;
                                    } catch (zzakn e2) {
                                        e = e2;
                                        i3 = i19;
                                    }
                                }
                                i4 = i19;
                                if (zzaloVar2 != null) {
                                    long j8 = zzaloVar2.zzd;
                                    j2 = -9223372036854775807L;
                                    if (j8 != -9223372036854775807L) {
                                        long j9 = j6 != -9223372036854775807L ? j6 + j8 : -9223372036854775807L;
                                        if (j5 != -9223372036854775807L) {
                                            j5 += j8;
                                            zzaloVar = zzaloVar2;
                                            j = j9;
                                        } else {
                                            zzaloVar = zzaloVar2;
                                            j = j9;
                                            j2 = -9223372036854775807L;
                                            j5 = -9223372036854775807L;
                                        }
                                    } else {
                                        zzaloVar = zzaloVar2;
                                        j = j6;
                                    }
                                    if (j5 == j2) {
                                        j3 = j;
                                        j4 = j5;
                                    } else if (j7 != j2) {
                                        j3 = j;
                                        j4 = j + j7;
                                    } else {
                                        if (zzaloVar != null) {
                                            j3 = j;
                                            long j10 = zzaloVar.zze;
                                            if (j10 != j2) {
                                                j4 = j10;
                                            }
                                        } else {
                                            j3 = j;
                                        }
                                        j4 = j2;
                                    }
                                    zzalo zzb2 = zzalo.zzb(newPullParser.getName(), j3, j4, zzf2, strArr, str, str2, zzaloVar);
                                    arrayDeque.push(zzb2);
                                    if (zzaloVar2 != null) {
                                        zzaloVar2.zzf(zzb2);
                                    }
                                    zzalqVar = zzalqVar2;
                                    i15 = i4;
                                } else {
                                    j = j6;
                                    zzaloVar = null;
                                }
                                j2 = -9223372036854775807L;
                                if (j5 == j2) {
                                }
                                zzalo zzb22 = zzalo.zzb(newPullParser.getName(), j3, j4, zzf2, strArr, str, str2, zzaloVar);
                                arrayDeque.push(zzb22);
                                if (zzaloVar2 != null) {
                                }
                                zzalqVar = zzalqVar2;
                                i15 = i4;
                            } catch (zzakn e3) {
                                e = e3;
                                i3 = i19;
                            }
                        }
                        do {
                            newPullParser.next();
                            if (!zzfz.zzc(newPullParser, new ObfuscatedString(new long[]{-5249976756072085639L, -4829391607159419185L}).toString())) {
                                String zza4 = zzfz.zza(newPullParser, new ObfuscatedString(new long[]{8337888758945576327L, 2444108238442144578L}).toString());
                                zzalu zzf3 = zzf(newPullParser, new zzalu());
                                if (zza4 != null) {
                                    for (String str3 : zzg(zza4)) {
                                        zzf3.zzl((zzalu) hashMap.get(str3));
                                    }
                                }
                                String zzE = zzf3.zzE();
                                if (zzE != null) {
                                    hashMap.put(zzE, zzf3);
                                }
                            } else if (zzfz.zzc(newPullParser, new ObfuscatedString(new long[]{-3040317241263527375L, 7080487935321376341L}).toString())) {
                                String zza5 = zzfz.zza(newPullParser, new ObfuscatedString(new long[]{-4693123413774262913L, 2116412461535458828L}).toString());
                                if (zza5 != null) {
                                    String zza6 = zzfz.zza(newPullParser, new ObfuscatedString(new long[]{3862778237621405659L, -5994698858275364860L}).toString());
                                    if (zza6 != null) {
                                        Pattern pattern = zzb;
                                        Matcher matcher3 = pattern.matcher(zza6);
                                        Pattern pattern2 = zzf;
                                        Matcher matcher4 = pattern2.matcher(zza6);
                                        if (matcher3.matches()) {
                                            try {
                                                String group7 = matcher3.group(1);
                                                if (group7 != null) {
                                                    float parseFloat = Float.parseFloat(group7) / 100.0f;
                                                    String group8 = matcher3.group(2);
                                                    if (group8 == null) {
                                                        throw null;
                                                    }
                                                    parseInt = Float.parseFloat(group8) / 100.0f;
                                                    f = parseFloat;
                                                } else {
                                                    throw null;
                                                }
                                            } catch (NumberFormatException unused3) {
                                                zzff.zzf(new ObfuscatedString(new long[]{7735830243381161640L, -3229413915916962900L, 3832924413693190973L}).toString(), new ObfuscatedString(new long[]{5012260068711725746L, -1524684920522846980L, 2987384891943152804L, 4494788522525202732L, 4844808680948470733L, -5803215243659330228L}).toString().concat(zza6));
                                            }
                                        } else if (!matcher4.matches()) {
                                            zzff.zzf(new ObfuscatedString(new long[]{5775158200052348707L, 7020141880023354111L, 778411330773453231L}).toString(), new ObfuscatedString(new long[]{-3228075544635687917L, 8702484849991658016L, 294545607510543345L, -4320921429786129620L, -4689309117659080057L, 9040395434668817450L, -1693458956427332700L}).toString().concat(zza6));
                                        } else if (zzalqVar2 == null) {
                                            zzff.zzf(new ObfuscatedString(new long[]{-3273252932590646829L, -8438105376072366701L, 2912363437820477277L}).toString(), new ObfuscatedString(new long[]{805288064221309072L, 78644064363679283L, 5510494827582788266L, -6061150310482283724L, -377297977807278154L, 3222662502290159061L, -3649340654271992732L}).toString().concat(zza6));
                                        } else {
                                            try {
                                                group = matcher4.group(1);
                                            } catch (NumberFormatException unused4) {
                                            }
                                            try {
                                                if (group != null) {
                                                    int parseInt8 = Integer.parseInt(group);
                                                    String group9 = matcher4.group(2);
                                                    if (group9 == null) {
                                                        throw null;
                                                    }
                                                    f = parseInt8 / zzalqVar2.zza;
                                                    parseInt = Integer.parseInt(group9) / zzalqVar2.zzb;
                                                } else {
                                                    throw null;
                                                }
                                            } catch (NumberFormatException unused5) {
                                                zzff.zzf(new ObfuscatedString(new long[]{2252017053304043088L, 4152024472158033972L, -3968723567997882355L}).toString(), new ObfuscatedString(new long[]{1876229442495676469L, -7761350114802601167L, 5673834069427704143L, 7687908807398792879L, 4899881563021831791L, 4887286021470771163L}).toString().concat(zza6));
                                                zzalsVar = null;
                                                if (zzalsVar != null) {
                                                }
                                            }
                                        }
                                        String zza7 = zzfz.zza(newPullParser, new ObfuscatedString(new long[]{7221620050610835957L, -2418412549493628011L}).toString());
                                        if (zza7 != null) {
                                            Matcher matcher5 = pattern.matcher(zza7);
                                            Matcher matcher6 = pattern2.matcher(zza7);
                                            if (matcher5.matches()) {
                                                try {
                                                    String group10 = matcher5.group(1);
                                                    if (group10 != null) {
                                                        float parseFloat2 = Float.parseFloat(group10) / 100.0f;
                                                        String group11 = matcher5.group(2);
                                                        if (group11 == null) {
                                                            throw null;
                                                        }
                                                        parseInt2 = Float.parseFloat(group11) / 100.0f;
                                                        f2 = parseFloat2;
                                                    } else {
                                                        throw null;
                                                    }
                                                } catch (NumberFormatException unused6) {
                                                    zzff.zzf(new ObfuscatedString(new long[]{-2949625583108601974L, -3811222096624397357L, 399756104035772217L}).toString(), new ObfuscatedString(new long[]{-7468743494671002329L, -3261208671575166793L, 5525606369831667393L, 7367304410523594087L, -1917736579574182091L, 6614728366702229808L}).toString().concat(zza6));
                                                }
                                            } else if (!matcher6.matches()) {
                                                zzff.zzf(new ObfuscatedString(new long[]{1582227463802729492L, -1548586786823158720L, -8442003717075218924L}).toString(), new ObfuscatedString(new long[]{-6032946804660598851L, 6510609756787707869L, -1323461275280778237L, -1840862926040855962L, -8443954594904411146L, -7049785633112967674L, 2129025825252823706L}).toString().concat(zza6));
                                            } else if (zzalqVar2 == null) {
                                                zzff.zzf(new ObfuscatedString(new long[]{-7012371866231607685L, -5689184344933188176L, -4609003137423750447L}).toString(), new ObfuscatedString(new long[]{7081459297910182294L, -4292290126547477301L, 8193936818304388720L, 2370577025164053747L, 7545987016147160671L, -6918533724396416177L, -43019704383136881L}).toString().concat(zza6));
                                            } else {
                                                try {
                                                    group2 = matcher6.group(1);
                                                } catch (NumberFormatException unused7) {
                                                }
                                                try {
                                                    if (group2 != null) {
                                                        int parseInt9 = Integer.parseInt(group2);
                                                        String group12 = matcher6.group(2);
                                                        if (group12 == null) {
                                                            throw null;
                                                        }
                                                        f2 = parseInt9 / zzalqVar2.zza;
                                                        parseInt2 = Integer.parseInt(group12) / zzalqVar2.zzb;
                                                    } else {
                                                        throw null;
                                                    }
                                                } catch (NumberFormatException unused8) {
                                                    zzff.zzf(new ObfuscatedString(new long[]{-9108109183847168757L, -949743306183739802L, -5428852244281461714L}).toString(), new ObfuscatedString(new long[]{3178929873133693793L, -849564775766273638L, 4839630702427913819L, 8377707932943246998L, 1771616099974536007L, -3662023416793994262L}).toString().concat(zza6));
                                                    zzalsVar = null;
                                                    if (zzalsVar != null) {
                                                    }
                                                }
                                            }
                                            String zza8 = zzfz.zza(newPullParser, new ObfuscatedString(new long[]{-6403564616202587875L, -2759447291296711692L, -5343977309396620461L}).toString());
                                            if (zza8 != null) {
                                                String zza9 = zzfwk.zza(zza8);
                                                int hashCode = zza9.hashCode();
                                                if (hashCode != -1364013995) {
                                                    if (hashCode == 92734940 && zza9.equals(new ObfuscatedString(new long[]{-4897272125297936991L, 5861136840070745050L}).toString())) {
                                                        c3 = 1;
                                                        if (c3 != 0) {
                                                            f3 = (parseInt2 / 2.0f) + parseInt;
                                                            i7 = 1;
                                                        } else if (c3 == 1) {
                                                            f3 = parseInt + parseInt2;
                                                            i7 = 2;
                                                        }
                                                        float f5 = 1.0f / i19;
                                                        zza2 = zzfz.zza(newPullParser, new ObfuscatedString(new long[]{3337059012011305158L, 3993549595197081755L, 7688418841747461401L}).toString());
                                                        if (zza2 != null) {
                                                            String zza10 = zzfwk.zza(zza2);
                                                            int hashCode2 = zza10.hashCode();
                                                            if (hashCode2 == 3694) {
                                                                c = 2;
                                                                if (zza10.equals(new ObfuscatedString(new long[]{-6759745311432003811L, -6855690141938456595L}).toString())) {
                                                                    c2 = 0;
                                                                    if (c2 != 0) {
                                                                    }
                                                                    i8 = 2;
                                                                    zzalsVar = new zzals(zza5, f, f3, 0, i7, f2, parseInt2, 1, f5, i8);
                                                                    if (zzalsVar != null) {
                                                                    }
                                                                }
                                                                c2 = 65535;
                                                                if (c2 != 0) {
                                                                }
                                                                i8 = 2;
                                                                zzalsVar = new zzals(zza5, f, f3, 0, i7, f2, parseInt2, 1, f5, i8);
                                                                if (zzalsVar != null) {
                                                                }
                                                            } else if (hashCode2 != 3553396) {
                                                                if (hashCode2 != 3553576) {
                                                                    c = 2;
                                                                } else {
                                                                    c = 2;
                                                                    if (zza10.equals(new ObfuscatedString(new long[]{-2470181280904421747L, -2198312290644662551L}).toString())) {
                                                                        c2 = 2;
                                                                        if (c2 != 0 || c2 == 1) {
                                                                            i8 = 2;
                                                                        } else if (c2 == c) {
                                                                            i8 = 1;
                                                                        }
                                                                        zzalsVar = new zzals(zza5, f, f3, 0, i7, f2, parseInt2, 1, f5, i8);
                                                                        if (zzalsVar != null) {
                                                                            hashMap2.put(zzalsVar.zza, zzalsVar);
                                                                        }
                                                                    }
                                                                }
                                                                c2 = 65535;
                                                                if (c2 != 0) {
                                                                }
                                                                i8 = 2;
                                                                zzalsVar = new zzals(zza5, f, f3, 0, i7, f2, parseInt2, 1, f5, i8);
                                                                if (zzalsVar != null) {
                                                                }
                                                            } else {
                                                                c = 2;
                                                                if (zza10.equals(new ObfuscatedString(new long[]{4460671218508551449L, 9097917303260469783L}).toString())) {
                                                                    c2 = 1;
                                                                    if (c2 != 0) {
                                                                    }
                                                                    i8 = 2;
                                                                    zzalsVar = new zzals(zza5, f, f3, 0, i7, f2, parseInt2, 1, f5, i8);
                                                                    if (zzalsVar != null) {
                                                                    }
                                                                }
                                                                c2 = 65535;
                                                                if (c2 != 0) {
                                                                }
                                                                i8 = 2;
                                                                zzalsVar = new zzals(zza5, f, f3, 0, i7, f2, parseInt2, 1, f5, i8);
                                                                if (zzalsVar != null) {
                                                                }
                                                            }
                                                        }
                                                        i8 = Integer.MIN_VALUE;
                                                        zzalsVar = new zzals(zza5, f, f3, 0, i7, f2, parseInt2, 1, f5, i8);
                                                        if (zzalsVar != null) {
                                                        }
                                                    }
                                                    c3 = 65535;
                                                    if (c3 != 0) {
                                                    }
                                                    float f52 = 1.0f / i19;
                                                    zza2 = zzfz.zza(newPullParser, new ObfuscatedString(new long[]{3337059012011305158L, 3993549595197081755L, 7688418841747461401L}).toString());
                                                    if (zza2 != null) {
                                                    }
                                                    i8 = Integer.MIN_VALUE;
                                                    zzalsVar = new zzals(zza5, f, f3, 0, i7, f2, parseInt2, 1, f52, i8);
                                                    if (zzalsVar != null) {
                                                    }
                                                } else {
                                                    if (zza9.equals(new ObfuscatedString(new long[]{6668844296117401840L, -2233614413070669030L}).toString())) {
                                                        c3 = 0;
                                                        if (c3 != 0) {
                                                        }
                                                        float f522 = 1.0f / i19;
                                                        zza2 = zzfz.zza(newPullParser, new ObfuscatedString(new long[]{3337059012011305158L, 3993549595197081755L, 7688418841747461401L}).toString());
                                                        if (zza2 != null) {
                                                        }
                                                        i8 = Integer.MIN_VALUE;
                                                        zzalsVar = new zzals(zza5, f, f3, 0, i7, f2, parseInt2, 1, f522, i8);
                                                        if (zzalsVar != null) {
                                                        }
                                                    }
                                                    c3 = 65535;
                                                    if (c3 != 0) {
                                                    }
                                                    float f5222 = 1.0f / i19;
                                                    zza2 = zzfz.zza(newPullParser, new ObfuscatedString(new long[]{3337059012011305158L, 3993549595197081755L, 7688418841747461401L}).toString());
                                                    if (zza2 != null) {
                                                    }
                                                    i8 = Integer.MIN_VALUE;
                                                    zzalsVar = new zzals(zza5, f, f3, 0, i7, f2, parseInt2, 1, f5222, i8);
                                                    if (zzalsVar != null) {
                                                    }
                                                }
                                            }
                                            f3 = parseInt;
                                            i7 = 0;
                                            float f52222 = 1.0f / i19;
                                            zza2 = zzfz.zza(newPullParser, new ObfuscatedString(new long[]{3337059012011305158L, 3993549595197081755L, 7688418841747461401L}).toString());
                                            if (zza2 != null) {
                                            }
                                            i8 = Integer.MIN_VALUE;
                                            zzalsVar = new zzals(zza5, f, f3, 0, i7, f2, parseInt2, 1, f52222, i8);
                                            if (zzalsVar != null) {
                                            }
                                        } else {
                                            zzff.zzf(new ObfuscatedString(new long[]{-2793070935763646663L, 3259481947832486622L, 3091701283578182697L}).toString(), new ObfuscatedString(new long[]{4866947994498895941L, -2978064826422170083L, 6519106963132709617L, -4612644174623563840L, -3024220140993025528L, 2075797976552164443L}).toString());
                                        }
                                        zzalsVar = null;
                                        if (zzalsVar != null) {
                                        }
                                    } else {
                                        zzff.zzf(new ObfuscatedString(new long[]{-7479178923240163155L, -7770793284334467104L, 2069600235187281535L}).toString(), new ObfuscatedString(new long[]{-6668346169102103183L, 8254212192941131863L, -5502122539705600500L, -5704820594374682642L, 136068037822624709L, 3521228459295150151L}).toString());
                                    }
                                    zzalsVar = null;
                                    if (zzalsVar != null) {
                                    }
                                }
                                zzalsVar = null;
                                if (zzalsVar != null) {
                                }
                            }
                        } while (!zzfz.zzb(newPullParser, new ObfuscatedString(new long[]{7604062718274806110L, 2801867068501877670L}).toString()));
                        i4 = i19;
                        zzalqVar = zzalqVar2;
                        i15 = i4;
                    } else if (eventType == 4) {
                        if (zzaloVar2 != null) {
                            zzaloVar2.zzf(zzalo.zzc(newPullParser.getText()));
                        } else {
                            throw null;
                        }
                    } else if (eventType == 3) {
                        if (newPullParser.getName().equals(new ObfuscatedString(new long[]{-8986155774661943152L, 6813978717734496680L}).toString())) {
                            zzalo zzaloVar3 = (zzalo) arrayDeque.peek();
                            if (zzaloVar3 == null) {
                                throw null;
                            }
                            zzalvVar = new zzalv(zzaloVar3, hashMap, hashMap2, hashMap3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i14++;
                } else if (eventType == 3) {
                    i14--;
                }
                newPullParser.next();
                eventType = newPullParser.getEventType();
                i9 = 4;
                i10 = 1;
                i11 = 6;
                i12 = 3;
                i13 = 2;
            }
            if (zzalvVar != null) {
                return zzalvVar;
            }
            throw null;
        } catch (IOException e4) {
            throw new IllegalStateException(new ObfuscatedString(new long[]{4018283344786472834L, -9043820328288742438L, -1582942627857652966L, 2675359417172616218L, 6384437651975147580L, -8331716479588484133L}).toString(), e4);
        } catch (XmlPullParserException e5) {
            throw new IllegalStateException(new ObfuscatedString(new long[]{3879918071804753432L, -3842184955250134378L, -3825457557802707420L, -7363538016147571229L}).toString(), e5);
        }
    }
}
