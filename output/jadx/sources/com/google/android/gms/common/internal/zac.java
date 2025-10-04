package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import androidx.core.os.ConfigurationCompat;
import com.google.android.gms.base.R;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;
import javax.annotation.concurrent.GuardedBy;

/* loaded from: classes2.dex */
public final class zac {

    @GuardedBy("sCache")
    private static final SimpleArrayMap<String, String> zaa = new SimpleArrayMap<>();

    @Nullable
    @GuardedBy("sCache")
    private static Locale zab;

    public static String zaa(Context context) {
        String packageName = context.getPackageName();
        try {
            return Wrappers.packageManager(context).getApplicationLabel(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            if (TextUtils.isEmpty(str)) {
                return packageName;
            }
            return str;
        }
    }

    public static String zab(Context context) {
        return context.getResources().getString(R.string.common_google_play_services_notification_channel_name);
    }

    @NonNull
    public static String zac(Context context, int i) {
        Resources resources = context.getResources();
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return resources.getString(android.R.string.ok);
                }
                return resources.getString(R.string.common_google_play_services_enable_button);
            }
            return resources.getString(R.string.common_google_play_services_update_button);
        }
        return resources.getString(R.string.common_google_play_services_install_button);
    }

    @NonNull
    public static String zad(Context context, int i) {
        Resources resources = context.getResources();
        String zaa2 = zaa(context);
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 5) {
                        if (i != 7) {
                            if (i != 9) {
                                if (i != 20) {
                                    switch (i) {
                                        case 16:
                                            return zah(context, new ObfuscatedString(new long[]{-3591335016340386008L, 389359246897970969L, 8529993653523883231L, 4272664534634909557L, 1749865350626496608L, 4009572242890040234L, 8686127594910054269L}).toString(), zaa2);
                                        case 17:
                                            return zah(context, new ObfuscatedString(new long[]{-8397397696741057308L, 4121774598598198312L, -5222178119241812570L, 8196297921536378780L, -7894553763107332827L, -2554613723456368246L, 911236798691330516L}).toString(), zaa2);
                                        case 18:
                                            return resources.getString(R.string.common_google_play_services_updating_text, zaa2);
                                        default:
                                            return resources.getString(com.google.android.gms.common.R.string.common_google_play_services_unknown_issue, zaa2);
                                    }
                                }
                                return zah(context, new ObfuscatedString(new long[]{-2677289465963469946L, -6244634329715069341L, -426190106413006383L, 1940638407567035436L, -2183965489393627539L, -5532315902860151146L, -2314186167483427737L, -4092209648399874406L}).toString(), zaa2);
                            }
                            return resources.getString(R.string.common_google_play_services_unsupported_text, zaa2);
                        }
                        return zah(context, new ObfuscatedString(new long[]{5506366232368806451L, -6754969351890977462L, -8932225321745781711L, -427308697837995442L, 7536709056527130528L, -7432526670880121707L, -1172412557176650865L}).toString(), zaa2);
                    }
                    return zah(context, new ObfuscatedString(new long[]{-8947453398704800280L, -5188097556078482445L, 3523663973386276632L, -1248694525144241238L, 5724905867673986642L, 5366722199690515488L, -6780395984209051145L}).toString(), zaa2);
                }
                return resources.getString(R.string.common_google_play_services_enable_text, zaa2);
            }
            if (DeviceProperties.isWearableWithoutPlayStore(context)) {
                return resources.getString(R.string.common_google_play_services_wear_update_text);
            }
            return resources.getString(R.string.common_google_play_services_update_text, zaa2);
        }
        return resources.getString(R.string.common_google_play_services_install_text, zaa2);
    }

    @NonNull
    public static String zae(Context context, int i) {
        if (i != 6 && i != 19) {
            return zad(context, i);
        }
        return zah(context, new ObfuscatedString(new long[]{740018516378199683L, -425432681253603614L, 7849564778845239275L, 4319469531628303273L, 1319601029259130419L, 355768805419962125L, -5745231879772372727L, 1754182150912431647L}).toString(), zaa(context));
    }

    @NonNull
    public static String zaf(Context context, int i) {
        String zag;
        if (i == 6) {
            zag = zai(context, new ObfuscatedString(new long[]{-98090259885661821L, -6847053552443845719L, -574501897609108521L, -386892484568948667L, 576622869943405259L, -4839199000266204829L, 5449255336198458842L, 5976814344164019438L}).toString());
        } else {
            zag = zag(context, i);
        }
        if (zag == null) {
            return context.getResources().getString(R.string.common_google_play_services_notification_ticker);
        }
        return zag;
    }

    @Nullable
    public static String zag(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(R.string.common_google_play_services_install_title);
            case 2:
                return resources.getString(R.string.common_google_play_services_update_title);
            case 3:
                return resources.getString(R.string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                new ObfuscatedString(new long[]{6635593435637732540L, -3256580996825911972L, -7549281102866624835L, -1843332311096346676L}).toString();
                new ObfuscatedString(new long[]{-2859649104188608980L, -7501923235211222320L, 559981443314363190L, -1060802785012632441L, 1475938398528224559L, -7470366536374094048L, -6972271987539012479L, 7120101293029094170L, 1610775446415165349L, 7197258322032651946L, -5817300255698190445L, 7264499892172005580L}).toString();
                return zai(context, new ObfuscatedString(new long[]{6105968273723619860L, -4055480391069337776L, 8655728563375247111L, -4575369721411984251L, 487077354331946300L, -1211524205062852507L, 7495544651308456722L, 6394613377143498531L}).toString());
            case 7:
                new ObfuscatedString(new long[]{-4989651068936525617L, -1750959578370621718L, -3976693778403608477L, -2957175317313936222L}).toString();
                new ObfuscatedString(new long[]{-1096168231844190539L, -3384768334347109237L, -8117755690797647943L, -5656047360233491601L, -8526760552854915040L, 1032165689868375985L, -3321966318756402900L, -1856738558683475074L}).toString();
                return zai(context, new ObfuscatedString(new long[]{-3013483319016658774L, -7627758209613960439L, -7829512231688515565L, -383042923550600990L, 4155835914617207576L, -8588011592017370165L, -3042573556252237385L}).toString());
            case 8:
                new ObfuscatedString(new long[]{3232448354982590844L, -6346008375968775602L, -7033866644189114609L, 5845927426299116682L}).toString();
                new ObfuscatedString(new long[]{-8967282286671517997L, -4302074085771454356L, 6412302032675685981L, -1962005005282366236L, -2290864395863774827L, -4537803743926979778L, -7896014215367781889L, -3475569022263330038L, 1921623169505931703L, 8597308928724806126L}).toString();
                return null;
            case 9:
                new ObfuscatedString(new long[]{-3498692165389978738L, 1115538294855857414L, 7743250871237115664L, -658950175656571930L}).toString();
                new ObfuscatedString(new long[]{-7482665544970385063L, 5300350964969420314L, -2180512741871909960L, -1216677231099413848L, -7550962615110559617L, -8295546121527372043L, -7908045894275913796L}).toString();
                return null;
            case 10:
                new ObfuscatedString(new long[]{-5072753709809594954L, -3079220539157300195L, 4092106917748032402L, 1206219215687378952L}).toString();
                new ObfuscatedString(new long[]{8307882982545431759L, -3313657796391664935L, -7819205875413748177L, 1816606482041481476L, 884450595469265011L, 1592020553778395017L, 6585623327668626663L, 5663891314300569360L, 1852526359611654018L, 2344529335954044081L}).toString();
                return null;
            case 11:
                new ObfuscatedString(new long[]{6466250043265275220L, -6925815379762553426L, -8046049615390409239L, 6719372935635923482L}).toString();
                new ObfuscatedString(new long[]{-1137105725811874857L, 6443086829400518646L, 734306025249833073L, -7227291197110183320L, -5508348570946195758L, 1278278325892892572L, -4524396915471217683L}).toString();
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                new ObfuscatedString(new long[]{-8490071715389536094L, -7808872463174271747L, -3769163107511485542L, -4050402647442662868L}).toString();
                new ObfuscatedString(new long[]{-8828078639303630048L, 1941986901603888255L, 6391105610175357386L, -7431657212158742381L}).toString();
                return null;
            case 16:
                new ObfuscatedString(new long[]{8938678271935017589L, -7383112328258296792L, 620895300616175126L, -8651010415192020722L}).toString();
                new ObfuscatedString(new long[]{5268707398349014760L, -1458610735314501901L, 888435052676813080L, 7516745201299649448L, 7263641423299936757L, 4686884192586973489L, 6954952048050933981L, 7596813853344416646L, -7181017524374613334L, 8340869151412845197L}).toString();
                return null;
            case 17:
                new ObfuscatedString(new long[]{6518900705985683135L, 5614500378965483397L, 6477007095410307050L, -8890973347186560242L}).toString();
                new ObfuscatedString(new long[]{-658816973811865783L, -5504910858832133502L, 6241595666645149890L, -4106293664138430217L, 4938313923349419470L, -7534355638732693662L, 4233378460689182199L}).toString();
                return zai(context, new ObfuscatedString(new long[]{-1767347275603101979L, 6433738951512687819L, 4073667200974865402L, -8737970712416347038L, -6724889891613370239L, -6868144411040722137L, -4904446009631504036L}).toString());
            case 20:
                new ObfuscatedString(new long[]{-8143380548828072756L, -867948990152507826L, 4049501819420547532L, -389651819710210675L}).toString();
                new ObfuscatedString(new long[]{-8450830569385327292L, -4875802396982478716L, 8017174512416548104L, 900895176844076835L, 5633081278677205173L, 8701930339426953539L, 2300500769950076903L, 8104764416681992820L, -3474151637911494338L, -4790923226574101160L, 5118605749673458889L}).toString();
                return zai(context, new ObfuscatedString(new long[]{7964787805152120578L, -5177128982874154996L, -4755978796242847880L, -5215559324866683276L, 1191738204777813924L, -4376208989786177634L, -1759045377027594381L, -1948171869018956545L}).toString());
        }
    }

    private static String zah(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String zai = zai(context, str);
        if (zai == null) {
            zai = resources.getString(com.google.android.gms.common.R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, zai, str2);
    }

    @Nullable
    private static String zai(Context context, String str) {
        SimpleArrayMap<String, String> simpleArrayMap = zaa;
        synchronized (simpleArrayMap) {
            try {
                Locale locale = ConfigurationCompat.getLocales(context.getResources().getConfiguration()).get(0);
                if (!locale.equals(zab)) {
                    simpleArrayMap.clear();
                    zab = locale;
                }
                String str2 = simpleArrayMap.get(str);
                if (str2 != null) {
                    return str2;
                }
                Resources remoteResource = GooglePlayServicesUtil.getRemoteResource(context);
                if (remoteResource == null) {
                    return null;
                }
                int identifier = remoteResource.getIdentifier(str, new ObfuscatedString(new long[]{7779560764848045673L, 1704721479438681294L}).toString(), new ObfuscatedString(new long[]{4435908672813500652L, 7145934699905098964L, 3440746136739815793L, 2505227811232646756L}).toString());
                if (identifier == 0) {
                    new ObfuscatedString(new long[]{-1321292183102704885L, -4619417600980336524L, -7076982572811776783L, 7262584408873534154L}).toString();
                    String obfuscatedString = new ObfuscatedString(new long[]{6714802212607883261L, -1179190708811363486L, 5147610175966031807L, -8434898004773367869L}).toString();
                    if (str.length() != 0) {
                        obfuscatedString.concat(str);
                    } else {
                        new String(obfuscatedString);
                    }
                    return null;
                }
                String string = remoteResource.getString(identifier);
                if (TextUtils.isEmpty(string)) {
                    new ObfuscatedString(new long[]{4502386255839560561L, -8670407370389295718L, -6461766007044810679L, 414844526087108334L}).toString();
                    String obfuscatedString2 = new ObfuscatedString(new long[]{-6241421096561303277L, 1076734845513633264L, -1110049318296780869L, 5290487661158521804L}).toString();
                    if (str.length() != 0) {
                        obfuscatedString2.concat(str);
                    } else {
                        new String(obfuscatedString2);
                    }
                    return null;
                }
                simpleArrayMap.put(str, string);
                return string;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
