package com.v2ray.ang.fmt;

import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.V2rayConfig;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.handler.V2rayConfigManager;
import com.v2ray.ang.util.Utils;
import java.net.URI;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0010\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u0005¨\u0006\r"}, d2 = {"Lcom/v2ray/ang/fmt/VlessFmt;", "Lcom/v2ray/ang/fmt/FmtBase;", "<init>", "()V", "parse", "Lcom/v2ray/ang/dto/ProfileItem;", "str", "", "toUri", "config", "toOutbound", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;", "profileItem", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nVlessFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VlessFmt.kt\ncom/v2ray/ang/fmt/VlessFmt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,80:1\n1#2:81\n*E\n"})
/* loaded from: classes3.dex */
public final class VlessFmt extends FmtBase {

    @NotNull
    public static final VlessFmt INSTANCE = new VlessFmt();

    private VlessFmt() {
    }

    @Nullable
    public final ProfileItem parse(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-6631416046308549205L, -5038817291950608911L}).toString());
        boolean decodeSettingsBool = MmkvManager.INSTANCE.decodeSettingsBool(new ObfuscatedString(new long[]{-4758170351461901902L, 7461639529384425296L, -2317376349204209527L, 6625839249114831308L}).toString(), false);
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.VLESS);
        Utils utils = Utils.INSTANCE;
        URI uri = new URI(utils.fixIllegalUrl(str));
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && rawQuery.length() != 0) {
            Map<String, String> queryParam = getQueryParam(uri);
            String fragment = uri.getFragment();
            if (fragment == null) {
                fragment = new ObfuscatedString(new long[]{-2626354659391748886L}).toString();
            }
            String urlDecode = utils.urlDecode(fragment);
            if (urlDecode.length() == 0) {
                urlDecode = new ObfuscatedString(new long[]{7832479094474745849L, -4645529208068878162L}).toString();
            }
            create.setRemarks(urlDecode);
            create.setServer(_ExtKt.getIdnHost(uri));
            create.setServerPort(String.valueOf(uri.getPort()));
            create.setPassword(uri.getUserInfo());
            String str2 = queryParam.get(new ObfuscatedString(new long[]{5939720005320992759L, 2916253880247473482L, 3763496579647568086L}).toString());
            if (str2 == null) {
                str2 = new ObfuscatedString(new long[]{-216645400948997377L, 6646637876713821952L}).toString();
            }
            create.setMethod(str2);
            getItemFormQuery(create, queryParam, decodeSettingsBool);
            return create;
        }
        return null;
    }

    @Nullable
    public final V2rayConfig.OutboundBean toOutbound(@NotNull ProfileItem profileItem) {
        String str;
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings;
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings2;
        V2rayConfig.OutboundBean.OutSettingsBean settings;
        List<V2rayConfig.OutboundBean.OutSettingsBean.VnextBean> vnext;
        V2rayConfig.OutboundBean.OutSettingsBean.VnextBean vnextBean;
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{6509918845488957102L, 502931394796710726L, -995721806689864660L}).toString());
        V2rayConfigManager v2rayConfigManager = V2rayConfigManager.INSTANCE;
        V2rayConfig.OutboundBean createInitOutbound = v2rayConfigManager.createInitOutbound(EConfigType.VLESS);
        if (createInitOutbound != null && (settings = createInitOutbound.getSettings()) != null && (vnext = settings.getVnext()) != null && (vnextBean = (V2rayConfig.OutboundBean.OutSettingsBean.VnextBean) CollectionsKt___CollectionsKt.first((List) vnext)) != null) {
            vnextBean.setAddress(INSTANCE.getServerAddress(profileItem));
            String serverPort = profileItem.getServerPort();
            if (serverPort == null) {
                serverPort = new ObfuscatedString(new long[]{-1075944792978707801L}).toString();
            }
            vnextBean.setPort(Integer.parseInt(serverPort));
            V2rayConfig.OutboundBean.OutSettingsBean.VnextBean.UsersBean usersBean = vnextBean.getUsers().get(0);
            String password = profileItem.getPassword();
            if (password == null) {
                password = new ObfuscatedString(new long[]{1380069022156065133L}).toString();
            }
            usersBean.setId(password);
            vnextBean.getUsers().get(0).setEncryption(profileItem.getMethod());
            vnextBean.getUsers().get(0).setFlow(profileItem.getFlow());
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
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{5511273156615329097L, 5922133744425608282L}).toString());
        HashMap<String, String> queryDic = getQueryDic(config2);
        String obfuscatedString = new ObfuscatedString(new long[]{-1797204415333710474L, 4573423970527197989L, 328635423414463324L}).toString();
        String method = config2.getMethod();
        if (method == null) {
            method = new ObfuscatedString(new long[]{2636877374883247592L, -3324604745875134121L}).toString();
        }
        queryDic.put(obfuscatedString, method);
        return toUri(config2, config2.getPassword(), queryDic);
    }
}
