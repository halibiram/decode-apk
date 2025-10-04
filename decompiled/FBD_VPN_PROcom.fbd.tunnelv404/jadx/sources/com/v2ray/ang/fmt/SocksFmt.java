package com.v2ray.ang.fmt;

import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.V2rayConfig;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.V2rayConfigManager;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0586x968d4673;
import java.net.URI;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0010\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u0005¨\u0006\r"}, d2 = {"Lcom/v2ray/ang/fmt/SocksFmt;", "Lcom/v2ray/ang/fmt/FmtBase;", "<init>", "()V", "parse", "Lcom/v2ray/ang/dto/ProfileItem;", "str", "", "toUri", "config", "toOutbound", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;", "profileItem", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSocksFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocksFmt.kt\ncom/v2ray/ang/fmt/SocksFmt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"})
/* loaded from: classes3.dex */
public final class SocksFmt extends FmtBase {

    @NotNull
    public static final SocksFmt INSTANCE = new SocksFmt();

    private SocksFmt() {
    }

    @Nullable
    public final ProfileItem parse(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-3234048892845380654L, 1779091752993876092L}).toString());
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.SOCKS);
        Utils utils = Utils.INSTANCE;
        URI uri = new URI(utils.fixIllegalUrl(str));
        if (_ExtKt.getIdnHost(uri).length() == 0 || uri.getPort() <= 0) {
            return null;
        }
        String fragment = uri.getFragment();
        if (fragment == null) {
            fragment = new ObfuscatedString(new long[]{2270214324149827232L}).toString();
        }
        String urlDecode = utils.urlDecode(fragment);
        if (urlDecode.length() == 0) {
            urlDecode = new ObfuscatedString(new long[]{-3740062522873564301L, -7985128366694590325L}).toString();
        }
        create.setRemarks(urlDecode);
        create.setServer(_ExtKt.getIdnHost(uri));
        create.setServerPort(String.valueOf(uri.getPort()));
        String userInfo = uri.getUserInfo();
        if (userInfo != null && userInfo.length() != 0) {
            List split$default = StringsKt__StringsKt.split$default((CharSequence) utils.decode(uri.getUserInfo()), new String[]{new ObfuscatedString(new long[]{6589947628300119368L, 6758876545479678251L}).toString()}, false, 2, 2, (Object) null);
            if (split$default.size() == 2) {
                create.setUsername((String) CollectionsKt___CollectionsKt.first(split$default));
                create.setPassword((String) CollectionsKt___CollectionsKt.last(split$default));
            }
        }
        return create;
    }

    @Nullable
    public final V2rayConfig.OutboundBean toOutbound(@NotNull ProfileItem profileItem) {
        V2rayConfig.OutboundBean.OutSettingsBean settings;
        List<V2rayConfig.OutboundBean.OutSettingsBean.ServersBean> servers;
        V2rayConfig.OutboundBean.OutSettingsBean.ServersBean serversBean;
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{3710493814570095875L, 4314737603715150420L, 1817765630941354262L}).toString());
        V2rayConfig.OutboundBean createInitOutbound = V2rayConfigManager.INSTANCE.createInitOutbound(EConfigType.SOCKS);
        if (createInitOutbound != null && (settings = createInitOutbound.getSettings()) != null && (servers = settings.getServers()) != null && (serversBean = (V2rayConfig.OutboundBean.OutSettingsBean.ServersBean) CollectionsKt___CollectionsKt.first((List) servers)) != null) {
            serversBean.setAddress(INSTANCE.getServerAddress(profileItem));
            String serverPort = profileItem.getServerPort();
            if (serverPort == null) {
                serverPort = new ObfuscatedString(new long[]{-1249143152504564056L}).toString();
            }
            serversBean.setPort(Integer.parseInt(serverPort));
            if (_ExtKt.isNotNullEmpty(profileItem.getUsername())) {
                V2rayConfig.OutboundBean.OutSettingsBean.ServersBean.SocksUsersBean socksUsersBean = new V2rayConfig.OutboundBean.OutSettingsBean.ServersBean.SocksUsersBean(null, null, 0, 7, null);
                String username = profileItem.getUsername();
                if (username == null) {
                    username = new ObfuscatedString(new long[]{5335015138830822059L}).toString();
                }
                socksUsersBean.setUser(username);
                String password = profileItem.getPassword();
                if (password == null) {
                    password = new ObfuscatedString(new long[]{782257677624007655L}).toString();
                }
                socksUsersBean.setPass(password);
                serversBean.setUsers(AbstractC0586x968d4673.listOf(socksUsersBean));
            }
        }
        return createInitOutbound;
    }

    @NotNull
    public final String toUri(@NotNull ProfileItem config2) {
        String obfuscatedString;
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{7902250037323523038L, -8558801636118453714L}).toString());
        if (_ExtKt.isNotNullEmpty(config2.getUsername())) {
            obfuscatedString = AbstractC0362x4440ab85.m2953x742e2fda(config2.getUsername(), ":", config2.getPassword());
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{5256414887929628616L, 2224457632269798292L}).toString();
        }
        return toUri(config2, Utils.INSTANCE.encode(obfuscatedString), null);
    }
}
