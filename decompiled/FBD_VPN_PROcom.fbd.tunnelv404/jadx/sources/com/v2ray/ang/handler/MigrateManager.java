package com.v2ray.ang.handler;

import com.panda912.muddy.ObfuscatedString;
import com.tencent.mmkv.MMKV;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.NetworkType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.ServerConfig;
import com.v2ray.ang.dto.V2rayConfig;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.util.JsonUtil;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.C0396x4a23d5ac;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\f\u001a\u00020\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0019\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u001a"}, d2 = {"Lcom/v2ray/ang/handler/MigrateManager;", "", "<init>", "()V", "ID_SERVER_CONFIG", "", "serverStorage", "Lcom/tencent/mmkv/MMKV;", "getServerStorage", "()Lcom/tencent/mmkv/MMKV;", "serverStorage$delegate", "Lkotlin/Lazy;", "migrateServerConfig2Profile", "", "migrateServerConfig2ProfileSub", "Lcom/v2ray/ang/dto/ProfileItem;", "configOld", "Lcom/v2ray/ang/dto/ServerConfig;", "migrate2ProfileCommon", "migrate2ProfileSocks", "migrate2ProfileHttp", "migrate2ProfileWireguard", "migrate2ProfileHysteria2", "migrate2ProfileCustom", "decodeServerConfigOld", "guid", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class MigrateManager {

    @NotNull
    private static final String ID_SERVER_CONFIG = new ObfuscatedString(new long[]{-8938921473796214511L, 5980699699379457850L, -6234607327372187357L}).toString();

    @NotNull
    public static final MigrateManager INSTANCE = new MigrateManager();

    /* renamed from: serverStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy serverStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(10));

    private MigrateManager() {
    }

    private final ServerConfig decodeServerConfigOld(String guid) {
        String decodeString;
        if (StringsKt__StringsKt.isBlank(guid) || (decodeString = getServerStorage().decodeString(guid)) == null || StringsKt__StringsKt.isBlank(decodeString)) {
            return null;
        }
        return (ServerConfig) JsonUtil.INSTANCE.fromJson(decodeString, ServerConfig.class);
    }

    private final MMKV getServerStorage() {
        return (MMKV) serverStorage.getValue();
    }

    private final ProfileItem migrate2ProfileCommon(ServerConfig configOld) {
        String str;
        List<V2rayConfig.OutboundBean.OutSettingsBean.ServersBean> servers;
        V2rayConfig.OutboundBean.OutSettingsBean.ServersBean serversBean;
        String type;
        String str2;
        String str3;
        String str4;
        ObfuscatedString obfuscatedString;
        String str5;
        String str6;
        String str7;
        V2rayConfig.OutboundBean.StreamSettingsBean.TlsSettingsBean tlsSettingsBean;
        Boolean bool;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        List<String> alpn;
        V2rayConfig.OutboundBean.StreamSettingsBean.GrpcSettingsBean grpcSettings;
        V2rayConfig.OutboundBean.StreamSettingsBean.GrpcSettingsBean grpcSettings2;
        V2rayConfig.OutboundBean.StreamSettingsBean.GrpcSettingsBean grpcSettings3;
        V2rayConfig.OutboundBean.StreamSettingsBean.QuicSettingBean quicSettings;
        V2rayConfig.OutboundBean.StreamSettingsBean.QuicSettingBean quicSettings2;
        V2rayConfig.OutboundBean.StreamSettingsBean.KcpSettingsBean kcpSettings;
        List<V2rayConfig.OutboundBean.OutSettingsBean.VnextBean> vnext;
        V2rayConfig.OutboundBean.OutSettingsBean.VnextBean vnextBean;
        List<V2rayConfig.OutboundBean.OutSettingsBean.VnextBean.UsersBean> users;
        V2rayConfig.OutboundBean.OutSettingsBean.VnextBean.UsersBean usersBean;
        boolean z = false;
        ProfileItem create = ProfileItem.INSTANCE.create(configOld.getConfigType());
        V2rayConfig.OutboundBean proxyOutbound = configOld.getProxyOutbound();
        String str13 = null;
        if (proxyOutbound == null) {
            return null;
        }
        create.setRemarks(configOld.getRemarks());
        create.setServer(proxyOutbound.getServerAddress());
        create.setServerPort(String.valueOf(proxyOutbound.getServerPort()));
        create.setMethod(proxyOutbound.getSecurityEncryption());
        create.setPassword(proxyOutbound.getPassword());
        V2rayConfig.OutboundBean.OutSettingsBean settings = proxyOutbound.getSettings();
        if (settings == null || (vnext = settings.getVnext()) == null || (vnextBean = (V2rayConfig.OutboundBean.OutSettingsBean.VnextBean) CollectionsKt___CollectionsKt.first((List) vnext)) == null || (users = vnextBean.getUsers()) == null || (usersBean = (V2rayConfig.OutboundBean.OutSettingsBean.VnextBean.UsersBean) CollectionsKt___CollectionsKt.first((List) users)) == null || (str = usersBean.getFlow()) == null) {
            V2rayConfig.OutboundBean.OutSettingsBean settings2 = proxyOutbound.getSettings();
            if (settings2 != null && (servers = settings2.getServers()) != null && (serversBean = (V2rayConfig.OutboundBean.OutSettingsBean.ServersBean) CollectionsKt___CollectionsKt.first((List) servers)) != null) {
                str = serversBean.getFlow();
            } else {
                str = null;
            }
        }
        create.setFlow(str);
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings = proxyOutbound.getStreamSettings();
        if (streamSettings == null || (type = streamSettings.getNetwork()) == null) {
            type = NetworkType.TCP.getType();
        }
        create.setNetwork(type);
        List<String> transportSettingDetails = proxyOutbound.getTransportSettingDetails();
        if (transportSettingDetails != null) {
            String str14 = transportSettingDetails.get(0);
            if (str14 == null) {
                str14 = new ObfuscatedString(new long[]{7902694434562010689L}).toString();
            }
            create.setHeaderType(str14);
            String str15 = transportSettingDetails.get(1);
            if (str15 == null) {
                str15 = new ObfuscatedString(new long[]{7754793297181591112L}).toString();
            }
            create.setHost(str15);
            String str16 = transportSettingDetails.get(2);
            if (str16 == null) {
                str16 = new ObfuscatedString(new long[]{231512260099445237L}).toString();
            }
            create.setPath(str16);
        }
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings2 = proxyOutbound.getStreamSettings();
        if (streamSettings2 != null && (kcpSettings = streamSettings2.getKcpSettings()) != null) {
            str2 = kcpSettings.getSeed();
        } else {
            str2 = null;
        }
        create.setSeed(str2);
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings3 = proxyOutbound.getStreamSettings();
        if (streamSettings3 != null && (quicSettings2 = streamSettings3.getQuicSettings()) != null) {
            str3 = quicSettings2.getSecurity();
        } else {
            str3 = null;
        }
        create.setQuicSecurity(str3);
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings4 = proxyOutbound.getStreamSettings();
        if (streamSettings4 != null && (quicSettings = streamSettings4.getQuicSettings()) != null) {
            str4 = quicSettings.getKey();
        } else {
            str4 = null;
        }
        create.setQuicKey(str4);
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings5 = proxyOutbound.getStreamSettings();
        if (streamSettings5 != null && (grpcSettings3 = streamSettings5.getGrpcSettings()) != null) {
            z = Intrinsics.areEqual(grpcSettings3.getMultiMode(), Boolean.TRUE);
        }
        if (z) {
            obfuscatedString = new ObfuscatedString(new long[]{-251239339152615320L, 7000981910187938061L});
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-6598583882163281982L, 1277455484346089004L});
        }
        create.setMode(obfuscatedString.toString());
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings6 = proxyOutbound.getStreamSettings();
        if (streamSettings6 != null && (grpcSettings2 = streamSettings6.getGrpcSettings()) != null) {
            str5 = grpcSettings2.getServiceName();
        } else {
            str5 = null;
        }
        create.setServiceName(str5);
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings7 = proxyOutbound.getStreamSettings();
        if (streamSettings7 != null && (grpcSettings = streamSettings7.getGrpcSettings()) != null) {
            str6 = grpcSettings.getAuthority();
        } else {
            str6 = null;
        }
        create.setAuthority(str6);
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings8 = proxyOutbound.getStreamSettings();
        if (streamSettings8 != null) {
            str7 = streamSettings8.getSecurity();
        } else {
            str7 = null;
        }
        create.setSecurity(str7);
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings9 = proxyOutbound.getStreamSettings();
        if (streamSettings9 == null || (tlsSettingsBean = streamSettings9.getRealitySettings()) == null) {
            V2rayConfig.OutboundBean.StreamSettingsBean streamSettings10 = proxyOutbound.getStreamSettings();
            if (streamSettings10 != null) {
                tlsSettingsBean = streamSettings10.getTlsSettings();
            } else {
                tlsSettingsBean = null;
            }
        }
        if (tlsSettingsBean != null) {
            bool = Boolean.valueOf(tlsSettingsBean.getAllowInsecure());
        } else {
            bool = null;
        }
        create.setInsecure(bool);
        if (tlsSettingsBean != null) {
            str8 = tlsSettingsBean.getServerName();
        } else {
            str8 = null;
        }
        create.setSni(str8);
        if (tlsSettingsBean != null) {
            str9 = tlsSettingsBean.getFingerprint();
        } else {
            str9 = null;
        }
        create.setFingerPrint(str9);
        if (tlsSettingsBean != null && (alpn = tlsSettingsBean.getAlpn()) != null) {
            str10 = CollectionsKt___CollectionsKt.joinToString$default(alpn, new ObfuscatedString(new long[]{6669593697266445438L, 6045685727317283005L}).toString(), null, null, 0, null, null, 62, null);
        } else {
            str10 = null;
        }
        create.setAlpn(String.valueOf(_ExtKt.removeWhiteSpace(str10)));
        if (tlsSettingsBean != null) {
            str11 = tlsSettingsBean.getPublicKey();
        } else {
            str11 = null;
        }
        create.setPublicKey(str11);
        if (tlsSettingsBean != null) {
            str12 = tlsSettingsBean.getShortId();
        } else {
            str12 = null;
        }
        create.setShortId(str12);
        if (tlsSettingsBean != null) {
            str13 = tlsSettingsBean.getSpiderX();
        }
        create.setSpiderX(str13);
        return create;
    }

    private final ProfileItem migrate2ProfileCustom(ServerConfig configOld) {
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.CUSTOM);
        V2rayConfig.OutboundBean proxyOutbound = configOld.getProxyOutbound();
        if (proxyOutbound == null) {
            return null;
        }
        create.setRemarks(configOld.getRemarks());
        create.setServer(proxyOutbound.getServerAddress());
        create.setServerPort(String.valueOf(proxyOutbound.getServerPort()));
        return create;
    }

    private final ProfileItem migrate2ProfileHttp(ServerConfig configOld) {
        List<V2rayConfig.OutboundBean.OutSettingsBean.ServersBean> servers;
        V2rayConfig.OutboundBean.OutSettingsBean.ServersBean serversBean;
        List<V2rayConfig.OutboundBean.OutSettingsBean.ServersBean.SocksUsersBean> users;
        V2rayConfig.OutboundBean.OutSettingsBean.ServersBean.SocksUsersBean socksUsersBean;
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.HTTP);
        V2rayConfig.OutboundBean proxyOutbound = configOld.getProxyOutbound();
        String str = null;
        if (proxyOutbound == null) {
            return null;
        }
        create.setRemarks(configOld.getRemarks());
        create.setServer(proxyOutbound.getServerAddress());
        create.setServerPort(String.valueOf(proxyOutbound.getServerPort()));
        V2rayConfig.OutboundBean.OutSettingsBean settings = proxyOutbound.getSettings();
        if (settings != null && (servers = settings.getServers()) != null && (serversBean = (V2rayConfig.OutboundBean.OutSettingsBean.ServersBean) CollectionsKt___CollectionsKt.first((List) servers)) != null && (users = serversBean.getUsers()) != null && (socksUsersBean = (V2rayConfig.OutboundBean.OutSettingsBean.ServersBean.SocksUsersBean) CollectionsKt___CollectionsKt.first((List) users)) != null) {
            str = socksUsersBean.getUser();
        }
        create.setUsername(str);
        create.setPassword(proxyOutbound.getPassword());
        return create;
    }

    private final ProfileItem migrate2ProfileHysteria2(ServerConfig configOld) {
        V2rayConfig.OutboundBean.StreamSettingsBean.TlsSettingsBean tlsSettings;
        String str;
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.HYSTERIA2);
        V2rayConfig.OutboundBean proxyOutbound = configOld.getProxyOutbound();
        String str2 = null;
        if (proxyOutbound == null) {
            return null;
        }
        create.setRemarks(configOld.getRemarks());
        create.setServer(proxyOutbound.getServerAddress());
        create.setServerPort(String.valueOf(proxyOutbound.getServerPort()));
        create.setPassword(proxyOutbound.getPassword());
        create.setSecurity(new ObfuscatedString(new long[]{-2599887306413409810L, 6078755521199297064L}).toString());
        V2rayConfig.OutboundBean.StreamSettingsBean streamSettings = proxyOutbound.getStreamSettings();
        if (streamSettings != null && (tlsSettings = streamSettings.getTlsSettings()) != null) {
            create.setInsecure(Boolean.valueOf(tlsSettings.getAllowInsecure()));
            create.setSni(tlsSettings.getServerName());
            List<String> alpn = tlsSettings.getAlpn();
            if (alpn != null) {
                str = CollectionsKt___CollectionsKt.joinToString$default(alpn, new ObfuscatedString(new long[]{5613814738882240533L, -2330296724254431912L}).toString(), null, null, 0, null, null, 62, null);
            } else {
                str = null;
            }
            String removeWhiteSpace = _ExtKt.removeWhiteSpace(str);
            if (removeWhiteSpace == null) {
                removeWhiteSpace = new ObfuscatedString(new long[]{8322332300261967065L}).toString();
            }
            create.setAlpn(removeWhiteSpace);
        }
        V2rayConfig.OutboundBean.OutSettingsBean settings = proxyOutbound.getSettings();
        if (settings != null) {
            str2 = settings.getObfsPassword();
        }
        create.setObfsPassword(str2);
        return create;
    }

    private final ProfileItem migrate2ProfileSocks(ServerConfig configOld) {
        List<V2rayConfig.OutboundBean.OutSettingsBean.ServersBean> servers;
        V2rayConfig.OutboundBean.OutSettingsBean.ServersBean serversBean;
        List<V2rayConfig.OutboundBean.OutSettingsBean.ServersBean.SocksUsersBean> users;
        V2rayConfig.OutboundBean.OutSettingsBean.ServersBean.SocksUsersBean socksUsersBean;
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.SOCKS);
        V2rayConfig.OutboundBean proxyOutbound = configOld.getProxyOutbound();
        String str = null;
        if (proxyOutbound == null) {
            return null;
        }
        create.setRemarks(configOld.getRemarks());
        create.setServer(proxyOutbound.getServerAddress());
        create.setServerPort(String.valueOf(proxyOutbound.getServerPort()));
        V2rayConfig.OutboundBean.OutSettingsBean settings = proxyOutbound.getSettings();
        if (settings != null && (servers = settings.getServers()) != null && (serversBean = (V2rayConfig.OutboundBean.OutSettingsBean.ServersBean) CollectionsKt___CollectionsKt.first((List) servers)) != null && (users = serversBean.getUsers()) != null && (socksUsersBean = (V2rayConfig.OutboundBean.OutSettingsBean.ServersBean.SocksUsersBean) CollectionsKt___CollectionsKt.first((List) users)) != null) {
            str = socksUsersBean.getUser();
        }
        create.setUsername(str);
        create.setPassword(proxyOutbound.getPassword());
        return create;
    }

    private final ProfileItem migrate2ProfileWireguard(ServerConfig configOld) {
        String str;
        V2rayConfig.OutboundBean.OutSettingsBean.WireGuardBean wireGuardBean;
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.WIREGUARD);
        V2rayConfig.OutboundBean proxyOutbound = configOld.getProxyOutbound();
        String str2 = null;
        if (proxyOutbound == null) {
            return null;
        }
        create.setRemarks(configOld.getRemarks());
        create.setServer(proxyOutbound.getServerAddress());
        create.setServerPort(String.valueOf(proxyOutbound.getServerPort()));
        V2rayConfig.OutboundBean.OutSettingsBean settings = proxyOutbound.getSettings();
        if (settings != null) {
            create.setSecretKey(settings.getSecretKey());
            Object address = settings.getAddress();
            Intrinsics.checkNotNull(address, new ObfuscatedString(new long[]{-2140538622842567872L, 737174043915247516L, -8796096469387434360L, 6262343297934026814L, -9138566509115965468L, 4284126935420042582L, -8918902771909843030L, 4357863824960003622L, 8528008626929595784L}).toString());
            create.setLocalAddress(String.valueOf(_ExtKt.removeWhiteSpace(CollectionsKt___CollectionsKt.joinToString$default((List) address, new ObfuscatedString(new long[]{3361338509044977090L, 3889182908877271789L}).toString(), null, null, 0, null, null, 62, null))));
            List<V2rayConfig.OutboundBean.OutSettingsBean.WireGuardBean> peers = settings.getPeers();
            if (peers != null && (wireGuardBean = (V2rayConfig.OutboundBean.OutSettingsBean.WireGuardBean) CollectionsKt___CollectionsKt.getOrNull(peers, 0)) != null) {
                str = wireGuardBean.getPublicKey();
            } else {
                str = null;
            }
            create.setPublicKey(str);
            create.setMtu(settings.getMtu());
            List<Integer> reserved = settings.getReserved();
            if (reserved != null) {
                str2 = CollectionsKt___CollectionsKt.joinToString$default(reserved, new ObfuscatedString(new long[]{-7587759881409930949L, 6802143096763600338L}).toString(), null, null, 0, null, null, 62, null);
            }
            create.setReserved(String.valueOf(_ExtKt.removeWhiteSpace(str2)));
        }
        return create;
    }

    private final ProfileItem migrateServerConfig2ProfileSub(ServerConfig configOld) {
        String str;
        V2rayConfig.OutboundBean proxyOutbound = configOld.getProxyOutbound();
        if (proxyOutbound != null) {
            str = proxyOutbound.getProtocol();
        } else {
            str = null;
        }
        String obfuscatedString = new ObfuscatedString(new long[]{972578500592725618L, -417487400176929130L}).toString();
        Locale locale = Locale.ROOT;
        String lowerCase = obfuscatedString.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, new ObfuscatedString(new long[]{2678101921552755187L, -8072567424333943587L, -2504557768459798321L}).toString());
        if (Intrinsics.areEqual(str, lowerCase)) {
            return migrate2ProfileCommon(configOld);
        }
        String lowerCase2 = new ObfuscatedString(new long[]{-2370214577915182541L, 5058957250346160035L}).toString().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, new ObfuscatedString(new long[]{1621881149533647729L, -292342852877414437L, 9098356353275311712L}).toString());
        if (Intrinsics.areEqual(str, lowerCase2)) {
            return migrate2ProfileCommon(configOld);
        }
        String lowerCase3 = new ObfuscatedString(new long[]{-2451169825571600717L, -152479377745786696L}).toString().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase3, new ObfuscatedString(new long[]{-7005006268271247985L, -5947947295319758744L, 2723688662045753372L}).toString());
        if (Intrinsics.areEqual(str, lowerCase3)) {
            return migrate2ProfileCommon(configOld);
        }
        String lowerCase4 = new ObfuscatedString(new long[]{-7879503592805102969L, 8285178753418288095L, -907526140066829040L}).toString().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase4, new ObfuscatedString(new long[]{7414654100237992677L, 6543197514042537442L, -743889657099598633L}).toString());
        if (Intrinsics.areEqual(str, lowerCase4)) {
            return migrate2ProfileCommon(configOld);
        }
        String lowerCase5 = new ObfuscatedString(new long[]{-4664456536983128106L, -844808998424685933L}).toString().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase5, new ObfuscatedString(new long[]{8597606447626141521L, 475879911826052712L, 1004414420832896992L}).toString());
        if (Intrinsics.areEqual(str, lowerCase5)) {
            return migrate2ProfileSocks(configOld);
        }
        String lowerCase6 = new ObfuscatedString(new long[]{89538411363425494L, -3865102254689975490L}).toString().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase6, new ObfuscatedString(new long[]{1041605756607989471L, 921487746393537096L, -867997263940990191L}).toString());
        if (Intrinsics.areEqual(str, lowerCase6)) {
            return migrate2ProfileHttp(configOld);
        }
        String lowerCase7 = new ObfuscatedString(new long[]{-1243961774098455356L, -551092631493824453L, -2772241805799269680L}).toString().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase7, new ObfuscatedString(new long[]{7876126157811382899L, 4209175101778480529L, -6439264442348115627L}).toString());
        if (Intrinsics.areEqual(str, lowerCase7)) {
            return migrate2ProfileWireguard(configOld);
        }
        String lowerCase8 = new ObfuscatedString(new long[]{-296487253893055275L, -999958665908202531L, -5258651290344425285L}).toString().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase8, new ObfuscatedString(new long[]{-2181170554719554992L, 7961916023496402493L, 7348092805193451354L}).toString());
        if (Intrinsics.areEqual(str, lowerCase8)) {
            return migrate2ProfileHysteria2(configOld);
        }
        String lowerCase9 = new ObfuscatedString(new long[]{5387133040356879956L, -8553972170573235489L}).toString().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase9, new ObfuscatedString(new long[]{9168390184556233796L, -1967921043755088649L, 5298042513129729705L}).toString());
        if (!Intrinsics.areEqual(str, lowerCase9)) {
            return null;
        }
        return migrate2ProfileCustom(configOld);
    }

    public static final MMKV serverStorage_delegate$lambda$0() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{-3179302752716251619L, 4897496436692582370L, 7559789019105891352L}).toString(), 2);
    }

    public final boolean migrateServerConfig2Profile() {
        String[] allKeys;
        if (((int) getServerStorage().count()) == 0 || (allKeys = getServerStorage().allKeys()) == null) {
            return false;
        }
        new ObfuscatedString(new long[]{-8295309867125075307L, -6003213361440868191L, 4769695536369568299L}).toString();
        for (String str : allKeys) {
            Intrinsics.checkNotNull(str);
            ServerConfig decodeServerConfigOld = decodeServerConfigOld(str);
            if (decodeServerConfigOld != null) {
                MmkvManager mmkvManager = MmkvManager.INSTANCE;
                if (mmkvManager.decodeServerConfig(str) != null) {
                    getServerStorage().remove(str);
                } else {
                    ProfileItem migrateServerConfig2ProfileSub = migrateServerConfig2ProfileSub(decodeServerConfigOld);
                    if (migrateServerConfig2ProfileSub != null) {
                        migrateServerConfig2ProfileSub.setSubscriptionId(decodeServerConfigOld.getSubscriptionId());
                        mmkvManager.encodeServerConfig(str, migrateServerConfig2ProfileSub);
                        if (mmkvManager.decodeServerConfig(str) != null) {
                            getServerStorage().remove(str);
                            new ObfuscatedString(new long[]{554666493712096742L, 2646739720127397788L, -6545690200948898510L}).toString();
                            migrateServerConfig2ProfileSub.getRemarks();
                        }
                    }
                }
            }
        }
        new ObfuscatedString(new long[]{3714340627123048122L, 8977881819644292774L, 4379773186999212815L}).toString();
        new ObfuscatedString(new long[]{9022167461397973240L, -339214755511176783L, -6994939048005963326L, -1425514259044823143L, -4674841761265013797L}).toString();
        return true;
    }
}
