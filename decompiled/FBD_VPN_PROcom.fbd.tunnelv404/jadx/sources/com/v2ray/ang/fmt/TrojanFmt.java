package com.v2ray.ang.fmt;

import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.NetworkType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.V2rayConfig;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.handler.V2rayConfigManager;
import com.v2ray.ang.util.Utils;
import java.net.URI;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0010\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u0005¨\u0006\r"}, d2 = {"Lcom/v2ray/ang/fmt/TrojanFmt;", "Lcom/v2ray/ang/fmt/FmtBase;", "<init>", "()V", "parse", "Lcom/v2ray/ang/dto/ProfileItem;", "str", "", "toUri", "config", "toOutbound", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;", "profileItem", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTrojanFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrojanFmt.kt\ncom/v2ray/ang/fmt/TrojanFmt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1#2:84\n*E\n"})
/* loaded from: classes3.dex */
public final class TrojanFmt extends FmtBase {

    @NotNull
    public static final TrojanFmt INSTANCE = new TrojanFmt();

    private TrojanFmt() {
    }

    @Nullable
    public final ProfileItem parse(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-4509936867551551669L, 8779675639534638057L}).toString());
        boolean decodeSettingsBool = MmkvManager.INSTANCE.decodeSettingsBool(new ObfuscatedString(new long[]{1619421187102596854L, -6889557122354890780L, -5518827428298235936L, 7139485230737720637L}).toString(), false);
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.TROJAN);
        Utils utils = Utils.INSTANCE;
        URI uri = new URI(utils.fixIllegalUrl(str));
        String fragment = uri.getFragment();
        if (fragment == null) {
            fragment = new ObfuscatedString(new long[]{5942970295498663111L}).toString();
        }
        String urlDecode = utils.urlDecode(fragment);
        if (urlDecode.length() == 0) {
            urlDecode = new ObfuscatedString(new long[]{-2596973858900854895L, -7319251757653061986L}).toString();
        }
        create.setRemarks(urlDecode);
        create.setServer(_ExtKt.getIdnHost(uri));
        create.setServerPort(String.valueOf(uri.getPort()));
        create.setPassword(uri.getUserInfo());
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && rawQuery.length() != 0) {
            Map<String, String> queryParam = getQueryParam(uri);
            getItemFormQuery(create, queryParam, decodeSettingsBool);
            String str2 = queryParam.get(new ObfuscatedString(new long[]{-5519977433716728821L, 3113837291267496057L}).toString());
            if (str2 == null) {
                str2 = new ObfuscatedString(new long[]{5671329031616756869L, -1873940094562962158L}).toString();
            }
            create.setSecurity(str2);
        } else {
            create.setNetwork(NetworkType.TCP.getType());
            create.setSecurity(new ObfuscatedString(new long[]{4209992331637152172L, -2733266752272736490L}).toString());
            create.setInsecure(Boolean.valueOf(decodeSettingsBool));
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
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{-645781301070374920L, 605951903923186886L, -977148889933337034L}).toString());
        V2rayConfigManager v2rayConfigManager = V2rayConfigManager.INSTANCE;
        V2rayConfig.OutboundBean createInitOutbound = v2rayConfigManager.createInitOutbound(EConfigType.TROJAN);
        if (createInitOutbound != null && (settings = createInitOutbound.getSettings()) != null && (servers = settings.getServers()) != null && (serversBean = (V2rayConfig.OutboundBean.OutSettingsBean.ServersBean) CollectionsKt___CollectionsKt.first((List) servers)) != null) {
            serversBean.setAddress(INSTANCE.getServerAddress(profileItem));
            String serverPort = profileItem.getServerPort();
            if (serverPort == null) {
                serverPort = new ObfuscatedString(new long[]{7225325596392179139L}).toString();
            }
            serversBean.setPort(Integer.parseInt(serverPort));
            serversBean.setPassword(profileItem.getPassword());
            serversBean.setFlow(profileItem.getFlow());
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
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{-5673238532091222460L, -7788175116866513804L}).toString());
        return toUri(config2, config2.getPassword(), getQueryDic(config2));
    }
}
