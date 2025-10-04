package com.v2ray.ang.fmt;

import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.NetworkType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.V2rayConfig;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.V2rayConfigManager;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC1197x89633db9;
import java.net.URI;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0005J\u0010\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u0005¨\u0006\u000f"}, d2 = {"Lcom/v2ray/ang/fmt/ShadowsocksFmt;", "Lcom/v2ray/ang/fmt/FmtBase;", "<init>", "()V", "parse", "Lcom/v2ray/ang/dto/ProfileItem;", "str", "", "parseSip002", "parseLegacy", "toUri", "config", "toOutbound", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;", "profileItem", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nShadowsocksFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShadowsocksFmt.kt\ncom/v2ray/ang/fmt/ShadowsocksFmt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,154:1\n1#2:155\n*E\n"})
/* loaded from: classes3.dex */
public final class ShadowsocksFmt extends FmtBase {

    @NotNull
    public static final ShadowsocksFmt INSTANCE = new ShadowsocksFmt();

    private ShadowsocksFmt() {
    }

    @Nullable
    public final ProfileItem parse(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-1428605265283854203L, 4217697220463228358L}).toString());
        ProfileItem parseSip002 = parseSip002(str);
        if (parseSip002 == null) {
            return parseLegacy(str);
        }
        return parseSip002;
    }

    @Nullable
    public final ProfileItem parseLegacy(@NotNull String str) {
        String decode;
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-1177897902563417819L, -6046290755851425275L}).toString());
        ProfileItem.Companion companion = ProfileItem.INSTANCE;
        EConfigType eConfigType = EConfigType.SHADOWSOCKS;
        ProfileItem create = companion.create(eConfigType);
        String replace$default = AbstractC1197x89633db9.replace$default(str, eConfigType.getProtocolScheme(), new ObfuscatedString(new long[]{-6814451123800332319L}).toString(), false, 4, (Object) null);
        int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) replace$default, new ObfuscatedString(new long[]{-430637561301612322L, 6523313359382961202L}).toString(), 0, false, 6, (Object) null);
        if (indexOf$default > 0) {
            try {
                Utils utils = Utils.INSTANCE;
                String substring = replace$default.substring(indexOf$default + 1, replace$default.length());
                Intrinsics.checkNotNullExpressionValue(substring, new ObfuscatedString(new long[]{4948988948676459242L, 804821213747131717L, -4527078856649667227L}).toString());
                create.setRemarks(utils.urlDecode(substring));
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{6939448451417865392L, 5119006814274462568L, 3907268677556598696L}).toString();
                new ObfuscatedString(new long[]{-812685935168178665L, -6723022503637945478L, 2519200921607709300L, -8465275634607309264L, -4570779328674027993L, 2142477163725313307L, 1948490637865254621L}).toString();
            }
            replace$default = replace$default.substring(0, indexOf$default);
            Intrinsics.checkNotNullExpressionValue(replace$default, new ObfuscatedString(new long[]{-8032563546898748928L, 2699706737601440744L, -8043720636505527032L}).toString());
        }
        int indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) replace$default, new ObfuscatedString(new long[]{1351414817743933828L, 9042342449485971717L}).toString(), 0, false, 6, (Object) null);
        if (indexOf$default2 > 0) {
            Utils utils2 = Utils.INSTANCE;
            String substring2 = replace$default.substring(0, indexOf$default2);
            Intrinsics.checkNotNullExpressionValue(substring2, new ObfuscatedString(new long[]{-7096256875191067159L, -6670438618942700681L, 7319940983465810224L}).toString());
            String decode2 = utils2.decode(substring2);
            String substring3 = replace$default.substring(indexOf$default2, replace$default.length());
            Intrinsics.checkNotNullExpressionValue(substring3, new ObfuscatedString(new long[]{-1971232868068554553L, -7723540279728991382L, 8056822986516678155L}).toString());
            decode = decode2 + substring3;
        } else {
            decode = Utils.INSTANCE.decode(replace$default);
        }
        MatchResult matchEntire = new Regex(new ObfuscatedString(new long[]{-7665694389177768711L, -6258856810665120938L, -2508067644364233686L, -6725390912569748360L, -5376433870458497032L}).toString()).matchEntire(decode);
        if (matchEntire == null) {
            return null;
        }
        create.setServer(StringsKt__StringsKt.removeSurrounding(matchEntire.getGroupValues().get(3), (CharSequence) new ObfuscatedString(new long[]{1190970055548473306L, 6384971728195299129L}).toString(), (CharSequence) new ObfuscatedString(new long[]{-8223435916229304290L, 7829819657444753800L}).toString()));
        create.setServerPort(matchEntire.getGroupValues().get(4));
        create.setPassword(matchEntire.getGroupValues().get(2));
        String lowerCase = matchEntire.getGroupValues().get(1).toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, new ObfuscatedString(new long[]{-721618983017219441L, 1466711480657345139L, -5093024533054832586L}).toString());
        create.setMethod(lowerCase);
        return create;
    }

    @Nullable
    public final ProfileItem parseSip002(@NotNull String str) {
        String userInfo;
        List split$default;
        Map<String, String> queryParam;
        String str2;
        List emptyList;
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{7395786796431662530L, 5709569853636832163L}).toString());
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.SHADOWSOCKS);
        Utils utils = Utils.INSTANCE;
        URI uri = new URI(utils.fixIllegalUrl(str));
        if (_ExtKt.getIdnHost(uri).length() == 0 || uri.getPort() <= 0 || (userInfo = uri.getUserInfo()) == null || userInfo.length() == 0) {
            return null;
        }
        String fragment = uri.getFragment();
        if (fragment == null) {
            fragment = new ObfuscatedString(new long[]{8229717090829097125L}).toString();
        }
        String urlDecode = utils.urlDecode(fragment);
        if (urlDecode.length() == 0) {
            urlDecode = new ObfuscatedString(new long[]{6617906271167430633L, -6629915183146141962L}).toString();
        }
        create.setRemarks(urlDecode);
        create.setServer(_ExtKt.getIdnHost(uri));
        create.setServerPort(String.valueOf(uri.getPort()));
        String userInfo2 = uri.getUserInfo();
        Intrinsics.checkNotNullExpressionValue(userInfo2, new ObfuscatedString(new long[]{-7708833008746343169L, 6623326027473352149L, 8165145681050579472L}).toString());
        if (StringsKt__StringsKt.contains$default((CharSequence) userInfo2, (CharSequence) new ObfuscatedString(new long[]{189097697738497780L, 6720525883170455091L}).toString(), false, 2, (Object) null)) {
            String userInfo3 = uri.getUserInfo();
            Intrinsics.checkNotNullExpressionValue(userInfo3, new ObfuscatedString(new long[]{2151802849108712887L, 7512560392824418006L, 2525629780923296369L}).toString());
            split$default = StringsKt__StringsKt.split$default((CharSequence) userInfo3, new String[]{new ObfuscatedString(new long[]{2319373728444550322L, -1579881473898315717L}).toString()}, false, 2, 2, (Object) null);
        } else {
            split$default = StringsKt__StringsKt.split$default((CharSequence) utils.decode(uri.getUserInfo()), new String[]{new ObfuscatedString(new long[]{1818290135741924866L, -8770639011439485279L}).toString()}, false, 2, 2, (Object) null);
        }
        if (split$default.size() == 2) {
            create.setMethod((String) CollectionsKt___CollectionsKt.first(split$default));
            create.setPassword((String) CollectionsKt___CollectionsKt.last(split$default));
        }
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && rawQuery.length() != 0 && (str2 = (queryParam = getQueryParam(uri)).get(new ObfuscatedString(new long[]{-6323744099135231441L, -364561953901077472L}).toString())) != null && StringsKt__StringsKt.contains$default((CharSequence) str2, (CharSequence) new ObfuscatedString(new long[]{-6414695944556246319L, 2828997694185587767L, -6715219097272341912L}).toString(), false, 2, (Object) null)) {
            HashMap hashMap = new HashMap();
            String str3 = queryParam.get(new ObfuscatedString(new long[]{-3995847613301382284L, 8326933495535346873L}).toString());
            if (str3 == null || (emptyList = StringsKt__StringsKt.split$default((CharSequence) str3, new String[]{new ObfuscatedString(new long[]{4331269240535213246L, 6275807803004959603L}).toString()}, false, 0, 6, (Object) null)) == null) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            Iterator it = emptyList.iterator();
            while (it.hasNext()) {
                List split$default2 = StringsKt__StringsKt.split$default((CharSequence) it.next(), new String[]{new ObfuscatedString(new long[]{3306079271128094258L, 6469671601078546905L}).toString()}, false, 0, 6, (Object) null);
                if (split$default2.size() == 2) {
                    hashMap.put(CollectionsKt___CollectionsKt.first(split$default2), CollectionsKt___CollectionsKt.last(split$default2));
                }
            }
            create.setNetwork(NetworkType.TCP.getType());
            create.setHeaderType(new ObfuscatedString(new long[]{7239038474456256344L, -3162505488312040289L}).toString());
            create.setHost((String) hashMap.get(new ObfuscatedString(new long[]{-1222765938209469672L, 5722124549084353681L, 5310605534127202373L}).toString()));
            create.setPath((String) hashMap.get(new ObfuscatedString(new long[]{688643473024061970L, 3090682846428088179L}).toString()));
        }
        return create;
    }

    @Nullable
    public final V2rayConfig.OutboundBean toOutbound(@NotNull ProfileItem profileItem) {
        String str;
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings;
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings2;
        V2rayConfig.OutboundBean.OutSettingsBean settings;
        List<V2rayConfig.OutboundBean.OutSettingsBean.ServersBean> servers;
        V2rayConfig.OutboundBean.OutSettingsBean.ServersBean serversBean;
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{1726458462699849061L, -8376067242270668546L, -5740003951878433324L}).toString());
        V2rayConfigManager v2rayConfigManager = V2rayConfigManager.INSTANCE;
        V2rayConfig.OutboundBean createInitOutbound = v2rayConfigManager.createInitOutbound(EConfigType.SHADOWSOCKS);
        if (createInitOutbound != null && (settings = createInitOutbound.getSettings()) != null && (servers = settings.getServers()) != null && (serversBean = (V2rayConfig.OutboundBean.OutSettingsBean.ServersBean) CollectionsKt___CollectionsKt.first((List) servers)) != null) {
            serversBean.setAddress(INSTANCE.getServerAddress(profileItem));
            String serverPort = profileItem.getServerPort();
            if (serverPort == null) {
                serverPort = new ObfuscatedString(new long[]{6381878614170771031L}).toString();
            }
            serversBean.setPort(Integer.parseInt(serverPort));
            serversBean.setPassword(profileItem.getPassword());
            serversBean.setMethod(profileItem.getMethod());
        }
        if (createInitOutbound != null && (streamSettings2 = createInitOutbound.getStreamSettings()) != null) {
            str = v2rayConfigManager.populateTransportSettings(streamSettings2, profileItem);
        } else {
            str = null;
        }
        if (createInitOutbound != null && (streamSettings = createInitOutbound.getStreamSettings()) != null) {
            v2rayConfigManager.populateTlsSettings(streamSettings, profileItem, str);
        }
        return createInitOutbound;
    }

    @NotNull
    public final String toUri(@NotNull ProfileItem config2) {
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{-2772949353999759408L, 4483870101054320042L}).toString());
        return toUri(config2, Utils.INSTANCE.encode(AbstractC0362x4440ab85.m2953x742e2fda(config2.getMethod(), ":", config2.getPassword())), null);
    }
}
