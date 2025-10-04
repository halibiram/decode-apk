package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

@SuppressLint({"InlinedApi"})
/* loaded from: classes2.dex */
public final class zztn {
    public static final /* synthetic */ int zza = 0;
    private static final Pattern zzb = Pattern.compile(new ObfuscatedString(new long[]{2436392398531212649L, -8349351531642641946L, 6029090474797109790L}).toString());

    @GuardedBy("MediaCodecUtil.class")
    private static final HashMap zzc = new HashMap();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:121:0x044d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0a3b  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0a65  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0398  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Pair zza(zzam zzamVar) {
        char c;
        int parseInt;
        int parseInt2;
        int i;
        int i2;
        Pair pair;
        int i3;
        int i4;
        char c2;
        Integer num;
        Pair pair2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        char c3;
        Integer num2;
        Integer num3;
        int i10 = 2;
        String str = zzamVar.zzj;
        if (str == null) {
            return null;
        }
        String[] split = str.split(new ObfuscatedString(new long[]{5649854636452861862L, 3505629351031615153L}).toString());
        if (new ObfuscatedString(new long[]{164195464665883107L, -6360101123323755819L, -6754497340700092203L, -6416866639891181731L}).toString().equals(zzamVar.zzm)) {
            String str2 = zzamVar.zzj;
            if (split.length < 3) {
                zzff.zzf(new ObfuscatedString(new long[]{-810262445457896386L, 1238734813020339045L, -413015807165891799L}).toString(), new ObfuscatedString(new long[]{-7537864445902732545L, 4094606657059070976L, -7772799078453585208L, 6079749267110540978L, 6780503001266017399L, -4052935103219364919L, 4914221797873522581L}).toString().concat(String.valueOf(str2)));
                return null;
            }
            Matcher matcher = zzb.matcher(split[1]);
            if (!matcher.matches()) {
                zzff.zzf(new ObfuscatedString(new long[]{3171862894935865323L, -7609852105696854751L, -2478740387139635533L}).toString(), new ObfuscatedString(new long[]{-3374475655850621081L, 61634629601951435L, 2139613435739130124L, 2415231525383185501L, -3229755245414572083L, -3845108265380927742L, 879328057905647750L}).toString().concat(String.valueOf(str2)));
                return null;
            }
            String group = matcher.group(1);
            if (group != null) {
                switch (group.hashCode()) {
                    case 1536:
                        if (group.equals(new ObfuscatedString(new long[]{3502596932134627951L, -1400653231619886225L}).toString())) {
                            c3 = 0;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 1537:
                        if (group.equals(new ObfuscatedString(new long[]{1061629460303318785L, -5455804538374247953L}).toString())) {
                            c3 = 1;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 1538:
                        if (group.equals(new ObfuscatedString(new long[]{3829506266296434716L, -3255974955573894607L}).toString())) {
                            c3 = 2;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 1539:
                        if (group.equals(new ObfuscatedString(new long[]{6825285092132339950L, 5044308783014622120L}).toString())) {
                            c3 = 3;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 1540:
                        if (group.equals(new ObfuscatedString(new long[]{-6879065346585956714L, -3414686148564472658L}).toString())) {
                            c3 = 4;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 1541:
                        if (group.equals(new ObfuscatedString(new long[]{5993090126440561738L, -651259013678289227L}).toString())) {
                            c3 = 5;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 1542:
                        if (group.equals(new ObfuscatedString(new long[]{-8827402279622438259L, -8517369591566244941L}).toString())) {
                            c3 = 6;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 1543:
                        if (group.equals(new ObfuscatedString(new long[]{-7187899910177566712L, -6015733651365587203L}).toString())) {
                            c3 = 7;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 1544:
                        if (group.equals(new ObfuscatedString(new long[]{-8660754997680826836L, -8096541045864013971L}).toString())) {
                            c3 = '\b';
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 1545:
                        if (group.equals(new ObfuscatedString(new long[]{-4559966242870165839L, 4525333233369403308L}).toString())) {
                            c3 = '\t';
                            break;
                        }
                        c3 = 65535;
                        break;
                    default:
                        c3 = 65535;
                        break;
                }
                switch (c3) {
                    case 0:
                        num2 = 1;
                        break;
                    case 1:
                        num2 = 2;
                        break;
                    case 2:
                        num2 = 4;
                        break;
                    case 3:
                        num2 = 8;
                        break;
                    case 4:
                        num2 = 16;
                        break;
                    case 5:
                        num2 = 32;
                        break;
                    case 6:
                        num2 = 64;
                        break;
                    case 7:
                        num2 = 128;
                        break;
                    case '\b':
                        num2 = 256;
                        break;
                    case '\t':
                        num2 = 512;
                        break;
                }
                if (num2 != null) {
                    zzff.zzf(new ObfuscatedString(new long[]{1536390644121807629L, 8619117377121937197L, -8980992210074784785L}).toString(), new ObfuscatedString(new long[]{-4422255494895684537L, 7392007307259433219L, 2797505020304544489L, -1415425810546785401L, 5290278218957148195L, -2038452693422759570L}).toString().concat(String.valueOf(group)));
                    return null;
                }
                String str3 = split[2];
                if (str3 != null) {
                    int hashCode = str3.hashCode();
                    switch (hashCode) {
                        case 1537:
                            if (str3.equals(new ObfuscatedString(new long[]{461235309707476978L, 2904564749787826982L}).toString())) {
                                num3 = 1;
                                break;
                            }
                            break;
                        case 1538:
                            if (str3.equals(new ObfuscatedString(new long[]{3289689878623443913L, -4609160706901806860L}).toString())) {
                                num3 = 2;
                                break;
                            }
                            break;
                        case 1539:
                            if (str3.equals(new ObfuscatedString(new long[]{-2093902841652572338L, 2928745096688477754L}).toString())) {
                                num3 = 4;
                                break;
                            }
                            break;
                        case 1540:
                            if (str3.equals(new ObfuscatedString(new long[]{1904931503330194402L, 2551336156617171840L}).toString())) {
                                num3 = 8;
                                break;
                            }
                            break;
                        case 1541:
                            if (str3.equals(new ObfuscatedString(new long[]{-7146286362245387128L, -4400733371454879089L}).toString())) {
                                num3 = 16;
                                break;
                            }
                            break;
                        case 1542:
                            if (str3.equals(new ObfuscatedString(new long[]{-1152088082730578122L, 5190695322222154681L}).toString())) {
                                num3 = 32;
                                break;
                            }
                            break;
                        case 1543:
                            if (str3.equals(new ObfuscatedString(new long[]{-1470219105119628540L, 5386160216748691486L}).toString())) {
                                num3 = 64;
                                break;
                            }
                            break;
                        case 1544:
                            if (str3.equals(new ObfuscatedString(new long[]{-4711339029552392920L, 897419472127867873L}).toString())) {
                                num3 = 128;
                                break;
                            }
                            break;
                        case 1545:
                            if (str3.equals(new ObfuscatedString(new long[]{-279321425690837639L, -4110589264969086200L}).toString())) {
                                num3 = 256;
                                break;
                            }
                            break;
                        default:
                            switch (hashCode) {
                                case 1567:
                                    if (str3.equals(new ObfuscatedString(new long[]{844675821931400360L, -4787842688393557749L}).toString())) {
                                        num3 = 512;
                                        break;
                                    }
                                    break;
                                case 1568:
                                    if (str3.equals(new ObfuscatedString(new long[]{3384689058244484773L, -9054349344034868868L}).toString())) {
                                        num3 = 1024;
                                        break;
                                    }
                                    break;
                                case 1569:
                                    if (str3.equals(new ObfuscatedString(new long[]{-4625702393096643591L, -7591193769150725761L}).toString())) {
                                        num3 = 2048;
                                        break;
                                    }
                                    break;
                                case 1570:
                                    if (str3.equals(new ObfuscatedString(new long[]{-4929773447348606275L, -857167928221655887L}).toString())) {
                                        num3 = 4096;
                                        break;
                                    }
                                    break;
                            }
                    }
                    if (num3 != null) {
                        zzff.zzf(new ObfuscatedString(new long[]{2973045221615389043L, 4312218265788869575L, -7239136655395637621L}).toString(), new ObfuscatedString(new long[]{-85574358200917584L, 1301009485908143880L, 5433961918722119905L, 8647615954548317848L, -2100057968555713051L, 9110512243430870259L}).toString().concat(String.valueOf(str3)));
                        return null;
                    }
                    pair = new Pair(num2, num3);
                }
                num3 = null;
                if (num3 != null) {
                }
            }
            num2 = null;
            if (num2 != null) {
            }
        } else {
            String str4 = split[0];
            switch (str4.hashCode()) {
                case 3004662:
                    if (str4.equals(new ObfuscatedString(new long[]{6783839663500869870L, 4581631067715839487L}).toString())) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 3006243:
                    if (str4.equals(new ObfuscatedString(new long[]{-9094537735336924054L, 2886627162908855448L}).toString())) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 3006244:
                    if (str4.equals(new ObfuscatedString(new long[]{3812212606494926889L, 3733223584221683654L}).toString())) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 3199032:
                    if (str4.equals(new ObfuscatedString(new long[]{8636050974857197200L, 4172678840042520510L}).toString())) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 3214780:
                    if (str4.equals(new ObfuscatedString(new long[]{-6764533647848681413L, 3712313487676370697L}).toString())) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 3356560:
                    if (str4.equals(new ObfuscatedString(new long[]{4992098439948673993L, -4154008715805838374L}).toString())) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 3624515:
                    if (str4.equals(new ObfuscatedString(new long[]{7314516996348975409L, 6197237402948730106L}).toString())) {
                        c = 2;
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
                    int i11 = 65536;
                    String str5 = zzamVar.zzj;
                    int length = split.length;
                    if (length < 2) {
                        zzff.zzf(new ObfuscatedString(new long[]{3154249878422825130L, -6387660058216223763L, 3136781873615940953L}).toString(), new ObfuscatedString(new long[]{-7468224880764511605L, 4118284265038282783L, -2912680126123797514L, 8573978742203582443L, -3619522408620504381L, -3034155429903897653L}).toString().concat(String.valueOf(str5)));
                        return null;
                    }
                    try {
                        if (split[1].length() == 6) {
                            parseInt = Integer.parseInt(split[1].substring(0, 2), 16);
                            parseInt2 = Integer.parseInt(split[1].substring(4), 16);
                        } else if (length >= 3) {
                            parseInt = Integer.parseInt(split[1]);
                            parseInt2 = Integer.parseInt(split[2]);
                        } else {
                            zzff.zzf(new ObfuscatedString(new long[]{2092720517921676752L, -4946950878177846253L, -2236814546543335207L}).toString(), new ObfuscatedString(new long[]{5263074143689909283L, 3821380237825266863L, 8087996226896848918L, -8356111372477550413L, 5358351188218218181L, -3001882415928204715L}).toString() + str5);
                            return null;
                        }
                        if (parseInt == 66) {
                            i = -1;
                            i10 = 1;
                        } else if (parseInt == 77) {
                            i = -1;
                        } else if (parseInt == 88) {
                            i = -1;
                            i10 = 4;
                        } else if (parseInt == 100) {
                            i = -1;
                            i10 = 8;
                        } else if (parseInt == 110) {
                            i = -1;
                            i10 = 16;
                        } else if (parseInt == 122) {
                            i = -1;
                            i10 = 32;
                        } else if (parseInt != 244) {
                            i = -1;
                            i10 = -1;
                        } else {
                            i = -1;
                            i10 = 64;
                        }
                        if (i10 != i) {
                            switch (parseInt2) {
                                case 10:
                                    i2 = -1;
                                    i11 = 1;
                                    break;
                                case 11:
                                    i2 = -1;
                                    i11 = 4;
                                    break;
                                case 12:
                                    i2 = -1;
                                    i11 = 8;
                                    break;
                                case 13:
                                    i2 = -1;
                                    i11 = 16;
                                    break;
                                default:
                                    switch (parseInt2) {
                                        case 20:
                                            i2 = -1;
                                            i11 = 32;
                                            break;
                                        case 21:
                                            i2 = -1;
                                            i11 = 64;
                                            break;
                                        case 22:
                                            i2 = -1;
                                            i11 = 128;
                                            break;
                                        default:
                                            switch (parseInt2) {
                                                case 30:
                                                    i2 = -1;
                                                    i11 = 256;
                                                    break;
                                                case 31:
                                                    i2 = -1;
                                                    i11 = 512;
                                                    break;
                                                case 32:
                                                    i2 = -1;
                                                    i11 = 1024;
                                                    break;
                                                default:
                                                    switch (parseInt2) {
                                                        case 40:
                                                            i2 = -1;
                                                            i11 = 2048;
                                                            break;
                                                        case 41:
                                                            i2 = -1;
                                                            i11 = 4096;
                                                            break;
                                                        case 42:
                                                            i2 = -1;
                                                            i11 = 8192;
                                                            break;
                                                        default:
                                                            switch (parseInt2) {
                                                                case 50:
                                                                    i2 = -1;
                                                                    i11 = 16384;
                                                                    break;
                                                                case 51:
                                                                    i2 = -1;
                                                                    i11 = 32768;
                                                                    break;
                                                                case 52:
                                                                    i2 = -1;
                                                                    break;
                                                                default:
                                                                    i2 = -1;
                                                                    i11 = -1;
                                                                    break;
                                                            }
                                                    }
                                            }
                                    }
                            }
                            if (i11 == i2) {
                                zzff.zzf(new ObfuscatedString(new long[]{2795982121474835365L, 8846995545614458681L, -3934392387853710380L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{6659510829542092691L, 5363781967555024084L, -2224366018845053611L, 8007392070365143904L}), new StringBuilder(), parseInt2));
                                return null;
                            }
                            pair = new Pair(Integer.valueOf(i10), Integer.valueOf(i11));
                            break;
                        } else {
                            zzff.zzf(new ObfuscatedString(new long[]{7405230001953912130L, 9018503987627742474L, 5761372180979981317L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-4972595425043276314L, -6801409371519654095L, -7978076436343140337L, 3986806554772551386L}), new StringBuilder(), parseInt));
                            return null;
                        }
                    } catch (NumberFormatException unused) {
                        zzff.zzf(new ObfuscatedString(new long[]{-1504834813323921826L, -8112863801833749050L, -7132082625706645983L}).toString(), new ObfuscatedString(new long[]{4367877552217818713L, 2169545732570697250L, -9122866915502371518L, 398945924553156106L, 4038715990727800688L, 2839897891521894644L}).toString().concat(String.valueOf(str5)));
                        return null;
                    }
                case 2:
                    String str6 = zzamVar.zzj;
                    if (split.length < 3) {
                        zzff.zzf(new ObfuscatedString(new long[]{-8419053857276720974L, 3451143674444871802L, 8693792152084487782L}).toString(), new ObfuscatedString(new long[]{1142841470657793122L, -1846385685384591252L, 7433717506383069731L, 8955624325085700011L, -464842615607809003L, -5341290007413255556L}).toString().concat(String.valueOf(str6)));
                        return null;
                    }
                    try {
                        int parseInt3 = Integer.parseInt(split[1]);
                        int parseInt4 = Integer.parseInt(split[2]);
                        int i12 = parseInt3 != 0 ? parseInt3 != 1 ? parseInt3 != 2 ? parseInt3 != 3 ? -1 : 8 : 4 : 2 : 1;
                        if (i12 != -1) {
                            if (parseInt4 == 10) {
                                i3 = -1;
                                i10 = 1;
                            } else if (parseInt4 == 11) {
                                i3 = -1;
                            } else if (parseInt4 == 20) {
                                i3 = -1;
                                i10 = 4;
                            } else if (parseInt4 == 21) {
                                i3 = -1;
                                i10 = 8;
                            } else if (parseInt4 == 30) {
                                i3 = -1;
                                i10 = 16;
                            } else if (parseInt4 == 31) {
                                i3 = -1;
                                i10 = 32;
                            } else if (parseInt4 == 40) {
                                i3 = -1;
                                i10 = 64;
                            } else if (parseInt4 == 41) {
                                i3 = -1;
                                i10 = 128;
                            } else if (parseInt4 == 50) {
                                i3 = -1;
                                i10 = 256;
                            } else if (parseInt4 != 51) {
                                switch (parseInt4) {
                                    case 60:
                                        i3 = -1;
                                        i10 = 2048;
                                        break;
                                    case 61:
                                        i3 = -1;
                                        i10 = 4096;
                                        break;
                                    case 62:
                                        i3 = -1;
                                        i10 = 8192;
                                        break;
                                    default:
                                        i3 = -1;
                                        i10 = -1;
                                        break;
                                }
                            } else {
                                i3 = -1;
                                i10 = 512;
                            }
                            if (i10 == i3) {
                                zzff.zzf(new ObfuscatedString(new long[]{1842877792245983670L, 8426548998174621353L, 1918061827035369366L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-6459632284987489788L, 7737930044888320725L, 1554556278687345573L, 8202364233792900892L}), new StringBuilder(), parseInt4));
                                return null;
                            }
                            pair = new Pair(Integer.valueOf(i12), Integer.valueOf(i10));
                            break;
                        } else {
                            zzff.zzf(new ObfuscatedString(new long[]{3462508403922239773L, 8132961689774472263L, -3252078236044819388L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{287593424045303059L, 8951096979002419282L, -8011632706199498308L, -6685209035071898489L}), new StringBuilder(), parseInt3));
                            return null;
                        }
                    } catch (NumberFormatException unused2) {
                        zzff.zzf(new ObfuscatedString(new long[]{5852000437167868443L, -5866302411174693486L, 3201108441157846867L}).toString(), new ObfuscatedString(new long[]{-3827078740080734023L, -5382952502644963684L, 8320585002733710310L, -1898412599017421321L, -6084621796505405513L, -7951261088812099964L}).toString().concat(String.valueOf(str6)));
                        return null;
                    }
                case 3:
                case 4:
                    String str7 = zzamVar.zzj;
                    zzt zztVar = zzamVar.zzy;
                    if (split.length < 4) {
                        zzff.zzf(new ObfuscatedString(new long[]{801531525878519354L, 4296811663689645110L, 7843854660251433284L}).toString(), new ObfuscatedString(new long[]{-2989474651029485789L, 3017932814460154858L, -4673013892497522167L, 678051562496442855L, -3326532645398956552L, 6604033177731001346L}).toString().concat(String.valueOf(str7)));
                        return null;
                    }
                    Matcher matcher2 = zzb.matcher(split[1]);
                    if (!matcher2.matches()) {
                        zzff.zzf(new ObfuscatedString(new long[]{-3167047669282699783L, -3134458531363769899L, -8400330950744859795L}).toString(), new ObfuscatedString(new long[]{2531675226356825588L, -1425275898086590909L, -3156820105984931537L, -5162815801809881997L, -2226249594076100559L, 2702760334082018727L}).toString().concat(String.valueOf(str7)));
                        return null;
                    }
                    String group2 = matcher2.group(1);
                    if (new ObfuscatedString(new long[]{2723374864877645133L, 6044540773517233669L}).toString().equals(group2)) {
                        i4 = 1;
                    } else {
                        if (!new ObfuscatedString(new long[]{-6940115901546355114L, -3271985970931171321L}).toString().equals(group2)) {
                            zzff.zzf(new ObfuscatedString(new long[]{-150208961762687009L, -7518431815579827328L, -2393533385499781045L}).toString(), new ObfuscatedString(new long[]{-4036033012225848977L, -7554340314306291269L, 1955235835091581053L, 9074420822387270023L, 3616111801800739089L}).toString().concat(String.valueOf(group2)));
                            return null;
                        }
                        i4 = (zztVar == null || zztVar.zzf != 6) ? 2 : 4096;
                    }
                    String str8 = split[3];
                    if (str8 != null) {
                        switch (str8.hashCode()) {
                            case 70821:
                                if (str8.equals(new ObfuscatedString(new long[]{-9150173602597824366L, 7149672305067299760L}).toString())) {
                                    c2 = '\r';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 70914:
                                if (str8.equals(new ObfuscatedString(new long[]{4866602754686931550L, -5781532291726311262L}).toString())) {
                                    c2 = 14;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 70917:
                                if (str8.equals(new ObfuscatedString(new long[]{2189555565523205546L, 487465079059204180L}).toString())) {
                                    c2 = 15;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 71007:
                                if (str8.equals(new ObfuscatedString(new long[]{2956148471148230328L, -6749585380619109003L}).toString())) {
                                    c2 = 16;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 71010:
                                if (str8.equals(new ObfuscatedString(new long[]{4123802697207534675L, 5978902979309586843L}).toString())) {
                                    c2 = 17;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 74665:
                                if (str8.equals(new ObfuscatedString(new long[]{5294702177576280563L, -665217186898100016L}).toString())) {
                                    c2 = 0;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 74758:
                                if (str8.equals(new ObfuscatedString(new long[]{-2976841698287255401L, -5544466673505319415L}).toString())) {
                                    c2 = 1;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 74761:
                                if (str8.equals(new ObfuscatedString(new long[]{-2813562853256180321L, -5573168021835158159L}).toString())) {
                                    c2 = 2;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 74851:
                                if (str8.equals(new ObfuscatedString(new long[]{-8514691340425876679L, -7417169488886529735L}).toString())) {
                                    c2 = 3;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 74854:
                                if (str8.equals(new ObfuscatedString(new long[]{-2931370238624061426L, 7731635374636421043L}).toString())) {
                                    c2 = 4;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2193639:
                                if (str8.equals(new ObfuscatedString(new long[]{-1854720409511772996L, -5702050716385759751L}).toString())) {
                                    c2 = 18;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2193642:
                                if (str8.equals(new ObfuscatedString(new long[]{-1773857512487831266L, -5955988459712735535L}).toString())) {
                                    c2 = 19;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2193732:
                                if (str8.equals(new ObfuscatedString(new long[]{-2006060402703440577L, 8630673427580364618L}).toString())) {
                                    c2 = 20;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2193735:
                                if (str8.equals(new ObfuscatedString(new long[]{-2345417748940351880L, -6291742528139663509L}).toString())) {
                                    c2 = 21;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2193738:
                                if (str8.equals(new ObfuscatedString(new long[]{8062400739194331173L, 4070728903397557077L}).toString())) {
                                    c2 = 22;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2193825:
                                if (str8.equals(new ObfuscatedString(new long[]{-3907693659857107015L, -5431658234111829275L}).toString())) {
                                    c2 = 23;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2193828:
                                if (str8.equals(new ObfuscatedString(new long[]{-7451400462767177346L, -5570045886256177068L}).toString())) {
                                    c2 = 24;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2193831:
                                if (str8.equals(new ObfuscatedString(new long[]{-4000440474674880489L, 8840549142351936551L}).toString())) {
                                    c2 = 25;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2312803:
                                if (str8.equals(new ObfuscatedString(new long[]{548197711706029729L, 4085697878411127951L}).toString())) {
                                    c2 = 5;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2312806:
                                if (str8.equals(new ObfuscatedString(new long[]{1037580639927293213L, 3051529524802626681L}).toString())) {
                                    c2 = 6;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2312896:
                                if (str8.equals(new ObfuscatedString(new long[]{3601070126865157461L, 4258086213869049091L}).toString())) {
                                    c2 = 7;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2312899:
                                if (str8.equals(new ObfuscatedString(new long[]{4919506131866121439L, -4105094068819659399L}).toString())) {
                                    c2 = '\b';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2312902:
                                if (str8.equals(new ObfuscatedString(new long[]{2474572233464938703L, 6969873615144624743L}).toString())) {
                                    c2 = '\t';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2312989:
                                if (str8.equals(new ObfuscatedString(new long[]{-4425240985739058568L, 3482557926933608909L}).toString())) {
                                    c2 = '\n';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2312992:
                                if (str8.equals(new ObfuscatedString(new long[]{3795101741995654614L, -6296775590861766389L}).toString())) {
                                    c2 = 11;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2312995:
                                if (str8.equals(new ObfuscatedString(new long[]{2789078964680278336L, 1867377328084356178L}).toString())) {
                                    c2 = '\f';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            default:
                                c2 = 65535;
                                break;
                        }
                        switch (c2) {
                            case 0:
                                num = 1;
                                break;
                            case 1:
                                num = 4;
                                break;
                            case 2:
                                num = 16;
                                break;
                            case 3:
                                num = 64;
                                break;
                            case 4:
                                num = 256;
                                break;
                            case 5:
                                num = 1024;
                                break;
                            case 6:
                                num = 4096;
                                break;
                            case 7:
                                num = 16384;
                                break;
                            case '\b':
                                num = 65536;
                                break;
                            case '\t':
                                num = 262144;
                                break;
                            case '\n':
                                num = 1048576;
                                break;
                            case 11:
                                num = 4194304;
                                break;
                            case '\f':
                                num = 16777216;
                                break;
                            case '\r':
                                num = 2;
                                break;
                            case 14:
                                num = 8;
                                break;
                            case 15:
                                num = 32;
                                break;
                            case 16:
                                num = 128;
                                break;
                            case 17:
                                num = 512;
                                break;
                            case 18:
                                num = 2048;
                                break;
                            case 19:
                                num = 8192;
                                break;
                            case 20:
                                num = 32768;
                                break;
                            case 21:
                                num = 131072;
                                break;
                            case 22:
                                num = 524288;
                                break;
                            case 23:
                                num = 2097152;
                                break;
                            case 24:
                                num = 8388608;
                                break;
                            case 25:
                                num = 33554432;
                                break;
                        }
                        if (num != null) {
                            zzff.zzf(new ObfuscatedString(new long[]{-6357650895970902125L, -5512651823168220153L, 8076716508074667963L}).toString(), new ObfuscatedString(new long[]{-754742563934500084L, -3523480254907105169L, -486096570528284948L, 8395907879202300994L, 3523707231708642413L}).toString().concat(String.valueOf(str8)));
                            return null;
                        }
                        pair2 = new Pair(Integer.valueOf(i4), num);
                        return pair2;
                    }
                    num = null;
                    if (num != null) {
                    }
                    break;
                case 5:
                    String str9 = zzamVar.zzj;
                    zzt zztVar2 = zzamVar.zzy;
                    if (split.length < 4) {
                        zzff.zzf(new ObfuscatedString(new long[]{-5776062717560175972L, 7269305475475491985L, -7992913355356738557L}).toString(), new ObfuscatedString(new long[]{-2540367263378685756L, -5174662549317981743L, -342098145547672392L, -6165332155162922990L, -8212876922491890773L, 1585337898018068472L}).toString().concat(String.valueOf(str9)));
                        return null;
                    }
                    try {
                        int parseInt5 = Integer.parseInt(split[1]);
                        int parseInt6 = Integer.parseInt(split[2].substring(0, 2));
                        int parseInt7 = Integer.parseInt(split[3]);
                        if (parseInt5 != 0) {
                            zzff.zzf(new ObfuscatedString(new long[]{2882383128239277337L, -4765680188158509444L, 8750587423316566378L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2742759022384862275L, -3467657023854877214L, -8451821903629803749L, 2637655681587710019L}), new StringBuilder(), parseInt5));
                            return null;
                        }
                        if (parseInt7 == 8) {
                            i5 = 1;
                        } else {
                            if (parseInt7 != 10) {
                                zzff.zzf(new ObfuscatedString(new long[]{9137301835953186681L, 9055637297484641687L, 440401654761551323L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-6370180744811272113L, -3316168820419543103L, -480852365020523776L, 7430654197896780547L}), new StringBuilder(), parseInt7));
                                return null;
                            }
                            i5 = (zztVar2 == null || !(zztVar2.zzg != null || (i7 = zztVar2.zzf) == 7 || i7 == 6)) ? 2 : 4096;
                        }
                        switch (parseInt6) {
                            case 0:
                                i6 = 1;
                                break;
                            case 1:
                                i6 = 2;
                                break;
                            case 2:
                                i6 = 4;
                                break;
                            case 3:
                                i6 = 8;
                                break;
                            case 4:
                                i6 = 16;
                                break;
                            case 5:
                                i6 = 32;
                                break;
                            case 6:
                                i6 = 64;
                                break;
                            case 7:
                                i6 = 128;
                                break;
                            case 8:
                                i6 = 256;
                                break;
                            case 9:
                                i6 = 512;
                                break;
                            case 10:
                                i6 = 1024;
                                break;
                            case 11:
                                i6 = 2048;
                                break;
                            case 12:
                                i6 = 4096;
                                break;
                            case 13:
                                i6 = 8192;
                                break;
                            case 14:
                                i6 = 16384;
                                break;
                            case 15:
                                i6 = 32768;
                                break;
                            case 16:
                                i6 = 65536;
                                break;
                            case 17:
                                i6 = 131072;
                                break;
                            case 18:
                                i6 = 262144;
                                break;
                            case 19:
                                i6 = 524288;
                                break;
                            case 20:
                                i6 = 1048576;
                                break;
                            case 21:
                                i6 = 2097152;
                                break;
                            case 22:
                                i6 = 4194304;
                                break;
                            case 23:
                                i6 = 8388608;
                                break;
                            default:
                                i6 = -1;
                                break;
                        }
                        if (i6 == -1) {
                            zzff.zzf(new ObfuscatedString(new long[]{-3204366726894386062L, 9173661210107972249L, -7132496080758906357L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2901030210993473684L, -1930735761978986811L, 5950309087400498998L, -2894997439857815808L}), new StringBuilder(), parseInt6));
                            return null;
                        }
                        pair2 = new Pair(Integer.valueOf(i5), Integer.valueOf(i6));
                        return pair2;
                    } catch (NumberFormatException unused3) {
                        zzff.zzf(new ObfuscatedString(new long[]{3255223759523455922L, -146143154203301414L, 5301273138159316520L}).toString(), new ObfuscatedString(new long[]{7067308688771190175L, 3155960136962572662L, -2949330312962349828L, 3418508502408601318L, 7508519484446899008L, -7649658636203581745L}).toString().concat(String.valueOf(str9)));
                        return null;
                    }
                case 6:
                    String str10 = zzamVar.zzj;
                    if (split.length != 3) {
                        zzff.zzf(new ObfuscatedString(new long[]{-2963876259362110915L, -2127804073817766439L, -1274117604105733890L}).toString(), new ObfuscatedString(new long[]{-2341912339266417120L, -3424517685060119335L, -2859456598145047217L, 659110837284267256L, 4185974132640136908L, 6042001292017206551L}).toString().concat(String.valueOf(str10)));
                        return null;
                    }
                    try {
                        if (!new ObfuscatedString(new long[]{-1167946503423131839L, 4555940959779390557L, 1955260235297302762L}).toString().equals(zzcb.zzd(Integer.parseInt(split[1], 16)))) {
                            return null;
                        }
                        int parseInt8 = Integer.parseInt(split[2]);
                        if (parseInt8 == 17) {
                            i8 = -1;
                            i9 = 17;
                        } else if (parseInt8 == 20) {
                            i8 = -1;
                            i9 = 20;
                        } else if (parseInt8 == 23) {
                            i8 = -1;
                            i9 = 23;
                        } else if (parseInt8 == 29) {
                            i8 = -1;
                            i9 = 29;
                        } else if (parseInt8 == 39) {
                            i8 = -1;
                            i9 = 39;
                        } else if (parseInt8 != 42) {
                            switch (parseInt8) {
                                case 1:
                                    i8 = -1;
                                    i9 = 1;
                                    break;
                                case 2:
                                    i8 = -1;
                                    i9 = 2;
                                    break;
                                case 3:
                                    i8 = -1;
                                    i9 = 3;
                                    break;
                                case 4:
                                    i8 = -1;
                                    i9 = 4;
                                    break;
                                case 5:
                                    i8 = -1;
                                    i9 = 5;
                                    break;
                                case 6:
                                    i8 = -1;
                                    i9 = 6;
                                    break;
                                default:
                                    i8 = -1;
                                    i9 = -1;
                                    break;
                            }
                        } else {
                            i8 = -1;
                            i9 = 42;
                        }
                        if (i9 == i8) {
                            return null;
                        }
                        pair2 = new Pair(Integer.valueOf(i9), 0);
                        return pair2;
                    } catch (NumberFormatException unused4) {
                        zzff.zzf(new ObfuscatedString(new long[]{3778957134929544550L, -3006921366502830529L, 7731841230499214730L}).toString(), new ObfuscatedString(new long[]{521350087565217900L, -1386857934440951178L, -4115184076178456432L, 757664094245394742L, -4969131426186640203L, -8110339010521635712L}).toString().concat(String.valueOf(str10)));
                        return null;
                    }
                default:
                    return null;
            }
        }
        return pair;
    }

    @Nullable
    public static zzsv zzb() {
        List zze = zze(new ObfuscatedString(new long[]{-9039674773312003455L, 8888976642359600197L, 7044106386097263178L}).toString(), false, false);
        if (zze.isEmpty()) {
            return null;
        }
        return (zzsv) zze.get(0);
    }

    @Nullable
    public static String zzc(zzam zzamVar) {
        Pair zza2;
        if (new ObfuscatedString(new long[]{-6480411669690397291L, -9048471887440188792L, 4444410441878474393L}).toString().equals(zzamVar.zzm)) {
            return new ObfuscatedString(new long[]{2197894227249320778L, 8695078908272164847L, -5958355808749501625L}).toString();
        }
        if (new ObfuscatedString(new long[]{1289153074023596573L, -73268048350707952L, -7437083765795656000L, 1387064459298264318L}).toString().equals(zzamVar.zzm) && (zza2 = zza(zzamVar)) != null) {
            int intValue = ((Integer) zza2.first).intValue();
            if (intValue != 16 && intValue != 256) {
                if (intValue == 512) {
                    return new ObfuscatedString(new long[]{2657257210560937699L, -416323614005974932L, -5472509982964217496L}).toString();
                }
                return null;
            }
            return new ObfuscatedString(new long[]{4665058733663068058L, -7820686607341083760L, 6760029881689777116L}).toString();
        }
        return null;
    }

    public static List zzd(zztb zztbVar, zzam zzamVar, boolean z, boolean z2) {
        String zzc2 = zzc(zzamVar);
        if (zzc2 == null) {
            return zzgaa.zzl();
        }
        return zze(zzc2, z, z2);
    }

    public static synchronized List zze(String str, boolean z, boolean z2) {
        synchronized (zztn.class) {
            try {
                zztf zztfVar = new zztf(str, z, z2);
                HashMap hashMap = zzc;
                List list = (List) hashMap.get(zztfVar);
                if (list != null) {
                    return list;
                }
                int i = zzfy.zza;
                ArrayList zzh = zzh(zztfVar, new zztl(z, z2));
                if (z && zzh.isEmpty() && zzfy.zza <= 23) {
                    zzh = zzh(zztfVar, new zztk(null));
                    if (!zzh.isEmpty()) {
                        zzff.zzf(new ObfuscatedString(new long[]{-2980014490953914170L, -1854063619075572757L, -4123572777610167234L}).toString(), new ObfuscatedString(new long[]{8741729477994084560L, 2525700648383851315L, -8097035245312508506L, 7051665408390368745L, 9088408279745073348L, -2447013497682086991L, -7951844678401698544L, 1051924646052619541L}).toString() + str + new ObfuscatedString(new long[]{-8685115166283515077L, -224280582952433500L, -4421500571938611628L}).toString() + ((zzsv) zzh.get(0)).zza);
                    }
                }
                if (new ObfuscatedString(new long[]{1172864979815339818L, -1002822627178694543L, 8018832003294983935L}).toString().equals(str)) {
                    if (zzfy.zza < 26 && zzfy.zzb.equals(new ObfuscatedString(new long[]{-2016637438361101385L, -395225735149074711L}).toString()) && zzh.size() == 1 && ((zzsv) zzh.get(0)).zza.equals(new ObfuscatedString(new long[]{-7082956694581183721L, -801161671400026349L, -7980779573890468521L, -3166301174576066881L, 3164759087618656441L}).toString())) {
                        zzh.add(zzsv.zzc(new ObfuscatedString(new long[]{-593869636549496950L, 6414483683073947305L, 6934276268144361525L, 3102932281918415150L}).toString(), new ObfuscatedString(new long[]{-2122547020075016127L, 2060426376977700570L, 5662363123526390430L}).toString(), new ObfuscatedString(new long[]{8442948338214765844L, 2879700932921925844L, 1234174972923073862L}).toString(), null, false, true, false, false, false));
                    }
                    zzi(zzh, new zztm() { // from class: com.google.android.gms.internal.ads.zztd
                        @Override // com.google.android.gms.internal.ads.zztm
                        public final int zza(Object obj) {
                            int i2 = zztn.zza;
                            String str2 = ((zzsv) obj).zza;
                            if (str2.startsWith(new ObfuscatedString(new long[]{-3192306590858963131L, -3674207859910574338L, 6925530663219579592L}).toString()) || str2.startsWith(new ObfuscatedString(new long[]{-4379518397047623513L, 4869878658089350662L, -4497884055139524555L}).toString())) {
                                return 1;
                            }
                            if (zzfy.zza >= 26 || !str2.equals(new ObfuscatedString(new long[]{-7436357497792682088L, -3065419357668880727L, 5779404153860685605L, -7129719904692667506L, -8563536812946956106L}).toString())) {
                                return 0;
                            }
                            return -1;
                        }
                    });
                }
                if (zzfy.zza < 32 && zzh.size() > 1) {
                    if (new ObfuscatedString(new long[]{2900933686318302011L, 5007596569610472912L, -5245864590534588776L, 8333012433466425037L, 3771010432524786144L}).toString().equals(((zzsv) zzh.get(0)).zza)) {
                        zzh.add((zzsv) zzh.remove(0));
                    }
                }
                zzgaa zzj = zzgaa.zzj(zzh);
                hashMap.put(zztfVar, zzj);
                return zzj;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @RequiresNonNull({"#2.sampleMimeType"})
    public static List zzf(zztb zztbVar, zzam zzamVar, boolean z, boolean z2) {
        List zze = zze(zzamVar.zzm, z, z2);
        List zzd = zzd(zztbVar, zzamVar, z, z2);
        zzfzx zzfzxVar = new zzfzx();
        zzfzxVar.zzh(zze);
        zzfzxVar.zzh(zzd);
        return zzfzxVar.zzi();
    }

    @CheckResult
    public static List zzg(List list, final zzam zzamVar) {
        ArrayList arrayList = new ArrayList(list);
        zzi(arrayList, new zztm() { // from class: com.google.android.gms.internal.ads.zzte
            @Override // com.google.android.gms.internal.ads.zztm
            public final int zza(Object obj) {
                int i = zztn.zza;
                if (((zzsv) obj).zzd(zzam.this)) {
                    return 1;
                }
                return 0;
            }
        });
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0085, code lost:
    
        if (new com.panda912.muddy.ObfuscatedString(r11).toString().equals(r12) != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x013d, code lost:
    
        if (new com.panda912.muddy.ObfuscatedString(new long[]{-4879922375336096356L, -7877867554837440590L}).toString().equals(r8) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0169, code lost:
    
        if (new com.panda912.muddy.ObfuscatedString(r10).toString().equals(r12) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002b, code lost:
    
        if (r12 != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0335 A[Catch: Exception -> 0x0311, TryCatch #2 {Exception -> 0x0311, blocks: (B:58:0x02a1, B:62:0x02d6, B:66:0x0304, B:68:0x030a, B:69:0x0326, B:71:0x032e, B:73:0x0380, B:92:0x0386, B:101:0x0335, B:103:0x0351, B:105:0x0365, B:109:0x031b), top: B:57:0x02a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x031b A[Catch: Exception -> 0x0311, TryCatch #2 {Exception -> 0x0311, blocks: (B:58:0x02a1, B:62:0x02d6, B:66:0x0304, B:68:0x030a, B:69:0x0326, B:71:0x032e, B:73:0x0380, B:92:0x0386, B:101:0x0335, B:103:0x0351, B:105:0x0365, B:109:0x031b), top: B:57:0x02a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x030a A[Catch: Exception -> 0x0311, TryCatch #2 {Exception -> 0x0311, blocks: (B:58:0x02a1, B:62:0x02d6, B:66:0x0304, B:68:0x030a, B:69:0x0326, B:71:0x032e, B:73:0x0380, B:92:0x0386, B:101:0x0335, B:103:0x0351, B:105:0x0365, B:109:0x031b), top: B:57:0x02a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x032e A[Catch: Exception -> 0x0311, TryCatch #2 {Exception -> 0x0311, blocks: (B:58:0x02a1, B:62:0x02d6, B:66:0x0304, B:68:0x030a, B:69:0x0326, B:71:0x032e, B:73:0x0380, B:92:0x0386, B:101:0x0335, B:103:0x0351, B:105:0x0365, B:109:0x031b), top: B:57:0x02a1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ArrayList zzh(zztf zztfVar, zzti zztiVar) {
        int i;
        int i2;
        String str;
        String obfuscatedString;
        String str2;
        int i3;
        boolean z;
        boolean zzj;
        boolean z2;
        boolean isVendor;
        boolean isHardwareAccelerated;
        boolean isAlias;
        int i4 = 5;
        int i5 = 1;
        int i6 = 4;
        try {
            ArrayList arrayList = new ArrayList();
            String str3 = zztfVar.zza;
            int zza2 = zztiVar.zza();
            boolean zze = zztiVar.zze();
            int i7 = 0;
            while (i7 < zza2) {
                MediaCodecInfo zzb2 = zztiVar.zzb(i7);
                int i8 = zzfy.zza;
                if (i8 >= 29) {
                    isAlias = zzb2.isAlias();
                }
                String name = zzb2.getName();
                if (!zzb2.isEncoder()) {
                    if (zze || !name.endsWith(new ObfuscatedString(new long[]{-2131306782527745993L, -5727189797946391512L}).toString())) {
                        if (i8 < 24) {
                            if (!new ObfuscatedString(new long[]{-4412550982870988311L, 7530878408144662329L, -9159344168225060993L}).toString().equals(name)) {
                                long[] jArr = new long[i6];
                                // fill-array-data instruction
                                jArr[0] = -1594764867436587333L;
                                jArr[1] = 7016913244195689586L;
                                jArr[2] = -1159128800667206911L;
                                jArr[3] = 1408456126691704417L;
                            }
                            if (new ObfuscatedString(new long[]{-5488726249131828942L, 5513279617712094986L}).toString().equals(zzfy.zzc)) {
                                String str4 = zzfy.zzb;
                                if (!str4.startsWith(new ObfuscatedString(new long[]{-8687592327942229134L, 146552451384073334L}).toString())) {
                                    if (!str4.startsWith(new ObfuscatedString(new long[]{1199618761332089192L, -4336857968894655181L}).toString())) {
                                        if (!str4.startsWith(new ObfuscatedString(new long[]{5338991179930152140L, 2395476931160601255L}).toString())) {
                                            if (!new ObfuscatedString(new long[]{-7167904613294266080L, 1486347107374701366L}).toString().equals(str4)) {
                                                if (!new ObfuscatedString(new long[]{-5710880847430800317L, -5928091490741967499L, 4851799558957125862L}).toString().equals(str4)) {
                                                    if (!new ObfuscatedString(new long[]{-542972342051236107L, 2972052999692897206L}).toString().equals(str4)) {
                                                        if (!new ObfuscatedString(new long[]{-7414590278913415932L, -8278326331732152102L}).toString().equals(str4)) {
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (i8 <= 23 && new ObfuscatedString(new long[]{3867801951169761125L, 7652444158678229403L, -4893572175374929283L}).toString().equals(str3)) {
                            long[] jArr2 = new long[i4];
                            // fill-array-data instruction
                            jArr2[0] = -8137169542045719424L;
                            jArr2[1] = 3752892694434745689L;
                            jArr2[2] = 6999915719147065450L;
                            jArr2[3] = -7563425789828026251L;
                            jArr2[4] = -2289873180372232683L;
                        }
                        String[] supportedTypes = zzb2.getSupportedTypes();
                        int length = supportedTypes.length;
                        int i9 = 0;
                        while (true) {
                            if (i9 < length) {
                                obfuscatedString = supportedTypes[i9];
                                if (obfuscatedString.equalsIgnoreCase(str3)) {
                                    break;
                                }
                                i9 += i5;
                            } else if (str3.equals(new ObfuscatedString(new long[]{-4903291841560796914L, 3749484064505768117L, 3604207971853757925L, -283193542273975673L}).toString())) {
                                if (new ObfuscatedString(new long[]{-1618880279422123803L, -4782427199236590740L, 3926611777301745970L, 5574464485631289471L}).toString().equals(name)) {
                                    obfuscatedString = new ObfuscatedString(new long[]{-4663349803722858775L, 1422528210286258884L, -7286046786507136306L}).toString();
                                } else {
                                    if (!new ObfuscatedString(new long[]{4790320275674882949L, -6444801490843610515L, -8141130721889336173L, -6947116520778646540L}).toString().equals(name)) {
                                        if (new ObfuscatedString(new long[]{6744512549653398817L, 4667623405201947145L, 7655821922354886529L, 1445515927692096785L, -910520289526964713L, -8342255727745762092L}).toString().equals(name)) {
                                        }
                                        obfuscatedString = null;
                                    }
                                    obfuscatedString = new ObfuscatedString(new long[]{-2360503830740454756L, -3177539462064877592L, 3602864292155865267L}).toString();
                                }
                            } else if (str3.equals(new ObfuscatedString(new long[]{-1747852118665222754L, 2296096838640005809L, -2620066574296492422L}).toString()) && new ObfuscatedString(new long[]{-8521128808710204199L, 2891786896832463668L, -484385757306943299L, -5363792672105305419L}).toString().equals(name)) {
                                obfuscatedString = new ObfuscatedString(new long[]{-8316791083614090994L, -4667542132285231461L, 7028862876858454228L}).toString();
                            } else if (str3.equals(new ObfuscatedString(new long[]{1303916690648682811L, -8519553569442429050L, -244395417270092593L}).toString()) && new ObfuscatedString(new long[]{-8322404036416566872L, 3916549914587750377L, -6399228529431596339L, 3656611473358870591L}).toString().equals(name)) {
                                obfuscatedString = new ObfuscatedString(new long[]{5975531110956143698L, -4894687400373437936L, 2260951618578457092L}).toString();
                            } else {
                                if (str3.equals(new ObfuscatedString(new long[]{6534543350545155794L, 139414994221694682L, -7149187055966434169L}).toString()) && new ObfuscatedString(new long[]{1601322323983241853L, 1689033870802726569L, -8574921312070341121L, -6027092108935557L}).toString().equals(name)) {
                                    obfuscatedString = new ObfuscatedString(new long[]{-9211315886045525721L, -3779651136554294755L, 4332368645186752096L}).toString();
                                }
                                obfuscatedString = null;
                            }
                        }
                        if (obfuscatedString != null) {
                            try {
                                MediaCodecInfo.CodecCapabilities capabilitiesForType = zzb2.getCapabilitiesForType(obfuscatedString);
                                boolean zzd = zztiVar.zzd(new ObfuscatedString(new long[]{2645955724330683968L, -4915962250228782440L, -4907021670721447919L, 5618634584096737397L}).toString(), obfuscatedString, capabilitiesForType);
                                boolean zzc2 = zztiVar.zzc(new ObfuscatedString(new long[]{3569284665226900231L, -9124368417434694804L, 746175730846692783L, 7647235769063139997L}).toString(), obfuscatedString, capabilitiesForType);
                                if (!zztfVar.zzc) {
                                    if (!zzc2) {
                                        boolean zzd2 = zztiVar.zzd(new ObfuscatedString(new long[]{1265042566381806615L, 6323954247468468911L, 5404485742082281971L}).toString(), obfuscatedString, capabilitiesForType);
                                        boolean zzc3 = zztiVar.zzc(new ObfuscatedString(new long[]{4050290420387535471L, -504774475214959996L, -7189406627069177782L}).toString(), obfuscatedString, capabilitiesForType);
                                        if (zztfVar.zzb) {
                                            if (!zzc3) {
                                                i3 = zzfy.zza;
                                                if (i3 < 29) {
                                                    isHardwareAccelerated = zzb2.isHardwareAccelerated();
                                                    z = isHardwareAccelerated;
                                                } else if (!zzj(zzb2, str3)) {
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                                zzj = zzj(zzb2, str3);
                                                if (i3 < 29) {
                                                    isVendor = zzb2.isVendor();
                                                    z2 = isVendor;
                                                } else {
                                                    String zza3 = zzfwk.zza(zzb2.getName());
                                                    if (!zza3.startsWith(new ObfuscatedString(new long[]{-1534537080735958690L, -5554966461376293661L, 9193432885703692056L}).toString()) && !zza3.startsWith(new ObfuscatedString(new long[]{1884541034305606826L, -723290719476506541L, 7512516561344184351L}).toString()) && !zza3.startsWith(new ObfuscatedString(new long[]{8215561278501830643L, 1980505415176516378L, 1089237769069023579L}).toString())) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                }
                                                if ((!zze && zztfVar.zzb == zzd2) || (!zze && !zztfVar.zzb)) {
                                                    str2 = name;
                                                    i = i7;
                                                    i2 = zza2;
                                                    str = str3;
                                                    try {
                                                        arrayList.add(zzsv.zzc(name, str3, obfuscatedString, capabilitiesForType, z, zzj, z2, false, false));
                                                    } catch (Exception e) {
                                                        e = e;
                                                        if (zzfy.zza <= 23 && !arrayList.isEmpty()) {
                                                            zzff.zzc(new ObfuscatedString(new long[]{174752587615216185L, -8136027573013928962L, -7368194574403223961L}).toString(), new ObfuscatedString(new long[]{-3609568348044168448L, -8785835886336827823L, -3786640767425100953L}).toString() + str2 + new ObfuscatedString(new long[]{5168325871808301795L, 7427884897910455846L, -1397460562976103468L, 1032975172979469195L, -5745267676277286341L}).toString());
                                                            i7 = i + 1;
                                                            zza2 = i2;
                                                            str3 = str;
                                                            i4 = 5;
                                                            i5 = 1;
                                                            i6 = 4;
                                                        } else {
                                                            zzff.zzc(new ObfuscatedString(new long[]{-2245257275605963141L, 385647743530895436L, -4493273649755084970L}).toString(), new ObfuscatedString(new long[]{5006649083488185678L, -3109425142078683509L, 5992684578749209426L, -8213126452418797862L}).toString() + str2 + new ObfuscatedString(new long[]{5470881672364728565L, -2345494884632076594L}).toString() + obfuscatedString + new ObfuscatedString(new long[]{-6653178585665979733L, 3412500572353170450L}).toString());
                                                            throw e;
                                                        }
                                                    }
                                                } else {
                                                    str2 = name;
                                                    i = i7;
                                                    i2 = zza2;
                                                    str = str3;
                                                    if (!zze && zzd2) {
                                                        arrayList.add(zzsv.zzc(str2 + new ObfuscatedString(new long[]{-4463183248209704311L, 740364364516352901L}).toString(), str, obfuscatedString, capabilitiesForType, z, zzj, z2, false, true));
                                                        break;
                                                    }
                                                }
                                            }
                                        } else if (zzd2) {
                                            zzd2 = true;
                                            i3 = zzfy.zza;
                                            if (i3 < 29) {
                                            }
                                            zzj = zzj(zzb2, str3);
                                            if (i3 < 29) {
                                            }
                                            if (!zze) {
                                            }
                                            str2 = name;
                                            i = i7;
                                            i2 = zza2;
                                            str = str3;
                                            if (!zze) {
                                                arrayList.add(zzsv.zzc(str2 + new ObfuscatedString(new long[]{-4463183248209704311L, 740364364516352901L}).toString(), str, obfuscatedString, capabilitiesForType, z, zzj, z2, false, true));
                                                break;
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    if (!zzd) {
                                    }
                                    boolean zzd22 = zztiVar.zzd(new ObfuscatedString(new long[]{1265042566381806615L, 6323954247468468911L, 5404485742082281971L}).toString(), obfuscatedString, capabilitiesForType);
                                    boolean zzc32 = zztiVar.zzc(new ObfuscatedString(new long[]{4050290420387535471L, -504774475214959996L, -7189406627069177782L}).toString(), obfuscatedString, capabilitiesForType);
                                    if (zztfVar.zzb) {
                                    }
                                }
                            } catch (Exception e2) {
                                e = e2;
                                str2 = name;
                                i = i7;
                                i2 = zza2;
                                str = str3;
                            }
                            i7 = i + 1;
                            zza2 = i2;
                            str3 = str;
                            i4 = 5;
                            i5 = 1;
                            i6 = 4;
                        }
                    }
                    i = i7;
                    i2 = zza2;
                    str = str3;
                    i7 = i + 1;
                    zza2 = i2;
                    str3 = str;
                    i4 = 5;
                    i5 = 1;
                    i6 = 4;
                }
                i = i7;
                i2 = zza2;
                str = str3;
                i7 = i + 1;
                zza2 = i2;
                str3 = str;
                i4 = 5;
                i5 = 1;
                i6 = 4;
            }
            return arrayList;
        } catch (Exception e3) {
            throw new zzth(e3, null);
        }
    }

    private static void zzi(List list, final zztm zztmVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zztc
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i = zztn.zza;
                zztm zztmVar2 = zztm.this;
                return zztmVar2.zza(obj2) - zztmVar2.zza(obj);
            }
        });
    }

    private static boolean zzj(MediaCodecInfo mediaCodecInfo, String str) {
        boolean isSoftwareOnly;
        if (zzfy.zza >= 29) {
            isSoftwareOnly = mediaCodecInfo.isSoftwareOnly();
            return isSoftwareOnly;
        }
        if (zzcb.zzg(str)) {
            return true;
        }
        String zza2 = zzfwk.zza(mediaCodecInfo.getName());
        if (zza2.startsWith(new ObfuscatedString(new long[]{5130788618791634884L, 813201991895852580L}).toString())) {
            return false;
        }
        if (zza2.startsWith(new ObfuscatedString(new long[]{-5382113936549216672L, -6748890010231697794L, 6137644466973430220L}).toString()) || zza2.startsWith(new ObfuscatedString(new long[]{-2010369162091969945L, 125646370330904027L, 2099681306709117216L}).toString())) {
            return true;
        }
        if ((zza2.startsWith(new ObfuscatedString(new long[]{-7684092882538262779L, 5069323218080880205L}).toString()) && zza2.contains(new ObfuscatedString(new long[]{-4463726232298517726L, -7338480255579506617L}).toString())) || zza2.equals(new ObfuscatedString(new long[]{6282979499202647625L, -9029518627595752655L, -7095288991034148231L, -7574907294393232737L, 7121579176124928252L, -8752499432513180215L}).toString()) || zza2.startsWith(new ObfuscatedString(new long[]{-3428229098620269462L, 7397005769807002200L, 8314534654937387109L}).toString()) || zza2.startsWith(new ObfuscatedString(new long[]{-3606136016209047572L, 4536331322536864557L, 2880534499971207132L}).toString())) {
            return true;
        }
        if (!zza2.startsWith(new ObfuscatedString(new long[]{-8638594792339771685L, 4377270368707595954L}).toString()) && !zza2.startsWith(new ObfuscatedString(new long[]{2130743028492755851L, 3599398371485278965L}).toString())) {
            return true;
        }
        return false;
    }
}
