package com.v2ray.ang.handler;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatDelegate;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.Language;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.RoutingType;
import com.v2ray.ang.dto.RulesetItem;
import com.v2ray.ang.dto.V2rayConfig;
import com.v2ray.ang.dto.VpnInterfaceAddressConfig;
import com.v2ray.ang.util.JsonUtil;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC0586x968d4673;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\"\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0002J\u0016\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0016\u0010\u0012\u001a\u00020\u00052\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0018\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\u0018\u001a\u00020\u000fJ\u0016\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\fJ\u0016\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\fJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0011J\u0006\u0010 \u001a\u00020\fJ\u0006\u0010!\u001a\u00020\fJ\u0016\u0010\"\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010#\u001a\u00020$J\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00110&J\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00110&J\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00110&J\u0010\u0010)\u001a\u00020\u00112\b\b\u0002\u0010*\u001a\u00020\u000fJ\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020\u0005J\u0006\u0010.\u001a\u00020/¨\u00060"}, d2 = {"Lcom/v2ray/ang/handler/SettingsManager;", "", "<init>", "()V", "initRoutingRulesets", "", "context", "Landroid/content/Context;", "getPresetRoutingRulesets", "", "Lcom/v2ray/ang/dto/RulesetItem;", "index", "", "resetRoutingRulesetsFromPresets", "resetRoutingRulesets", "", "content", "", "resetRoutingRulesetsCommon", "rulesetList", "getRoutingRuleset", "saveRoutingRuleset", "ruleset", "removeRoutingRuleset", "routingRulesetsBypassLan", "swapRoutingRuleset", "fromPosition", "toPosition", "swapSubscriptions", "getServerViaRemarks", "Lcom/v2ray/ang/dto/ProfileItem;", "remarks", "getSocksPort", "getHttpPort", "initAssets", "assets", "Landroid/content/res/AssetManager;", "getDomesticDnsServers", "", "getRemoteDnsServers", "getVpnDnsServers", "getDelayTestUrl", "second", "getLocale", "Ljava/util/Locale;", "setNightMode", "getCurrentVpnInterfaceAddressConfig", "Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSettingsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsManager.kt\ncom/v2ray/ang/handler/SettingsManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,374:1\n1869#2,2:375\n774#2:377\n865#2,2:378\n1761#2,3:380\n774#2:383\n865#2,2:384\n1761#2,3:386\n774#2:392\n865#2,2:393\n1869#2,2:395\n774#2:397\n865#2,2:398\n774#2:400\n865#2,2:401\n774#2:403\n865#2,2:404\n3829#3:389\n4344#3,2:390\n*S KotlinDebug\n*F\n+ 1 SettingsManager.kt\ncom/v2ray/ang/handler/SettingsManager\n*L\n99#1:375,2\n175#1:377\n175#1:378,2\n175#1:380,3\n182#1:383\n182#1:384,2\n182#1:386,3\n261#1:392\n261#1:393,2\n262#1:395,2\n283#1:397\n283#1:398,2\n297#1:400\n297#1:401,2\n310#1:403\n310#1:404,2\n260#1:389\n260#1:390,2\n*E\n"})
/* loaded from: classes3.dex */
public final class SettingsManager {

    @NotNull
    public static final SettingsManager INSTANCE = new SettingsManager();

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Language.values().length];
            try {
                iArr[Language.AUTO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Language.ENGLISH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Language.CHINA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Language.TRADITIONAL_CHINESE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Language.VIETNAMESE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Language.RUSSIAN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Language.PERSIAN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Language.ARABIC.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[Language.BANGLA.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[Language.BAKHTIARI.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private SettingsManager() {
    }

    public static /* synthetic */ String getDelayTestUrl$default(SettingsManager settingsManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return settingsManager.getDelayTestUrl(z);
    }

    private final List<RulesetItem> getPresetRoutingRulesets(Context context, int index) {
        String readTextFromAssets = Utils.INSTANCE.readTextFromAssets(context, RoutingType.INSTANCE.fromIndex(index).getFileName());
        if (TextUtils.isEmpty(readTextFromAssets)) {
            return null;
        }
        return ArraysKt___ArraysKt.toMutableList((Object[]) JsonUtil.INSTANCE.fromJson(readTextFromAssets, RulesetItem[].class));
    }

    public static /* synthetic */ List getPresetRoutingRulesets$default(SettingsManager settingsManager, Context context, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return settingsManager.getPresetRoutingRulesets(context, i);
    }

    private final void resetRoutingRulesetsCommon(List<RulesetItem> rulesetList) {
        ArrayList arrayList = new ArrayList();
        List<RulesetItem> decodeRoutingRulesets = MmkvManager.INSTANCE.decodeRoutingRulesets();
        if (decodeRoutingRulesets != null) {
            for (RulesetItem rulesetItem : decodeRoutingRulesets) {
                if (Intrinsics.areEqual(rulesetItem.getLocked(), Boolean.TRUE)) {
                    arrayList.add(rulesetItem);
                }
            }
        }
        arrayList.addAll(rulesetList);
        MmkvManager.INSTANCE.encodeRoutingRulesets(arrayList);
    }

    @NotNull
    public final VpnInterfaceAddressConfig getCurrentVpnInterfaceAddressConfig() {
        Integer num;
        int i;
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-4605969418206660904L, 5713183375687510444L, -4468642761736647792L, 775738945224666812L, -3585510741600245961L, -2389633772387504876L}).toString(), new ObfuscatedString(new long[]{5932866470832827835L, -2010416901813835595L}).toString());
        if (decodeSettingsString != null) {
            num = Integer.valueOf(Integer.parseInt(decodeSettingsString));
        } else {
            num = null;
        }
        VpnInterfaceAddressConfig.Companion companion = VpnInterfaceAddressConfig.INSTANCE;
        if (num != null) {
            i = num.intValue();
        } else {
            i = 0;
        }
        return companion.getConfigByIndex(i);
    }

    @NotNull
    public final String getDelayTestUrl(boolean second) {
        if (second) {
            return new ObfuscatedString(new long[]{-2755384486941278033L, -7347906293560431681L, -5142795105185060468L, 2128605922390485770L, -6896911932870514373L, -3078817468900613496L}).toString();
        }
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-4121573150706340356L, -6878449754656754662L, -870639747532928939L, 5493586097428686833L}).toString());
        if (decodeSettingsString == null) {
            return new ObfuscatedString(new long[]{6345632023148046958L, -5196904273463410990L, 8182515352799589091L, -4573615993409764828L, -3954291728078739052L, -6050270312943792957L}).toString();
        }
        return decodeSettingsString;
    }

    @NotNull
    public final List<String> getDomesticDnsServers() {
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-1591883549351175715L, 9093409474568727725L, -6549732957970459784L, 1438887799564868557L}).toString());
        if (decodeSettingsString == null) {
            decodeSettingsString = new ObfuscatedString(new long[]{6310215536819528393L, -6716888671150189817L, 2443114323283501988L}).toString();
        }
        List split$default = StringsKt__StringsKt.split$default((CharSequence) decodeSettingsString, new String[]{new ObfuscatedString(new long[]{-1488899551681414367L, -3275703717637525627L}).toString()}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : split$default) {
            String str = (String) obj;
            Utils utils = Utils.INSTANCE;
            if (utils.isPureIpAddress(str) || utils.isCoreDNSAddress(str)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return AbstractC0586x968d4673.listOf(new ObfuscatedString(new long[]{-7961292283195448645L, 7914628728161169635L, 5119687711312321342L}).toString());
        }
        return arrayList;
    }

    public final int getHttpPort() {
        return getSocksPort() + (!Utils.INSTANCE.isXray() ? 1 : 0);
    }

    @NotNull
    public final Locale getLocale() {
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-7473933786136753349L, -6997632277171598547L, -5698336771592203167L}).toString());
        if (decodeSettingsString == null) {
            decodeSettingsString = Language.AUTO.getCode();
        }
        switch (WhenMappings.$EnumSwitchMapping$0[Language.INSTANCE.fromCode(decodeSettingsString).ordinal()]) {
            case 1:
                return Utils.INSTANCE.getSysLocale();
            case 2:
                Locale locale = Locale.ENGLISH;
                Intrinsics.checkNotNullExpressionValue(locale, new ObfuscatedString(new long[]{-4951538582963490558L, 6817783715250787203L}).toString());
                return locale;
            case 3:
                Locale locale2 = Locale.CHINA;
                Intrinsics.checkNotNullExpressionValue(locale2, new ObfuscatedString(new long[]{3641278709769330500L, -6207984076499328204L}).toString());
                return locale2;
            case 4:
                Locale locale3 = Locale.TRADITIONAL_CHINESE;
                Intrinsics.checkNotNullExpressionValue(locale3, new ObfuscatedString(new long[]{-2801952314277119039L, -4569077726282707022L, -6027614038832224416L, -7546646985732257626L}).toString());
                return locale3;
            case 5:
                return new Locale(new ObfuscatedString(new long[]{-547976031715752442L, 6369776370054479370L}).toString());
            case 6:
                return new Locale(new ObfuscatedString(new long[]{-7136874517459842440L, -8625516363803210318L}).toString());
            case 7:
                return new Locale(new ObfuscatedString(new long[]{-8172433197276101542L, -3872504751376631119L}).toString());
            case 8:
                return new Locale(new ObfuscatedString(new long[]{-1723908080512301504L, -7967647638107104705L}).toString());
            case 9:
                return new Locale(new ObfuscatedString(new long[]{1163959053845275653L, 3331470462829231895L}).toString());
            case 10:
                return new Locale(new ObfuscatedString(new long[]{2837733516747819309L, -6143893202759060855L}).toString(), new ObfuscatedString(new long[]{8740683802335857657L, 8166611246157092412L}).toString());
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @NotNull
    public final List<String> getRemoteDnsServers() {
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{5692370132629891449L, -6541291827035267901L, 4965188810549327999L}).toString());
        if (decodeSettingsString == null) {
            decodeSettingsString = new ObfuscatedString(new long[]{-7053784571398178121L, -6665420994616038198L}).toString();
        }
        List split$default = StringsKt__StringsKt.split$default((CharSequence) decodeSettingsString, new String[]{new ObfuscatedString(new long[]{-5973801398494992419L, -7723230344638387396L}).toString()}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : split$default) {
            String str = (String) obj;
            Utils utils = Utils.INSTANCE;
            if (utils.isPureIpAddress(str) || utils.isCoreDNSAddress(str)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return AbstractC0586x968d4673.listOf(new ObfuscatedString(new long[]{-6598877258965149665L, -965975427450886359L}).toString());
        }
        return arrayList;
    }

    @Nullable
    public final RulesetItem getRoutingRuleset(int index) {
        if (index < 0) {
            return null;
        }
        List<RulesetItem> decodeRoutingRulesets = MmkvManager.INSTANCE.decodeRoutingRulesets();
        List<RulesetItem> list = decodeRoutingRulesets;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return decodeRoutingRulesets.get(index);
    }

    @Nullable
    public final ProfileItem getServerViaRemarks(@Nullable String remarks) {
        if (remarks != null && remarks.length() != 0) {
            Iterator<String> it = MmkvManager.INSTANCE.decodeServerList().iterator();
            while (it.hasNext()) {
                ProfileItem decodeServerConfig = MmkvManager.INSTANCE.decodeServerConfig(it.next());
                if (decodeServerConfig != null && Intrinsics.areEqual(decodeServerConfig.getRemarks(), remarks)) {
                    return decodeServerConfig;
                }
            }
        }
        return null;
    }

    public final int getSocksPort() {
        return Utils.INSTANCE.parseInt(MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-461348220700646780L, 222869145845836308L, -2317849636434579930L}).toString()), Integer.parseInt(new ObfuscatedString(new long[]{4469243070487783488L, 2334401064237196400L}).toString()));
    }

    @NotNull
    public final List<String> getVpnDnsServers() {
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-2296611302279729299L, -118290194355758722L, -5684277874928378270L}).toString());
        if (decodeSettingsString == null) {
            decodeSettingsString = new ObfuscatedString(new long[]{1285706887545145590L, -8319249499517846020L}).toString();
        }
        List split$default = StringsKt__StringsKt.split$default((CharSequence) decodeSettingsString, new String[]{new ObfuscatedString(new long[]{121332016689172906L, 7154547773302445909L}).toString()}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : split$default) {
            if (Utils.INSTANCE.isPureIpAddress((String) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final void initAssets(@NotNull Context context, @NotNull AssetManager assets) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-7128086958844636157L, 4119873985094182442L}).toString());
        Intrinsics.checkNotNullParameter(assets, new ObfuscatedString(new long[]{8389502844902486669L, 8929339705961298966L}).toString());
        String userAssetPath = Utils.INSTANCE.userAssetPath(context);
        try {
            String[] strArr = {new ObfuscatedString(new long[]{3130197613987262725L, 6674203943003129089L, -2443672817567742454L}).toString(), new ObfuscatedString(new long[]{3739368207329347722L, 2591943060265285560L, -186929031454822499L}).toString()};
            String[] list = assets.list(new ObfuscatedString(new long[]{3197135419436212013L}).toString());
            if (list != null) {
                ArrayList arrayList = new ArrayList();
                for (String str : list) {
                    if (ArraysKt___ArraysKt.contains(strArr, str)) {
                        arrayList.add(str);
                    }
                }
                ArrayList<String> arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (!new File(userAssetPath, (String) obj).exists()) {
                        arrayList2.add(obj);
                    }
                }
                for (String str2 : arrayList2) {
                    File file = new File(userAssetPath, str2);
                    InputStream open = assets.open(str2);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            Intrinsics.checkNotNull(open);
                            ByteStreamsKt.copyTo$default(open, fileOutputStream, 0, 2, null);
                            CloseableKt.closeFinally(fileOutputStream, null);
                            CloseableKt.closeFinally(open, null);
                            new ObfuscatedString(new long[]{-8482378649414441409L, -7020861864744569657L, 9076757982638283246L}).toString();
                            file.getAbsolutePath();
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
                }
            }
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-7342314426121728924L, 4131444096241175059L, -77410599156101867L}).toString();
            new ObfuscatedString(new long[]{9150232225416367621L, 7699063692948998816L, -5356312025395494392L, 6249849272791291533L}).toString();
        }
    }

    public final void initRoutingRulesets(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{2263751965079894488L, 7814873417317586403L}).toString());
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        List<RulesetItem> decodeRoutingRulesets = mmkvManager.decodeRoutingRulesets();
        if (decodeRoutingRulesets == null || decodeRoutingRulesets.isEmpty()) {
            mmkvManager.encodeRoutingRulesets(getPresetRoutingRulesets$default(this, context, 0, 2, null));
        }
    }

    public final void removeRoutingRuleset(int index) {
        if (index < 0) {
            return;
        }
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        List<RulesetItem> decodeRoutingRulesets = mmkvManager.decodeRoutingRulesets();
        List<RulesetItem> list = decodeRoutingRulesets;
        if (list != null && !list.isEmpty()) {
            decodeRoutingRulesets.remove(index);
            mmkvManager.encodeRoutingRulesets(decodeRoutingRulesets);
        }
    }

    public final boolean resetRoutingRulesets(@Nullable String content) {
        if (content != null && content.length() != 0) {
            try {
                List<RulesetItem> mutableList = ArraysKt___ArraysKt.toMutableList((Object[]) JsonUtil.INSTANCE.fromJson(content, RulesetItem[].class));
                List<RulesetItem> list = mutableList;
                if (list != null && !list.isEmpty()) {
                    resetRoutingRulesetsCommon(mutableList);
                    return true;
                }
                return false;
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{7621609244042021322L, -7950487399578545072L, -2990292173754467032L}).toString();
                new ObfuscatedString(new long[]{7235178131150609904L, 5616997603806749867L, -3903391714468364773L, -5077864450635690149L, -2120841370811797436L}).toString();
            }
        }
        return false;
    }

    public final void resetRoutingRulesetsFromPresets(@NotNull Context context, int index) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-8567461323281262969L, -2103351540862168358L}).toString());
        List<RulesetItem> presetRoutingRulesets = getPresetRoutingRulesets(context, index);
        if (presetRoutingRulesets == null) {
            return;
        }
        resetRoutingRulesetsCommon(presetRoutingRulesets);
    }

    public final boolean routingRulesetsBypassLan() {
        String selectServer;
        MmkvManager mmkvManager;
        ProfileItem decodeServerConfig;
        Boolean bool;
        List<String> ip;
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{2523013602993159116L, 2390314051352224618L, 6866965854127768956L, -4434448135327887822L}).toString());
        if (decodeSettingsString == null) {
            decodeSettingsString = new ObfuscatedString(new long[]{-8924450441111766935L, 2195600622025135299L}).toString();
        }
        boolean z = true;
        if (Intrinsics.areEqual(decodeSettingsString, new ObfuscatedString(new long[]{-1216158253585609428L, 4779650319934784867L}).toString())) {
            return true;
        }
        if (Intrinsics.areEqual(decodeSettingsString, new ObfuscatedString(new long[]{-6004706800297496287L, -1601242226308574190L}).toString()) || (selectServer = MmkvManager.getSelectServer()) == null || (decodeServerConfig = (mmkvManager = MmkvManager.INSTANCE).decodeServerConfig(selectServer)) == null) {
            return false;
        }
        if (decodeServerConfig.getConfigType() == EConfigType.CUSTOM) {
            String decodeServerRaw = mmkvManager.decodeServerRaw(selectServer);
            if (decodeServerRaw == null) {
                return false;
            }
            ArrayList<V2rayConfig.RoutingBean.RulesBean> rules = ((V2rayConfig) JsonUtil.INSTANCE.fromJson(decodeServerRaw, V2rayConfig.class)).getRouting().getRules();
            ArrayList<V2rayConfig.RoutingBean.RulesBean> arrayList = new ArrayList();
            for (Object obj : rules) {
                if (Intrinsics.areEqual(((V2rayConfig.RoutingBean.RulesBean) obj).getOutboundTag(), new ObfuscatedString(new long[]{5163809423147441626L, 5207201531106711833L}).toString())) {
                    arrayList.add(obj);
                }
            }
            if (!arrayList.isEmpty()) {
                for (V2rayConfig.RoutingBean.RulesBean rulesBean : arrayList) {
                    ArrayList<String> domain = rulesBean.getDomain();
                    if (domain != null && domain.contains(new ObfuscatedString(new long[]{4005079234090407858L, -3375001351016948580L, 1802045131046576574L}).toString())) {
                        return true;
                    }
                    ArrayList<String> ip2 = rulesBean.getIp();
                    if (ip2 != null && ip2.contains(new ObfuscatedString(new long[]{8211522583918967543L, 5959495610146416177L, 5000956578014831383L}).toString())) {
                        return true;
                    }
                }
            }
            return false;
        }
        List<RulesetItem> decodeRoutingRulesets = mmkvManager.decodeRoutingRulesets();
        if (decodeRoutingRulesets != null) {
            ArrayList<RulesetItem> arrayList2 = new ArrayList();
            for (Object obj2 : decodeRoutingRulesets) {
                RulesetItem rulesetItem = (RulesetItem) obj2;
                if (rulesetItem.getEnabled() && Intrinsics.areEqual(rulesetItem.getOutboundTag(), new ObfuscatedString(new long[]{-1070436189096877887L, -2765822213257555985L}).toString())) {
                    arrayList2.add(obj2);
                }
            }
            if (!arrayList2.isEmpty()) {
                for (RulesetItem rulesetItem2 : arrayList2) {
                    List<String> domain2 = rulesetItem2.getDomain();
                    if ((domain2 != null && domain2.contains(new ObfuscatedString(new long[]{-5194177944729411924L, -6029939426112300900L, -3568674538830768560L}).toString())) || ((ip = rulesetItem2.getIp()) != null && ip.contains(new ObfuscatedString(new long[]{4365057486937218862L, 4861131266172096376L, -1936529979611088788L}).toString()))) {
                        break;
                    }
                }
            }
            z = false;
            bool = Boolean.valueOf(z);
        } else {
            bool = null;
        }
        return Intrinsics.areEqual(bool, Boolean.TRUE);
    }

    public final void saveRoutingRuleset(int index, @Nullable RulesetItem ruleset) {
        if (ruleset == null) {
            return;
        }
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        List<RulesetItem> decodeRoutingRulesets = mmkvManager.decodeRoutingRulesets();
        List<RulesetItem> list = decodeRoutingRulesets;
        if (list == null || list.isEmpty()) {
            decodeRoutingRulesets = new ArrayList<>();
        }
        if (index >= 0 && index < decodeRoutingRulesets.size()) {
            decodeRoutingRulesets.set(index, ruleset);
        } else {
            decodeRoutingRulesets.add(0, ruleset);
        }
        mmkvManager.encodeRoutingRulesets(decodeRoutingRulesets);
    }

    public final void setNightMode() {
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{8703347548554247267L, 1110454841647948730L, -689666341765907867L, -2709816255996590793L}).toString(), new ObfuscatedString(new long[]{1080533290325107740L, -5138083512493220302L}).toString());
        if (decodeSettingsString != null) {
            switch (decodeSettingsString.hashCode()) {
                case 48:
                    if (decodeSettingsString.equals(new ObfuscatedString(new long[]{4643225874790867881L, -6735873458062275980L}).toString())) {
                        AppCompatDelegate.setDefaultNightMode(-1);
                        return;
                    }
                    return;
                case 49:
                    if (decodeSettingsString.equals(new ObfuscatedString(new long[]{-846649304400425320L, 8907201820148217494L}).toString())) {
                        AppCompatDelegate.setDefaultNightMode(1);
                        return;
                    }
                    return;
                case 50:
                    if (decodeSettingsString.equals(new ObfuscatedString(new long[]{6538651992333561923L, -6869757957740527046L}).toString())) {
                        AppCompatDelegate.setDefaultNightMode(2);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public final void swapRoutingRuleset(int fromPosition, int toPosition) {
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        List<RulesetItem> decodeRoutingRulesets = mmkvManager.decodeRoutingRulesets();
        List<RulesetItem> list = decodeRoutingRulesets;
        if (list != null && !list.isEmpty()) {
            Collections.swap(decodeRoutingRulesets, fromPosition, toPosition);
            mmkvManager.encodeRoutingRulesets(decodeRoutingRulesets);
        }
    }

    public final void swapSubscriptions(int fromPosition, int toPosition) {
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        List<String> decodeSubsList = mmkvManager.decodeSubsList();
        List<String> list = decodeSubsList;
        if (list != null && !list.isEmpty()) {
            Collections.swap(decodeSubsList, fromPosition, toPosition);
            mmkvManager.encodeSubsList(decodeSubsList);
        }
    }
}
