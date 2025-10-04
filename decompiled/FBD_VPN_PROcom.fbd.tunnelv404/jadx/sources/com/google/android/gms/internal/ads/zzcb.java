package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzcb {
    public static final /* synthetic */ int zza = 0;
    private static final ArrayList zzb = new ArrayList();
    private static final Pattern zzc = Pattern.compile(new ObfuscatedString(new long[]{-1234941427594283017L, -4758148559375165131L, -4938394106939534959L, 8829045411672361596L, 9183685609460827233L, 5003919389203427931L, -6805473828349226775L}).toString());

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0082, code lost:
    
        if (r9.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5737029188029923002L, 3626281427498167983L, -7650182791129414106L}).toString()) != false) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zza(String str, @Nullable String str2) {
        zzca zzc2;
        char c = 3;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(new ObfuscatedString(new long[]{2732858815080974529L, 2604524386257254327L, -8779119459298280045L}).toString())) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1365340241:
                if (str.equals(new ObfuscatedString(new long[]{7885429471443051810L, 3053484481059674979L, 4521525773427703373L, 1077540593080925422L, -5661904839826724433L}).toString())) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1095064472:
                if (str.equals(new ObfuscatedString(new long[]{-4150498352036838029L, -2333625469509577705L, -1046974031797428076L}).toString())) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -53558318:
                if (str.equals(new ObfuscatedString(new long[]{-5900944259741419968L, 3584310208898881016L, -9098560717869591578L}).toString())) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 187078296:
                if (str.equals(new ObfuscatedString(new long[]{7217175238229047444L, -7864461083870458841L, 8878632770387401966L}).toString())) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 187078297:
                if (str.equals(new ObfuscatedString(new long[]{4236173922933712873L, -6726375258350596154L, 8259784085175631277L}).toString())) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 550520934:
                if (str.equals(new ObfuscatedString(new long[]{5180381877866601797L, 8141946759750307253L, 5575181438399335101L, 3948365158981493871L, 2767105697195771924L}).toString())) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 1504578661:
                break;
            case 1504831518:
                if (str.equals(new ObfuscatedString(new long[]{-5888565107266479530L, -8933361491532005669L, -8051676670008030125L}).toString())) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1504891608:
                if (str.equals(new ObfuscatedString(new long[]{-1394758323548474978L, -1495994367135494099L, -5811266473049467807L}).toString())) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 1505942594:
                if (str.equals(new ObfuscatedString(new long[]{8790204963330356272L, 2673750030176475634L, 5892626839071560089L}).toString())) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1556697186:
                if (str.equals(new ObfuscatedString(new long[]{2605522093507737746L, 4234210414627700016L, 3609531359604734641L}).toString())) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return 9;
            case 1:
                if (str2 == null || (zzc2 = zzc(str2)) == null) {
                    return 0;
                }
                return zzc2.zza();
            case 2:
                return 5;
            case 3:
                return 6;
            case 4:
                return 18;
            case 5:
                return 17;
            case 6:
                return 7;
            case 7:
            case '\b':
                return 8;
            case '\t':
                return 30;
            case '\n':
                return 14;
            case 11:
                return 20;
            default:
                return 0;
        }
    }

    public static int zzb(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (zzg(str)) {
            return 1;
        }
        if (zzh(str)) {
            return 2;
        }
        if (new ObfuscatedString(new long[]{8882909202610954151L, -4534379255213829291L}).toString().equals(zzi(str)) || new ObfuscatedString(new long[]{-1187877578667155096L, 3921538621627406424L, 4648052100036348385L, -5523978404681489838L, -5991781799839670030L}).toString().equals(str) || new ObfuscatedString(new long[]{319247866488458279L, -3430246549799986827L, -3915219881588072576L, 2269636481828184677L}).toString().equals(str) || new ObfuscatedString(new long[]{-2754825159911183370L, -6754516298427881110L, 869696557775177624L, 8770885876474407448L}).toString().equals(str) || new ObfuscatedString(new long[]{6728056173965539937L, 2016409395306806330L, -8085788252420702800L, -2190333148592564911L, 8444562398478505415L}).toString().equals(str) || new ObfuscatedString(new long[]{6751696539707291622L, 3529003179073439951L, -6484294731012522519L, -1883555319892105986L}).toString().equals(str) || new ObfuscatedString(new long[]{4354020749767935862L, -8170582798684812013L, -8206105558948446036L, 8336786169693407152L}).toString().equals(str) || new ObfuscatedString(new long[]{-6627439069558860157L, 4546012665777365429L, 8895886020086039078L, -6483274028597095172L, 2492160798699750649L}).toString().equals(str) || new ObfuscatedString(new long[]{5042109631846941050L, -3350451999724376914L, 4491770296658635756L, 2491820540959275719L}).toString().equals(str) || new ObfuscatedString(new long[]{1981909887039830834L, -6960817586522887597L, -7370983893506331515L, -7180031720311971760L}).toString().equals(str) || new ObfuscatedString(new long[]{6450078015170711135L, 4597955539547802237L, -98359914176249543L, -756179606899217297L}).toString().equals(str) || new ObfuscatedString(new long[]{5004675343288164772L, 3361604080220298067L, -4723338577969038655L}).toString().equals(str) || new ObfuscatedString(new long[]{-5230541900517400082L, 6775424142904844770L, -4873125443712362807L, 8073837674369821729L}).toString().equals(str)) {
            return 3;
        }
        if (new ObfuscatedString(new long[]{-4108551381811349933L, -7103296331344736065L}).toString().equals(zzi(str)) || new ObfuscatedString(new long[]{1765796948145968616L, -204344158558427616L, -3653769122170739450L, 4155293623024277715L}).toString().equals(str)) {
            return 4;
        }
        if (new ObfuscatedString(new long[]{4462140270044808827L, -2876067343164522105L, 548096820639997474L}).toString().equals(str) || new ObfuscatedString(new long[]{9035917643655418305L, 684150134278159945L, 5913551651250219423L, 5110978081250652845L}).toString().equals(str) || new ObfuscatedString(new long[]{2236935502048097752L, 8691836395728156829L, -2826253200620706170L, -6173816934689842728L}).toString().equals(str)) {
            return 5;
        }
        if (!new ObfuscatedString(new long[]{-1424855579299110352L, -9172078147277789124L, -578971869664610686L, 1366560678096459709L, -7456854845252987205L}).toString().equals(str)) {
            int size = zzb.size();
            for (int i = 0; i < size; i++) {
                String str2 = ((zzbz) zzb.get(i)).zza;
                if (str.equals(null)) {
                    return 0;
                }
            }
            return -1;
        }
        return 6;
    }

    @Nullable
    @VisibleForTesting
    public static zzca zzc(String str) {
        int i;
        Matcher matcher = zzc.matcher(str);
        if (matcher.matches()) {
            String group = matcher.group(1);
            group.getClass();
            String group2 = matcher.group(2);
            try {
                int parseInt = Integer.parseInt(group, 16);
                if (group2 != null) {
                    i = Integer.parseInt(group2);
                } else {
                    i = 0;
                }
                return new zzca(parseInt, i);
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x0025. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x0028. Please report as an issue. */
    @Nullable
    public static String zzd(int i) {
        ObfuscatedString obfuscatedString;
        if (i == 32) {
            obfuscatedString = new ObfuscatedString(new long[]{4494064883250530229L, 8113981056156052278L, 6360254028034505254L});
        } else if (i == 33) {
            obfuscatedString = new ObfuscatedString(new long[]{7819085544041891815L, 9130058257602065003L, 2533148448201296420L});
        } else if (i != 35) {
            if (i != 64) {
                if (i == 163) {
                    obfuscatedString = new ObfuscatedString(new long[]{6688803025192714703L, 9019789997460939445L, -4093774302388667348L});
                } else if (i == 177) {
                    obfuscatedString = new ObfuscatedString(new long[]{7120152953521896300L, 299164467400616587L, 2720365302584583358L, 6401289726774234477L});
                } else if (i == 221) {
                    obfuscatedString = new ObfuscatedString(new long[]{-621603950603632174L, -6233172870971082118L, 2570650322942769751L});
                } else if (i == 165) {
                    obfuscatedString = new ObfuscatedString(new long[]{-1281655196514303474L, 7206652939203137101L, -74566135796148440L});
                } else if (i != 166) {
                    switch (i) {
                        case 96:
                        case 97:
                        case 98:
                        case 99:
                        case 100:
                        case 101:
                            obfuscatedString = new ObfuscatedString(new long[]{7482267436985529526L, 7421140868655151992L, -5395258200583437766L});
                            break;
                        case 102:
                        case 103:
                        case 104:
                            break;
                        case 105:
                        case 107:
                            obfuscatedString = new ObfuscatedString(new long[]{-6032901249821324185L, -4712276359710906837L, -4192102373115616771L});
                            break;
                        case 106:
                            obfuscatedString = new ObfuscatedString(new long[]{742857693782848898L, 9126317390725801692L, 4713821961711087434L});
                            break;
                        default:
                            switch (i) {
                                case 169:
                                case 172:
                                    obfuscatedString = new ObfuscatedString(new long[]{-7969483941441914325L, -7170331787403102065L, 8452162220801362868L});
                                    break;
                                case 170:
                                case 171:
                                    obfuscatedString = new ObfuscatedString(new long[]{-8185521594615357574L, -8205430993519780762L, 8024916987504924705L});
                                    break;
                                case 173:
                                    obfuscatedString = new ObfuscatedString(new long[]{7295434133154764882L, 738763450006883258L, -5594582295258961817L});
                                    break;
                                case 174:
                                    obfuscatedString = new ObfuscatedString(new long[]{8705416182395747457L, -3740502328206169537L, 1502840568020495474L});
                                    break;
                                default:
                                    return null;
                            }
                    }
                } else {
                    obfuscatedString = new ObfuscatedString(new long[]{180856733087964359L, -2091481726193041652L, -1588879226942312589L});
                }
            }
            obfuscatedString = new ObfuscatedString(new long[]{4703603097557328954L, -5045129135669437121L, -7698882712916611589L});
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{4679708381164389654L, 859492060915481157L, 5507059855349631711L});
        }
        return obfuscatedString.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String zze(String str) {
        char c;
        ObfuscatedString obfuscatedString;
        if (str == null) {
            return null;
        }
        String zza2 = zzfwk.zza(str);
        switch (zza2.hashCode()) {
            case -1007807498:
                if (zza2.equals(new ObfuscatedString(new long[]{-7115232716250743369L, 8936145860353921900L, -3369694870303106140L}).toString())) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -979095690:
                if (zza2.equals(new ObfuscatedString(new long[]{-1850919513034555173L, 6899930392006537226L, -107762456016315160L, -1983931778393057561L}).toString())) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -586683234:
                if (zza2.equals(new ObfuscatedString(new long[]{-5779611749683340447L, -3494068168986705675L, 2325834828965229792L}).toString())) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -432836268:
                if (zza2.equals(new ObfuscatedString(new long[]{9025051075469108525L, -3378835903096756957L, -543959244971587647L}).toString())) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -432836267:
                if (zza2.equals(new ObfuscatedString(new long[]{-7150308591434989984L, -2818253981970825062L, 4152623352465030655L}).toString())) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 187090231:
                if (zza2.equals(new ObfuscatedString(new long[]{-1084346942059510609L, -6623795483704250484L, 9128535696613028547L}).toString())) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        if (c != 4) {
                            if (c != 5) {
                                return zza2;
                            }
                            obfuscatedString = new ObfuscatedString(new long[]{9045966018983285218L, 3196422133839612541L, -6515928546389406077L});
                        } else {
                            obfuscatedString = new ObfuscatedString(new long[]{-3969402340002036579L, 128365755621027102L, 4804233498227799772L});
                        }
                    } else {
                        obfuscatedString = new ObfuscatedString(new long[]{4787696030117222048L, -32071865002602792L, -6970111038275614350L, -6408139001364857492L});
                    }
                } else {
                    obfuscatedString = new ObfuscatedString(new long[]{2755328231190854964L, -891416404839761714L, 3633599739730270823L});
                }
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-920034677160186339L, -4035883256109025552L, -3890799949874800197L});
            }
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{660120599155407761L, 3171060781797669712L, 2008704755830101327L});
        }
        return obfuscatedString.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0095, code lost:
    
        if (r5.equals(new com.panda912.muddy.ObfuscatedString(new long[]{3796789762859609566L, 3548343520038839105L, 253034542806621616L}).toString()) != false) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean zzf(@Nullable String str, @Nullable String str2) {
        zzca zzc2;
        int zza2;
        char c = 3;
        if (str == null) {
            return false;
        }
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(new ObfuscatedString(new long[]{3615599259680141332L, -6994437866874832857L, 6179039121630875896L}).toString())) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -432837260:
                if (str.equals(new ObfuscatedString(new long[]{-4184864653561846175L, 1513608391227817014L, 5757228073762180257L}).toString())) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -432837259:
                if (str.equals(new ObfuscatedString(new long[]{-5544851245966174628L, -2796725514773759891L, -4665438247888949214L}).toString())) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -53558318:
                if (str.equals(new ObfuscatedString(new long[]{-6237401111939947214L, 7356943916229888427L, 3856116295673529274L}).toString())) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 187078296:
                if (str.equals(new ObfuscatedString(new long[]{-2229668008217590356L, 3620327968732426876L, 6920488940847732812L}).toString())) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 187094639:
                break;
            case 1504578661:
                if (str.equals(new ObfuscatedString(new long[]{5782114185872117319L, 6837084385411310732L, 6714807685112253893L}).toString())) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1504619009:
                if (str.equals(new ObfuscatedString(new long[]{3407680859683864196L, -1168417746686418512L, -3120433349072173174L}).toString())) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1504831518:
                if (str.equals(new ObfuscatedString(new long[]{8313987094140143900L, -4491497984798299361L, -3020378839071831444L}).toString())) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1903231877:
                if (str.equals(new ObfuscatedString(new long[]{-2816560651769507766L, 5984937537653979063L, 5759141677132041661L}).toString())) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1903589369:
                if (str.equals(new ObfuscatedString(new long[]{-3214883121757014291L, -6354734783435316221L, -2854690792243840435L}).toString())) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
                return true;
            case '\n':
                if (str2 == null || (zzc2 = zzc(str2)) == null || (zza2 = zzc2.zza()) == 0 || zza2 == 16) {
                    return false;
                }
                return true;
            default:
                return false;
        }
    }

    public static boolean zzg(@Nullable String str) {
        return new ObfuscatedString(new long[]{-8961081359166024819L, -6161527928406826749L}).toString().equals(zzi(str));
    }

    public static boolean zzh(@Nullable String str) {
        return new ObfuscatedString(new long[]{6767080668349591102L, -2084826283740515267L}).toString().equals(zzi(str));
    }

    @Nullable
    private static String zzi(@Nullable String str) {
        int indexOf;
        if (str != null && (indexOf = str.indexOf(47)) != -1) {
            return str.substring(0, indexOf);
        }
        return null;
    }
}
