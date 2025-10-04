package com.v2ray.ang.fmt;

import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.V2rayConfig;
import com.v2ray.ang.util.JsonUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/v2ray/ang/fmt/CustomFmt;", "Lcom/v2ray/ang/fmt/FmtBase;", "<init>", "()V", "parse", "Lcom/v2ray/ang/dto/ProfileItem;", "str", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CustomFmt extends FmtBase {

    @NotNull
    public static final CustomFmt INSTANCE = new CustomFmt();

    private CustomFmt() {
    }

    @Nullable
    public final ProfileItem parse(@NotNull String str) {
        String str2;
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-4862803728732622626L, -6809922099232595889L}).toString());
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.CUSTOM);
        V2rayConfig v2rayConfig = (V2rayConfig) JsonUtil.INSTANCE.fromJson(str, V2rayConfig.class);
        V2rayConfig.OutboundBean proxyOutbound = v2rayConfig.getProxyOutbound();
        String remarks = v2rayConfig.getRemarks();
        if (remarks == null) {
            remarks = String.valueOf(System.currentTimeMillis());
        }
        create.setRemarks(remarks);
        Integer num = null;
        if (proxyOutbound != null) {
            str2 = proxyOutbound.getServerAddress();
        } else {
            str2 = null;
        }
        create.setServer(str2);
        if (proxyOutbound != null) {
            num = proxyOutbound.getServerPort();
        }
        create.setServerPort(String.valueOf(num));
        return create;
    }
}
