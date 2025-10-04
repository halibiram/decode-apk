package com.v2ray.ang.dto;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b,\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0081\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005HÆ\u0003J\u0011\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u00101\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005HÆ\u0003J\t\u00102\u001a\u00020\fHÆ\u0003J\u0010\u00103\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010'J\u0088\u0001\u00104\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00052\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u00105J\u0013\u00106\u001a\u00020\f2\b\u00107\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00108\u001a\u000209HÖ\u0001J\t\u0010:\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0015\"\u0004\b\u0019\u0010\u0017R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b\u001b\u0010\u0013R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0011\"\u0004\b\u001d\u0010\u0013R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0011\"\u0004\b\u001f\u0010\u0013R\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0015\"\u0004\b!\u0010\u0017R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001e\u0010\r\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010*\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006;"}, d2 = {"Lcom/v2ray/ang/dto/RulesetItem;", "", "remarks", "", "ip", "", "domain", "outboundTag", "port", "network", "protocol", "enabled", "", "locked", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/Boolean;)V", "getRemarks", "()Ljava/lang/String;", "setRemarks", "(Ljava/lang/String;)V", "getIp", "()Ljava/util/List;", "setIp", "(Ljava/util/List;)V", "getDomain", "setDomain", "getOutboundTag", "setOutboundTag", "getPort", "setPort", "getNetwork", "setNetwork", "getProtocol", "setProtocol", "getEnabled", "()Z", "setEnabled", "(Z)V", "getLocked", "()Ljava/lang/Boolean;", "setLocked", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/Boolean;)Lcom/v2ray/ang/dto/RulesetItem;", "equals", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class RulesetItem {

    @Nullable
    private List<String> domain;
    private boolean enabled;

    @Nullable
    private List<String> ip;

    @Nullable
    private Boolean locked;

    @Nullable
    private String network;

    @NotNull
    private String outboundTag;

    @Nullable
    private String port;

    @Nullable
    private List<String> protocol;

    @Nullable
    private String remarks;

    public RulesetItem() {
        this(null, null, null, null, null, null, null, false, null, 511, null);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getRemarks() {
        return this.remarks;
    }

    @Nullable
    public final List<String> component2() {
        return this.ip;
    }

    @Nullable
    public final List<String> component3() {
        return this.domain;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getOutboundTag() {
        return this.outboundTag;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final String getPort() {
        return this.port;
    }

    @Nullable
    /* renamed from: component6, reason: from getter */
    public final String getNetwork() {
        return this.network;
    }

    @Nullable
    public final List<String> component7() {
        return this.protocol;
    }

    /* renamed from: component8, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    @Nullable
    /* renamed from: component9, reason: from getter */
    public final Boolean getLocked() {
        return this.locked;
    }

    @NotNull
    public final RulesetItem copy(@Nullable String remarks, @Nullable List<String> ip, @Nullable List<String> domain, @NotNull String outboundTag, @Nullable String port, @Nullable String network, @Nullable List<String> protocol, boolean enabled, @Nullable Boolean locked) {
        Intrinsics.checkNotNullParameter(outboundTag, new ObfuscatedString(new long[]{3887004008161621752L, -8004981576181169532L, 2858523656998350931L}).toString());
        return new RulesetItem(remarks, ip, domain, outboundTag, port, network, protocol, enabled, locked);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RulesetItem)) {
            return false;
        }
        RulesetItem rulesetItem = (RulesetItem) other;
        return Intrinsics.areEqual(this.remarks, rulesetItem.remarks) && Intrinsics.areEqual(this.ip, rulesetItem.ip) && Intrinsics.areEqual(this.domain, rulesetItem.domain) && Intrinsics.areEqual(this.outboundTag, rulesetItem.outboundTag) && Intrinsics.areEqual(this.port, rulesetItem.port) && Intrinsics.areEqual(this.network, rulesetItem.network) && Intrinsics.areEqual(this.protocol, rulesetItem.protocol) && this.enabled == rulesetItem.enabled && Intrinsics.areEqual(this.locked, rulesetItem.locked);
    }

    @Nullable
    public final List<String> getDomain() {
        return this.domain;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    @Nullable
    public final List<String> getIp() {
        return this.ip;
    }

    @Nullable
    public final Boolean getLocked() {
        return this.locked;
    }

    @Nullable
    public final String getNetwork() {
        return this.network;
    }

    @NotNull
    public final String getOutboundTag() {
        return this.outboundTag;
    }

    @Nullable
    public final String getPort() {
        return this.port;
    }

    @Nullable
    public final List<String> getProtocol() {
        return this.protocol;
    }

    @Nullable
    public final String getRemarks() {
        return this.remarks;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int i;
        String str = this.remarks;
        int i2 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i3 = hashCode * 31;
        List<String> list = this.ip;
        if (list == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = list.hashCode();
        }
        int i4 = (i3 + hashCode2) * 31;
        List<String> list2 = this.domain;
        if (list2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = list2.hashCode();
        }
        int m2927x1378447b = AbstractC0362x4440ab85.m2927x1378447b((i4 + hashCode3) * 31, 31, this.outboundTag);
        String str2 = this.port;
        if (str2 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str2.hashCode();
        }
        int i5 = (m2927x1378447b + hashCode4) * 31;
        String str3 = this.network;
        if (str3 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str3.hashCode();
        }
        int i6 = (i5 + hashCode5) * 31;
        List<String> list3 = this.protocol;
        if (list3 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = list3.hashCode();
        }
        int i7 = (i6 + hashCode6) * 31;
        if (this.enabled) {
            i = 1231;
        } else {
            i = 1237;
        }
        int i8 = (i7 + i) * 31;
        Boolean bool = this.locked;
        if (bool != null) {
            i2 = bool.hashCode();
        }
        return i8 + i2;
    }

    public final void setDomain(@Nullable List<String> list) {
        this.domain = list;
    }

    public final void setEnabled(boolean z) {
        this.enabled = z;
    }

    public final void setIp(@Nullable List<String> list) {
        this.ip = list;
    }

    public final void setLocked(@Nullable Boolean bool) {
        this.locked = bool;
    }

    public final void setNetwork(@Nullable String str) {
        this.network = str;
    }

    public final void setOutboundTag(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-6614009288035198562L, 8837520254574961061L}).toString());
        this.outboundTag = str;
    }

    public final void setPort(@Nullable String str) {
        this.port = str;
    }

    public final void setProtocol(@Nullable List<String> list) {
        this.protocol = list;
    }

    public final void setRemarks(@Nullable String str) {
        this.remarks = str;
    }

    @NotNull
    public String toString() {
        String str = this.remarks;
        List<String> list = this.ip;
        List<String> list2 = this.domain;
        String str2 = this.outboundTag;
        String str3 = this.port;
        String str4 = this.network;
        List<String> list3 = this.protocol;
        boolean z = this.enabled;
        Boolean bool = this.locked;
        StringBuilder sb = new StringBuilder("RulesetItem(remarks=");
        sb.append(str);
        sb.append(", ip=");
        sb.append(list);
        sb.append(", domain=");
        sb.append(list2);
        sb.append(", outboundTag=");
        sb.append(str2);
        sb.append(", port=");
        AbstractC0749x8313616e.m3350x5ac5058d(sb, str3, ", network=", str4, ", protocol=");
        sb.append(list3);
        sb.append(", enabled=");
        sb.append(z);
        sb.append(", locked=");
        sb.append(bool);
        sb.append(")");
        return sb.toString();
    }

    public RulesetItem(@Nullable String str, @Nullable List<String> list, @Nullable List<String> list2, @NotNull String str2, @Nullable String str3, @Nullable String str4, @Nullable List<String> list3, boolean z, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{9071786776684905006L, 4873416126051737089L, -6929910750149087893L}).toString());
        this.remarks = str;
        this.ip = list;
        this.domain = list2;
        this.outboundTag = str2;
        this.port = str3;
        this.network = str4;
        this.protocol = list3;
        this.enabled = z;
        this.locked = bool;
    }

    public /* synthetic */ RulesetItem(String str, List list, List list2, String str2, String str3, String str4, List list3, boolean z, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ObfuscatedString(new long[]{7657467094032090079L}).toString() : str, (i & 2) != 0 ? null : list, (i & 4) != 0 ? null : list2, (i & 8) != 0 ? new ObfuscatedString(new long[]{-3352402393039936434L}).toString() : str2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : str4, (i & 64) == 0 ? list3 : null, (i & 128) == 0 ? z : true, (i & 256) != 0 ? Boolean.FALSE : bool);
    }
}
