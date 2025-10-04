package com.v2ray.ang.handler;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.view.PointerIconCompat;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.AppConfig;
import com.v2ray.ang.dto.ConfigResult;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.NetworkType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.RulesetItem;
import com.v2ray.ang.dto.SubscriptionItem;
import com.v2ray.ang.dto.V2rayConfig;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.fmt.HttpFmt;
import com.v2ray.ang.fmt.ShadowsocksFmt;
import com.v2ray.ang.fmt.SocksFmt;
import com.v2ray.ang.fmt.TrojanFmt;
import com.v2ray.ang.fmt.VlessFmt;
import com.v2ray.ang.fmt.VmessFmt;
import com.v2ray.ang.fmt.WireguardFmt;
import com.v2ray.ang.util.HttpUtil;
import com.v2ray.ang.util.JsonUtil;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0586x968d4673;
import defpackage.AbstractC0587xb7546d05;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.AbstractC0961xbc4021d9;
import defpackage.AbstractC0962xa4a1ff52;
import defpackage.AbstractC1197x89633db9;
import defpackage.C1140xd0502f52;
import defpackage.C1279x1f922ada;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005J\u001e\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\b\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u000eJ\u0016\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005J\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0013\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0014\u001a\u0004\u0018\u00010\f2\u0006\u0010\b\u001a\u00020\t2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u000eH\u0002J \u0010\u0016\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\f2\u0006\u0010\b\u001a\u00020\tH\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fH\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\fH\u0002J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fH\u0002J\u001a\u0010\u001e\u001a\u00020\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010\u001a\u001a\u00020\fH\u0002J \u0010!\u001a\u0012\u0012\u0004\u0012\u00020\u00050\"j\b\u0012\u0004\u0012\u00020\u0005`#2\u0006\u0010$\u001a\u00020\u0005H\u0002J\u0010\u0010%\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fH\u0002J\u0010\u0010&\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fH\u0002J\u001f\u0010'\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002¢\u0006\u0002\u0010(J\u001f\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002¢\u0006\u0002\u0010+J\u0018\u0010,\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\f2\u0006\u0010-\u001a\u00020\u0005H\u0002J\u0010\u0010.\u001a\u00020\u00192\u0006\u0010/\u001a\u000200H\u0002J\u0010\u00101\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\fH\u0002J\u0010\u00102\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\fH\u0002J\u0010\u00103\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\fH\u0002J\u0012\u00104\u001a\u0004\u0018\u0001002\u0006\u00105\u001a\u00020\u0012H\u0002J\u0010\u00106\u001a\u0004\u0018\u0001002\u0006\u00107\u001a\u000208J\u0018\u00109\u001a\u0004\u0018\u00010\u00052\u0006\u0010:\u001a\u00020;2\u0006\u00105\u001a\u00020\u0012J \u0010<\u001a\u00020\u001c2\u0006\u0010:\u001a\u00020;2\u0006\u00105\u001a\u00020\u00122\b\u0010=\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006>²\u0006\n\u0010?\u001a\u00020\u0005X\u008a\u0084\u0002"}, d2 = {"Lcom/v2ray/ang/handler/V2rayConfigManager;", "", "<init>", "()V", "initConfigCache", "", "getV2rayConfig", "Lcom/v2ray/ang/dto/ConfigResult;", "context", "Landroid/content/Context;", "guid", "genV2rayConfig", "Lcom/v2ray/ang/dto/V2rayConfig;", "guidList", "", "getV2rayConfig4Speedtest", "getV2rayCustomConfig", "config", "Lcom/v2ray/ang/dto/ProfileItem;", "getV2rayNormalConfig", "genV2rayMultipleConfig", "configList", "getV2rayNormalConfig4Speedtest", "initV2rayConfig", "getInbounds", "", "v2rayConfig", "getFakeDns", "", "getRouting", "getRoutingUserRule", "item", "Lcom/v2ray/ang/dto/RulesetItem;", "getUserRule2Domain", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "tag", "getCustomLocalDns", "getDns", "getOutbounds", "(Lcom/v2ray/ang/dto/V2rayConfig;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/Boolean;", "getPlusOutbounds", "", "(Lcom/v2ray/ang/dto/V2rayConfig;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/Integer;", "getMoreOutbounds", "subscriptionId", "updateOutboundWithGlobalSettings", "outbound", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;", "getBalance", "updateOutboundFragment", "resolveOutboundDomainsToHosts", "convertProfile2Outbound", "profileItem", "createInitOutbound", "configType", "Lcom/v2ray/ang/dto/EConfigType;", "populateTransportSettings", "streamSettings", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;", "populateTlsSettings", "sniExt", "com.fbd.tunnel-404_release", "requestString"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nV2rayConfigManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 V2rayConfigManager.kt\ncom/v2ray/ang/handler/V2rayConfigManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1243:1\n1617#2,9:1244\n1869#2:1253\n1870#2:1255\n1626#2:1256\n1563#2:1257\n1634#2,3:1258\n1869#2,2:1261\n1869#2,2:1263\n1869#2,2:1265\n1869#2:1267\n1869#2,2:1268\n1870#2:1270\n2746#2,3:1271\n2746#2,3:1274\n1869#2,2:1277\n1563#2:1279\n1634#2,3:1280\n774#2:1283\n865#2,2:1284\n774#2:1286\n865#2,2:1287\n1193#2,2:1289\n1267#2,2:1291\n1270#2:1294\n1869#2,2:1295\n1563#2:1297\n1634#2,3:1298\n774#2:1301\n865#2,2:1302\n1563#2:1304\n1634#2,3:1305\n774#2:1308\n865#2,2:1309\n1563#2:1311\n1634#2,3:1312\n774#2:1315\n865#2,2:1316\n1563#2:1318\n1634#2,3:1319\n774#2:1322\n865#2,2:1323\n1#3:1254\n1#3:1293\n*S KotlinDebug\n*F\n+ 1 V2rayConfigManager.kt\ncom/v2ray/ang/handler/V2rayConfigManager\n*L\n68#1:1244,9\n68#1:1253\n68#1:1255\n68#1:1256\n192#1:1257\n192#1:1258,3\n278#1:1261,2\n326#1:1263,2\n391#1:1265,2\n434#1:1267\n436#1:1268,2\n434#1:1270\n475#1:1271,3\n499#1:1274,3\n542#1:1277,2\n584#1:1279\n584#1:1280,3\n605#1:1283\n605#1:1284,2\n606#1:1286\n606#1:1287,2\n607#1:1289,2\n607#1:1291,2\n607#1:1294\n849#1:1295,2\n1109#1:1297\n1109#1:1298,3\n1109#1:1301\n1109#1:1302,2\n1110#1:1304\n1110#1:1305,3\n1110#1:1308\n1110#1:1309,2\n1166#1:1311\n1166#1:1312,3\n1166#1:1315\n1166#1:1316,2\n1227#1:1318\n1227#1:1319,3\n1227#1:1322\n1227#1:1323,2\n68#1:1254\n*E\n"})
/* loaded from: classes3.dex */
public final class V2rayConfigManager {

    @NotNull
    public static final V2rayConfigManager INSTANCE = new V2rayConfigManager();

    @Nullable
    private static String initConfigCache;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EConfigType.values().length];
            try {
                iArr[EConfigType.VMESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EConfigType.CUSTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EConfigType.SHADOWSOCKS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EConfigType.SOCKS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EConfigType.VLESS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[EConfigType.TROJAN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[EConfigType.WIREGUARD.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[EConfigType.HYSTERIA2.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[EConfigType.HTTP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private V2rayConfigManager() {
    }

    private final V2rayConfig.OutboundBean convertProfile2Outbound(ProfileItem profileItem) {
        switch (WhenMappings.$EnumSwitchMapping$0[profileItem.getConfigType().ordinal()]) {
            case 1:
                return VmessFmt.INSTANCE.toOutbound(profileItem);
            case 2:
            case 8:
                return null;
            case 3:
                return ShadowsocksFmt.INSTANCE.toOutbound(profileItem);
            case 4:
                return SocksFmt.INSTANCE.toOutbound(profileItem);
            case 5:
                return VlessFmt.INSTANCE.toOutbound(profileItem);
            case 6:
                return TrojanFmt.INSTANCE.toOutbound(profileItem);
            case 7:
                return WireguardFmt.INSTANCE.toOutbound(profileItem);
            case 9:
                return HttpFmt.INSTANCE.toOutbound(profileItem);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final V2rayConfig genV2rayMultipleConfig(Context context, List<ProfileItem> configList) {
        String string;
        String obfuscatedString;
        int i = 0;
        List<ProfileItem> list = configList;
        List list2 = SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.filter(CollectionsKt___CollectionsKt.asSequence(list), new C1279x1f922ada(0)), new C1279x1f922ada(1)), new C1279x1f922ada(2)), new C1279x1f922ada(3)), new C1279x1f922ada(4)));
        if (list2.isEmpty()) {
            new ObfuscatedString(new long[]{5728815330040759293L, 8447010497058944850L, -7468190116732160004L}).toString();
            new ObfuscatedString(new long[]{5127783603202716359L, -5301698355299156628L, 8514083890882561516L, -5754252316402072184L}).toString();
            return null;
        }
        V2rayConfig initV2rayConfig = initV2rayConfig(context);
        if (initV2rayConfig == null) {
            return null;
        }
        V2rayConfig.LogBean log = initV2rayConfig.getLog();
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-3813099017921866009L, -7132573830614168585L, -1343340205969172942L, -8331540751079730266L}).toString());
        if (decodeSettingsString == null) {
            decodeSettingsString = new ObfuscatedString(new long[]{1678103671730127956L, -223269589665325431L}).toString();
        }
        log.setLoglevel(decodeSettingsString);
        ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ProfileItem) it.next()).getSubscriptionId());
        }
        HashSet hashSet = CollectionsKt___CollectionsKt.toHashSet(arrayList);
        if (hashSet.size() == 1 && ((CharSequence) CollectionsKt___CollectionsKt.first(hashSet)).length() > 0) {
            SubscriptionItem decodeSubscription = MmkvManager.INSTANCE.decodeSubscription((String) CollectionsKt___CollectionsKt.first(hashSet));
            if (decodeSubscription == null || (obfuscatedString = decodeSubscription.getRemarks()) == null) {
                obfuscatedString = new ObfuscatedString(new long[]{-4065704700029660806L}).toString();
            }
            string = AbstractC0362x4440ab85.m2931x34271fae(obfuscatedString, context.getString(R.string.intelligent_selection));
        } else {
            string = context.getString(R.string.intelligent_selection);
            Intrinsics.checkNotNull(string);
        }
        initV2rayConfig.setRemarks(string);
        getInbounds(initV2rayConfig);
        initV2rayConfig.getOutbounds().remove(0);
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            i++;
            V2rayConfig.OutboundBean convertProfile2Outbound = convertProfile2Outbound((ProfileItem) it2.next());
            if (convertProfile2Outbound != null && updateOutboundWithGlobalSettings(convertProfile2Outbound)) {
                convertProfile2Outbound.setTag("proxy-" + i);
                arrayList2.add(convertProfile2Outbound);
            }
        }
        arrayList2.addAll(initV2rayConfig.getOutbounds());
        initV2rayConfig.setOutbounds(new ArrayList<>(arrayList2));
        getRouting(initV2rayConfig);
        getFakeDns(initV2rayConfig);
        getDns(initV2rayConfig);
        getBalance(initV2rayConfig);
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        if (mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{-3019743991303044286L, -6496802005143620330L, -3803857134428137102L, 8013086628449904008L}).toString())) {
            getCustomLocalDns(initV2rayConfig);
        }
        if (!mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{-5592155856163137386L, 6100887449494711489L, 1696131987890636223L, 3885691874955749443L}).toString())) {
            initV2rayConfig.setStats(null);
            initV2rayConfig.setPolicy(null);
        }
        if (Intrinsics.areEqual(MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-6232216684272625821L, -7169632191583774126L, 7617363148480282216L, 454653083114347462L, 7014357405919897419L, 4151674771175004329L}).toString(), new ObfuscatedString(new long[]{2743760862088430059L, -7190121635815798260L}).toString()), new ObfuscatedString(new long[]{-4705070871409185140L, -6849417834531196086L}).toString())) {
            resolveOutboundDomainsToHosts(initV2rayConfig);
        }
        return initV2rayConfig;
    }

    public static final boolean genV2rayMultipleConfig$lambda$1(ProfileItem profileItem) {
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{2998065264337100417L, -4744371944831944400L}).toString());
        return _ExtKt.isNotNullEmpty(profileItem.getServer());
    }

    public static final boolean genV2rayMultipleConfig$lambda$2(ProfileItem profileItem) {
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{-790060287458451292L, -7314969005979647277L}).toString());
        Utils utils = Utils.INSTANCE;
        String server = profileItem.getServer();
        Intrinsics.checkNotNull(server);
        if (utils.isPureIpAddress(server)) {
            String server2 = profileItem.getServer();
            Intrinsics.checkNotNull(server2);
            if (!utils.isValidUrl(server2)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean genV2rayMultipleConfig$lambda$3(ProfileItem profileItem) {
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{3200689178590748438L, 8415582756484534241L}).toString());
        if (profileItem.getConfigType() != EConfigType.CUSTOM) {
            return true;
        }
        return false;
    }

    public static final boolean genV2rayMultipleConfig$lambda$4(ProfileItem profileItem) {
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{-2212155579685025746L, -9078656135379567707L}).toString());
        if (profileItem.getConfigType() != EConfigType.HYSTERIA2) {
            return true;
        }
        return false;
    }

    public static final boolean genV2rayMultipleConfig$lambda$5(ProfileItem profileItem) {
        String str;
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{5740096639806890995L, -8088583948607079263L}).toString());
        if (profileItem.getSubscriptionId().length() == 0) {
            return true;
        }
        SubscriptionItem decodeSubscription = MmkvManager.INSTANCE.decodeSubscription(profileItem.getSubscriptionId());
        String str2 = null;
        if (decodeSubscription != null) {
            str = decodeSubscription.getIntelligentSelectionFilter();
        } else {
            str = null;
        }
        if (str == null || str.length() == 0 || profileItem.getRemarks().length() == 0) {
            return true;
        }
        if (decodeSubscription != null) {
            str2 = decodeSubscription.getIntelligentSelectionFilter();
        }
        Intrinsics.checkNotNull(str2);
        return new Regex(str2).containsMatchIn(profileItem.getRemarks());
    }

    private final void getBalance(V2rayConfig v2rayConfig) {
        try {
            for (V2rayConfig.RoutingBean.RulesBean rulesBean : v2rayConfig.getRouting().getRules()) {
                if (Intrinsics.areEqual(rulesBean.getOutboundTag(), new ObfuscatedString(new long[]{-1325475581416280201L, -4092774786691785161L}).toString())) {
                    rulesBean.setOutboundTag(null);
                    rulesBean.setBalancerTag(new ObfuscatedString(new long[]{-239291441768135336L, 7740659477124665768L, 8787603919546489151L}).toString());
                }
            }
            if (Intrinsics.areEqual(MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-5157152780078317863L, 7899332969855889562L, -2576824514476060371L, 9164637482882644026L, -8164419760588609482L, -1813780826113889471L}).toString(), new ObfuscatedString(new long[]{7811931925304111590L, 8460412295880257462L}).toString()), new ObfuscatedString(new long[]{-5900809522350275968L, 3454289988224474979L}).toString())) {
                v2rayConfig.getRouting().setBalancers(AbstractC0586x968d4673.listOf(new V2rayConfig.RoutingBean.BalancerBean(new ObfuscatedString(new long[]{-6143010812097095909L, 7874289240919365408L, 1393085050290102281L}).toString(), AbstractC0586x968d4673.listOf(new ObfuscatedString(new long[]{-1385661671133289210L, -2701832048574598466L}).toString()), null, new V2rayConfig.RoutingBean.StrategyObject(new ObfuscatedString(new long[]{-749542454668183892L, 5137117283072422099L, 1583328740537715737L}).toString(), null, 2, null), 4, null)));
                List listOf = AbstractC0586x968d4673.listOf(new ObfuscatedString(new long[]{3748577931169757851L, 1240575312516023588L}).toString());
                String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-1640667686602912832L, 8803972310154413243L, 6910532826467494716L, -6721464787416655286L}).toString());
                if (decodeSettingsString == null) {
                    decodeSettingsString = new ObfuscatedString(new long[]{-8013791476161065634L, -6568737336917453632L, -6710414274139691485L, 4538886830104246528L, -7420461436342405950L, 1032949740008185893L}).toString();
                }
                v2rayConfig.setObservatory(new V2rayConfig.ObservatoryObject(listOf, decodeSettingsString, new ObfuscatedString(new long[]{577331906611173986L, -9212092024122935102L}).toString(), true));
                return;
            }
            v2rayConfig.getRouting().setBalancers(AbstractC0586x968d4673.listOf(new V2rayConfig.RoutingBean.BalancerBean(new ObfuscatedString(new long[]{-8727302944105502972L, 8681695036946188782L, -8115115618428097443L}).toString(), AbstractC0586x968d4673.listOf(new ObfuscatedString(new long[]{3013124416681648021L, 7429356896251915468L}).toString()), null, new V2rayConfig.RoutingBean.StrategyObject(new ObfuscatedString(new long[]{-8989547675858832487L, 5624580524329882776L, -1386379238147267735L}).toString(), null, 2, null), 4, null)));
            List listOf2 = AbstractC0586x968d4673.listOf(new ObfuscatedString(new long[]{-1191776163510901221L, 21306623606590015L}).toString());
            String decodeSettingsString2 = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-943190627071007014L, 9012568823985837201L, 2749168535985398268L, -1685386352730935530L}).toString());
            if (decodeSettingsString2 == null) {
                decodeSettingsString2 = new ObfuscatedString(new long[]{-3523109586875528037L, -1671036421838957021L, 6028044823075358521L, 1858058144857975496L, -8719411874158550164L, -2354570027934784493L}).toString();
            }
            v2rayConfig.setBurstObservatory(new V2rayConfig.BurstObservatoryObject(listOf2, new V2rayConfig.BurstObservatoryObject.PingConfigObject(decodeSettingsString2, null, new ObfuscatedString(new long[]{3747734066985434331L, -462786725865097161L}).toString(), 2, new ObfuscatedString(new long[]{-5707749365873578866L, -1488241524180897292L}).toString(), 2, null)));
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{5226772337664030609L, 7045536529024895429L, -5254706516649810552L}).toString();
            new ObfuscatedString(new long[]{1204602858218647309L, 6612446690991895075L, 6610804927020487145L, -1603694853345369007L, -850184752361489894L}).toString();
        }
    }

    private final boolean getCustomLocalDns(V2rayConfig v2rayConfig) {
        String obfuscatedString;
        ArrayList<Object> servers;
        try {
            if (MmkvManager.INSTANCE.decodeSettingsBool(new ObfuscatedString(new long[]{4139390005935328560L, -6459889712704108392L, 7661737313698844463L, 3889894670198451334L}).toString())) {
                ArrayList arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ObfuscatedString(new long[]{-3769654617164638829L, -8268592812784968327L, 3283993152354103747L}).toString());
                ArrayList<String> userRule2Domain = getUserRule2Domain(new ObfuscatedString(new long[]{-1398470068424073613L, 2637291116359085241L}).toString());
                ArrayList<String> userRule2Domain2 = getUserRule2Domain(new ObfuscatedString(new long[]{-467094897910727299L, 1533396789829544816L}).toString());
                V2rayConfig.DnsBean dns = v2rayConfig.getDns();
                if (dns != null && (servers = dns.getServers()) != null) {
                    servers.add(0, new V2rayConfig.DnsBean.ServersBean(new ObfuscatedString(new long[]{-3194388179243497270L, -8955608559374813196L}).toString(), null, CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus((Collection) arrayListOf, (Iterable) userRule2Domain), (Iterable) userRule2Domain2), null, null, null, 58, null));
                }
            }
            List<String> remoteDnsServers = SettingsManager.INSTANCE.getRemoteDnsServers();
            ArrayList<V2rayConfig.InboundBean> inbounds = v2rayConfig.getInbounds();
            if (!(inbounds instanceof Collection) || !inbounds.isEmpty()) {
                for (V2rayConfig.InboundBean inboundBean : inbounds) {
                    if (Intrinsics.areEqual(inboundBean.getProtocol(), new ObfuscatedString(new long[]{-5621835018938270067L, -153954586726375036L, -4197721049079000518L}).toString()) && Intrinsics.areEqual(inboundBean.getTag(), new ObfuscatedString(new long[]{928257952393222854L, -4656313384933771499L}).toString())) {
                        break;
                    }
                }
            }
            Utils utils = Utils.INSTANCE;
            if (utils.isPureIpAddress((String) CollectionsKt___CollectionsKt.first((List) remoteDnsServers))) {
                obfuscatedString = (String) CollectionsKt___CollectionsKt.first((List) remoteDnsServers);
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{2522299522123032009L, -3548569919357068601L}).toString();
            }
            v2rayConfig.getInbounds().add(new V2rayConfig.InboundBean(new ObfuscatedString(new long[]{7585937366009772232L, 6966365549168345043L}).toString(), utils.parseInt(MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-1057455203583231469L, 7782468406499230399L, -250689462497519028L, 4545597200340760359L}).toString()), Integer.parseInt(new ObfuscatedString(new long[]{-1508231608798971488L, 4730479129183281327L}).toString())), new ObfuscatedString(new long[]{-244392432325366615L, -9099973337152717008L, -544381585729816530L}).toString(), new ObfuscatedString(new long[]{869971464384042811L, 6613286635092310748L, -4104903038936028688L}).toString(), new V2rayConfig.InboundBean.InSettingsBean(null, null, null, obfuscatedString, 53, new ObfuscatedString(new long[]{5368329229582655096L, 4766457857741776483L}).toString(), 7, null), null, null, null, 192, null));
            ArrayList<V2rayConfig.OutboundBean> outbounds = v2rayConfig.getOutbounds();
            if (!(outbounds instanceof Collection) || !outbounds.isEmpty()) {
                for (V2rayConfig.OutboundBean outboundBean : outbounds) {
                    if (Intrinsics.areEqual(outboundBean.getProtocol(), new ObfuscatedString(new long[]{-8178525171368170275L, 5500857135348408075L}).toString()) && Intrinsics.areEqual(outboundBean.getTag(), new ObfuscatedString(new long[]{-1061336723959873737L, 4733855460524226509L}).toString())) {
                        break;
                    }
                }
            }
            v2rayConfig.getOutbounds().add(new V2rayConfig.OutboundBean(new ObfuscatedString(new long[]{8763684536429126198L, -4526967457623170614L}).toString(), new ObfuscatedString(new long[]{-6655299424780129055L, 5294930024461125110L}).toString(), null, null, null, null, null, 48, null));
            v2rayConfig.getRouting().getRules().add(0, new V2rayConfig.RoutingBean.RulesBean(null, null, null, new ObfuscatedString(new long[]{9117879664528660421L, 5575019623864680862L}).toString(), null, null, null, null, null, null, CollectionsKt__CollectionsKt.arrayListOf(new ObfuscatedString(new long[]{-4521581831156745034L, 3101567202975077169L}).toString()), null, null, null, 15347, null));
            return true;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-7102592064652652158L, -1496388510453805835L, 4219999970880852868L}).toString();
            new ObfuscatedString(new long[]{-5870862124601401894L, -652641901775542823L, 3937098162842138476L, 8486457385606048344L, -1250103797604410111L, 894320009402041875L}).toString();
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean getDns(V2rayConfig v2rayConfig) {
        List split$default;
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            ArrayList arrayList = new ArrayList();
            List<String> remoteDnsServers = SettingsManager.INSTANCE.getRemoteDnsServers();
            ArrayList<String> userRule2Domain = getUserRule2Domain(new ObfuscatedString(new long[]{-1050660264543924863L, 2202113353550005824L}).toString());
            Iterator<T> it = remoteDnsServers.iterator();
            while (it.hasNext()) {
                arrayList.add((String) it.next());
            }
            if (!userRule2Domain.isEmpty()) {
                arrayList.add(new V2rayConfig.DnsBean.ServersBean((String) CollectionsKt___CollectionsKt.first((List) remoteDnsServers), null, userRule2Domain, null, null, null, 58, null));
            }
            List<String> domesticDnsServers = SettingsManager.INSTANCE.getDomesticDnsServers();
            ArrayList<String> userRule2Domain2 = getUserRule2Domain(new ObfuscatedString(new long[]{-7851395435773159218L, -7423604969363059186L}).toString());
            boolean contains = userRule2Domain2.contains(new ObfuscatedString(new long[]{-972667527809571227L, -1464190556626066321L, -5635553803947217243L}).toString());
            ArrayList arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ObfuscatedString(new long[]{-3611425858014315086L, -7124654733630019790L}).toString());
            LinkedHashMap linkedHashMap2 = null;
            if (!userRule2Domain2.isEmpty()) {
                arrayList.add(new V2rayConfig.DnsBean.ServersBean((String) CollectionsKt___CollectionsKt.first((List) domesticDnsServers), null, userRule2Domain2, contains ? arrayListOf : null, null, Boolean.TRUE, 18, null));
            }
            if (Utils.INSTANCE.isPureIpAddress((String) CollectionsKt___CollectionsKt.first((List) domesticDnsServers))) {
                v2rayConfig.getRouting().getRules().add(0, new V2rayConfig.RoutingBean.RulesBean(null, CollectionsKt__CollectionsKt.arrayListOf(CollectionsKt___CollectionsKt.first((List) domesticDnsServers)), null, new ObfuscatedString(new long[]{4811819279542721290L, 1636686682412682568L}).toString(), null, new ObfuscatedString(new long[]{6144445451928013652L, 8278913920619848795L}).toString(), null, null, null, null, null, null, null, null, 16337, null));
            }
            ArrayList<String> userRule2Domain3 = getUserRule2Domain(new ObfuscatedString(new long[]{-1230372594802570017L, -7731028025542756670L}).toString());
            if (!userRule2Domain3.isEmpty()) {
                ArrayList arrayList2 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(userRule2Domain3, 10));
                Iterator<T> it2 = userRule2Domain3.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(TuplesKt.to((String) it2.next(), new ObfuscatedString(new long[]{5997388347680651215L, -2140330073970107978L, 553318915619618622L}).toString()));
                }
                AbstractC0962xa4a1ff52.putAll(linkedHashMap, arrayList2);
            }
            linkedHashMap.put(new ObfuscatedString(new long[]{-7342618999574690530L, -1122310688796222346L, 2550506701258863843L, -1263078974481078474L}).toString(), new ObfuscatedString(new long[]{4226056078879919129L, -7549200221934659123L, 5507279218396064077L}).toString());
            String obfuscatedString = new ObfuscatedString(new long[]{-518528011808023712L, -1372909949766222312L, 4927717955345372729L}).toString();
            AppConfig appConfig = AppConfig.INSTANCE;
            linkedHashMap.put(obfuscatedString, appConfig.getDNS_ALIDNS_ADDRESSES());
            linkedHashMap.put(new ObfuscatedString(new long[]{-7283379218628313605L, 8162028537904304800L, 6798060226551445374L}).toString(), appConfig.getDNS_CLOUDFLARE_ONE_ADDRESSES());
            linkedHashMap.put(new ObfuscatedString(new long[]{7562190160551386751L, -8928242946976423435L, 6321190949597364833L, 5194394753204973659L}).toString(), appConfig.getDNS_CLOUDFLARE_DNS_COM_ADDRESSES());
            linkedHashMap.put(new ObfuscatedString(new long[]{7510928243001224639L, -4847987459874918551L, -853936581541938420L, -1939804603173774550L}).toString(), appConfig.getDNS_CLOUDFLARE_DNS_ADDRESSES());
            linkedHashMap.put(new ObfuscatedString(new long[]{-6749196839504529864L, -2174908072116409794L}).toString(), appConfig.getDNS_DNSPOD_ADDRESSES());
            linkedHashMap.put(new ObfuscatedString(new long[]{-6724320952813026756L, 6723273286118081675L, -7341329684252163625L}).toString(), appConfig.getDNS_GOOGLE_ADDRESSES());
            linkedHashMap.put(new ObfuscatedString(new long[]{7288712404828761728L, 8481864771751573414L, -7841310951377786250L}).toString(), appConfig.getDNS_QUAD9_ADDRESSES());
            linkedHashMap.put(new ObfuscatedString(new long[]{3354042864315636322L, -2574972040958587249L, 8617804065730623066L, 3285856016058007353L, 6188003067916748586L}).toString(), appConfig.getDNS_YANDEX_ADDRESSES());
            try {
                String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{5105718318386194691L, -6331359151981789114L, -4967909548016757654L}).toString());
                if (_ExtKt.isNotNullEmpty(decodeSettingsString)) {
                    if (decodeSettingsString != null && (split$default = StringsKt__StringsKt.split$default((CharSequence) decodeSettingsString, new String[]{new ObfuscatedString(new long[]{6446374440540373849L, 3340281650807567720L}).toString()}, false, 0, 6, (Object) null)) != null) {
                        ArrayList arrayList3 = new ArrayList();
                        for (Object obj : split$default) {
                            if (((String) obj).length() > 0) {
                                arrayList3.add(obj);
                            }
                        }
                        ArrayList arrayList4 = new ArrayList();
                        for (Object obj2 : arrayList3) {
                            if (StringsKt__StringsKt.contains$default((CharSequence) obj2, (CharSequence) new ObfuscatedString(new long[]{6820708856649594510L, -1755622415356479774L}).toString(), false, 2, (Object) null)) {
                                arrayList4.add(obj2);
                            }
                        }
                        linkedHashMap2 = new LinkedHashMap(AbstractC0296x1378447b.coerceAtLeast(AbstractC0961xbc4021d9.mapCapacity(AbstractC0587xb7546d05.collectionSizeOrDefault(arrayList4, 10)), 16));
                        Iterator it3 = arrayList4.iterator();
                        while (it3.hasNext()) {
                            List split$default2 = StringsKt__StringsKt.split$default((CharSequence) it3.next(), new String[]{new ObfuscatedString(new long[]{1612885366962617017L, 5268104509549629191L}).toString()}, false, 0, 6, (Object) null);
                            Pair pair = TuplesKt.to((String) split$default2.get(0), (String) split$default2.get(1));
                            linkedHashMap2.put(pair.getFirst(), pair.getSecond());
                        }
                    }
                    if (linkedHashMap2 != null) {
                        linkedHashMap.putAll(linkedHashMap2);
                    }
                }
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{-1188324633753766659L, 459939198379224708L, -790890778430788401L}).toString();
                new ObfuscatedString(new long[]{7932254893904280473L, 2452563137080461025L, 8906509694403300719L, -261621503618288068L, 2801351991797646861L, 4781196564976092548L}).toString();
            }
            v2rayConfig.setDns(new V2rayConfig.DnsBean(arrayList, linkedHashMap, null, null, null, null, 60, null));
            if (Utils.INSTANCE.isPureIpAddress((String) CollectionsKt___CollectionsKt.first((List) remoteDnsServers))) {
                v2rayConfig.getRouting().getRules().add(0, new V2rayConfig.RoutingBean.RulesBean(null, CollectionsKt__CollectionsKt.arrayListOf(CollectionsKt___CollectionsKt.first((List) remoteDnsServers)), null, new ObfuscatedString(new long[]{-8231816378251267074L, 3094486308444642944L}).toString(), null, new ObfuscatedString(new long[]{-8900586828760958193L, 6484723864881102457L}).toString(), null, null, null, null, null, null, null, null, 16337, null));
            }
            return true;
        } catch (Exception unused2) {
            new ObfuscatedString(new long[]{1233777054851304880L, -17500547774138353L, -8311857688366372258L}).toString();
            new ObfuscatedString(new long[]{-5929998611936871355L, -6531763600023776239L, 5625946720936646335L, -4322124701510993058L}).toString();
            return false;
        }
    }

    private final void getFakeDns(V2rayConfig v2rayConfig) {
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        if (mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{-5652261043472730439L, -7988374719487783548L, -8247874962003936519L, -1662538804271025384L}).toString()) && mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{-6432858154803278495L, 2137344084989431291L, 8518510602411022291L, 8622989523705557918L}).toString())) {
            v2rayConfig.setFakedns(AbstractC0586x968d4673.listOf(new V2rayConfig.FakednsBean(null, 0, 3, null)));
        }
    }

    private final boolean getInbounds(V2rayConfig v2rayConfig) {
        boolean z;
        V2rayConfig.InboundBean.SniffingBean sniffing;
        ArrayList<String> destOverride;
        V2rayConfig.InboundBean.SniffingBean sniffing2;
        ArrayList<String> destOverride2;
        boolean z2;
        try {
            int socksPort = SettingsManager.INSTANCE.getSocksPort();
            for (V2rayConfig.InboundBean inboundBean : v2rayConfig.getInbounds()) {
                if (!MmkvManager.INSTANCE.decodeSettingsBool(new ObfuscatedString(new long[]{6071879524707586844L, -5362367169973554953L, -3119289777808822170L, 5167149163691151648L, 2086218236997022185L}).toString())) {
                    inboundBean.setListen(new ObfuscatedString(new long[]{6622755029420433741L, 7897886103350626472L, 3378432317808129686L}).toString());
                }
            }
            v2rayConfig.getInbounds().get(0).setPort(socksPort);
            MmkvManager mmkvManager = MmkvManager.INSTANCE;
            if (mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{-8063597130665290992L, 3098468558846334627L, -6741529513364553183L, 3901246542748522219L}).toString())) {
                z = true;
            } else {
                z = false;
            }
            boolean decodeSettingsBool = mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{-725879585818806827L, -4059927061001407002L, -544668627885142228L, 6116128460596072570L}).toString(), true);
            V2rayConfig.InboundBean.SniffingBean sniffing3 = v2rayConfig.getInbounds().get(0).getSniffing();
            if (sniffing3 != null) {
                if (!z && !decodeSettingsBool) {
                    z2 = false;
                    sniffing3.setEnabled(z2);
                }
                z2 = true;
                sniffing3.setEnabled(z2);
            }
            V2rayConfig.InboundBean.SniffingBean sniffing4 = v2rayConfig.getInbounds().get(0).getSniffing();
            if (sniffing4 != null) {
                sniffing4.setRouteOnly(Boolean.valueOf(mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{9126556776459583127L, 3279789135245529742L, 3146762248155674365L, -1559101796373805120L}).toString(), false)));
            }
            if (!decodeSettingsBool && (sniffing2 = v2rayConfig.getInbounds().get(0).getSniffing()) != null && (destOverride2 = sniffing2.getDestOverride()) != null) {
                destOverride2.clear();
            }
            if (z && (sniffing = v2rayConfig.getInbounds().get(0).getSniffing()) != null && (destOverride = sniffing.getDestOverride()) != null) {
                destOverride.add(new ObfuscatedString(new long[]{-4451748793789771959L, 3126684550507614249L}).toString());
            }
            if (Utils.INSTANCE.isXray()) {
                Intrinsics.checkNotNull(v2rayConfig.getInbounds().remove(1));
            } else {
                v2rayConfig.getInbounds().get(1).setPort(SettingsManager.INSTANCE.getHttpPort());
            }
            return true;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{7830276231261509184L, -258943114085186018L, -3034715449380714214L}).toString();
            new ObfuscatedString(new long[]{3738593234897024587L, -7728099694661250959L, -3085834913200918580L, 8394172009238662433L, 3264791431568828227L}).toString();
            return false;
        }
    }

    private final boolean getMoreOutbounds(V2rayConfig v2rayConfig, String subscriptionId) {
        V2rayConfig.OutboundBean convertProfile2Outbound;
        V2rayConfig.OutboundBean convertProfile2Outbound2;
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        if (mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{9137216338993981085L, 8976543923014243094L, -8149383986980296360L, 1619213789310375737L}).toString(), false) || subscriptionId.length() == 0) {
            return false;
        }
        try {
            SubscriptionItem decodeSubscription = mmkvManager.decodeSubscription(subscriptionId);
            if (decodeSubscription == null) {
                return false;
            }
            V2rayConfig.OutboundBean outboundBean = v2rayConfig.getOutbounds().get(0);
            Intrinsics.checkNotNullExpressionValue(outboundBean, new ObfuscatedString(new long[]{-7859495585665713381L, 6426684884570391119L}).toString());
            V2rayConfig.OutboundBean outboundBean2 = outboundBean;
            SettingsManager settingsManager = SettingsManager.INSTANCE;
            ProfileItem serverViaRemarks = settingsManager.getServerViaRemarks(decodeSubscription.getPrevProfile());
            if (serverViaRemarks != null && (convertProfile2Outbound2 = convertProfile2Outbound(serverViaRemarks)) != null) {
                updateOutboundWithGlobalSettings(convertProfile2Outbound2);
                convertProfile2Outbound2.setTag(new ObfuscatedString(new long[]{7325873054218953670L, -4273841474781619958L}).toString());
                v2rayConfig.getOutbounds().add(convertProfile2Outbound2);
                outboundBean2.ensureSockopt().setDialerProxy(convertProfile2Outbound2.getTag());
            }
            ProfileItem serverViaRemarks2 = settingsManager.getServerViaRemarks(decodeSubscription.getNextProfile());
            if (serverViaRemarks2 != null && (convertProfile2Outbound = convertProfile2Outbound(serverViaRemarks2)) != null) {
                updateOutboundWithGlobalSettings(convertProfile2Outbound);
                convertProfile2Outbound.setTag(new ObfuscatedString(new long[]{-2770368565883531614L, -3187963521208958202L}).toString());
                v2rayConfig.getOutbounds().add(0, convertProfile2Outbound);
                outboundBean2.setTag(new ObfuscatedString(new long[]{-6810070074392344261L, -4123892460631092933L}).toString());
                convertProfile2Outbound.ensureSockopt().setDialerProxy(outboundBean2.getTag());
            }
            return true;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{4199692921697938823L, -3597059197179351944L, 5502069079296710565L}).toString();
            new ObfuscatedString(new long[]{6074306314861896669L, 639570901610600916L, -7421703117776494007L, -5668410063688557087L, 962695302291355729L, -8747670175932232115L}).toString();
            return false;
        }
    }

    private final Boolean getOutbounds(V2rayConfig v2rayConfig, ProfileItem config2) {
        V2rayConfig.OutboundBean convertProfile2Outbound = convertProfile2Outbound(config2);
        if (convertProfile2Outbound == null || !updateOutboundWithGlobalSettings(convertProfile2Outbound)) {
            return null;
        }
        if (!v2rayConfig.getOutbounds().isEmpty()) {
            v2rayConfig.getOutbounds().set(0, convertProfile2Outbound);
        } else {
            v2rayConfig.getOutbounds().add(convertProfile2Outbound);
        }
        updateOutboundFragment(v2rayConfig);
        return Boolean.TRUE;
    }

    private final Integer getPlusOutbounds(V2rayConfig v2rayConfig, ProfileItem config2) {
        try {
            int findFreePort = Utils.INSTANCE.findFreePort(CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(SettingsManager.INSTANCE.getSocksPort() + 100), 0}));
            String lowerCase = new ObfuscatedString(new long[]{-3789626875339025760L, -719689756241428376L}).toString().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, new ObfuscatedString(new long[]{2870121322099512414L, -3872580303472844997L, 2977931862210964864L}).toString());
            V2rayConfig.OutboundBean outboundBean = new V2rayConfig.OutboundBean(null, lowerCase, new V2rayConfig.OutboundBean.OutSettingsBean(null, null, null, AbstractC0586x968d4673.listOf(new V2rayConfig.OutboundBean.OutSettingsBean.ServersBean(new ObfuscatedString(new long[]{719953390083103463L, -5487834047955601492L, 7682867712367039592L}).toString(), null, false, null, findFreePort, 0, null, null, null, null, PointerIconCompat.TYPE_CELL, null)), null, null, null, null, null, null, null, null, null, null, null, null, null, 131063, null), null, null, null, null, 57, null);
            if (!v2rayConfig.getOutbounds().isEmpty()) {
                v2rayConfig.getOutbounds().set(0, outboundBean);
            } else {
                v2rayConfig.getOutbounds().add(outboundBean);
            }
            return Integer.valueOf(findFreePort);
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-6329908772486219217L, 5791513340479892643L, -3215147447619701457L}).toString();
            new ObfuscatedString(new long[]{2809554883178050841L, -5975102015018075666L, 4139891891181174103L, -691174684932080826L, 692168796181235819L}).toString();
            return null;
        }
    }

    private final boolean getRouting(V2rayConfig v2rayConfig) {
        try {
            V2rayConfig.RoutingBean routing = v2rayConfig.getRouting();
            String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-7632789707784265389L, -8155473984595841689L, -1871097145473554977L, 2753714306061895029L, -4220807989398355445L}).toString());
            if (decodeSettingsString == null) {
                decodeSettingsString = new ObfuscatedString(new long[]{-4741886919381672801L, -4284382303015384740L}).toString();
            }
            routing.setDomainStrategy(decodeSettingsString);
            List<RulesetItem> decodeRoutingRulesets = MmkvManager.INSTANCE.decodeRoutingRulesets();
            if (decodeRoutingRulesets != null) {
                Iterator<T> it = decodeRoutingRulesets.iterator();
                while (it.hasNext()) {
                    INSTANCE.getRoutingUserRule((RulesetItem) it.next(), v2rayConfig);
                }
                return true;
            }
            return true;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{6370824427913315344L, 5839306380466912561L, 1730445489667648570L}).toString();
            new ObfuscatedString(new long[]{40197742355694738L, 5892547405726103146L, 6268976623670388577L, 659291487445486789L, 1344302062205434620L}).toString();
            return false;
        }
    }

    private final void getRoutingUserRule(RulesetItem item, V2rayConfig v2rayConfig) {
        if (item != null) {
            try {
                if (item.getEnabled()) {
                    JsonUtil jsonUtil = JsonUtil.INSTANCE;
                    V2rayConfig.RoutingBean.RulesBean rulesBean = (V2rayConfig.RoutingBean.RulesBean) jsonUtil.fromJson(jsonUtil.toJson(item), V2rayConfig.RoutingBean.RulesBean.class);
                    if (rulesBean == null) {
                        return;
                    }
                    v2rayConfig.getRouting().getRules().add(rulesBean);
                }
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{4596012363935450084L, -1875476614693147153L, -866982928317203798L}).toString();
                new ObfuscatedString(new long[]{-8956342661236432581L, 1526280536185532163L, -1728763496197052398L, -6891943268440323597L, 176933599703167154L, -522479860452365935L}).toString();
            }
        }
    }

    private final ArrayList<String> getUserRule2Domain(String tag) {
        List<String> domain;
        List<String> domain2;
        ArrayList<String> arrayList = new ArrayList<>();
        List<RulesetItem> decodeRoutingRulesets = MmkvManager.INSTANCE.decodeRoutingRulesets();
        if (decodeRoutingRulesets != null) {
            for (RulesetItem rulesetItem : decodeRoutingRulesets) {
                if (rulesetItem.getEnabled() && Intrinsics.areEqual(rulesetItem.getOutboundTag(), tag) && (domain = rulesetItem.getDomain()) != null && !domain.isEmpty() && (domain2 = rulesetItem.getDomain()) != null) {
                    for (String str : domain2) {
                        if (!Intrinsics.areEqual(str, new ObfuscatedString(new long[]{2801866674701643020L, 3311460467963295573L, 5799046870794043474L}).toString()) && (AbstractC1197x89633db9.startsWith$default(str, new ObfuscatedString(new long[]{7041316270796178541L, -2263794030519031415L}).toString(), false, 2, null) || AbstractC1197x89633db9.startsWith$default(str, new ObfuscatedString(new long[]{3467548785626356746L, -3900028308798609864L}).toString(), false, 2, null))) {
                            arrayList.add(str);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private final ConfigResult getV2rayCustomConfig(String guid, ProfileItem config2) {
        String decodeServerRaw = MmkvManager.INSTANCE.decodeServerRaw(guid);
        if (decodeServerRaw == null) {
            return new ConfigResult(false, null, null, null, 14, null);
        }
        return new ConfigResult(true, guid, decodeServerRaw, null, 8, null);
    }

    private final ConfigResult getV2rayNormalConfig(Context context, String guid, ProfileItem config2) {
        ConfigResult configResult = new ConfigResult(false, null, null, null, 14, null);
        String server = config2.getServer();
        if (server == null) {
            return configResult;
        }
        Utils utils = Utils.INSTANCE;
        if (!utils.isPureIpAddress(server) && !utils.isValidUrl(server)) {
            new ObfuscatedString(new long[]{-8184867014323022419L, -6589098031065224431L, -5879958284536520126L}).toString();
            return configResult;
        }
        V2rayConfig initV2rayConfig = initV2rayConfig(context);
        if (initV2rayConfig == null) {
            return configResult;
        }
        V2rayConfig.LogBean log = initV2rayConfig.getLog();
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-6409345302697222569L, -2400646843866494668L, -884642688171404906L, -7608913483476372522L}).toString());
        if (decodeSettingsString == null) {
            decodeSettingsString = new ObfuscatedString(new long[]{-3366750948357425342L, -5209177079778562326L}).toString();
        }
        log.setLoglevel(decodeSettingsString);
        initV2rayConfig.setRemarks(config2.getRemarks());
        getInbounds(initV2rayConfig);
        if (config2.getConfigType() == EConfigType.HYSTERIA2) {
            Integer plusOutbounds = getPlusOutbounds(initV2rayConfig, config2);
            if (plusOutbounds == null) {
                return configResult;
            }
            configResult.setSocksPort(plusOutbounds);
        } else {
            if (getOutbounds(initV2rayConfig, config2) != null) {
                getMoreOutbounds(initV2rayConfig, config2.getSubscriptionId());
            }
            return configResult;
        }
        getRouting(initV2rayConfig);
        getFakeDns(initV2rayConfig);
        getDns(initV2rayConfig);
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        if (mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{8756193938826402197L, 4324314836551300303L, 5372992594547780386L, -4829873713236462942L}).toString())) {
            getCustomLocalDns(initV2rayConfig);
        }
        if (!mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{-8894408015355637274L, -8286826939704773023L, 232864785781160293L, 2431392198009241919L}).toString())) {
            initV2rayConfig.setStats(null);
            initV2rayConfig.setPolicy(null);
        }
        if (Intrinsics.areEqual(MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-6579633189139424059L, -7910598532278984430L, 6692103060482592568L, 1513232980849754715L, -7963971017709958415L, 5630243543273110351L}).toString(), new ObfuscatedString(new long[]{-3012881914349653137L, -1200891874060058169L}).toString()), new ObfuscatedString(new long[]{4819715420850213155L, 146403847096390665L}).toString())) {
            resolveOutboundDomainsToHosts(initV2rayConfig);
        }
        configResult.setStatus(true);
        String jsonPretty = JsonUtil.INSTANCE.toJsonPretty(initV2rayConfig);
        if (jsonPretty == null) {
            jsonPretty = new ObfuscatedString(new long[]{7322244845106947849L}).toString();
        }
        configResult.setContent(jsonPretty);
        configResult.setGuid(guid);
        return configResult;
    }

    private final ConfigResult getV2rayNormalConfig4Speedtest(Context context, String guid, ProfileItem config2) {
        ConfigResult configResult = new ConfigResult(false, null, null, null, 14, null);
        String server = config2.getServer();
        if (server == null) {
            return configResult;
        }
        Utils utils = Utils.INSTANCE;
        if (!utils.isPureIpAddress(server) && !utils.isValidUrl(server)) {
            new ObfuscatedString(new long[]{-2775304543865519610L, -7992834847306964068L, 4172071347571046013L}).toString();
            return configResult;
        }
        V2rayConfig initV2rayConfig = initV2rayConfig(context);
        if (initV2rayConfig == null) {
            return configResult;
        }
        if (config2.getConfigType() == EConfigType.HYSTERIA2) {
            Integer plusOutbounds = getPlusOutbounds(initV2rayConfig, config2);
            if (plusOutbounds == null) {
                return configResult;
            }
            configResult.setSocksPort(plusOutbounds);
        } else {
            if (getOutbounds(initV2rayConfig, config2) != null) {
                getMoreOutbounds(initV2rayConfig, config2.getSubscriptionId());
            }
            return configResult;
        }
        V2rayConfig.LogBean log = initV2rayConfig.getLog();
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-8542140284872535456L, -6649028524268983982L, -7441406031242821110L, -5686949361211824313L}).toString());
        if (decodeSettingsString == null) {
            decodeSettingsString = new ObfuscatedString(new long[]{-4743422548487860123L, 1756727938088502260L}).toString();
        }
        log.setLoglevel(decodeSettingsString);
        initV2rayConfig.getInbounds().clear();
        initV2rayConfig.getRouting().getRules().clear();
        initV2rayConfig.setDns(null);
        initV2rayConfig.setFakedns(null);
        initV2rayConfig.setStats(null);
        initV2rayConfig.setPolicy(null);
        Iterator<T> it = initV2rayConfig.getOutbounds().iterator();
        while (it.hasNext()) {
            ((V2rayConfig.OutboundBean) it.next()).setMux(null);
        }
        configResult.setStatus(true);
        String jsonPretty = JsonUtil.INSTANCE.toJsonPretty(initV2rayConfig);
        if (jsonPretty == null) {
            jsonPretty = new ObfuscatedString(new long[]{6001417810379795131L}).toString();
        }
        configResult.setContent(jsonPretty);
        configResult.setGuid(guid);
        return configResult;
    }

    private final V2rayConfig initV2rayConfig(Context context) {
        String str = initConfigCache;
        if (str == null) {
            str = Utils.INSTANCE.readTextFromAssets(context, new ObfuscatedString(new long[]{-6091176166389075947L, -7857469383454718835L, 5264501986582836252L, -71459528739018661L}).toString());
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        initConfigCache = str;
        return (V2rayConfig) JsonUtil.INSTANCE.fromJson(str, V2rayConfig.class);
    }

    private final void resolveOutboundDomainsToHosts(V2rayConfig v2rayConfig) {
        Map<String, ? extends Object> linkedHashMap;
        boolean z;
        ObfuscatedString obfuscatedString;
        ObfuscatedString obfuscatedString2;
        List<V2rayConfig.OutboundBean> allProxyOutbound = v2rayConfig.getAllProxyOutbound();
        V2rayConfig.DnsBean dns = v2rayConfig.getDns();
        if (dns == null) {
            return;
        }
        Map<String, Object> hosts = dns.getHosts();
        if (hosts == null || (linkedHashMap = AbstractC0962xa4a1ff52.toMutableMap(hosts)) == null) {
            linkedHashMap = new LinkedHashMap<>();
        }
        if (MmkvManager.INSTANCE.decodeSettingsBool(new ObfuscatedString(new long[]{-5495432126726101757L, 77740985900100207L, 4436752787521981869L}).toString())) {
            z = true;
        } else {
            z = false;
        }
        for (V2rayConfig.OutboundBean outboundBean : allProxyOutbound) {
            String serverAddress = outboundBean.getServerAddress();
            if (serverAddress != null && serverAddress.length() != 0) {
                if (linkedHashMap.containsKey(serverAddress)) {
                    V2rayConfig.OutboundBean.StreamSettingsBean.SockoptBean ensureSockopt = outboundBean.ensureSockopt();
                    long[] jArr = {-6899421371970366751L, -7979546711056871498L, -5987225379551544555L};
                    if (z) {
                        // fill-array-data instruction
                        jArr[0] = 2383581274630031385L;
                        jArr[1] = 5691796690225022954L;
                        jArr[2] = 9093881147756194137L;
                        obfuscatedString = new ObfuscatedString(jArr);
                    } else {
                        obfuscatedString = new ObfuscatedString(jArr);
                    }
                    ensureSockopt.setDomainStrategy(obfuscatedString.toString());
                } else {
                    List<String> resolveHostToIP = HttpUtil.INSTANCE.resolveHostToIP(serverAddress, z);
                    List<String> list = resolveHostToIP;
                    if (list != null && !list.isEmpty()) {
                        V2rayConfig.OutboundBean.StreamSettingsBean.SockoptBean ensureSockopt2 = outboundBean.ensureSockopt();
                        long[] jArr2 = {-8981078018732828013L, 3205472647449358616L, -8557678346814324099L};
                        if (z) {
                            // fill-array-data instruction
                            jArr2[0] = 875935978018689161L;
                            jArr2[1] = 4290866158149256515L;
                            jArr2[2] = -3616202982658141704L;
                            obfuscatedString2 = new ObfuscatedString(jArr2);
                        } else {
                            obfuscatedString2 = new ObfuscatedString(jArr2);
                        }
                        ensureSockopt2.setDomainStrategy(obfuscatedString2.toString());
                        int size = resolveHostToIP.size();
                        String str = resolveHostToIP;
                        if (size == 1) {
                            str = resolveHostToIP.get(0);
                        }
                        linkedHashMap.put(serverAddress, str);
                    }
                }
            }
        }
        dns.setHosts(linkedHashMap);
    }

    private final boolean updateOutboundFragment(V2rayConfig v2rayConfig) {
        String str;
        String str2;
        String str3;
        try {
            if (!MmkvManager.INSTANCE.decodeSettingsBool(new ObfuscatedString(new long[]{421226662976947952L, -5493302019873447786L, -3181158781128907608L, -5512996522550658363L}).toString(), false)) {
                return true;
            }
            V2rayConfig.OutboundBean.StreamSettingsBean streamSettings = v2rayConfig.getOutbounds().get(0).getStreamSettings();
            String str4 = null;
            if (streamSettings != null) {
                str = streamSettings.getSecurity();
            } else {
                str = null;
            }
            if (!Intrinsics.areEqual(str, new ObfuscatedString(new long[]{-6831903054529957826L, 1222974554516471267L}).toString())) {
                V2rayConfig.OutboundBean.StreamSettingsBean streamSettings2 = v2rayConfig.getOutbounds().get(0).getStreamSettings();
                if (streamSettings2 != null) {
                    str3 = streamSettings2.getSecurity();
                } else {
                    str3 = null;
                }
                if (!Intrinsics.areEqual(str3, new ObfuscatedString(new long[]{-7472051647882575666L, 8917312368219534700L}).toString())) {
                    return true;
                }
            }
            V2rayConfig.OutboundBean outboundBean = new V2rayConfig.OutboundBean(new ObfuscatedString(new long[]{4912817098595649519L, 6639669389076893371L}).toString(), new ObfuscatedString(new long[]{-5763706700502547031L, 2307698634254356785L}).toString(), null, null, null, null, null, 60, null);
            String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-1989850502328975295L, 8214364752282523717L, -7079063693978529598L, -6726449981587785411L}).toString());
            if (decodeSettingsString == null) {
                decodeSettingsString = new ObfuscatedString(new long[]{7695732735442053348L, -8854798129090764241L}).toString();
            }
            V2rayConfig.OutboundBean.StreamSettingsBean streamSettings3 = v2rayConfig.getOutbounds().get(0).getStreamSettings();
            if (streamSettings3 != null) {
                str2 = streamSettings3.getSecurity();
            } else {
                str2 = null;
            }
            if (Intrinsics.areEqual(str2, new ObfuscatedString(new long[]{-1650379175841114327L, -7672378798453079255L}).toString()) && Intrinsics.areEqual(decodeSettingsString, new ObfuscatedString(new long[]{4942356328444666364L, -6619594107857604964L}).toString())) {
                decodeSettingsString = new ObfuscatedString(new long[]{1094996816787018732L, -3001944060937805070L}).toString();
            } else {
                V2rayConfig.OutboundBean.StreamSettingsBean streamSettings4 = v2rayConfig.getOutbounds().get(0).getStreamSettings();
                if (streamSettings4 != null) {
                    str4 = streamSettings4.getSecurity();
                }
                if (Intrinsics.areEqual(str4, new ObfuscatedString(new long[]{8871595027994418143L, 6678286123625229092L}).toString()) && !Intrinsics.areEqual(decodeSettingsString, new ObfuscatedString(new long[]{67704163860316585L, -3665103676500378093L}).toString())) {
                    decodeSettingsString = new ObfuscatedString(new long[]{7039337329182653327L, -907576745408663073L}).toString();
                }
            }
            String decodeSettingsString2 = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-1868490933135438020L, -3400031179480408282L, 4443470154212175659L, 7554350817276434293L}).toString());
            if (decodeSettingsString2 == null) {
                decodeSettingsString2 = new ObfuscatedString(new long[]{-5224767892572360251L, -5472251226306957576L}).toString();
            }
            String decodeSettingsString3 = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{868459878369907471L, -3113997598544404225L, -1308197761191716686L, -283012221029889726L}).toString());
            if (decodeSettingsString3 == null) {
                decodeSettingsString3 = new ObfuscatedString(new long[]{1856864232356737937L, 5323128575543522786L}).toString();
            }
            outboundBean.setSettings(new V2rayConfig.OutboundBean.OutSettingsBean(null, new V2rayConfig.OutboundBean.OutSettingsBean.FragmentBean(decodeSettingsString, decodeSettingsString2, decodeSettingsString3), AbstractC0586x968d4673.listOf(new V2rayConfig.OutboundBean.OutSettingsBean.NoiseBean(new ObfuscatedString(new long[]{7254687488031855313L, 3790728276949236195L}).toString(), new ObfuscatedString(new long[]{7903145672555932138L, 6018814922849670024L}).toString(), new ObfuscatedString(new long[]{5653966170723262828L, 5675584179939603619L}).toString())), null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131065, null));
            outboundBean.setStreamSettings(new V2rayConfig.OutboundBean.StreamSettingsBean(null, null, null, null, null, null, null, null, null, null, null, null, null, null, new V2rayConfig.OutboundBean.StreamSettingsBean.SockoptBean(Boolean.TRUE, null, null, null, 255, null, null, 110, null), 16383, null));
            v2rayConfig.getOutbounds().add(outboundBean);
            V2rayConfig.OutboundBean.StreamSettingsBean streamSettings5 = v2rayConfig.getOutbounds().get(0).getStreamSettings();
            if (streamSettings5 != null) {
                streamSettings5.setSockopt(new V2rayConfig.OutboundBean.StreamSettingsBean.SockoptBean(null, null, null, null, null, new ObfuscatedString(new long[]{1048312031110549396L, 502935233745785300L}).toString(), null, 95, null));
            }
            return true;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{74053018137928796L, 2993959784424635188L, 5401134164041872549L}).toString();
            new ObfuscatedString(new long[]{-8809594388268638077L, -8092324200284172185L, -4945865905812443746L, 2062403364684701465L, 1190613255175684409L, 2285679120032303412L}).toString();
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ae, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r9, com.v2ray.ang.dto.NetworkType.XHTTP.getType()) != false) goto L193;
     */
    /* JADX WARN: Removed duplicated region for block: B:141:0x033c A[Catch: Exception -> 0x0373, TryCatch #0 {Exception -> 0x0373, blocks: (B:3:0x0006, B:5:0x0033, B:7:0x0047, B:9:0x005b, B:11:0x006f, B:13:0x0083, B:16:0x0098, B:18:0x009e, B:19:0x00a4, B:23:0x00b4, B:25:0x00ba, B:26:0x00bd, B:28:0x00c3, B:30:0x00e5, B:31:0x00f7, B:32:0x0102, B:34:0x0108, B:36:0x012a, B:37:0x013c, B:38:0x0147, B:40:0x014d, B:41:0x0170, B:43:0x0184, B:45:0x018a, B:47:0x0190, B:49:0x0198, B:51:0x019e, B:53:0x01a6, B:55:0x01ac, B:61:0x01bc, B:63:0x01c2, B:66:0x01e0, B:68:0x01f4, B:70:0x01fa, B:72:0x0202, B:73:0x0236, B:75:0x024a, B:76:0x0252, B:78:0x0258, B:79:0x0215, B:81:0x021b, B:82:0x0221, B:85:0x025b, B:87:0x0261, B:88:0x0267, B:90:0x027b, B:92:0x0281, B:94:0x0287, B:96:0x028d, B:97:0x0293, B:99:0x02a7, B:101:0x02ad, B:103:0x02b3, B:105:0x02b9, B:107:0x02bf, B:108:0x02c5, B:110:0x02cb, B:112:0x02d1, B:114:0x02d7, B:116:0x02dd, B:118:0x02e3, B:119:0x02e7, B:121:0x02f6, B:123:0x02fc, B:125:0x0302, B:126:0x0313, B:128:0x0319, B:130:0x031f, B:132:0x0325, B:134:0x032b, B:136:0x0330, B:141:0x033c, B:142:0x034e, B:144:0x0351, B:146:0x0357, B:148:0x035d, B:150:0x0363, B:152:0x0369, B:154:0x036f, B:161:0x01ca, B:163:0x01d0, B:164:0x01d3, B:166:0x01d9), top: B:2:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean updateOutboundWithGlobalSettings(V2rayConfig.OutboundBean outbound) {
        String str;
        String str2;
        List<String> list;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean tcpSettings;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean header;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean request;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean.HeadersBean headers;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean tcpSettings2;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean header2;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean request2;
        boolean z;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean tcpSettings3;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean header3;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean tcpSettings4;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean header4;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean request3;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean.HeadersBean headers2;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean tcpSettings5;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean header5;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean request4;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean tcpSettings6;
        V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean header6;
        Object obj;
        Object obj2;
        List list2;
        boolean z2;
        V2rayConfig.OutboundBean.MuxBean mux;
        List<V2rayConfig.OutboundBean.OutSettingsBean.VnextBean> vnext;
        V2rayConfig.OutboundBean.OutSettingsBean.VnextBean vnextBean;
        List<V2rayConfig.OutboundBean.OutSettingsBean.VnextBean.UsersBean> users;
        V2rayConfig.OutboundBean.OutSettingsBean.VnextBean.UsersBean usersBean;
        String flow;
        boolean z3;
        String str3;
        try {
            MmkvManager mmkvManager = MmkvManager.INSTANCE;
            boolean decodeSettingsBool = mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{6504567651079376712L, 5413330322346837375L, -5670466620847674330L}).toString(), false);
            String protocol = outbound.getProtocol();
            List<String> list3 = null;
            if (!AbstractC1197x89633db9.equals(protocol, new ObfuscatedString(new long[]{6586040670356209596L, 2325480040007882509L, -5260192769331524299L}).toString(), true) && !AbstractC1197x89633db9.equals(protocol, new ObfuscatedString(new long[]{2655937012279484122L, 5824849557201456073L}).toString(), true) && !AbstractC1197x89633db9.equals(protocol, new ObfuscatedString(new long[]{2650822656751284511L, 2521157124934064647L}).toString(), true) && !AbstractC1197x89633db9.equals(protocol, new ObfuscatedString(new long[]{860972520708363917L, 4989149287177463963L}).toString(), true) && !AbstractC1197x89633db9.equals(protocol, new ObfuscatedString(new long[]{-653277485054993045L, -3740614866446432478L, 5794149922072817329L}).toString(), true) && !AbstractC1197x89633db9.equals(protocol, new ObfuscatedString(new long[]{1262078675851164401L, 6645883269282373878L, 6876552568412598379L}).toString(), true)) {
                V2rayConfig.OutboundBean.StreamSettingsBean streamSettings = outbound.getStreamSettings();
                if (streamSettings != null) {
                    str3 = streamSettings.getNetwork();
                } else {
                    str3 = null;
                }
            }
            decodeSettingsBool = false;
            if (decodeSettingsBool) {
                V2rayConfig.OutboundBean.MuxBean mux2 = outbound.getMux();
                if (mux2 != null) {
                    mux2.setEnabled(true);
                }
                V2rayConfig.OutboundBean.MuxBean mux3 = outbound.getMux();
                if (mux3 != null) {
                    String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-7871693714447117952L, -8246302163061276208L, 566950494100410362L, 3491686397833507366L}).toString(), new ObfuscatedString(new long[]{8770582211047620149L, 5748432870334243261L}).toString());
                    if (decodeSettingsString == null) {
                        decodeSettingsString = new ObfuscatedString(new long[]{-6225350746454535114L}).toString();
                    }
                    mux3.setConcurrency(Integer.valueOf(Integer.parseInt(decodeSettingsString)));
                }
                V2rayConfig.OutboundBean.MuxBean mux4 = outbound.getMux();
                if (mux4 != null) {
                    String decodeSettingsString2 = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{-3805563103382873051L, 6848520634338238239L, -5258481444372698181L, -2961903435400141266L, 6163601777131012721L}).toString(), new ObfuscatedString(new long[]{-6385044877382231504L, -7209347390654536961L}).toString());
                    if (decodeSettingsString2 == null) {
                        decodeSettingsString2 = new ObfuscatedString(new long[]{8585436307721549414L}).toString();
                    }
                    mux4.setXudpConcurrency(Integer.valueOf(Integer.parseInt(decodeSettingsString2)));
                }
                V2rayConfig.OutboundBean.MuxBean mux5 = outbound.getMux();
                if (mux5 != null) {
                    mux5.setXudpProxyUDP443(MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{1657648957630867078L, -2599545675064015815L, -1927906774507310423L, 3661305979469316086L}).toString(), new ObfuscatedString(new long[]{-203370221401273242L, -8330795644386178928L}).toString()));
                }
                if (AbstractC1197x89633db9.equals(protocol, new ObfuscatedString(new long[]{-9004424083451736167L, -5165985332454779634L}).toString(), true)) {
                    V2rayConfig.OutboundBean.OutSettingsBean settings = outbound.getSettings();
                    if (settings != null && (vnext = settings.getVnext()) != null && (vnextBean = (V2rayConfig.OutboundBean.OutSettingsBean.VnextBean) CollectionsKt___CollectionsKt.first((List) vnext)) != null && (users = vnextBean.getUsers()) != null && (usersBean = (V2rayConfig.OutboundBean.OutSettingsBean.VnextBean.UsersBean) CollectionsKt___CollectionsKt.first((List) users)) != null && (flow = usersBean.getFlow()) != null) {
                        if (flow.length() > 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            z2 = true;
                            if (z2 && (mux = outbound.getMux()) != null) {
                                mux.setConcurrency(-1);
                            }
                        }
                    }
                    z2 = false;
                    if (z2) {
                        mux.setConcurrency(-1);
                    }
                }
            } else {
                V2rayConfig.OutboundBean.MuxBean mux6 = outbound.getMux();
                if (mux6 != null) {
                    mux6.setEnabled(false);
                }
                V2rayConfig.OutboundBean.MuxBean mux7 = outbound.getMux();
                if (mux7 != null) {
                    mux7.setConcurrency(-1);
                }
            }
            if (AbstractC1197x89633db9.equals(protocol, new ObfuscatedString(new long[]{3294291855572599575L, -1956398387418218605L, 5176139827444610050L}).toString(), true)) {
                V2rayConfig.OutboundBean.OutSettingsBean settings2 = outbound.getSettings();
                if (settings2 != null) {
                    obj = settings2.getAddress();
                } else {
                    obj = null;
                }
                if (obj == null) {
                    list2 = AbstractC0586x968d4673.listOf(new ObfuscatedString(new long[]{6408678557331936326L, 6514143587015286171L, -7004744197691166142L}).toString());
                } else {
                    V2rayConfig.OutboundBean.OutSettingsBean settings3 = outbound.getSettings();
                    if (settings3 != null) {
                        obj2 = settings3.getAddress();
                    } else {
                        obj2 = null;
                    }
                    Intrinsics.checkNotNull(obj2, new ObfuscatedString(new long[]{-8876434406889559742L, -7697461503259317009L, -333593685499142676L, 6433020586349803610L, -6176203479567285933L, -5796824332862266978L, 1664369208013686309L, 5528995046288500686L, 7011171994435850713L}).toString());
                    list2 = (List) obj2;
                }
                if (!mmkvManager.decodeSettingsBool(new ObfuscatedString(new long[]{-1492030126372790764L, -8528528798320911008L, -4064618743683856507L}).toString())) {
                    list2 = AbstractC0586x968d4673.listOf(CollectionsKt___CollectionsKt.first(list2));
                }
                V2rayConfig.OutboundBean.OutSettingsBean settings4 = outbound.getSettings();
                if (settings4 != null) {
                    settings4.setAddress(list2);
                }
            }
            V2rayConfig.OutboundBean.StreamSettingsBean streamSettings2 = outbound.getStreamSettings();
            if (streamSettings2 != null) {
                str = streamSettings2.getNetwork();
            } else {
                str = null;
            }
            if (Intrinsics.areEqual(str, new ObfuscatedString(new long[]{-4225953256543726372L, -7679553268934619344L}).toString())) {
                V2rayConfig.OutboundBean.StreamSettingsBean streamSettings3 = outbound.getStreamSettings();
                if (streamSettings3 != null && (tcpSettings6 = streamSettings3.getTcpSettings()) != null && (header6 = tcpSettings6.getHeader()) != null) {
                    str2 = header6.getType();
                } else {
                    str2 = null;
                }
                if (Intrinsics.areEqual(str2, new ObfuscatedString(new long[]{-8058753592764365567L, -5256490039305294388L}).toString())) {
                    V2rayConfig.OutboundBean.StreamSettingsBean streamSettings4 = outbound.getStreamSettings();
                    if (streamSettings4 != null && (tcpSettings5 = streamSettings4.getTcpSettings()) != null && (header5 = tcpSettings5.getHeader()) != null && (request4 = header5.getRequest()) != null) {
                        list = request4.getPath();
                    } else {
                        list = null;
                    }
                    V2rayConfig.OutboundBean.StreamSettingsBean streamSettings5 = outbound.getStreamSettings();
                    if (streamSettings5 != null && (tcpSettings4 = streamSettings5.getTcpSettings()) != null && (header4 = tcpSettings4.getHeader()) != null && (request3 = header4.getRequest()) != null && (headers2 = request3.getHeaders()) != null) {
                        list3 = headers2.getHost();
                    }
                    Lazy lazy = AbstractC0919x86d1e2e2.lazy(new C1140xd0502f52(5));
                    V2rayConfig.OutboundBean.StreamSettingsBean streamSettings6 = outbound.getStreamSettings();
                    if (streamSettings6 != null && (tcpSettings3 = streamSettings6.getTcpSettings()) != null && (header3 = tcpSettings3.getHeader()) != null) {
                        header3.setRequest((V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean) JsonUtil.INSTANCE.fromJson(updateOutboundWithGlobalSettings$lambda$21(lazy), V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean.class));
                    }
                    V2rayConfig.OutboundBean.StreamSettingsBean streamSettings7 = outbound.getStreamSettings();
                    if (streamSettings7 != null && (tcpSettings2 = streamSettings7.getTcpSettings()) != null && (header2 = tcpSettings2.getHeader()) != null && (request2 = header2.getRequest()) != null) {
                        List<String> list4 = list;
                        if (list4 != null && !list4.isEmpty()) {
                            z = false;
                            if (z) {
                                list = AbstractC0586x968d4673.listOf(new ObfuscatedString(new long[]{-6619568023621645570L, -8192337512560785486L}).toString());
                            }
                            request2.setPath(list);
                        }
                        z = true;
                        if (z) {
                        }
                        request2.setPath(list);
                    }
                    V2rayConfig.OutboundBean.StreamSettingsBean streamSettings8 = outbound.getStreamSettings();
                    if (streamSettings8 != null && (tcpSettings = streamSettings8.getTcpSettings()) != null && (header = tcpSettings.getHeader()) != null && (request = header.getRequest()) != null && (headers = request.getHeaders()) != null) {
                        headers.setHost(list3);
                    }
                }
            }
            return true;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-3087895026592380309L, -2413650230658711155L, -690795901298659602L}).toString();
            new ObfuscatedString(new long[]{-1193402451292389328L, 6195951238422243733L, 3482574064004100324L, -3050384374617081654L, -6223805400310637816L, 6059875676493709948L, 1492164942045948613L}).toString();
            return false;
        }
    }

    public static final String updateOutboundWithGlobalSettings$lambda$20() {
        return new ObfuscatedString(new long[]{8443507090235000576L, 8080534048725537684L, 9032238985337488168L, -5658118549608421727L, 2800352531502620760L, -3362226612754303278L, -7313571550102793761L, 5910396979097893103L, -503647765368136165L, -133155783210932736L, -1841112643539533613L, 2232348229550264246L, 1547642706663589569L, 7092994572289763481L, 2932205766972054992L, 3134660436611402450L, -2310577844384889941L, 6005905925869674104L, 523954470102158920L, 4327257940410355781L, -3842764716079496731L, 2768164828246897269L, 9219566802216988642L, 2670071271129712356L, 7442874852130806748L, 4075330134050728044L, -9195562092296142875L, -8366214074299289640L, -4847125021607279232L, 1813378720421040020L, 6013946850853247007L, -7602481591637187058L, -1820499471357337063L, -2704680877814011666L}).toString();
    }

    private static final String updateOutboundWithGlobalSettings$lambda$21(Lazy<String> lazy) {
        return lazy.getValue();
    }

    @Nullable
    public final V2rayConfig.OutboundBean createInitOutbound(@NotNull EConfigType configType) {
        Intrinsics.checkNotNullParameter(configType, new ObfuscatedString(new long[]{8728220434238763986L, -2551956175054761904L, -1708029229182179861L}).toString());
        switch (WhenMappings.$EnumSwitchMapping$0[configType.ordinal()]) {
            case 1:
            case 5:
                String lowerCase = configType.name().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, new ObfuscatedString(new long[]{1571144037476333702L, 6786371276636282094L, 4529678680429537862L}).toString());
                return new V2rayConfig.OutboundBean(null, lowerCase, new V2rayConfig.OutboundBean.OutSettingsBean(AbstractC0586x968d4673.listOf(new V2rayConfig.OutboundBean.OutSettingsBean.VnextBean(null, 0, AbstractC0586x968d4673.listOf(new V2rayConfig.OutboundBean.OutSettingsBean.VnextBean.UsersBean(null, null, null, 0, null, null, 63, null)), 3, null)), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131070, null), new V2rayConfig.OutboundBean.StreamSettingsBean(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null), null, null, null, 113, null);
            case 2:
                return null;
            case 3:
            case 4:
            case 6:
            case 8:
            case 9:
                String lowerCase2 = configType.name().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, new ObfuscatedString(new long[]{-8394112470358395711L, -5622680142793363744L, 5334603674627788637L}).toString());
                return new V2rayConfig.OutboundBean(null, lowerCase2, new V2rayConfig.OutboundBean.OutSettingsBean(null, null, null, AbstractC0586x968d4673.listOf(new V2rayConfig.OutboundBean.OutSettingsBean.ServersBean(null, null, false, null, 0, 0, null, null, null, null, 1023, null)), null, null, null, null, null, null, null, null, null, null, null, null, null, 131063, null), new V2rayConfig.OutboundBean.StreamSettingsBean(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null), null, null, null, 113, null);
            case 7:
                String lowerCase3 = configType.name().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase3, new ObfuscatedString(new long[]{-7357183623268542554L, 3101675482491885757L, -4119229735065344446L}).toString());
                return new V2rayConfig.OutboundBean(null, lowerCase3, new V2rayConfig.OutboundBean.OutSettingsBean(null, null, null, null, null, null, null, null, null, null, null, null, new ObfuscatedString(new long[]{-5917981090799609359L}).toString(), AbstractC0586x968d4673.listOf(new V2rayConfig.OutboundBean.OutSettingsBean.WireGuardBean(null, null, null, 7, null)), null, null, null, 118783, null), null, null, null, null, 121, null);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @Nullable
    public final V2rayConfig genV2rayConfig(@NotNull Context context, @NotNull List<String> guidList) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{4048734519522118303L, 2931745801218735775L}).toString());
        Intrinsics.checkNotNullParameter(guidList, new ObfuscatedString(new long[]{1482364237581140397L, 8399664420356576271L}).toString());
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = guidList.iterator();
            while (it.hasNext()) {
                ProfileItem decodeServerConfig = MmkvManager.INSTANCE.decodeServerConfig((String) it.next());
                if (decodeServerConfig != null) {
                    arrayList.add(decodeServerConfig);
                }
            }
            return genV2rayMultipleConfig(context, arrayList);
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-6551914044625874100L, 479715913476710016L, -6520494659734762843L}).toString();
            new ObfuscatedString(new long[]{-4639781832720051932L, -2883550719982832529L, -996561767477175915L, 4949785008915324067L, -5049143857888606941L}).toString();
            return null;
        }
    }

    @NotNull
    public final ConfigResult getV2rayConfig(@NotNull Context context, @NotNull String guid) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{1336823734760980516L, -7870913285779849238L}).toString());
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{4881333891435851154L, 389629582726372350L}).toString());
        try {
            ProfileItem decodeServerConfig = MmkvManager.INSTANCE.decodeServerConfig(guid);
            if (decodeServerConfig == null) {
                return new ConfigResult(false, null, null, null, 14, null);
            }
            if (decodeServerConfig.getConfigType() == EConfigType.CUSTOM) {
                return getV2rayCustomConfig(guid, decodeServerConfig);
            }
            return getV2rayNormalConfig(context, guid, decodeServerConfig);
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-4337284534370334498L, -3574626463982994294L, -3675946219022141L}).toString();
            new ObfuscatedString(new long[]{6956587088543136466L, 7370361569911577827L, -1165592525262549756L, 3610496775548808089L, -3602162907108540617L}).toString();
            return new ConfigResult(false, null, null, null, 14, null);
        }
    }

    @NotNull
    public final ConfigResult getV2rayConfig4Speedtest(@NotNull Context context, @NotNull String guid) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-464504405431215951L, 6406483812207255625L}).toString());
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{6778228544461652481L, -7034111653990461842L}).toString());
        try {
            ProfileItem decodeServerConfig = MmkvManager.INSTANCE.decodeServerConfig(guid);
            if (decodeServerConfig == null) {
                return new ConfigResult(false, null, null, null, 14, null);
            }
            if (decodeServerConfig.getConfigType() == EConfigType.CUSTOM) {
                return getV2rayCustomConfig(guid, decodeServerConfig);
            }
            return getV2rayNormalConfig4Speedtest(context, guid, decodeServerConfig);
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{2545129103911776205L, 8175744701869340166L, -3836029606326995485L}).toString();
            new ObfuscatedString(new long[]{-369755369033356870L, -3501554907055807848L, 6845823603612370723L, -6911969081019594767L, 3871946885597655549L, 6278870272388352429L}).toString();
            return new ConfigResult(false, null, null, null, 14, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x006c, code lost:
    
        if (com.v2ray.ang.util.Utils.INSTANCE.isDomainName(r5) != false) goto L108;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void populateTlsSettings(@NotNull V2rayConfig.OutboundBean.StreamSettingsBean streamSettings, @NotNull ProfileItem profileItem, @Nullable String sniExt) {
        String str;
        String str2;
        ArrayList arrayList;
        String str3;
        String str4;
        String str5;
        Intrinsics.checkNotNullParameter(streamSettings, new ObfuscatedString(new long[]{-2461347545487538359L, 3198108810908916015L, 1026866474818616270L}).toString());
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{-6617074643758976431L, 6013007892069564273L, -5214393312231978696L}).toString());
        String security = profileItem.getSecurity();
        if (security == null) {
            security = new ObfuscatedString(new long[]{250793481597168360L}).toString();
        }
        boolean areEqual = Intrinsics.areEqual(profileItem.getInsecure(), Boolean.TRUE);
        String sni = profileItem.getSni();
        if (sni != null && sni.length() != 0) {
            str2 = profileItem.getSni();
        } else {
            if (_ExtKt.isNotNullEmpty(sniExt)) {
                str = sniExt;
            } else {
                str = sniExt;
            }
            if (_ExtKt.isNotNullEmpty(profileItem.getServer()) && Utils.INSTANCE.isDomainName(profileItem.getServer())) {
                str2 = profileItem.getServer();
            }
            str2 = str;
        }
        String fingerPrint = profileItem.getFingerPrint();
        String alpn = profileItem.getAlpn();
        String publicKey = profileItem.getPublicKey();
        String shortId = profileItem.getShortId();
        String spiderX = profileItem.getSpiderX();
        if (security.length() == 0) {
            security = null;
        }
        streamSettings.setSecurity(security);
        if (streamSettings.getSecurity() == null) {
            return;
        }
        if (str2 == null || str2.length() == 0) {
            str2 = null;
        }
        if (fingerPrint == null || fingerPrint.length() == 0) {
            fingerPrint = null;
        }
        if (alpn != null && alpn.length() != 0) {
            List split$default = StringsKt__StringsKt.split$default((CharSequence) alpn, new String[]{new ObfuscatedString(new long[]{4278087888394324963L, 1079272706492617259L}).toString()}, false, 0, 6, (Object) null);
            ArrayList arrayList2 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(split$default, 10));
            Iterator it = split$default.iterator();
            while (it.hasNext()) {
                arrayList2.add(StringsKt__StringsKt.trim((String) it.next()).toString());
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : arrayList2) {
                if (((String) obj).length() > 0) {
                    arrayList3.add(obj);
                }
            }
            arrayList = arrayList3;
        } else {
            arrayList = null;
        }
        if (publicKey != null && publicKey.length() != 0) {
            str3 = publicKey;
        } else {
            str3 = null;
        }
        if (shortId != null && shortId.length() != 0) {
            str4 = shortId;
        } else {
            str4 = null;
        }
        if (spiderX != null && spiderX.length() != 0) {
            str5 = spiderX;
        } else {
            str5 = null;
        }
        V2rayConfig.OutboundBean.StreamSettingsBean.TlsSettingsBean tlsSettingsBean = new V2rayConfig.OutboundBean.StreamSettingsBean.TlsSettingsBean(areEqual, str2, arrayList, null, null, null, null, fingerPrint, null, null, null, false, str3, str4, str5, 3960, null);
        if (Intrinsics.areEqual(streamSettings.getSecurity(), new ObfuscatedString(new long[]{-4624001436668980800L, 1005628852615648803L}).toString())) {
            streamSettings.setTlsSettings(tlsSettingsBean);
            streamSettings.setRealitySettings(null);
        } else if (Intrinsics.areEqual(streamSettings.getSecurity(), new ObfuscatedString(new long[]{7359677501596226402L, 8976646308719167999L}).toString())) {
            streamSettings.setTlsSettings(null);
            streamSettings.setRealitySettings(tlsSettingsBean);
        }
    }

    @Nullable
    public final String populateTransportSettings(@NotNull V2rayConfig.OutboundBean.StreamSettingsBean streamSettings, @NotNull ProfileItem profileItem) {
        char c;
        String str;
        Intrinsics.checkNotNullParameter(streamSettings, new ObfuscatedString(new long[]{-5770678815348117104L, 6435465309177519833L, -1513656123998377750L}).toString());
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{1496885381585098421L, -6223567327192642784L, 9061902654607525354L}).toString());
        String network = profileItem.getNetwork();
        if (network == null) {
            network = new ObfuscatedString(new long[]{-3666990669217534793L}).toString();
        }
        String headerType = profileItem.getHeaderType();
        String host = profileItem.getHost();
        String path = profileItem.getPath();
        String seed = profileItem.getSeed();
        String mode = profileItem.getMode();
        String serviceName = profileItem.getServiceName();
        String authority = profileItem.getAuthority();
        String xhttpMode = profileItem.getXhttpMode();
        String xhttpExtra = profileItem.getXhttpExtra();
        if (network.length() == 0) {
            network = NetworkType.TCP.getType();
        }
        streamSettings.setNetwork(network);
        String network2 = streamSettings.getNetwork();
        if (Intrinsics.areEqual(network2, NetworkType.TCP.getType())) {
            V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean tcpSettingsBean = new V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean(null, null, 3, null);
            if (Intrinsics.areEqual(headerType, new ObfuscatedString(new long[]{1614461126411420713L, -951224122174974629L}).toString())) {
                tcpSettingsBean.getHeader().setType(new ObfuscatedString(new long[]{6566644172996176012L, -4363550602858803876L}).toString());
                if (!TextUtils.isEmpty(host) || !TextUtils.isEmpty(path)) {
                    V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean requestBean = new V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean(null, null, null, null, 15, null);
                    V2rayConfig.OutboundBean.StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean.HeadersBean headers = requestBean.getHeaders();
                    if (host == null) {
                        host = new ObfuscatedString(new long[]{-4822860899424427145L}).toString();
                    }
                    List split$default = StringsKt__StringsKt.split$default((CharSequence) host, new String[]{new ObfuscatedString(new long[]{2807594083631504353L, -2782054777562822915L}).toString()}, false, 0, 6, (Object) null);
                    ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(split$default, 10));
                    Iterator it = split$default.iterator();
                    while (it.hasNext()) {
                        arrayList.add(StringsKt__StringsKt.trim((String) it.next()).toString());
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : arrayList) {
                        if (((String) obj).length() > 0) {
                            arrayList2.add(obj);
                        }
                    }
                    headers.setHost(arrayList2);
                    if (path == null) {
                        path = new ObfuscatedString(new long[]{-7785033763310080439L}).toString();
                    }
                    List split$default2 = StringsKt__StringsKt.split$default((CharSequence) path, new String[]{new ObfuscatedString(new long[]{-4466620115527311480L, 3633480719878319710L}).toString()}, false, 0, 6, (Object) null);
                    ArrayList arrayList3 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(split$default2, 10));
                    Iterator it2 = split$default2.iterator();
                    while (it2.hasNext()) {
                        arrayList3.add(StringsKt__StringsKt.trim((String) it2.next()).toString());
                    }
                    ArrayList arrayList4 = new ArrayList();
                    for (Object obj2 : arrayList3) {
                        if (((String) obj2).length() > 0) {
                            arrayList4.add(obj2);
                        }
                    }
                    requestBean.setPath(arrayList4);
                    tcpSettingsBean.getHeader().setRequest(requestBean);
                    List<String> host2 = requestBean.getHeaders().getHost();
                    if (host2 != null) {
                        host = (String) CollectionsKt___CollectionsKt.getOrNull(host2, 0);
                    }
                }
                host = null;
            } else {
                tcpSettingsBean.getHeader().setType(new ObfuscatedString(new long[]{4396740513067826813L, 6723266597716819627L}).toString());
            }
            streamSettings.setTcpSettings(tcpSettingsBean);
            return host;
        }
        if (Intrinsics.areEqual(network2, NetworkType.KCP.getType())) {
            V2rayConfig.OutboundBean.StreamSettingsBean.KcpSettingsBean kcpSettingsBean = new V2rayConfig.OutboundBean.StreamSettingsBean.KcpSettingsBean(0, 0, 0, 0, false, 0, 0, null, null, 511, null);
            V2rayConfig.OutboundBean.StreamSettingsBean.KcpSettingsBean.HeaderBean header = kcpSettingsBean.getHeader();
            if (headerType == null) {
                headerType = new ObfuscatedString(new long[]{3336630031349794054L, -6540969231268020282L}).toString();
            }
            header.setType(headerType);
            if (seed != null && seed.length() != 0) {
                kcpSettingsBean.setSeed(seed);
            } else {
                kcpSettingsBean.setSeed(null);
            }
            if (host != null && host.length() != 0) {
                kcpSettingsBean.getHeader().setDomain(host);
            } else {
                kcpSettingsBean.getHeader().setDomain(null);
            }
            streamSettings.setKcpSettings(kcpSettingsBean);
        } else {
            if (Intrinsics.areEqual(network2, NetworkType.WS.getType())) {
                V2rayConfig.OutboundBean.StreamSettingsBean.WsSettingsBean wsSettingsBean = new V2rayConfig.OutboundBean.StreamSettingsBean.WsSettingsBean(null, null, null, null, null, 31, null);
                wsSettingsBean.getHeaders().setHost(host == null ? new ObfuscatedString(new long[]{-5740398112716655946L}).toString() : host);
                if (path == null) {
                    path = new ObfuscatedString(new long[]{-6524686684973804896L, 2825797413617797233L}).toString();
                }
                wsSettingsBean.setPath(path);
                streamSettings.setWsSettings(wsSettingsBean);
                return host;
            }
            if (Intrinsics.areEqual(network2, NetworkType.HTTP_UPGRADE.getType())) {
                V2rayConfig.OutboundBean.StreamSettingsBean.HttpupgradeSettingsBean httpupgradeSettingsBean = new V2rayConfig.OutboundBean.StreamSettingsBean.HttpupgradeSettingsBean(null, null, null, 7, null);
                httpupgradeSettingsBean.setHost(host == null ? new ObfuscatedString(new long[]{2421845172706401336L}).toString() : host);
                if (path == null) {
                    path = new ObfuscatedString(new long[]{5467083068397012772L, -6575781696352019964L}).toString();
                }
                httpupgradeSettingsBean.setPath(path);
                streamSettings.setHttpupgradeSettings(httpupgradeSettingsBean);
                return host;
            }
            if (Intrinsics.areEqual(network2, NetworkType.XHTTP.getType())) {
                V2rayConfig.OutboundBean.StreamSettingsBean.XhttpSettingsBean xhttpSettingsBean = new V2rayConfig.OutboundBean.StreamSettingsBean.XhttpSettingsBean(null, null, null, null, 15, null);
                xhttpSettingsBean.setHost(host == null ? new ObfuscatedString(new long[]{818138311945589818L}).toString() : host);
                if (path == null) {
                    path = new ObfuscatedString(new long[]{-2057510065456013066L, -2365035085576732074L}).toString();
                }
                xhttpSettingsBean.setPath(path);
                xhttpSettingsBean.setMode(xhttpMode);
                xhttpSettingsBean.setExtra(JsonUtil.INSTANCE.parseString(xhttpExtra));
                streamSettings.setXhttpSettings(xhttpSettingsBean);
                return host;
            }
            NetworkType networkType = NetworkType.H2;
            if (!Intrinsics.areEqual(network2, networkType.getType()) && !Intrinsics.areEqual(network2, NetworkType.HTTP.getType())) {
                if (Intrinsics.areEqual(network2, NetworkType.GRPC.getType())) {
                    V2rayConfig.OutboundBean.StreamSettingsBean.GrpcSettingsBean grpcSettingsBean = new V2rayConfig.OutboundBean.StreamSettingsBean.GrpcSettingsBean(null, null, null, null, null, 31, null);
                    grpcSettingsBean.setMultiMode(Boolean.valueOf(Intrinsics.areEqual(mode, new ObfuscatedString(new long[]{-3781587074046484296L, 1991955421726158274L}).toString())));
                    if (serviceName == null) {
                        c = 0;
                        serviceName = new ObfuscatedString(new long[]{4600816081743230067L}).toString();
                    } else {
                        c = 0;
                    }
                    grpcSettingsBean.setServiceName(serviceName);
                    if (authority == null) {
                        long[] jArr = new long[1];
                        jArr[c] = -4533726495623386998L;
                        str = new ObfuscatedString(jArr).toString();
                    } else {
                        str = authority;
                    }
                    grpcSettingsBean.setAuthority(str);
                    grpcSettingsBean.setIdle_timeout(60);
                    grpcSettingsBean.setHealth_check_timeout(20);
                    streamSettings.setGrpcSettings(grpcSettingsBean);
                    return authority;
                }
            } else {
                streamSettings.setNetwork(networkType.getType());
                V2rayConfig.OutboundBean.StreamSettingsBean.HttpSettingsBean httpSettingsBean = new V2rayConfig.OutboundBean.StreamSettingsBean.HttpSettingsBean(null, null, 3, null);
                if (host == null) {
                    host = new ObfuscatedString(new long[]{8362165401098858663L}).toString();
                }
                List split$default3 = StringsKt__StringsKt.split$default((CharSequence) host, new String[]{new ObfuscatedString(new long[]{-2991636726941064637L, 1685333822655384239L}).toString()}, false, 0, 6, (Object) null);
                ArrayList arrayList5 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(split$default3, 10));
                Iterator it3 = split$default3.iterator();
                while (it3.hasNext()) {
                    arrayList5.add(StringsKt__StringsKt.trim((String) it3.next()).toString());
                }
                ArrayList arrayList6 = new ArrayList();
                for (Object obj3 : arrayList5) {
                    if (((String) obj3).length() > 0) {
                        arrayList6.add(obj3);
                    }
                }
                httpSettingsBean.setHost(arrayList6);
                String str2 = (String) CollectionsKt___CollectionsKt.getOrNull(httpSettingsBean.getHost(), 0);
                if (path == null) {
                    path = new ObfuscatedString(new long[]{2629439080194016320L, 8839916275615389634L}).toString();
                }
                httpSettingsBean.setPath(path);
                streamSettings.setHttpSettings(httpSettingsBean);
                return str2;
            }
        }
        return null;
    }
}
