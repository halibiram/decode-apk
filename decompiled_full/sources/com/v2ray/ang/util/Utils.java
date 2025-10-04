package com.v2ray.ang.util;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.LocaleList;
import android.text.Editable;
import android.util.Base64;
import android.util.Patterns;
import android.webkit.URLUtil;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.AppConfig;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC1196x2c4a2948;
import defpackage.AbstractC1197x89633db9;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nJ#\u0010\u000b\u001a\u00020\f2\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u000e2\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0002\u0010\u0010J\u001a\u0010\u0011\u001a\u00020\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u0013\u001a\u00020\fJ\u000e\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\nJ\u0010\u0010\u001a\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u001b\u001a\u0004\u0018\u00010\n2\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001c\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u001d\u001a\u00020\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\nJ\u0010\u0010 \u001a\u00020\u001e2\b\u0010!\u001a\u0004\u0018\u00010\nJ\u0010\u0010\"\u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\nH\u0002J\u000e\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\nJ\u0010\u0010&\u001a\u00020\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\nJ\u0016\u0010'\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010(\u001a\u00020\nJ\u0006\u0010)\u001a\u00020\nJ\u000e\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nJ\u000e\u0010,\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nJ\u0018\u0010-\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010.\u001a\u00020\nJ\u0010\u0010/\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u00100\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0006\u00101\u001a\u00020\nJ\u000e\u00102\u001a\u00020\u001e2\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u00103\u001a\u00020\n2\b\u00104\u001a\u0004\u0018\u00010\nJ\u0006\u00105\u001a\u000206J\u000e\u00107\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nJ\u0014\u00108\u001a\u00020\f2\f\u00109\u001a\b\u0012\u0004\u0012\u00020\f0:J\u0010\u0010;\u001a\u00020\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\nJ\u0006\u0010<\u001a\u00020\fJ\u0006\u0010=\u001a\u00020\u001eJ\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0002J\u0016\u0010B\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\n2\u0006\u0010C\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006D"}, d2 = {"Lcom/v2ray/ang/util/Utils;", "", "<init>", "()V", "IPV4_REGEX", "Lkotlin/text/Regex;", "IPV6_REGEX", "getEditable", "Landroid/text/Editable;", "text", "", "arrayFind", "", "array", "", "value", "([Ljava/lang/String;Ljava/lang/String;)I", "parseInt", "str", "default", "getClipboard", "context", "Landroid/content/Context;", "setClipboard", "", "content", "decode", "tryDecodeBase64", "encode", "isIpAddress", "", "isPureIpAddress", "isDomainName", "input", "isIpv4Address", "isIpv6Address", "isCoreDNSAddress", "s", "isValidUrl", "openUri", "uriString", "getUuid", "urlDecode", "url", "urlEncode", "readTextFromAssets", "fileName", "userAssetPath", "backupPath", "getDeviceIdForXUDPBaseKey", "getDarkModeStatus", "getIpv6Address", "address", "getSysLocale", "Ljava/util/Locale;", "fixIllegalUrl", "findFreePort", "ports", "", "isValidSubUrl", "receiverFlags", "isXray", "inetAddressToLong", "", "ip", "Ljava/net/InetAddress;", "isIpInCidr", "cidr", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/v2ray/ang/util/Utils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Uri.kt\nandroidx/core/net/UriKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,571:1\n1#2:572\n29#3:573\n1869#4,2:574\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/v2ray/ang/util/Utils\n*L\n280#1:573\n489#1:574,2\n*E\n"})
/* loaded from: classes3.dex */
public final class Utils {

    @NotNull
    public static final Utils INSTANCE = new Utils();

    @NotNull
    private static final Regex IPV4_REGEX = new Regex(new ObfuscatedString(new long[]{-1633481678764658322L, -2405030250975078692L, -2540506099286073461L, -4150775623562328692L, 3909178281597674543L, -7957950721343434892L, 4914235337162625022L, -4298111505059115850L, -606674779863591187L, 6188527922176102082L, -3282817553996264254L, -2411658136295940964L, -3746362985514900332L, 8494586813700001968L, 6544023942251863483L, -1841628632038137516L, 4059673249938740557L, -5328483092431456718L, 6363650058211074481L, 3318900777951020882L, -7466640352849615824L}).toString());

    @NotNull
    private static final Regex IPV6_REGEX = new Regex(new ObfuscatedString(new long[]{-5244760473888118300L, -875135944815161938L, 5925235181992657377L, -7333909388736142268L, -3933753884882126353L, 3271872583256347784L, 8582844384672321299L, 4497410737169013870L, 7411062588225308858L, -7423116229092354248L, 4124778290682114094L, 754402520551679531L, -6654213324410507750L, -2581128069483215356L, -6204503563178571688L, -4318299016393910339L, 7475577430602792155L, 6265096638343280550L, -2066159183978981968L, 5962538351087408407L}).toString());

    private Utils() {
    }

    private final long inetAddressToLong(InetAddress ip) {
        long j = 0;
        for (int i = 0; i < ip.getAddress().length; i++) {
            j = (j << 8) | (r7[i] & 255);
        }
        return j;
    }

    private final boolean isIpv4Address(String value) {
        return IPV4_REGEX.matches(value);
    }

    private final boolean isIpv6Address(String value) {
        if (AbstractC1197x89633db9.startsWith$default(value, new ObfuscatedString(new long[]{1199595308477027739L, -6619536918399520853L}).toString(), false, 2, null) && AbstractC1197x89633db9.endsWith$default(value, new ObfuscatedString(new long[]{-485639843556538827L, 913600651749553661L}).toString(), false, 2, null)) {
            value = StringsKt___StringsKt.dropLast(StringsKt___StringsKt.drop(value, 1), 1);
        }
        return IPV6_REGEX.matches(value);
    }

    public static /* synthetic */ int parseInt$default(Utils utils, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return utils.parseInt(str, i);
    }

    public final int arrayFind(@NotNull String[] array, @NotNull String value) {
        Intrinsics.checkNotNullParameter(array, new ObfuscatedString(new long[]{5718455084214921134L, 9143333533987110771L}).toString());
        Intrinsics.checkNotNullParameter(value, new ObfuscatedString(new long[]{4903598318910837279L, -690765494797034774L}).toString());
        return ArraysKt___ArraysKt.indexOf(array, value);
    }

    @NotNull
    public final String backupPath(@Nullable Context context) {
        String absolutePath;
        if (context == null) {
            return new ObfuscatedString(new long[]{8849354789394084628L}).toString();
        }
        try {
            File externalFilesDir = context.getExternalFilesDir(new ObfuscatedString(new long[]{7411996894079585083L, 6461208220001759375L}).toString());
            if (externalFilesDir == null || (absolutePath = externalFilesDir.getAbsolutePath()) == null) {
                absolutePath = context.getDir(new ObfuscatedString(new long[]{-807357588731462828L, 791231963021993921L}).toString(), 0).getAbsolutePath();
            }
            Intrinsics.checkNotNull(absolutePath);
            return absolutePath;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{7799338674317952459L, -4355659813437013240L, 6475025793642912390L}).toString();
            new ObfuscatedString(new long[]{7301276298886281050L, -1821720170582647921L, 8690588254803075126L, 176115900975946960L, -7992999909924477907L}).toString();
            return new ObfuscatedString(new long[]{8115937591546479650L}).toString();
        }
    }

    @NotNull
    public final String decode(@Nullable String text) {
        String str;
        String trimEnd;
        String tryDecodeBase64 = tryDecodeBase64(text);
        if (tryDecodeBase64 == null) {
            if (text != null && (trimEnd = StringsKt__StringsKt.trimEnd(text, '=')) != null) {
                str = INSTANCE.tryDecodeBase64(trimEnd);
            } else {
                str = null;
            }
            String str2 = str;
            if (str2 == null) {
                return new ObfuscatedString(new long[]{-3871290755066692878L}).toString();
            }
            return str2;
        }
        return tryDecodeBase64;
    }

    @NotNull
    public final String encode(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, new ObfuscatedString(new long[]{2865761038335038809L, -8628649660385180764L}).toString());
        try {
            byte[] bytes = text.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, new ObfuscatedString(new long[]{6046181353735561603L, -119842076899605182L, -6981858820501949555L}).toString());
            String encodeToString = Base64.encodeToString(bytes, 2);
            Intrinsics.checkNotNull(encodeToString);
            return encodeToString;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-6183254819543451341L, 267905506839065400L, 8209569863978251877L}).toString();
            new ObfuscatedString(new long[]{6409694865822708285L, 2404320310846531952L, -4166872021634183773L, -7016091164511323855L, -3846113780546468232L}).toString();
            return new ObfuscatedString(new long[]{-6635414920473908215L}).toString();
        }
    }

    public final int findFreePort(@NotNull List<Integer> ports) {
        Intrinsics.checkNotNullParameter(ports, new ObfuscatedString(new long[]{5415438962988150292L, 8490620764203297097L}).toString());
        Iterator<Integer> it = ports.iterator();
        while (it.hasNext()) {
            try {
                ServerSocket serverSocket = new ServerSocket(it.next().intValue());
                try {
                    continue;
                    int localPort = serverSocket.getLocalPort();
                    CloseableKt.closeFinally(serverSocket, null);
                    return localPort;
                } finally {
                    try {
                        continue;
                        break;
                    } catch (Throwable th) {
                    }
                }
            } catch (IOException unused) {
            }
        }
        throw new IOException(new ObfuscatedString(new long[]{6282106392684474496L, 6620738785618161412L, 6119342169604752376L, -6742426298532617985L}).toString());
    }

    @NotNull
    public final String fixIllegalUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{6690357711567172810L, -1618074288570010772L}).toString());
        return AbstractC1197x89633db9.replace$default(AbstractC1197x89633db9.replace$default(str, new ObfuscatedString(new long[]{6133584759659109241L, -8138113625598960377L}).toString(), new ObfuscatedString(new long[]{-1727686858653353623L, 7508553732878364011L}).toString(), false, 4, (Object) null), new ObfuscatedString(new long[]{1229393561082215662L, -3169943051388946035L}).toString(), new ObfuscatedString(new long[]{806905116693704510L, -9017249154407556033L}).toString(), false, 4, (Object) null);
    }

    @NotNull
    public final String getClipboard(@NotNull Context context) {
        CharSequence charSequence;
        ClipData.Item itemAt;
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{7601699245108051256L, -633421393540214295L}).toString());
        try {
            Object systemService = context.getSystemService(new ObfuscatedString(new long[]{-6592190403706530189L, -5822071763324520165L, -7788194238870972168L}).toString());
            Intrinsics.checkNotNull(systemService, new ObfuscatedString(new long[]{-5175042789479630757L, 2645718813589338474L, 3816808425297849333L, -2169284287299011616L, -8335370460385407291L, 7000321149166324301L, -8317864053012215216L, 9124433171622951464L, 895673554310865743L, 118790616167900307L}).toString());
            ClipData primaryClip = ((ClipboardManager) systemService).getPrimaryClip();
            if (primaryClip != null && (itemAt = primaryClip.getItemAt(0)) != null) {
                charSequence = itemAt.getText();
            } else {
                charSequence = null;
            }
            return String.valueOf(charSequence);
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-7919439808202262588L, -6765808324280699297L, -8813142685133988256L}).toString();
            new ObfuscatedString(new long[]{2754242321221185962L, 7631731399067991439L, 8469732890410482634L, -2537161402232076572L, -5067334387472427419L}).toString();
            return new ObfuscatedString(new long[]{4651455014002765935L}).toString();
        }
    }

    public final boolean getDarkModeStatus(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{6228169951003641718L, 6648974869757404994L}).toString());
        if ((context.getResources().getConfiguration().uiMode & 48) != 16) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getDeviceIdForXUDPBaseKey() {
        try {
            byte[] bytes = new ObfuscatedString(new long[]{-3699133130895203823L, 7912780454721689901L, -6460250627536882490L}).toString().getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, new ObfuscatedString(new long[]{1141069988084748864L, -3627160259540978618L, 5166466105955879847L}).toString());
            byte[] copyOf = Arrays.copyOf(bytes, 32);
            Intrinsics.checkNotNullExpressionValue(copyOf, new ObfuscatedString(new long[]{1207141934428907297L, -8354304686037551288L, 127324499989565550L}).toString());
            String encodeToString = Base64.encodeToString(copyOf, 9);
            Intrinsics.checkNotNull(encodeToString);
            return encodeToString;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-6391292881341111376L, 3835938834954195912L, 8709437514248629864L}).toString();
            new ObfuscatedString(new long[]{3278919863000508022L, 5629677367516061977L, 964935237096843710L, 4802327858288566781L, 7610049536801874296L}).toString();
            return new ObfuscatedString(new long[]{6693939242740974343L}).toString();
        }
    }

    @NotNull
    public final Editable getEditable(@Nullable String text) {
        Editable.Factory factory = Editable.Factory.getInstance();
        if (text == null) {
            text = new ObfuscatedString(new long[]{-369915513355287795L}).toString();
        }
        Editable newEditable = factory.newEditable(text);
        Intrinsics.checkNotNullExpressionValue(newEditable, new ObfuscatedString(new long[]{-9065575930514052465L, 4215571490981026958L, -3050387022635538989L}).toString());
        return newEditable;
    }

    @NotNull
    public final String getIpv6Address(@Nullable String address) {
        if (address != null && address.length() != 0) {
            if (isIpv6Address(address) && !StringsKt__StringsKt.contains$default((CharSequence) address, '[', false, 2, (Object) null) && !StringsKt__StringsKt.contains$default((CharSequence) address, ']', false, 2, (Object) null)) {
                return AbstractC0362x4440ab85.m2932x95f25580("[", address, "]");
            }
            return address;
        }
        return new ObfuscatedString(new long[]{-5000052415670472650L}).toString();
    }

    @NotNull
    public final Locale getSysLocale() {
        LocaleList localeList;
        Locale locale;
        if (Build.VERSION.SDK_INT >= 24) {
            localeList = LocaleList.getDefault();
            locale = localeList.get(0);
            Intrinsics.checkNotNull(locale);
            return locale;
        }
        Locale locale2 = Locale.getDefault();
        Intrinsics.checkNotNull(locale2);
        return locale2;
    }

    @NotNull
    public final String getUuid() {
        try {
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, new ObfuscatedString(new long[]{5821476131412119020L, -6015083934839607035L, -6947427541776861411L}).toString());
            return AbstractC1197x89633db9.replace$default(uuid, new ObfuscatedString(new long[]{7724865223557550127L, 1975614410757004575L}).toString(), new ObfuscatedString(new long[]{3405659611067785855L}).toString(), false, 4, (Object) null);
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-4399255057842686044L, -5434106957131270912L, 3927081609789254722L}).toString();
            new ObfuscatedString(new long[]{-8376260001113521782L, 747667422545215439L, 8886036952980084905L, 8734748281430744101L}).toString();
            return new ObfuscatedString(new long[]{-2889484991403388856L}).toString();
        }
    }

    public final boolean isCoreDNSAddress(@NotNull String s) {
        Intrinsics.checkNotNullParameter(s, new ObfuscatedString(new long[]{3970704531947623662L, 1320092674792030389L}).toString());
        if (!AbstractC1197x89633db9.startsWith$default(s, new ObfuscatedString(new long[]{2060914835986360363L, 3758760141343660116L}).toString(), false, 2, null) && !AbstractC1197x89633db9.startsWith$default(s, new ObfuscatedString(new long[]{3536952413809419399L, 4854518449121023740L}).toString(), false, 2, null) && !AbstractC1197x89633db9.startsWith$default(s, new ObfuscatedString(new long[]{-1053124062768757769L, 8746169312416517610L}).toString(), false, 2, null) && !Intrinsics.areEqual(s, new ObfuscatedString(new long[]{-4104344127391670225L, 6029655281301187282L, 5380526757464029282L}).toString())) {
            return false;
        }
        return true;
    }

    public final boolean isDomainName(@Nullable String input) {
        if (input == null || input.length() == 0 || isPureIpAddress(input) || !isValidUrl(input)) {
            return false;
        }
        return true;
    }

    public final boolean isIpAddress(@Nullable String value) {
        if (value != null && value.length() != 0) {
            try {
                String obj = StringsKt__StringsKt.trim(value).toString();
                if (obj.length() == 0) {
                    return false;
                }
                if (StringsKt__StringsKt.contains$default((CharSequence) obj, (CharSequence) new ObfuscatedString(new long[]{2628138357889303088L, 5071113576509605930L}).toString(), false, 2, (Object) null)) {
                    List split$default = StringsKt__StringsKt.split$default((CharSequence) obj, new String[]{new ObfuscatedString(new long[]{-1421117184361486682L, -6048630591181230119L}).toString()}, false, 0, 6, (Object) null);
                    if (split$default.size() == 2 && AbstractC1196x2c4a2948.toIntOrNull((String) split$default.get(1)) != null && Integer.parseInt((String) split$default.get(1)) > -1) {
                        obj = (String) split$default.get(0);
                    }
                }
                if (AbstractC1197x89633db9.startsWith$default(obj, new ObfuscatedString(new long[]{5461933876255374728L, 3495474935491201167L}).toString(), false, 2, null) && StringsKt__StringsKt.contains$default((CharSequence) obj, '.', false, 2, (Object) null)) {
                    obj = StringsKt___StringsKt.drop(obj, 7);
                } else if (AbstractC1197x89633db9.startsWith$default(obj, new ObfuscatedString(new long[]{-6878425244289930220L, 2591185684659510649L}).toString(), false, 2, null) && StringsKt__StringsKt.contains$default((CharSequence) obj, '.', false, 2, (Object) null)) {
                    obj = AbstractC1197x89633db9.replace$default(StringsKt___StringsKt.drop(obj, 8), new ObfuscatedString(new long[]{7943101605065959438L, 4200184996254278222L}).toString(), new ObfuscatedString(new long[]{-5547730136991997865L}).toString(), false, 4, (Object) null);
                }
                List split$default2 = StringsKt__StringsKt.split$default((CharSequence) obj, new char[]{'.'}, false, 0, 6, (Object) null);
                if (split$default2.size() == 4) {
                    if (StringsKt__StringsKt.contains$default((CharSequence) split$default2.get(3), (CharSequence) new ObfuscatedString(new long[]{-8485590983258420274L, -3383884140416221335L}).toString(), false, 2, (Object) null)) {
                        obj = obj.substring(0, StringsKt__StringsKt.indexOf$default((CharSequence) obj, new ObfuscatedString(new long[]{-5595099082699947096L, -2424338981316038969L}).toString(), 0, false, 6, (Object) null));
                        Intrinsics.checkNotNullExpressionValue(obj, new ObfuscatedString(new long[]{3857308775528239843L, 8987911414348066377L, 8321257817842526971L}).toString());
                    }
                    return isIpv4Address(obj);
                }
                return isIpv6Address(obj);
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{2549225180990180701L, 6729772136007296320L, -6774931720301067128L}).toString();
                new ObfuscatedString(new long[]{-7421224757208101199L, -7521581352620966569L, -1044972481211238300L, -8071601132450997959L, -5582833281108546094L}).toString();
            }
        }
        return false;
    }

    public final boolean isIpInCidr(@NotNull String ip, @NotNull String cidr) {
        long j;
        Intrinsics.checkNotNullParameter(ip, new ObfuscatedString(new long[]{8554260323233872127L, -7348804369625990627L}).toString());
        Intrinsics.checkNotNullParameter(cidr, new ObfuscatedString(new long[]{4926404568622749357L, 4759552101198134152L}).toString());
        try {
            if (!isIpAddress(ip)) {
                return false;
            }
            List split$default = StringsKt__StringsKt.split$default((CharSequence) cidr, new String[]{new ObfuscatedString(new long[]{-8288086450677579639L, -3969490953869088012L}).toString()}, false, 0, 6, (Object) null);
            String str = (String) split$default.get(0);
            int parseInt = Integer.parseInt((String) split$default.get(1));
            InetAddress byName = InetAddress.getByName(ip);
            Intrinsics.checkNotNullExpressionValue(byName, new ObfuscatedString(new long[]{4002629409852112943L, -9122497356287139201L, -7170259728847128345L}).toString());
            long inetAddressToLong = inetAddressToLong(byName);
            InetAddress byName2 = InetAddress.getByName(str);
            Intrinsics.checkNotNullExpressionValue(byName2, new ObfuscatedString(new long[]{-8506422453454186294L, 6243824621427630293L, -2239201326305132367L}).toString());
            long inetAddressToLong2 = inetAddressToLong(byName2);
            if (parseInt == 0) {
                j = 0;
            } else {
                j = (-1) << (32 - parseInt);
            }
            if ((inetAddressToLong & j) != (j & inetAddressToLong2)) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{3603225502470728423L, 3950882199731507894L, 2620865088267824818L}).toString();
            new ObfuscatedString(new long[]{6986460575980680972L, 1048050622936833842L, -2089330612921447843L, -7903024312794985176L, -2654268681408963534L}).toString();
            return false;
        }
    }

    public final boolean isPureIpAddress(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, new ObfuscatedString(new long[]{-6099798951948051331L, -4984466762588591019L}).toString());
        if (!isIpv4Address(value) && !isIpv6Address(value)) {
            return false;
        }
        return true;
    }

    public final boolean isValidSubUrl(@Nullable String value) {
        if (value != null && value.length() != 0) {
            try {
                if (URLUtil.isHttpsUrl(value)) {
                    return true;
                }
                if (URLUtil.isHttpUrl(value)) {
                    if (StringsKt__StringsKt.contains$default((CharSequence) value, (CharSequence) new ObfuscatedString(new long[]{-5393546875599542292L, -5468013346988163110L, 6060544723545446697L}).toString(), false, 2, (Object) null)) {
                        return true;
                    }
                    URI uri = new URI(fixIllegalUrl(value));
                    if (isIpAddress(uri.getHost())) {
                        for (String str : AppConfig.INSTANCE.getPRIVATE_IP_LIST()) {
                            Utils utils = INSTANCE;
                            String host = uri.getHost();
                            Intrinsics.checkNotNullExpressionValue(host, new ObfuscatedString(new long[]{3637094246064979245L, 8081808010156492969L, 2063440684246834014L}).toString());
                            if (utils.isIpInCidr(host, str)) {
                                return true;
                            }
                        }
                    }
                }
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{1517637987096545170L, 5715833277783273252L, -5261485288582727256L}).toString();
                new ObfuscatedString(new long[]{-5395099850602516186L, -8957058063655000792L, 4648112682677987394L, -7013026189307798699L, -7913549106062812456L, 317056235573761863L}).toString();
            }
        }
        return false;
    }

    public final boolean isValidUrl(@Nullable String value) {
        if (value == null || value.length() == 0) {
            return false;
        }
        try {
            if (!Patterns.WEB_URL.matcher(value).matches() && !Patterns.DOMAIN_NAME.matcher(value).matches()) {
                if (!URLUtil.isValidUrl(value)) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{907505044961104176L, 3457864924264858243L, -448895330387486092L}).toString();
            new ObfuscatedString(new long[]{2977372517979228816L, -3705306548103169265L, -9117898823940254047L, -2649310805748235303L}).toString();
            return false;
        }
    }

    public final boolean isXray() {
        return AbstractC1197x89633db9.startsWith$default(new ObfuscatedString(new long[]{7869729956373314350L, 5739602822884438542L, -6569267914106989901L}).toString(), new ObfuscatedString(new long[]{2206528467212362692L, -1815735477077997651L, 3523936595897199385L}).toString(), false, 2, null);
    }

    public final void openUri(@NotNull Context context, @NotNull String uriString) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-3473415575947698262L, -3201227022903286003L}).toString());
        Intrinsics.checkNotNullParameter(uriString, new ObfuscatedString(new long[]{-5967478134015270479L, 5734760706237684539L, -1181004599796462463L}).toString());
        try {
            context.startActivity(new Intent(new ObfuscatedString(new long[]{-6629377719272216636L, 8997361665598306215L, -3298223002188453372L, 9215016511730572324L, -8979280587182012998L}).toString(), Uri.parse(uriString)));
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-6059617132937967964L, 9190256118152234702L, -6764083851790750843L}).toString();
            new ObfuscatedString(new long[]{-3280328969371489432L, 5049761485577381699L, -5931965277344710924L, -6868857107101971446L}).toString();
        }
    }

    public final int parseInt(@Nullable String str, int r2) {
        Integer intOrNull;
        if (str != null && (intOrNull = AbstractC1196x2c4a2948.toIntOrNull(str)) != null) {
            return intOrNull.intValue();
        }
        return r2;
    }

    @NotNull
    public final String readTextFromAssets(@Nullable Context context, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, new ObfuscatedString(new long[]{-3023544003264882379L, -4575116529903917675L}).toString());
        if (context == null) {
            return new ObfuscatedString(new long[]{-4028110848973424754L}).toString();
        }
        try {
            InputStream open = context.getAssets().open(fileName);
            try {
                Intrinsics.checkNotNull(open);
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open, Charsets.UTF_8), 8192);
                try {
                    String readText = TextStreamsKt.readText(bufferedReader);
                    CloseableKt.closeFinally(bufferedReader, null);
                    CloseableKt.closeFinally(open, null);
                    return readText;
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(open, th);
                    throw th2;
                }
            }
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-3389781718549593650L, -3349507855944096367L, 3415126582326112602L}).toString();
            return new ObfuscatedString(new long[]{1864099886394170297L}).toString();
        }
    }

    public final int receiverFlags() {
        if (Build.VERSION.SDK_INT >= 33) {
            return 2;
        }
        return 4;
    }

    public final void setClipboard(@NotNull Context context, @NotNull String content) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-2662637990799345827L, 147062385507014054L}).toString());
        Intrinsics.checkNotNullParameter(content, new ObfuscatedString(new long[]{-983401767640654250L, -8509286814783399491L}).toString());
        try {
            Object systemService = context.getSystemService(new ObfuscatedString(new long[]{-6863989129642998608L, -2671403780067486400L, -2018687169235488157L}).toString());
            Intrinsics.checkNotNull(systemService, new ObfuscatedString(new long[]{-3949347205669617395L, -2758160426660365223L, 5554177828637498219L, 2484258777786066848L, 8858871413495680390L, -8646810277318309396L, 1070072165035733379L, -2411859960577199947L, -394836347729341625L, 5762338786406999987L}).toString());
            ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(null, content));
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{6703885009242141573L, 8230359027406234610L, 2413891485016658188L}).toString();
            new ObfuscatedString(new long[]{-27639441173830829L, -4687683809440966540L, 4454758152337043309L, -3554450321874239911L, -6121737641908546159L}).toString();
        }
    }

    @Nullable
    public final String tryDecodeBase64(@Nullable String text) {
        if (text != null && text.length() != 0) {
            try {
                byte[] decode = Base64.decode(text, 2);
                Intrinsics.checkNotNullExpressionValue(decode, new ObfuscatedString(new long[]{4611548322218747791L, 7782451731405753512L, 2400925055201312515L}).toString());
                return new String(decode, Charsets.UTF_8);
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{-5704302420862799311L, -5844960823438567289L, -9160893258963212802L}).toString();
                new ObfuscatedString(new long[]{1409143425564102317L, 3116394539346435623L, 2444759575537015153L, 4671989585536457352L, -6331775473749851462L}).toString();
                try {
                    byte[] decode2 = Base64.decode(text, 10);
                    Intrinsics.checkNotNullExpressionValue(decode2, new ObfuscatedString(new long[]{-341432514482835751L, -3387805183901764792L, -5321530576851837103L}).toString());
                    return new String(decode2, Charsets.UTF_8);
                } catch (Exception unused2) {
                    new ObfuscatedString(new long[]{3909695656387510388L, -7167965168933869394L, 575989083721457231L}).toString();
                    new ObfuscatedString(new long[]{3355961736481363250L, -2312817708153065195L, -4387464898460312559L, 8547477956239695914L, -7345552581023789734L}).toString();
                }
            }
        }
        return null;
    }

    @NotNull
    public final String urlDecode(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, new ObfuscatedString(new long[]{-2761490641200187121L, 3797462279304930690L}).toString());
        try {
            String decode = URLDecoder.decode(url, Charsets.UTF_8.toString());
            Intrinsics.checkNotNull(decode);
            return decode;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-4754904039537388519L, 1972392483907922599L, -763790001016412842L}).toString();
            new ObfuscatedString(new long[]{-2571243640588701567L, 1084645545811607121L, -6796116375934163591L, -6056192461254944448L}).toString();
            return url;
        }
    }

    @NotNull
    public final String urlEncode(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, new ObfuscatedString(new long[]{-5387552405943452554L, 3651061971275618939L}).toString());
        try {
            String encode = URLEncoder.encode(url, Charsets.UTF_8.toString());
            Intrinsics.checkNotNullExpressionValue(encode, new ObfuscatedString(new long[]{2758984623053734426L, -810406959783646029L, 4717499056716656080L}).toString());
            return AbstractC1197x89633db9.replace$default(encode, new ObfuscatedString(new long[]{1993132467558417143L, 2764831685590642512L}).toString(), new ObfuscatedString(new long[]{4658941656998775951L, 5681902971214272125L}).toString(), false, 4, (Object) null);
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{7560813038467878747L, 3918324656109047577L, 2249564766153150548L}).toString();
            new ObfuscatedString(new long[]{-5864190533668020980L, -5483988460346909428L, -205278020970576581L, -6386049359767688415L}).toString();
            return url;
        }
    }

    @NotNull
    public final String userAssetPath(@Nullable Context context) {
        String absolutePath;
        if (context == null) {
            return new ObfuscatedString(new long[]{952041638290009145L}).toString();
        }
        try {
            File externalFilesDir = context.getExternalFilesDir(new ObfuscatedString(new long[]{8388190518372843122L, 7425411529961251601L}).toString());
            if (externalFilesDir == null || (absolutePath = externalFilesDir.getAbsolutePath()) == null) {
                absolutePath = context.getDir(new ObfuscatedString(new long[]{6987360445552097215L, -8578401423609141369L}).toString(), 0).getAbsolutePath();
            }
            Intrinsics.checkNotNull(absolutePath);
            return absolutePath;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-2293163921876474066L, 5262411092748302643L, 4448844726635782307L}).toString();
            new ObfuscatedString(new long[]{4823714172211963323L, 2992718618468185608L, -2654457797640493777L, 7503035630126311698L, 3236815370773066238L}).toString();
            return new ObfuscatedString(new long[]{8847438190416568469L}).toString();
        }
    }
}
