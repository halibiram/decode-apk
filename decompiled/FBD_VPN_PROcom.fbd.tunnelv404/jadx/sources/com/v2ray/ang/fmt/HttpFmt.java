package com.v2ray.ang.fmt;

import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.V2rayConfig;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.V2rayConfigManager;
import defpackage.AbstractC0586x968d4673;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/v2ray/ang/fmt/HttpFmt;", "Lcom/v2ray/ang/fmt/FmtBase;", "<init>", "()V", "toOutbound", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;", "profileItem", "Lcom/v2ray/ang/dto/ProfileItem;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class HttpFmt extends FmtBase {

    @NotNull
    public static final HttpFmt INSTANCE = new HttpFmt();

    private HttpFmt() {
    }

    @Nullable
    public final V2rayConfig.OutboundBean toOutbound(@NotNull ProfileItem profileItem) {
        V2rayConfig.OutboundBean.OutSettingsBean settings;
        List<V2rayConfig.OutboundBean.OutSettingsBean.ServersBean> servers;
        V2rayConfig.OutboundBean.OutSettingsBean.ServersBean serversBean;
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{-6704423839331770682L, 2258073155443729134L, 741217289242257568L}).toString());
        V2rayConfig.OutboundBean createInitOutbound = V2rayConfigManager.INSTANCE.createInitOutbound(EConfigType.HTTP);
        if (createInitOutbound != null && (settings = createInitOutbound.getSettings()) != null && (servers = settings.getServers()) != null && (serversBean = (V2rayConfig.OutboundBean.OutSettingsBean.ServersBean) CollectionsKt___CollectionsKt.first((List) servers)) != null) {
            serversBean.setAddress(INSTANCE.getServerAddress(profileItem));
            String serverPort = profileItem.getServerPort();
            if (serverPort == null) {
                serverPort = new ObfuscatedString(new long[]{-5911602834678998321L}).toString();
            }
            serversBean.setPort(Integer.parseInt(serverPort));
            if (_ExtKt.isNotNullEmpty(profileItem.getUsername())) {
                V2rayConfig.OutboundBean.OutSettingsBean.ServersBean.SocksUsersBean socksUsersBean = new V2rayConfig.OutboundBean.OutSettingsBean.ServersBean.SocksUsersBean(null, null, 0, 7, null);
                String username = profileItem.getUsername();
                if (username == null) {
                    username = new ObfuscatedString(new long[]{938644750548578623L}).toString();
                }
                socksUsersBean.setUser(username);
                String password = profileItem.getPassword();
                if (password == null) {
                    password = new ObfuscatedString(new long[]{-5154714307377000711L}).toString();
                }
                socksUsersBean.setPass(password);
                serversBean.setUsers(AbstractC0586x968d4673.listOf(socksUsersBean));
            }
        }
        return createInitOutbound;
    }
}
