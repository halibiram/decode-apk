package com.v2ray.ang.handler;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.fbd.tunnel.R;
import com.google.gson.Gson;
import com.panda912.muddy.ObfuscatedString;
import com.tencent.mmkv.MMKV;
import com.v2ray.ang.dto.ConfigResult;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.ServerConfig;
import com.v2ray.ang.dto.SubscriptionItem;
import com.v2ray.ang.dto.V2rayConfig;
import com.v2ray.ang.fmt.CustomFmt;
import com.v2ray.ang.fmt.Hysteria2Fmt;
import com.v2ray.ang.fmt.ShadowsocksFmt;
import com.v2ray.ang.fmt.SocksFmt;
import com.v2ray.ang.fmt.TrojanFmt;
import com.v2ray.ang.fmt.VlessFmt;
import com.v2ray.ang.fmt.VmessFmt;
import com.v2ray.ang.fmt.WireguardFmt;
import com.v2ray.ang.util.HttpUtil;
import com.v2ray.ang.util.JsonUtil;
import com.v2ray.ang.util.QRCodeDecoder;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.AbstractC1197x89633db9;
import defpackage.C0396x4a23d5ac;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u001c\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\fJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\b\u001a\u00020\tJ\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\tH\u0002J\u0012\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\tH\u0007J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\tH\u0007J.\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001c2\b\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0018H\u0007J\u0012\u0010\u001f\u001a\u00020\u00052\b\u0010 \u001a\u0004\u0018\u00010\tH\u0002J\"\u0010!\u001a\u00020\u00052\b\u0010 \u001a\u0004\u0018\u00010\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0018H\u0002J\u0018\u0010\"\u001a\u00020\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001d\u001a\u00020\tJ.\u0010#\u001a\u00020\u00052\b\u0010$\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001d\u001a\u00020\t2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0002J\u0006\u0010)\u001a\u00020\u0005J\u001a\u0010*\u001a\u00020\u00052\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020&0\u001cJ\"\u0010,\u001a\u00020\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0018H\u0002J\u0010\u0010-\u001a\u00020\u00052\u0006\u0010.\u001a\u00020\tH\u0002J&\u0010/\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u00072\f\u00100\u001a\b\u0012\u0004\u0012\u00020\t0\f2\u0006\u0010\u001d\u001a\u00020\tR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0014¨\u00061"}, d2 = {"Lcom/v2ray/ang/handler/AngConfigManager;", "", "<init>", "()V", "share2Clipboard", "", "context", "Landroid/content/Context;", "guid", "", "shareNonCustomConfigsToClipboard", "serverList", "", "share2QRCode", "Landroid/graphics/Bitmap;", "shareFullContent2Clipboard", "shareConfig", "serverRawStorage", "Lcom/tencent/mmkv/MMKV;", "getServerRawStorage", "()Lcom/tencent/mmkv/MMKV;", "serverRawStorage$delegate", "Lkotlin/Lazy;", "importCustomizeConfig", "", "server", "importBatchConfig", "importBatchConfig1", "Lkotlin/Pair;", "subid", "append", "parseBatchSubscription", "servers", "parseBatchConfig", "parseCustomConfigServer", "parseConfig", "str", "subItem", "Lcom/v2ray/ang/dto/SubscriptionItem;", "removedSelectedServer", "Lcom/v2ray/ang/dto/ProfileItem;", "updateConfigViaSubAll", "updateConfigViaSub", "it", "parseConfigViaSub", "importUrlAsSubscription", "url", "createIntelligentSelection", "guidList", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAngConfigManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AngConfigManager.kt\ncom/v2ray/ang/handler/AngConfigManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,562:1\n1869#2,2:563\n1869#2,2:565\n1869#2,2:567\n1869#2,2:569\n*S KotlinDebug\n*F\n+ 1 AngConfigManager.kt\ncom/v2ray/ang/handler/AngConfigManager\n*L\n242#1:563,2\n289#1:565,2\n432#1:567,2\n522#1:569,2\n*E\n"})
/* loaded from: classes3.dex */
public final class AngConfigManager {

    @NotNull
    public static final AngConfigManager INSTANCE = new AngConfigManager();

    /* renamed from: serverRawStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy serverRawStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(0));

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
                iArr[EConfigType.HTTP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[EConfigType.VLESS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[EConfigType.TROJAN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[EConfigType.WIREGUARD.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[EConfigType.HYSTERIA2.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private AngConfigManager() {
    }

    private final MMKV getServerRawStorage() {
        return (MMKV) serverRawStorage.getValue();
    }

    @JvmStatic
    public static final boolean importBatchConfig(@NotNull String server) {
        Intrinsics.checkNotNullParameter(server, new ObfuscatedString(new long[]{5129590424609363026L, 4059791609810692418L}).toString());
        AngConfigManager angConfigManager = INSTANCE;
        int parseBatchConfig = angConfigManager.parseBatchConfig(Utils.INSTANCE.decode(server), new ObfuscatedString(new long[]{-4478914069329718917L}).toString(), true);
        if (parseBatchConfig <= 0) {
            parseBatchConfig = angConfigManager.parseBatchConfig(server, new ObfuscatedString(new long[]{6674001782889074813L}).toString(), true);
        }
        if (parseBatchConfig <= 0) {
            return false;
        }
        angConfigManager.updateConfigViaSubAll();
        return true;
    }

    @JvmStatic
    @NotNull
    public static final Pair<Integer, Integer> importBatchConfig1(@Nullable String server, @NotNull String subid, boolean append) {
        Intrinsics.checkNotNullParameter(subid, new ObfuscatedString(new long[]{-5012157021619552083L, -7342830634410799164L}).toString());
        AngConfigManager angConfigManager = INSTANCE;
        Utils utils = Utils.INSTANCE;
        int parseBatchConfig = angConfigManager.parseBatchConfig(utils.decode(server), subid, append);
        if (parseBatchConfig <= 0) {
            parseBatchConfig = angConfigManager.parseBatchConfig(server, subid, append);
        }
        if (parseBatchConfig <= 0) {
            parseBatchConfig = angConfigManager.parseCustomConfigServer(server, subid);
        }
        int parseBatchSubscription = angConfigManager.parseBatchSubscription(server);
        if (parseBatchSubscription <= 0) {
            parseBatchSubscription = angConfigManager.parseBatchSubscription(utils.decode(server));
        }
        if (parseBatchSubscription > 0) {
            angConfigManager.updateConfigViaSubAll();
        }
        return TuplesKt.to(Integer.valueOf(parseBatchConfig), Integer.valueOf(parseBatchSubscription));
    }

    @JvmStatic
    public static final boolean importCustomizeConfig(@Nullable String server) {
        try {
            ServerConfig create = ServerConfig.INSTANCE.create(EConfigType.CUSTOM);
            create.setRemarks(String.valueOf(System.currentTimeMillis()));
            create.setSubscriptionId(new ObfuscatedString(new long[]{-1373841386944292204L}).toString());
            create.setFullConfig((V2rayConfig) new Gson().fromJson(server, V2rayConfig.class));
            return INSTANCE.getServerRawStorage().encode(com.v2ray.ang.util.MmkvManager.INSTANCE.encodeServerConfig(new ObfuscatedString(new long[]{1947061182191282656L}).toString(), create), server);
        } catch (Exception unused) {
            return false;
        }
    }

    private final int importUrlAsSubscription(String url) {
        Iterator<T> it = MmkvManager.INSTANCE.decodeSubscriptions().iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(((SubscriptionItem) ((Pair) it.next()).getSecond()).getUrl(), url)) {
                return 0;
            }
        }
        URI uri = new URI(Utils.INSTANCE.fixIllegalUrl(url));
        SubscriptionItem subscriptionItem = new SubscriptionItem(null, null, false, 0L, 0L, false, null, null, null, null, null, false, 4095, null);
        String fragment = uri.getFragment();
        if (fragment == null) {
            fragment = new ObfuscatedString(new long[]{-8340684056642471530L, 8766859332473309753L, 2203504158376565717L}).toString();
        }
        subscriptionItem.setRemarks(fragment);
        subscriptionItem.setUrl(url);
        MmkvManager.INSTANCE.encodeSubscription(new ObfuscatedString(new long[]{-3731975559457961770L}).toString(), subscriptionItem);
        return 1;
    }

    private final int parseBatchConfig(String servers, String subid, boolean append) {
        if (servers == null) {
            return 0;
        }
        try {
            ProfileItem profileItem = null;
            if (!TextUtils.isEmpty(subid) && !append) {
                MmkvManager mmkvManager = MmkvManager.INSTANCE;
                String selectServer = MmkvManager.getSelectServer();
                if (selectServer == null) {
                    selectServer = new ObfuscatedString(new long[]{-975961624829150002L}).toString();
                }
                ProfileItem decodeServerConfig = mmkvManager.decodeServerConfig(selectServer);
                if (decodeServerConfig != null && Intrinsics.areEqual(decodeServerConfig.getSubscriptionId(), subid)) {
                    profileItem = decodeServerConfig;
                }
            }
            if (!append) {
                MmkvManager.INSTANCE.removeServerViaSubid(subid);
            }
            SubscriptionItem decodeSubscription = MmkvManager.INSTANCE.decodeSubscription(subid);
            Iterator it = CollectionsKt___CollectionsKt.reversed(CollectionsKt___CollectionsKt.distinct(StringsKt__StringsKt.lines(servers))).iterator();
            int i = 0;
            while (it.hasNext()) {
                if (INSTANCE.parseConfig((String) it.next(), subid, decodeSubscription, profileItem) == 0) {
                    i++;
                }
            }
            return i;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-2539912068800871698L, -883818271516742410L, 8460586836512679361L}).toString();
            new ObfuscatedString(new long[]{-6411791950192888175L, -648283448167459414L, 1143026434022909544L, -7574134652105810832L, 2891815615833191643L}).toString();
            return 0;
        }
    }

    private final int parseBatchSubscription(String servers) {
        if (servers == null) {
            return 0;
        }
        try {
            int i = 0;
            for (String str : CollectionsKt___CollectionsKt.distinct(StringsKt__StringsKt.lines(servers))) {
                if (Utils.INSTANCE.isValidSubUrl(str)) {
                    i += INSTANCE.importUrlAsSubscription(str);
                }
            }
            return i;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-3805827953554630438L, -4017095436308125594L, 7390191580550716369L}).toString();
            new ObfuscatedString(new long[]{4015035284580905229L, 6247653250774573543L, -6534854531517434014L, -7876198510711954688L, 1210251330915408610L, 6397143239411093134L}).toString();
            return 0;
        }
    }

    private final int parseConfig(String str, String subid, SubscriptionItem subItem, ProfileItem removedSelectedServer) {
        ProfileItem parse;
        String filter;
        if (str != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    String str2 = null;
                    if (AbstractC1197x89633db9.startsWith$default(str, EConfigType.VMESS.getProtocolScheme(), false, 2, null)) {
                        parse = VmessFmt.INSTANCE.parse(str);
                    } else if (AbstractC1197x89633db9.startsWith$default(str, EConfigType.SHADOWSOCKS.getProtocolScheme(), false, 2, null)) {
                        parse = ShadowsocksFmt.INSTANCE.parse(str);
                    } else if (AbstractC1197x89633db9.startsWith$default(str, EConfigType.SOCKS.getProtocolScheme(), false, 2, null)) {
                        parse = SocksFmt.INSTANCE.parse(str);
                    } else if (AbstractC1197x89633db9.startsWith$default(str, EConfigType.TROJAN.getProtocolScheme(), false, 2, null)) {
                        parse = TrojanFmt.INSTANCE.parse(str);
                    } else if (AbstractC1197x89633db9.startsWith$default(str, EConfigType.VLESS.getProtocolScheme(), false, 2, null)) {
                        parse = VlessFmt.INSTANCE.parse(str);
                    } else if (AbstractC1197x89633db9.startsWith$default(str, EConfigType.WIREGUARD.getProtocolScheme(), false, 2, null)) {
                        parse = WireguardFmt.INSTANCE.parse(str);
                    } else {
                        if (!AbstractC1197x89633db9.startsWith$default(str, EConfigType.HYSTERIA2.getProtocolScheme(), false, 2, null) && !AbstractC1197x89633db9.startsWith$default(str, new ObfuscatedString(new long[]{-8718220416736979863L, -7336693940611619111L}).toString(), false, 2, null)) {
                            parse = null;
                        }
                        parse = Hysteria2Fmt.INSTANCE.parse(str);
                    }
                    if (parse == null) {
                        return R.string.toast_incorrect_protocol;
                    }
                    if (subItem != null) {
                        str2 = subItem.getFilter();
                    }
                    if (str2 != null && (filter = subItem.getFilter()) != null && filter.length() > 0 && parse.getRemarks().length() > 0) {
                        String filter2 = subItem.getFilter();
                        if (filter2 == null) {
                            filter2 = new ObfuscatedString(new long[]{7939002662016916218L}).toString();
                        }
                        if (!new Regex(filter2).containsMatchIn(parse.getRemarks())) {
                            return -1;
                        }
                    }
                    parse.setSubscriptionId(subid);
                    MmkvManager mmkvManager = MmkvManager.INSTANCE;
                    String encodeServerConfig = mmkvManager.encodeServerConfig(new ObfuscatedString(new long[]{8728575280405101555L}).toString(), parse);
                    if (removedSelectedServer != null && Intrinsics.areEqual(parse.getServer(), removedSelectedServer.getServer()) && Intrinsics.areEqual(parse.getServerPort(), removedSelectedServer.getServerPort())) {
                        mmkvManager.setSelectServer(encodeServerConfig);
                    }
                    return 0;
                }
                return R.string.toast_none_data;
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{-1762556140146092992L, -1984028519247959755L, 7810012487161002335L}).toString();
                new ObfuscatedString(new long[]{-4712868224316702748L, -7953312415785631618L, 3830633568483343055L, -1785825695160772607L}).toString();
                return -1;
            }
        }
        return R.string.toast_none_data;
    }

    private final int parseConfigViaSub(String server, String subid, boolean append) {
        int parseBatchConfig = parseBatchConfig(Utils.INSTANCE.decode(server), subid, append);
        if (parseBatchConfig <= 0) {
            parseBatchConfig = parseBatchConfig(server, subid, append);
        }
        if (parseBatchConfig <= 0) {
            return parseCustomConfigServer(server, subid);
        }
        return parseBatchConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV serverRawStorage_delegate$lambda$0() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{-1278407178335261590L, 3221569333587647425L, -9148450578817183517L}).toString(), 2);
    }

    private final String shareConfig(String guid) {
        String uri;
        try {
            ProfileItem decodeServerConfig = MmkvManager.INSTANCE.decodeServerConfig(guid);
            if (decodeServerConfig == null) {
                return new ObfuscatedString(new long[]{-1982664765635787920L}).toString();
            }
            String protocolScheme = decodeServerConfig.getConfigType().getProtocolScheme();
            switch (WhenMappings.$EnumSwitchMapping$0[decodeServerConfig.getConfigType().ordinal()]) {
                case 1:
                    uri = VmessFmt.INSTANCE.toUri(decodeServerConfig);
                    break;
                case 2:
                    uri = new ObfuscatedString(new long[]{-7683751537894658210L}).toString();
                    break;
                case 3:
                    uri = ShadowsocksFmt.INSTANCE.toUri(decodeServerConfig);
                    break;
                case 4:
                    uri = SocksFmt.INSTANCE.toUri(decodeServerConfig);
                    break;
                case 5:
                    uri = new ObfuscatedString(new long[]{-3792626469156477776L}).toString();
                    break;
                case 6:
                    uri = VlessFmt.INSTANCE.toUri(decodeServerConfig);
                    break;
                case 7:
                    uri = TrojanFmt.INSTANCE.toUri(decodeServerConfig);
                    break;
                case 8:
                    uri = WireguardFmt.INSTANCE.toUri(decodeServerConfig);
                    break;
                case 9:
                    uri = Hysteria2Fmt.INSTANCE.toUri(decodeServerConfig);
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            return protocolScheme + uri;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{1875882944522149274L, -1878335284310025995L, -2723290071032135455L}).toString();
            return new ObfuscatedString(new long[]{-1122312506048259462L}).toString();
        }
    }

    @Nullable
    public final String createIntelligentSelection(@NotNull Context context, @NotNull List<String> guidList, @NotNull String subid) {
        V2rayConfig genV2rayConfig;
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-3196204421418624798L, -5240801122623427189L}).toString());
        Intrinsics.checkNotNullParameter(guidList, new ObfuscatedString(new long[]{-5221105121519669176L, 5931233433911684911L}).toString());
        Intrinsics.checkNotNullParameter(subid, new ObfuscatedString(new long[]{-7074809397963774433L, -4824988705801217912L}).toString());
        if (guidList.isEmpty() || (genV2rayConfig = V2rayConfigManager.INSTANCE.genV2rayConfig(context, guidList)) == null) {
            return null;
        }
        CustomFmt customFmt = CustomFmt.INSTANCE;
        JsonUtil jsonUtil = JsonUtil.INSTANCE;
        ProfileItem parse = customFmt.parse(jsonUtil.toJson(genV2rayConfig));
        if (parse == null) {
            return null;
        }
        parse.setSubscriptionId(subid);
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        String encodeServerConfig = mmkvManager.encodeServerConfig(new ObfuscatedString(new long[]{-9215127744372832278L}).toString(), parse);
        String jsonPretty = jsonUtil.toJsonPretty(genV2rayConfig);
        if (jsonPretty == null) {
            jsonPretty = new ObfuscatedString(new long[]{4369311835276594808L}).toString();
        }
        mmkvManager.encodeServerRaw(encodeServerConfig, jsonPretty);
        return encodeServerConfig;
    }

    public final int parseCustomConfigServer(@Nullable String server, @NotNull String subid) {
        boolean z;
        Intrinsics.checkNotNullParameter(subid, new ObfuscatedString(new long[]{-4581528040280858375L, -1046826676082742504L}).toString());
        if (server == null) {
            return 0;
        }
        if (StringsKt__StringsKt.contains$default((CharSequence) server, (CharSequence) new ObfuscatedString(new long[]{2924653681976257514L, -2512002872546950838L}).toString(), false, 2, (Object) null) && StringsKt__StringsKt.contains$default((CharSequence) server, (CharSequence) new ObfuscatedString(new long[]{4360640717314145306L, 3341249933442383206L, 311563895419200169L}).toString(), false, 2, (Object) null) && StringsKt__StringsKt.contains$default((CharSequence) server, (CharSequence) new ObfuscatedString(new long[]{-1647179789005984156L, 6157695898379447640L}).toString(), false, 2, (Object) null)) {
            try {
                Object[] objArr = (Object[]) JsonUtil.INSTANCE.fromJson(server, Object[].class);
                if (objArr.length == 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    List reversed = ArraysKt___ArraysKt.reversed(objArr);
                    int size = reversed.size();
                    int i = 0;
                    for (int i2 = 0; i2 < size; i2++) {
                        Object obj = reversed.get(i2);
                        CustomFmt customFmt = CustomFmt.INSTANCE;
                        JsonUtil jsonUtil = JsonUtil.INSTANCE;
                        ProfileItem parse = customFmt.parse(jsonUtil.toJson(obj));
                        if (parse != null) {
                            parse.setSubscriptionId(subid);
                            MmkvManager mmkvManager = MmkvManager.INSTANCE;
                            String encodeServerConfig = mmkvManager.encodeServerConfig(new ObfuscatedString(new long[]{-5775590267346012295L}).toString(), parse);
                            String jsonPretty = jsonUtil.toJsonPretty(obj);
                            if (jsonPretty == null) {
                                jsonPretty = new ObfuscatedString(new long[]{630585465345026262L}).toString();
                            }
                            mmkvManager.encodeServerRaw(encodeServerConfig, jsonPretty);
                            i++;
                        }
                    }
                    return i;
                }
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{-1478341416111806189L, 9130127275839219844L, 3963980394318557326L}).toString();
                new ObfuscatedString(new long[]{-6183786976788419683L, 9002045948027177166L, -2356986695185682588L, 6219234729135993860L, -7167296644163429631L, -4405553533784542909L, -284157844748967012L}).toString();
            }
            try {
                ProfileItem parse2 = CustomFmt.INSTANCE.parse(server);
                if (parse2 == null) {
                    return 0;
                }
                parse2.setSubscriptionId(subid);
                MmkvManager mmkvManager2 = MmkvManager.INSTANCE;
                mmkvManager2.encodeServerRaw(mmkvManager2.encodeServerConfig(new ObfuscatedString(new long[]{-7155478530178825824L}).toString(), parse2), server);
                return 1;
            } catch (Exception unused2) {
                new ObfuscatedString(new long[]{8169190972192918193L, 7719582090893457941L, 7318858348876213757L}).toString();
                new ObfuscatedString(new long[]{8895397170865085499L, -4712026112061903338L, -8305910204341411612L, -387467338862893873L, 2193917887836967386L, -2030588158607878661L, -1144237346601118062L, 6317812643673685287L}).toString();
                return 0;
            }
        }
        if (AbstractC1197x89633db9.startsWith$default(server, new ObfuscatedString(new long[]{5546867811771583743L, -1259278939469044685L, 1579327119786972414L}).toString(), false, 2, null) && StringsKt__StringsKt.contains$default((CharSequence) server, (CharSequence) new ObfuscatedString(new long[]{3164236932498615294L, 4635372643423566656L}).toString(), false, 2, (Object) null)) {
            try {
                ProfileItem parseWireguardConfFile = WireguardFmt.INSTANCE.parseWireguardConfFile(server);
                if (parseWireguardConfFile == null) {
                    return R.string.toast_incorrect_protocol;
                }
                MmkvManager mmkvManager3 = MmkvManager.INSTANCE;
                mmkvManager3.encodeServerRaw(mmkvManager3.encodeServerConfig(new ObfuscatedString(new long[]{-7910156865138887373L}).toString(), parseWireguardConfFile), server);
                return 1;
            } catch (Exception unused3) {
                new ObfuscatedString(new long[]{4053635762201401357L, 4541030178657429969L, 3285170390880905359L}).toString();
                new ObfuscatedString(new long[]{2194678526257423271L, -732102967579701460L, -1289434218994323336L, -486798471352741184L, -2006039635751469882L, 3566943513739146640L}).toString();
            }
        }
        return 0;
    }

    public final int share2Clipboard(@NotNull Context context, @NotNull String guid) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{1743927920455714215L, -562584206957452568L}).toString());
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{1133338089983426136L, 7263390072070353566L}).toString());
        try {
            String shareConfig = shareConfig(guid);
            if (TextUtils.isEmpty(shareConfig)) {
                return -1;
            }
            Utils.INSTANCE.setClipboard(context, shareConfig);
            return 0;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{2496652666403534094L, -1556989884379254437L, 4503632461023388267L}).toString();
            new ObfuscatedString(new long[]{-3610408617137332532L, 3695752762453007357L, 8486925466216529873L, 3923601295633441526L, 8029299572393058459L, -5433478553541029096L}).toString();
            return -1;
        }
    }

    @Nullable
    public final Bitmap share2QRCode(@NotNull String guid) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{1160122842525059334L, -3220179254935806933L}).toString());
        try {
            String shareConfig = shareConfig(guid);
            if (TextUtils.isEmpty(shareConfig)) {
                return null;
            }
            return QRCodeDecoder.createQRCode$default(QRCodeDecoder.INSTANCE, shareConfig, 0, 2, null);
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{8215816209366775629L, -4397271650523717580L, -1006181756846074597L}).toString();
            new ObfuscatedString(new long[]{6711784536777035498L, 5662619158130326578L, -3675808210057235525L, 12586766307538088L, 1937396618319417658L, 4732433988688394788L}).toString();
            return null;
        }
    }

    public final int shareFullContent2Clipboard(@NotNull Context context, @Nullable String guid) {
        EConfigType eConfigType;
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{7978905173432536495L, 8125907259713705538L}).toString());
        if (guid == null) {
            return -1;
        }
        try {
            ConfigResult v2rayConfig = V2rayConfigManager.INSTANCE.getV2rayConfig(context, guid);
            if (!v2rayConfig.getStatus()) {
                return -1;
            }
            ProfileItem decodeServerConfig = MmkvManager.INSTANCE.decodeServerConfig(guid);
            if (decodeServerConfig != null) {
                eConfigType = decodeServerConfig.getConfigType();
            } else {
                eConfigType = null;
            }
            if (eConfigType == EConfigType.HYSTERIA2) {
                Utils utils = Utils.INSTANCE;
                utils.setClipboard(context, JsonUtil.INSTANCE.toJsonPretty(Hysteria2Fmt.INSTANCE.toNativeConfig(decodeServerConfig, utils.findFreePort(CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(SettingsManager.INSTANCE.getSocksPort() + 100), 0})))) + "\n" + v2rayConfig.getContent());
                return 0;
            }
            Utils.INSTANCE.setClipboard(context, v2rayConfig.getContent());
            return 0;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-3885910823464658807L, 448868001019430697L, -272250619362393081L}).toString();
            new ObfuscatedString(new long[]{1311242230874089891L, 8855982730960938915L, -3661629287284672929L, -6894563095856239830L, -4179698168098253799L, 589815726956407264L, 1926244021867300414L}).toString();
            return -1;
        }
    }

    public final int shareNonCustomConfigsToClipboard(@NotNull Context context, @NotNull List<String> serverList) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{8174481783214964747L, -7349133899891392131L}).toString());
        Intrinsics.checkNotNullParameter(serverList, new ObfuscatedString(new long[]{6282556656408416796L, -8177830803826842066L, 7001504103466101152L}).toString());
        try {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = serverList.iterator();
            while (it.hasNext()) {
                String shareConfig = shareConfig(it.next());
                if (!TextUtils.isEmpty(shareConfig)) {
                    sb.append(shareConfig);
                    sb.append('\n');
                }
            }
            if (sb.length() > 0) {
                Utils utils = Utils.INSTANCE;
                String sb2 = sb.toString();
                Intrinsics.checkNotNullExpressionValue(sb2, new ObfuscatedString(new long[]{-8928387215302266273L, 2487786066515566428L, -187792018880716116L}).toString());
                utils.setClipboard(context, sb2);
            }
            return StringsKt__StringsKt.lines(sb).size() - 1;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-7852611563595849770L, -1036075611191903872L, -1483937751243778309L}).toString();
            new ObfuscatedString(new long[]{2745541377027327328L, -485485528018845583L, -7524198479170325530L, 7310961943715204295L, -3109866155554660747L, 5717534286182195632L, -3350052051612236280L}).toString();
            return -1;
        }
    }

    public final int updateConfigViaSub(@NotNull Pair<String, SubscriptionItem> it) {
        String obfuscatedString;
        String obfuscatedString2;
        Intrinsics.checkNotNullParameter(it, new ObfuscatedString(new long[]{-6151819249460305787L, -2661707922246420725L}).toString());
        try {
            if (TextUtils.isEmpty(it.getFirst()) || TextUtils.isEmpty(it.getSecond().getRemarks()) || TextUtils.isEmpty(it.getSecond().getUrl()) || !it.getSecond().getEnabled()) {
                return 0;
            }
            HttpUtil httpUtil = HttpUtil.INSTANCE;
            String idnUrl = httpUtil.toIdnUrl(it.getSecond().getUrl());
            Utils utils = Utils.INSTANCE;
            if (!utils.isValidUrl(idnUrl)) {
                return 0;
            }
            if (!it.getSecond().getAllowInsecureUrl() && !utils.isValidSubUrl(idnUrl)) {
                return 0;
            }
            new ObfuscatedString(new long[]{6869673542319256245L, 3585305424274925832L, 6627755573119809844L}).toString();
            try {
                obfuscatedString = httpUtil.getUrlContentWithUserAgent(idnUrl, 15000, SettingsManager.INSTANCE.getHttpPort());
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{2316574176802334401L, -3993565236409519303L, -3448079016356062718L}).toString();
                new ObfuscatedString(new long[]{1261922320470569008L, -3133762873315246609L, 5046318432626508295L, -3908527030320739596L, 7480871331357568494L, -1420162251144690600L, -4251284371272759775L, 4537241504916216110L}).toString();
                obfuscatedString = new ObfuscatedString(new long[]{6969013437168456579L}).toString();
            }
            if (obfuscatedString.length() == 0) {
                try {
                    obfuscatedString2 = HttpUtil.getUrlContentWithUserAgent$default(HttpUtil.INSTANCE, idnUrl, 0, 0, 6, null);
                } catch (Exception unused2) {
                    new ObfuscatedString(new long[]{-7951594734958305257L, -6752551541865156653L, -1865229268701155679L}).toString();
                    new ObfuscatedString(new long[]{-2203815650812691394L, 6428439664037768282L, 6597133296947110282L, -4923069103042027679L, -446280920179754166L, -6291232176494558007L, 5450927303378928844L, -2548834562575291442L, 729766133901182248L}).toString();
                    obfuscatedString2 = new ObfuscatedString(new long[]{-2644209024171105966L}).toString();
                }
                obfuscatedString = obfuscatedString2;
            }
            if (obfuscatedString.length() == 0) {
                return 0;
            }
            return parseConfigViaSub(obfuscatedString, it.getFirst(), false);
        } catch (Exception unused3) {
            new ObfuscatedString(new long[]{7341811033713981458L, -2478663647272225822L, -2356769187400555880L}).toString();
            new ObfuscatedString(new long[]{-4527892080164408380L, -1239086862033898729L, 7503246166912386530L, -7279157864679496975L, -327758399677670362L, 6851999738814816592L}).toString();
            return 0;
        }
    }

    public final int updateConfigViaSubAll() {
        try {
            Iterator<T> it = MmkvManager.INSTANCE.decodeSubscriptions().iterator();
            int i = 0;
            while (it.hasNext()) {
                i += INSTANCE.updateConfigViaSub((Pair) it.next());
            }
            return i;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{8914051567653080028L, -3291987450881795099L, 5248738418049919353L}).toString();
            new ObfuscatedString(new long[]{-7199315150911121076L, 8973054304120334083L, 7261369556102041111L, 418300869632634595L, 3701518397183228389L, -1622784996896711147L, 7918449592778463923L}).toString();
            return 0;
        }
    }
}
