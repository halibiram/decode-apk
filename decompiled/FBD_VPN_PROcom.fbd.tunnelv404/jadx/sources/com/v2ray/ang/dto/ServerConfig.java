package com.v2ray.ang.dto;

import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.V2rayConfig;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0586x968d4673;
import defpackage.AbstractC0587xb7546d05;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u0000 32\u00020\u0001:\u00013BO\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010#\u001a\u0004\u0018\u00010\fJ\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00070%J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0005HÆ\u0003J\t\u0010(\u001a\u00020\u0007HÆ\u0003J\t\u0010)\u001a\u00020\tHÆ\u0003J\t\u0010*\u001a\u00020\u0007HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u000eHÆ\u0003JS\u0010-\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eHÆ\u0001J\u0013\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00101\u001a\u00020\u0003HÖ\u0001J\t\u00102\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u00064"}, d2 = {"Lcom/v2ray/ang/dto/ServerConfig;", "", "configVersion", "", "configType", "Lcom/v2ray/ang/dto/EConfigType;", "subscriptionId", "", "addedTime", "", "remarks", "outboundBean", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;", "fullConfig", "Lcom/v2ray/ang/dto/V2rayConfig;", "<init>", "(ILcom/v2ray/ang/dto/EConfigType;Ljava/lang/String;JLjava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;Lcom/v2ray/ang/dto/V2rayConfig;)V", "getConfigVersion", "()I", "getConfigType", "()Lcom/v2ray/ang/dto/EConfigType;", "getSubscriptionId", "()Ljava/lang/String;", "setSubscriptionId", "(Ljava/lang/String;)V", "getAddedTime", "()J", "getRemarks", "setRemarks", "getOutboundBean", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;", "getFullConfig", "()Lcom/v2ray/ang/dto/V2rayConfig;", "setFullConfig", "(Lcom/v2ray/ang/dto/V2rayConfig;)V", "getProxyOutbound", "getAllOutboundTags", "", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "Companion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nServerConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServerConfig.kt\ncom/v2ray/ang/dto/ServerConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1563#2:88\n1634#2,3:89\n*S KotlinDebug\n*F\n+ 1 ServerConfig.kt\ncom/v2ray/ang/dto/ServerConfig\n*L\n82#1:88\n82#1:89,3\n*E\n"})
/* loaded from: classes3.dex */
public final /* data */ class ServerConfig {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private final long addedTime;

    @NotNull
    private final EConfigType configType;
    private final int configVersion;

    @Nullable
    private V2rayConfig fullConfig;

    @Nullable
    private final V2rayConfig.OutboundBean outboundBean;

    @NotNull
    private String remarks;

    @NotNull
    private String subscriptionId;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/v2ray/ang/dto/ServerConfig$Companion;", "", "<init>", "()V", "create", "Lcom/v2ray/ang/dto/ServerConfig;", "configType", "Lcom/v2ray/ang/dto/EConfigType;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {

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
                    iArr[EConfigType.VLESS.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[EConfigType.CUSTOM.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[EConfigType.SHADOWSOCKS.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[EConfigType.SOCKS.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[EConfigType.HTTP.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[EConfigType.TROJAN.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[EConfigType.HYSTERIA2.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[EConfigType.WIREGUARD.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ServerConfig create(@NotNull EConfigType configType) {
            Intrinsics.checkNotNullParameter(configType, new ObfuscatedString(new long[]{-619515356299567630L, -1032059638858946837L, 7037695011909073270L}).toString());
            switch (WhenMappings.$EnumSwitchMapping$0[configType.ordinal()]) {
                case 1:
                case 2:
                    String lowerCase = configType.name().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, new ObfuscatedString(new long[]{-1214732773132445061L, 7029434948495041149L, -1344405560581403862L}).toString());
                    return new ServerConfig(0, configType, null, 0L, null, new V2rayConfig.OutboundBean(null, lowerCase, new V2rayConfig.OutboundBean.OutSettingsBean(AbstractC0586x968d4673.listOf(new V2rayConfig.OutboundBean.OutSettingsBean.VnextBean(null, 0, AbstractC0586x968d4673.listOf(new V2rayConfig.OutboundBean.OutSettingsBean.VnextBean.UsersBean(null, null, null, 0, null, null, 63, null)), 3, null)), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131070, null), new V2rayConfig.OutboundBean.StreamSettingsBean(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null), null, null, null, 113, null), null, 93, null);
                case 3:
                    return new ServerConfig(0, configType, null, 0L, null, null, null, 125, null);
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    String lowerCase2 = configType.name().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase2, new ObfuscatedString(new long[]{-831212683814591235L, 4559075993128778560L, -3959485602699193665L}).toString());
                    return new ServerConfig(0, configType, null, 0L, null, new V2rayConfig.OutboundBean(null, lowerCase2, new V2rayConfig.OutboundBean.OutSettingsBean(null, null, null, AbstractC0586x968d4673.listOf(new V2rayConfig.OutboundBean.OutSettingsBean.ServersBean(null, null, false, null, 0, 0, null, null, null, null, 1023, null)), null, null, null, null, null, null, null, null, null, null, null, null, null, 131063, null), new V2rayConfig.OutboundBean.StreamSettingsBean(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null), null, null, null, 113, null), null, 93, null);
                case 9:
                    String lowerCase3 = configType.name().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase3, new ObfuscatedString(new long[]{-3245938053481250690L, -6466171341648844475L, -3047420212985318470L}).toString());
                    return new ServerConfig(0, configType, null, 0L, null, new V2rayConfig.OutboundBean(null, lowerCase3, new V2rayConfig.OutboundBean.OutSettingsBean(null, null, null, null, null, null, null, null, null, null, null, null, new ObfuscatedString(new long[]{5406996123353915816L}).toString(), AbstractC0586x968d4673.listOf(new V2rayConfig.OutboundBean.OutSettingsBean.WireGuardBean(null, null, null, 7, null)), null, null, null, 118783, null), null, null, null, null, 121, null), null, 93, null);
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }

        private Companion() {
        }
    }

    public ServerConfig(int i, @NotNull EConfigType eConfigType, @NotNull String str, long j, @NotNull String str2, @Nullable V2rayConfig.OutboundBean outboundBean, @Nullable V2rayConfig v2rayConfig) {
        Intrinsics.checkNotNullParameter(eConfigType, new ObfuscatedString(new long[]{2208701779385707514L, -5394281286293107602L, 7843773493680031926L}).toString());
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-6171108895722216854L, -5991811052065813766L, 1034572094731700049L}).toString());
        Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{-3906178197462363660L, 3615753503656543528L}).toString());
        this.configVersion = i;
        this.configType = eConfigType;
        this.subscriptionId = str;
        this.addedTime = j;
        this.remarks = str2;
        this.outboundBean = outboundBean;
        this.fullConfig = v2rayConfig;
    }

    /* renamed from: component1, reason: from getter */
    public final int getConfigVersion() {
        return this.configVersion;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final EConfigType getConfigType() {
        return this.configType;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getSubscriptionId() {
        return this.subscriptionId;
    }

    /* renamed from: component4, reason: from getter */
    public final long getAddedTime() {
        return this.addedTime;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final String getRemarks() {
        return this.remarks;
    }

    @Nullable
    /* renamed from: component6, reason: from getter */
    public final V2rayConfig.OutboundBean getOutboundBean() {
        return this.outboundBean;
    }

    @Nullable
    /* renamed from: component7, reason: from getter */
    public final V2rayConfig getFullConfig() {
        return this.fullConfig;
    }

    @NotNull
    public final ServerConfig copy(int configVersion, @NotNull EConfigType configType, @NotNull String subscriptionId, long addedTime, @NotNull String remarks, @Nullable V2rayConfig.OutboundBean outboundBean, @Nullable V2rayConfig fullConfig) {
        Intrinsics.checkNotNullParameter(configType, new ObfuscatedString(new long[]{3607022464742220882L, -5394040550413394474L, 8515828900097425794L}).toString());
        Intrinsics.checkNotNullParameter(subscriptionId, new ObfuscatedString(new long[]{-2589034381873932986L, 9113011810287924066L, -5834242740017626114L}).toString());
        Intrinsics.checkNotNullParameter(remarks, new ObfuscatedString(new long[]{4787332285491386937L, 793322432257807487L}).toString());
        return new ServerConfig(configVersion, configType, subscriptionId, addedTime, remarks, outboundBean, fullConfig);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ServerConfig)) {
            return false;
        }
        ServerConfig serverConfig = (ServerConfig) other;
        return this.configVersion == serverConfig.configVersion && this.configType == serverConfig.configType && Intrinsics.areEqual(this.subscriptionId, serverConfig.subscriptionId) && this.addedTime == serverConfig.addedTime && Intrinsics.areEqual(this.remarks, serverConfig.remarks) && Intrinsics.areEqual(this.outboundBean, serverConfig.outboundBean) && Intrinsics.areEqual(this.fullConfig, serverConfig.fullConfig);
    }

    public final long getAddedTime() {
        return this.addedTime;
    }

    @NotNull
    public final List<String> getAllOutboundTags() {
        if (this.configType != EConfigType.CUSTOM) {
            return CollectionsKt__CollectionsKt.mutableListOf(new ObfuscatedString(new long[]{-8958618352361488686L, -4428424901374363897L}).toString(), new ObfuscatedString(new long[]{-6859604263333754620L, -2907520235514829311L}).toString(), new ObfuscatedString(new long[]{-4178377656974215269L, -5389993514740667414L}).toString());
        }
        V2rayConfig v2rayConfig = this.fullConfig;
        if (v2rayConfig != null) {
            ArrayList<V2rayConfig.OutboundBean> outbounds = v2rayConfig.getOutbounds();
            ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(outbounds, 10));
            Iterator<T> it = outbounds.iterator();
            while (it.hasNext()) {
                arrayList.add(((V2rayConfig.OutboundBean) it.next()).getTag());
            }
            return CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        }
        return new ArrayList();
    }

    @NotNull
    public final EConfigType getConfigType() {
        return this.configType;
    }

    public final int getConfigVersion() {
        return this.configVersion;
    }

    @Nullable
    public final V2rayConfig getFullConfig() {
        return this.fullConfig;
    }

    @Nullable
    public final V2rayConfig.OutboundBean getOutboundBean() {
        return this.outboundBean;
    }

    @Nullable
    public final V2rayConfig.OutboundBean getProxyOutbound() {
        if (this.configType != EConfigType.CUSTOM) {
            return this.outboundBean;
        }
        V2rayConfig v2rayConfig = this.fullConfig;
        if (v2rayConfig != null) {
            return v2rayConfig.getProxyOutbound();
        }
        return null;
    }

    @NotNull
    public final String getRemarks() {
        return this.remarks;
    }

    @NotNull
    public final String getSubscriptionId() {
        return this.subscriptionId;
    }

    public int hashCode() {
        int hashCode;
        int m2927x1378447b = AbstractC0362x4440ab85.m2927x1378447b((this.configType.hashCode() + (this.configVersion * 31)) * 31, 31, this.subscriptionId);
        long j = this.addedTime;
        int m2927x1378447b2 = AbstractC0362x4440ab85.m2927x1378447b((m2927x1378447b + ((int) (j ^ (j >>> 32)))) * 31, 31, this.remarks);
        V2rayConfig.OutboundBean outboundBean = this.outboundBean;
        int i = 0;
        if (outboundBean == null) {
            hashCode = 0;
        } else {
            hashCode = outboundBean.hashCode();
        }
        int i2 = (m2927x1378447b2 + hashCode) * 31;
        V2rayConfig v2rayConfig = this.fullConfig;
        if (v2rayConfig != null) {
            i = v2rayConfig.hashCode();
        }
        return i2 + i;
    }

    public final void setFullConfig(@Nullable V2rayConfig v2rayConfig) {
        this.fullConfig = v2rayConfig;
    }

    public final void setRemarks(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-2604507902614679561L, -8384835013848727913L}).toString());
        this.remarks = str;
    }

    public final void setSubscriptionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-5591312406533965023L, -6720188360462569108L}).toString());
        this.subscriptionId = str;
    }

    @NotNull
    public String toString() {
        return "ServerConfig(configVersion=" + this.configVersion + ", configType=" + this.configType + ", subscriptionId=" + this.subscriptionId + ", addedTime=" + this.addedTime + ", remarks=" + this.remarks + ", outboundBean=" + this.outboundBean + ", fullConfig=" + this.fullConfig + ")";
    }

    public /* synthetic */ ServerConfig(int i, EConfigType eConfigType, String str, long j, String str2, V2rayConfig.OutboundBean outboundBean, V2rayConfig v2rayConfig, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 3 : i, eConfigType, (i2 & 4) != 0 ? new ObfuscatedString(new long[]{-3869199469340019945L}).toString() : str, (i2 & 8) != 0 ? System.currentTimeMillis() : j, (i2 & 16) != 0 ? new ObfuscatedString(new long[]{-7008952565776405719L}).toString() : str2, (i2 & 32) != 0 ? null : outboundBean, (i2 & 64) != 0 ? null : v2rayConfig);
    }
}
