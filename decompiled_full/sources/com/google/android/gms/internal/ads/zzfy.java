package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.app.UiModeManager;
import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.AudioFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1321x18c67f64;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import okhttp3.internal.http.HttpStatusCodesKt;

/* loaded from: classes2.dex */
public final class zzfy {
    public static final int zza;
    public static final String zzb;
    public static final String zzc;
    public static final String zzd;
    public static final String zze;
    public static final byte[] zzf;
    private static final Pattern zzg;
    private static final Pattern zzh;
    private static final Pattern zzi;
    private static final Pattern zzj;

    @Nullable
    private static HashMap zzk;
    private static final String[] zzl;
    private static final String[] zzm;
    private static final int[] zzn;
    private static final int[] zzo;

    static {
        int i = Build.VERSION.SDK_INT;
        zza = i;
        String str = Build.DEVICE;
        zzb = str;
        String str2 = Build.MANUFACTURER;
        zzc = str2;
        String str3 = Build.MODEL;
        zzd = str3;
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-1244640086963124593L, 512642075278702996L}).toString());
        m3341xc20437a5.append(str3);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{1356751387430647312L, 7501613994211738864L}).toString());
        m3341xc20437a5.append(str2);
        zze = AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-3307948713066282540L, -5033959008525735088L}), m3341xc20437a5, i);
        zzf = new byte[0];
        zzg = Pattern.compile(new ObfuscatedString(new long[]{-2908962304426391779L, -2029784375289932034L, -2935056129407386272L, 5031821510669203969L, 3287738830085946908L, -4008698908440302316L, 4238425372036854677L, -5871074431876886217L, 8656961128999663033L, 8494596880511101888L, 2116556716495475917L, -4881353784433035877L, 7023945235561958642L}).toString());
        zzh = Pattern.compile(new ObfuscatedString(new long[]{6751925398854213527L, 1195033721701916213L, 7632430318770173067L, 3236150569447536875L, -1560678666541664117L, 1297333375370320978L, 4951698038945623204L, 110733310996720922L, -6727658343371375476L, -7114161970171982681L, -1387348288119760189L, 8101611861084549348L}).toString());
        zzi = Pattern.compile(new ObfuscatedString(new long[]{-209887414340841324L, 7012771646285476398L, -2926453754496847016L, -2230357933123195207L}).toString());
        zzj = Pattern.compile(new ObfuscatedString(new long[]{2131112566633303134L, 3574676475020478935L, 468411375609157223L, 6368598423181317435L, -3326328432717729224L, 5468873597532413706L}).toString(), 2);
        zzl = new String[]{new ObfuscatedString(new long[]{2794512542639370784L, 6992323051227152930L}).toString(), new ObfuscatedString(new long[]{-777516984836534114L, -5144550585649726659L}).toString(), new ObfuscatedString(new long[]{116543962943100491L, 7626341177566073112L}).toString(), new ObfuscatedString(new long[]{-4530499370661678860L, -5093729846892086387L}).toString(), new ObfuscatedString(new long[]{6012596735095482470L, 7637967008030610278L}).toString(), new ObfuscatedString(new long[]{-6627536122072748935L, -9173430633533896944L}).toString(), new ObfuscatedString(new long[]{-468069333043553530L, -8547607065287828194L}).toString(), new ObfuscatedString(new long[]{-1801110365647385137L, 2444398926928520297L}).toString(), new ObfuscatedString(new long[]{1780297069971093228L, -4449368976256664794L}).toString(), new ObfuscatedString(new long[]{3710458814605497652L, -7838838528469247756L}).toString(), new ObfuscatedString(new long[]{-2104102879490073773L, -682115974635170913L}).toString(), new ObfuscatedString(new long[]{4077965361921679862L, -3676961369653658889L}).toString(), new ObfuscatedString(new long[]{2579303269213475123L, 2255465310117600761L}).toString(), new ObfuscatedString(new long[]{-163639422627620966L, 6061064154983800154L}).toString(), new ObfuscatedString(new long[]{875165694769770847L, 713465098107518138L}).toString(), new ObfuscatedString(new long[]{3135948627989634872L, -5738709292772077487L}).toString(), new ObfuscatedString(new long[]{3352487917361070692L, 1897970623545868500L}).toString(), new ObfuscatedString(new long[]{-3024575412475921430L, -8742856577415081570L}).toString(), new ObfuscatedString(new long[]{-6244672261794639421L, -3488877732284560524L}).toString(), new ObfuscatedString(new long[]{4235714870720812172L, -1720238869886528910L}).toString(), new ObfuscatedString(new long[]{646190916322631221L, -7599184886826701422L}).toString(), new ObfuscatedString(new long[]{1475913163734891076L, -4113835687615907360L}).toString(), new ObfuscatedString(new long[]{-2547542188142374769L, 3296949874952358919L}).toString(), new ObfuscatedString(new long[]{4745377271388437550L, 519701626560519311L}).toString(), new ObfuscatedString(new long[]{-7451119616622446019L, 9109570862520424884L}).toString(), new ObfuscatedString(new long[]{8326449852803183702L, 5918702511259903919L}).toString(), new ObfuscatedString(new long[]{7576585972942801547L, 6335012847832386152L}).toString(), new ObfuscatedString(new long[]{-4677612478998699432L, -2969498847016028888L}).toString(), new ObfuscatedString(new long[]{-4146552030425343584L, 1321830036091652547L}).toString(), new ObfuscatedString(new long[]{-2740995746501913232L, -6776529658490395648L}).toString(), new ObfuscatedString(new long[]{1569628962074559524L, 2836398380680378402L}).toString(), new ObfuscatedString(new long[]{-1854506420742521951L, -1826321223003694520L}).toString(), new ObfuscatedString(new long[]{-9037675351435740227L, -3162611513301787414L}).toString(), new ObfuscatedString(new long[]{8579539715130345655L, 3013333443534840167L}).toString(), new ObfuscatedString(new long[]{-3702388680990131595L, 6769476318533774311L}).toString(), new ObfuscatedString(new long[]{8291055878573841664L, 3717714839579342232L}).toString(), new ObfuscatedString(new long[]{2143877233256557116L, -3304557670656742300L}).toString(), new ObfuscatedString(new long[]{2102055760869431929L, -2525867553819840932L}).toString(), new ObfuscatedString(new long[]{-1964425105957078281L, -8656180675537713275L}).toString(), new ObfuscatedString(new long[]{8684647306345441838L, -6181488720522091923L}).toString(), new ObfuscatedString(new long[]{-3955771372825813562L, 5017482305117046298L}).toString(), new ObfuscatedString(new long[]{-4875601180821435496L, -371801393236304550L}).toString(), new ObfuscatedString(new long[]{-140192862085208779L, 283181531592337386L}).toString(), new ObfuscatedString(new long[]{-4476789325761833061L, -3235616716508147387L}).toString(), new ObfuscatedString(new long[]{-9211662341683250377L, -7458930251167949418L}).toString(), new ObfuscatedString(new long[]{-6418358524458959726L, 738179209822175903L}).toString(), new ObfuscatedString(new long[]{-8589447037403675451L, 9073447881351582927L}).toString(), new ObfuscatedString(new long[]{-3431244260762876322L, -654130928698330972L}).toString(), new ObfuscatedString(new long[]{7016655105110050192L, 1598511484783894161L}).toString(), new ObfuscatedString(new long[]{-448676261967594653L, 8215942559160334936L}).toString(), new ObfuscatedString(new long[]{-8520996186161479830L, 1302332423547451761L}).toString(), new ObfuscatedString(new long[]{3036951765144726929L, -3037740724849670580L}).toString(), new ObfuscatedString(new long[]{7375948754264127448L, -5487422699739685474L}).toString(), new ObfuscatedString(new long[]{-383956920172861648L, 2758050493478011588L}).toString(), new ObfuscatedString(new long[]{2208182094632023896L, 7929222153878512573L}).toString(), new ObfuscatedString(new long[]{6417487877561522797L, 152317834547616466L}).toString(), new ObfuscatedString(new long[]{-4615883830671356752L, 7649257193271682295L}).toString(), new ObfuscatedString(new long[]{-428997816217908406L, 2626677029835964382L}).toString(), new ObfuscatedString(new long[]{-2451890752592388179L, 4594141108683084319L}).toString(), new ObfuscatedString(new long[]{8255188279390344371L, -1061585673734420462L}).toString(), new ObfuscatedString(new long[]{-637158898364901269L, 1411350131390583263L}).toString(), new ObfuscatedString(new long[]{3392266528011678799L, 8311573479770875630L}).toString(), new ObfuscatedString(new long[]{7947338496135184532L, 5034874438962029133L}).toString(), new ObfuscatedString(new long[]{-2133730872912427311L, 7368917155974108262L}).toString(), new ObfuscatedString(new long[]{-6847024724096897118L, -8401271747082965923L}).toString(), new ObfuscatedString(new long[]{-7490722441503418631L, -3985064511810485627L}).toString(), new ObfuscatedString(new long[]{1731399060048454699L, 3630196635571876134L}).toString(), new ObfuscatedString(new long[]{1571590551371778093L, -4140501328586529365L}).toString(), new ObfuscatedString(new long[]{-7953815115010861561L, 4597521226981252295L}).toString(), new ObfuscatedString(new long[]{4490124874264821011L, -2540014483395774407L}).toString(), new ObfuscatedString(new long[]{1104162428990435449L, 6064401344245208829L}).toString(), new ObfuscatedString(new long[]{7242723167830923678L, 2029547842210689368L}).toString(), new ObfuscatedString(new long[]{-117067340834712555L, 518367618455521810L}).toString(), new ObfuscatedString(new long[]{4801422852856186689L, 3319952427266015156L}).toString(), new ObfuscatedString(new long[]{6281342390361353574L, 7806724054003898496L}).toString(), new ObfuscatedString(new long[]{8280380632417592432L, -1041507633274041734L}).toString(), new ObfuscatedString(new long[]{1199175644925001906L, 6357478055507124368L}).toString(), new ObfuscatedString(new long[]{-1414063954156062688L, 9716463681468948L}).toString(), new ObfuscatedString(new long[]{-2898537430479881541L, 3482578821256292369L}).toString(), new ObfuscatedString(new long[]{4021845880035942427L, -802001400063798044L}).toString(), new ObfuscatedString(new long[]{5436775605283662019L, 6668416291515752281L}).toString(), new ObfuscatedString(new long[]{-939093843615915394L, 6852379390686395694L}).toString(), new ObfuscatedString(new long[]{1148472776036622121L, -5005508954431169674L}).toString(), new ObfuscatedString(new long[]{-57654948585216248L, -408831331956038694L}).toString(), new ObfuscatedString(new long[]{7741094697611344709L, 3477255054954495957L}).toString(), new ObfuscatedString(new long[]{2300917786122676063L, 3890859139968790616L}).toString(), new ObfuscatedString(new long[]{-7017723249984015483L, 6894841745756318816L}).toString(), new ObfuscatedString(new long[]{-4160528373352468927L, -3169362633537518715L}).toString()};
        zzm = new String[]{new ObfuscatedString(new long[]{-2628535128569803433L, -4555602973188247487L}).toString(), new ObfuscatedString(new long[]{-2229939514266088352L, 6084477939374700034L}).toString(), new ObfuscatedString(new long[]{-1105857483348661583L, 8820120590259203236L}).toString(), new ObfuscatedString(new long[]{-3569684751981344846L, -1266498983355148147L}).toString(), new ObfuscatedString(new long[]{-4384968183727810875L, -5372427122561646816L}).toString(), new ObfuscatedString(new long[]{5885574863635040238L, -1242357520163926924L}).toString(), new ObfuscatedString(new long[]{4431573514880770125L, -6969243735120531325L}).toString(), new ObfuscatedString(new long[]{-3063955521948644865L, -6340722358144000172L}).toString(), new ObfuscatedString(new long[]{-911463605268026174L, 4381066536190909460L}).toString(), new ObfuscatedString(new long[]{8908308221963844265L, -6630613406424676183L}).toString(), new ObfuscatedString(new long[]{-7714448928394902340L, -1672484274783963994L}).toString(), new ObfuscatedString(new long[]{-3993255636623452164L, -1079894675291184223L}).toString(), new ObfuscatedString(new long[]{-5697771596409594399L, 3954066882178161420L}).toString(), new ObfuscatedString(new long[]{-449418882650684480L, -3366447586689108136L}).toString(), new ObfuscatedString(new long[]{-3955007359298988560L, -3235553413459101616L, 3143993005406591905L}).toString(), new ObfuscatedString(new long[]{4930097828382083606L, 8656491099513894756L}).toString(), new ObfuscatedString(new long[]{2477760465577558267L, 91724295293962638L}).toString(), new ObfuscatedString(new long[]{8182361103475165672L, -3163996214690483877L}).toString()};
        zzn = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        zzo = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, HttpStatusCodesKt.HTTP_ACCEPTED, HttpStatusCodesKt.HTTP_RESET_CONTENT, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, HttpStatusCodesKt.HTTP_PARTIAL_CONTENT, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, HttpStatusCodesKt.HTTP_IM_USED, 235, 236, 193, 198, HttpStatusCodesKt.HTTP_MULTI_STATUS, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, 222, 217, HttpStatusCodesKt.HTTP_ALREADY_REPORTED, 215, 194, 197, HttpStatusCodesKt.HTTP_NO_CONTENT, HttpStatusCodesKt.HTTP_NOT_AUTHORITATIVE, 230, 225, 232, 239, 250, 253, 244, 243};
    }

    public static String zzA(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, zzfwq.zzc);
    }

    public static String zzB(int i) {
        ObfuscatedString obfuscatedString;
        switch (i) {
            case -2:
                obfuscatedString = new ObfuscatedString(new long[]{7278223206662630550L, 52093507359648359L});
                break;
            case -1:
                obfuscatedString = new ObfuscatedString(new long[]{-1449695406845702803L, -4864901068501287547L});
                break;
            case 0:
                obfuscatedString = new ObfuscatedString(new long[]{-8935264591174256844L, 2982922718501424842L});
                break;
            case 1:
                obfuscatedString = new ObfuscatedString(new long[]{-4621101728365043620L, -3814348038034500202L});
                break;
            case 2:
                obfuscatedString = new ObfuscatedString(new long[]{-4106700167928323899L, 2133323137422021709L});
                break;
            case 3:
                obfuscatedString = new ObfuscatedString(new long[]{-5577965472744254867L, 3780852748359494798L});
                break;
            case 4:
                obfuscatedString = new ObfuscatedString(new long[]{4252110832055866539L, -5449145065250599480L});
                break;
            case 5:
                obfuscatedString = new ObfuscatedString(new long[]{-2426245506539966239L, -2719531333933165078L});
                break;
            default:
                obfuscatedString = new ObfuscatedString(new long[]{-519477833615672245L, -5347524468689629684L, 5367515685743004084L});
                break;
        }
        return obfuscatedString.toString();
    }

    public static String zzC(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        if (!replace.isEmpty() && !replace.equals(new ObfuscatedString(new long[]{-5929233265849675746L, 2887745068677794292L}).toString())) {
            str = replace;
        }
        String zza2 = zzfwk.zza(str);
        int i = 0;
        String str2 = zza2.split(new ObfuscatedString(new long[]{6806894444158012363L, -4250000711694736110L}).toString(), 2)[0];
        if (zzk == null) {
            zzk = zzO();
        }
        String str3 = (String) zzk.get(str2);
        if (str3 != null) {
            zza2 = str3.concat(String.valueOf(zza2.substring(str2.length())));
            str2 = str3;
        }
        if (!new ObfuscatedString(new long[]{6309219530506974816L, -7218943565459218636L}).toString().equals(str2) && !new ObfuscatedString(new long[]{3718450254092789613L, -7833376046559441840L}).toString().equals(str2) && !new ObfuscatedString(new long[]{-1017866735201072279L, 3307346756239046144L}).toString().equals(str2)) {
            return zza2;
        }
        while (true) {
            String[] strArr = zzm;
            int length = strArr.length;
            if (i < 18) {
                if (zza2.startsWith(strArr[i])) {
                    return String.valueOf(strArr[i + 1]).concat(String.valueOf(zza2.substring(strArr[i].length())));
                }
                i += 2;
            } else {
                return zza2;
            }
        }
    }

    public static ExecutorService zzD(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.google.android.gms.internal.ads.zzfx
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, str);
            }
        });
    }

    public static void zzE(long[] jArr, long j, long j2) {
        int i = 0;
        RoundingMode roundingMode = RoundingMode.FLOOR;
        if (j2 >= 1000000 && j2 % 1000000 == 0) {
            long zza2 = zzgcq.zza(j2, 1000000L, RoundingMode.UNNECESSARY);
            while (i < jArr.length) {
                jArr[i] = zzgcq.zza(jArr[i], zza2, roundingMode);
                i++;
            }
            return;
        }
        if (j2 < 1000000 && 1000000 % j2 == 0) {
            long zza3 = zzgcq.zza(1000000L, j2, RoundingMode.UNNECESSARY);
            while (i < jArr.length) {
                jArr[i] = zzgcq.zzc(jArr[i], zza3);
                i++;
            }
            return;
        }
        for (int i2 = 0; i2 < jArr.length; i2++) {
            long j3 = jArr[i2];
            if (j3 != 0) {
                if (j2 >= j3 && j2 % j3 == 0) {
                    jArr[i2] = zzgcq.zza(1000000L, zzgcq.zza(j2, j3, RoundingMode.UNNECESSARY), roundingMode);
                } else if (j2 < j3 && j3 % j2 == 0) {
                    jArr[i2] = zzgcq.zzc(1000000L, zzgcq.zza(j3, j2, RoundingMode.UNNECESSARY));
                } else {
                    jArr[i2] = zzM(j3, 1000000L, j2, roundingMode);
                }
            }
        }
    }

    public static boolean zzF(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            if (obj2 != null) {
                return false;
            }
            return true;
        }
        return obj.equals(obj2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0045, code lost:
    
        r4.zzJ(r3);
        r1 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean zzG(zzfp zzfpVar, zzfp zzfpVar2, @Nullable Inflater inflater) {
        boolean z = false;
        if (zzfpVar.zzb() <= 0) {
            return false;
        }
        if (zzfpVar2.zzc() < zzfpVar.zzb()) {
            int zzb2 = zzfpVar.zzb();
            zzfpVar2.zzE(zzb2 + zzb2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(zzfpVar.zzM(), zzfpVar.zzd(), zzfpVar.zzb());
        int i = 0;
        while (true) {
            try {
                i += inflater.inflate(zzfpVar2.zzM(), i, zzfpVar2.zzc() - i);
                if (!inflater.finished()) {
                    if (inflater.needsDictionary() || inflater.needsInput()) {
                        break;
                    }
                    if (i == zzfpVar2.zzc()) {
                        int zzc2 = zzfpVar2.zzc();
                        zzfpVar2.zzE(zzc2 + zzc2);
                    }
                } else {
                    break;
                }
            } catch (DataFormatException unused) {
            } catch (Throwable th) {
                inflater.reset();
                throw th;
            }
        }
        inflater.reset();
        return z;
    }

    public static boolean zzH(int i) {
        return i == 3 || i == 2 || i == 268435456 || i == 21 || i == 1342177280 || i == 22 || i == 1610612736 || i == 4;
    }

    public static boolean zzI(int i) {
        return i == 10 || i == 13;
    }

    public static boolean zzJ(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService(new ObfuscatedString(new long[]{3291965398629290583L, -8826360253629832080L}).toString());
        if (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) {
            return true;
        }
        return false;
    }

    public static boolean zzK(Handler handler, Runnable runnable) {
        if (!handler.getLooper().getThread().isAlive()) {
            return false;
        }
        if (handler.getLooper() == Looper.myLooper()) {
            runnable.run();
            return true;
        }
        return handler.post(runnable);
    }

    public static Object[] zzL(Object[] objArr, int i) {
        boolean z;
        if (i <= objArr.length) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzd(z);
        return Arrays.copyOf(objArr, i);
    }

    private static long zzM(long j, long j2, long j3, RoundingMode roundingMode) {
        long zzc2 = zzgcq.zzc(j, j2);
        if (zzc2 != Long.MAX_VALUE && zzc2 != Long.MIN_VALUE) {
            return zzgcq.zza(zzc2, j3, roundingMode);
        }
        long zzb2 = zzgcq.zzb(Math.abs(j2), Math.abs(j3));
        RoundingMode roundingMode2 = RoundingMode.UNNECESSARY;
        long zza2 = zzgcq.zza(j2, zzb2, roundingMode2);
        long zza3 = zzgcq.zza(j3, zzb2, roundingMode2);
        long zzb3 = zzgcq.zzb(Math.abs(j), Math.abs(zza3));
        long zza4 = zzgcq.zza(j, zzb3, roundingMode2);
        long zza5 = zzgcq.zza(zza3, zzb3, roundingMode2);
        long zzc3 = zzgcq.zzc(zza4, zza2);
        if (zzc3 != Long.MAX_VALUE && zzc3 != Long.MIN_VALUE) {
            return zzgcq.zza(zzc3, zza5, roundingMode);
        }
        double d = (zza2 / zza5) * zza4;
        if (d > 9.223372036854776E18d) {
            return Long.MAX_VALUE;
        }
        if (d < -9.223372036854776E18d) {
            return Long.MIN_VALUE;
        }
        return zzgcl.zza(d, roundingMode);
    }

    @Nullable
    private static String zzN(String str) {
        try {
            Class<?> cls = Class.forName(new ObfuscatedString(new long[]{-3754861675683460146L, -7335088747157589011L, 4341113972162708432L, 4056032701588158485L, 7276184913779348645L}).toString());
            return (String) cls.getMethod(new ObfuscatedString(new long[]{6936178792954802650L, -6966766148345755691L}).toString(), String.class).invoke(cls, str);
        } catch (Exception e) {
            zzff.zzd(new ObfuscatedString(new long[]{5012097405286751137L, -1852024655295697044L}).toString(), new ObfuscatedString(new long[]{1800387431187980651L, 6226394242164232312L, 6155929641145755406L, -8028357904138637556L, 2364157959702120268L}).toString().concat(str), e);
            return null;
        }
    }

    private static HashMap zzO() {
        String[] iSOLanguages = Locale.getISOLanguages();
        int length = iSOLanguages.length;
        int length2 = zzl.length;
        HashMap hashMap = new HashMap(length + 88);
        int i = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    hashMap.put(iSO3Language, str);
                }
            } catch (MissingResourceException unused) {
            }
        }
        while (true) {
            String[] strArr = zzl;
            int length3 = strArr.length;
            if (i < 88) {
                hashMap.put(strArr[i], strArr[i + 1]);
                i += 2;
            } else {
                return hashMap;
            }
        }
    }

    public static int zza(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int binarySearch = Arrays.binarySearch(jArr, j);
        if (binarySearch < 0) {
            return ~binarySearch;
        }
        while (true) {
            i = binarySearch + 1;
            if (i >= jArr.length || jArr[i] != j) {
                break;
            }
            binarySearch = i;
        }
        if (!z) {
            return i;
        }
        return binarySearch;
    }

    public static int zzb(int[] iArr, int i, boolean z, boolean z2) {
        int i2;
        int i3;
        int binarySearch = Arrays.binarySearch(iArr, i);
        if (binarySearch < 0) {
            i3 = -(binarySearch + 2);
        } else {
            while (true) {
                i2 = binarySearch - 1;
                if (i2 < 0 || iArr[i2] != i) {
                    break;
                }
                binarySearch = i2;
            }
            if (z) {
                i3 = binarySearch;
            } else {
                i3 = i2;
            }
        }
        if (z2) {
            return Math.max(0, i3);
        }
        return i3;
    }

    public static int zzc(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int binarySearch = Arrays.binarySearch(jArr, j);
        if (binarySearch < 0) {
            i = -(binarySearch + 2);
        } else {
            while (true) {
                int i2 = binarySearch - 1;
                if (i2 < 0 || jArr[i2] != j) {
                    break;
                }
                binarySearch = i2;
            }
            i = binarySearch;
        }
        if (z2) {
            return Math.max(0, i);
        }
        return i;
    }

    public static int zzd(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            i3 = zzn[(i3 >>> 24) ^ (bArr[i] & 255)] ^ (i3 << 8);
            i++;
        }
        return i3;
    }

    public static int zze(byte[] bArr, int i, int i2, int i3) {
        int i4 = 0;
        while (i < i2) {
            i4 = zzo[i4 ^ (bArr[i] & 255)];
            i++;
        }
        return i4;
    }

    public static int zzf(int i) {
        if (i == 20) {
            return 30;
        }
        if (i == 22) {
            return 31;
        }
        if (i == 30) {
            return 34;
        }
        switch (i) {
            case 2:
            case 3:
                return 3;
            case 4:
            case 5:
            case 6:
                return 21;
            case 7:
            case 8:
                return 23;
            case 9:
            case 10:
            case 11:
            case 12:
                return 28;
            default:
                switch (i) {
                    case 14:
                        return 25;
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        return 28;
                    default:
                        return Integer.MAX_VALUE;
                }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0015 A[RETURN] */
    @SuppressLint({"InlinedApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zzg(int i) {
        switch (i) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return HttpStatusCodesKt.HTTP_NO_CONTENT;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                return 6396;
            case 9:
            case 11:
            default:
                return 0;
            case 10:
                if (zza >= 32) {
                    return 737532;
                }
                break;
            case 12:
                return 743676;
        }
    }

    public static int zzh(ByteBuffer byteBuffer, int i) {
        int i2 = byteBuffer.getInt(i);
        if (byteBuffer.order() == ByteOrder.BIG_ENDIAN) {
            return i2;
        }
        return Integer.reverseBytes(i2);
    }

    public static int zzi(int i) {
        if (i == 2 || i == 4) {
            return 6005;
        }
        if (i == 10) {
            return 6004;
        }
        if (i == 7) {
            return 6005;
        }
        if (i == 8) {
            return 6003;
        }
        switch (i) {
            case 15:
                return 6003;
            case 16:
            case 18:
                return 6005;
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                return 6004;
            default:
                switch (i) {
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        return 6002;
                    default:
                        return 6006;
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003f A[Catch: NumberFormatException -> 0x004a, TRY_ENTER, TryCatch #0 {NumberFormatException -> 0x004a, blocks: (B:15:0x003f, B:21:0x0049), top: B:13:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zzj(@Nullable String str) {
        String[] split;
        int length;
        boolean z;
        if (str == null || (length = (split = str.split(new ObfuscatedString(new long[]{125121845703828971L, -7740894037447500141L}).toString(), -1)).length) < 2) {
            return 0;
        }
        String str2 = split[(-1) + length];
        try {
            if (length >= 3) {
                if (new ObfuscatedString(new long[]{-7793622197763087647L, -8264517183270466386L}).toString().equals(split[length - 2])) {
                    z = true;
                    if (str2 == null) {
                        int parseInt = Integer.parseInt(str2);
                        if (z) {
                            return -parseInt;
                        }
                        return parseInt;
                    }
                    throw null;
                }
            }
            if (str2 == null) {
            }
        } catch (NumberFormatException unused) {
            return 0;
        }
        z = false;
    }

    public static int zzk(int i) {
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return 2;
        }
        if (i != 24) {
            return i != 32 ? 0 : 22;
        }
        return 21;
    }

    public static int zzl(int i, int i2) {
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    if (i != 21) {
                        if (i != 22) {
                            if (i != 268435456) {
                                if (i != 1342177280) {
                                    if (i != 1610612736) {
                                        throw new IllegalArgumentException();
                                    }
                                }
                            }
                        }
                    }
                    return i2 * 3;
                }
                return i2 * 4;
            }
            return i2;
        }
        return i2 + i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int zzm(Uri uri) {
        char c;
        int i;
        String scheme = uri.getScheme();
        if (scheme != null && zzfwk.zzc(new ObfuscatedString(new long[]{-5911766540367952208L, -2364088015245323304L}).toString(), scheme)) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int lastIndexOf = lastPathSegment.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String zza2 = zzfwk.zza(lastPathSegment.substring(lastIndexOf + 1));
            switch (zza2.hashCode()) {
                case 104579:
                    if (zza2.equals(new ObfuscatedString(new long[]{-3158473968354262113L, 1286425848692753625L}).toString())) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 108321:
                    if (zza2.equals(new ObfuscatedString(new long[]{-5472845202611516190L, 5782235739507731074L}).toString())) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 3242057:
                    if (zza2.equals(new ObfuscatedString(new long[]{-2984699643467424626L, -3534427119281804771L}).toString())) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 3299913:
                    if (zza2.equals(new ObfuscatedString(new long[]{2274588150184715510L, -4963462681222905252L}).toString())) {
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
                    if (c != 2 && c != 3) {
                        i = 4;
                    } else {
                        i = 1;
                    }
                } else {
                    i = 2;
                }
            } else {
                i = 0;
            }
            if (i != 4) {
                return i;
            }
        }
        Pattern pattern = zzj;
        String path = uri.getPath();
        path.getClass();
        Matcher matcher = pattern.matcher(path);
        if (!matcher.matches()) {
            return 4;
        }
        String group = matcher.group(2);
        if (group != null) {
            if (group.contains(new ObfuscatedString(new long[]{-1227214577093015501L, 2024586610998406720L, 3906068097151699189L, 2098521740035169023L}).toString())) {
                return 0;
            }
            if (group.contains(new ObfuscatedString(new long[]{1496411148727512366L, 8151392935263754919L, -7085807559718019606L}).toString())) {
                return 2;
            }
        }
        return 1;
    }

    public static long zzn(long j, int i) {
        return zzs(j, i, 1000000L, RoundingMode.CEILING);
    }

    public static long zzo(long j, float f) {
        if (f == 1.0f) {
            return j;
        }
        return Math.round(j * f);
    }

    public static long zzp(long j, float f) {
        if (f == 1.0f) {
            return j;
        }
        return Math.round(j / f);
    }

    public static long zzq(long j) {
        return (j == -9223372036854775807L || j == Long.MIN_VALUE) ? j : j * 1000;
    }

    public static long zzr(long j, int i) {
        return zzs(j, 1000000L, i, RoundingMode.FLOOR);
    }

    public static long zzs(long j, long j2, long j3, RoundingMode roundingMode) {
        if (j == 0 || j2 == 0) {
            return 0L;
        }
        if (j3 >= j2 && j3 % j2 == 0) {
            return zzgcq.zza(j, zzgcq.zza(j3, j2, RoundingMode.UNNECESSARY), roundingMode);
        }
        if (j3 < j2 && j2 % j3 == 0) {
            return zzgcq.zzc(j, zzgcq.zza(j2, j3, RoundingMode.UNNECESSARY));
        }
        if (j3 >= j && j3 % j == 0) {
            return zzgcq.zza(j2, zzgcq.zza(j3, j, RoundingMode.UNNECESSARY), roundingMode);
        }
        if (j3 < j && j % j3 == 0) {
            return zzgcq.zzc(j2, zzgcq.zza(j, j3, RoundingMode.UNNECESSARY));
        }
        return zzM(j, j2, j3, roundingMode);
    }

    public static long zzt(long j) {
        return (j == -9223372036854775807L || j == Long.MIN_VALUE) ? j : j / 1000;
    }

    public static Point zzu(Context context) {
        Display display;
        String zzN;
        DisplayManager displayManager = (DisplayManager) context.getSystemService(new ObfuscatedString(new long[]{6840560185027160334L, 1627368916898893339L}).toString());
        if (displayManager != null) {
            display = displayManager.getDisplay(0);
        } else {
            display = null;
        }
        if (display == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService(new ObfuscatedString(new long[]{-5351218942246728319L, 3556460972776695738L}).toString());
            windowManager.getClass();
            display = windowManager.getDefaultDisplay();
        }
        if (display.getDisplayId() == 0 && zzJ(context)) {
            if (zza < 28) {
                zzN = zzN(new ObfuscatedString(new long[]{654520380955379567L, 6759438433228055940L, -3392700208161873600L}).toString());
            } else {
                zzN = zzN(new ObfuscatedString(new long[]{-4017042188224877772L, -8933507380347408366L, -1998419922373809666L, -7432188626375681605L}).toString());
            }
            if (!TextUtils.isEmpty(zzN)) {
                try {
                    String[] split = zzN.trim().split(new ObfuscatedString(new long[]{1706772670558548122L, 5466935406609514655L}).toString(), -1);
                    if (split.length == 2) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                String valueOf = String.valueOf(zzN);
                zzff.zzc(new ObfuscatedString(new long[]{-6769245645534338379L, 6149544655851374185L}).toString(), new ObfuscatedString(new long[]{9090766271553967466L, -92629578693334437L, 446926384739495419L, -2534082224445648748L}).toString().concat(valueOf));
            }
            if (new ObfuscatedString(new long[]{-7168796144514564924L, 4457074422959809432L}).toString().equals(zzc) && zzd.startsWith(new ObfuscatedString(new long[]{5734575147205059429L, 6043547694876413084L}).toString()) && context.getPackageManager().hasSystemFeature(new ObfuscatedString(new long[]{-793188667047058033L, -8650617896166330070L, 8285695486820474627L, 6568809805905808693L, 3333865835348238632L}).toString())) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        if (zza >= 23) {
            Display.Mode m4370x1db10c9d = AbstractC1321x18c67f64.m4370x1db10c9d(display);
            point.x = AbstractC1321x18c67f64.m4361x3271d0aa(m4370x1db10c9d);
            point.y = AbstractC1321x18c67f64.m4380xe28a696a(m4370x1db10c9d);
            return point;
        }
        display.getRealSize(point);
        return point;
    }

    @RequiresApi(21)
    public static AudioFormat zzv(int i, int i2, int i3) {
        return new AudioFormat.Builder().setSampleRate(i).setChannelMask(i2).setEncoding(i3).build();
    }

    public static Handler zzw(@Nullable Handler.Callback callback) {
        Looper myLooper = Looper.myLooper();
        zzek.zzb(myLooper);
        return new Handler(myLooper, null);
    }

    public static Looper zzx() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            return myLooper;
        }
        return Looper.getMainLooper();
    }

    public static zzam zzy(int i, int i2, int i3) {
        zzak zzakVar = new zzak();
        zzakVar.zzW(new ObfuscatedString(new long[]{-3951337564455640395L, 8345066630782711147L, -5998875133751957988L}).toString());
        zzakVar.zzy(i2);
        zzakVar.zzX(i3);
        zzakVar.zzQ(i);
        return zzakVar.zzac();
    }

    public static String zzz(byte[] bArr) {
        return new String(bArr, zzfwq.zzc);
    }
}
