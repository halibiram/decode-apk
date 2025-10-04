package com.v2ray.ang.fmt;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.NetworkType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.V2rayConfig;
import com.v2ray.ang.dto.VmessQRCode;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.handler.V2rayConfigManager;
import com.v2ray.ang.util.JsonUtil;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC1197x89633db9;
import java.net.URI;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.Typography;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0010\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u0005¨\u0006\u000e"}, d2 = {"Lcom/v2ray/ang/fmt/VmessFmt;", "Lcom/v2ray/ang/fmt/FmtBase;", "<init>", "()V", "parse", "Lcom/v2ray/ang/dto/ProfileItem;", "str", "", "toUri", "config", "parseVmessStd", "toOutbound", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;", "profileItem", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nVmessFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VmessFmt.kt\ncom/v2ray/ang/fmt/VmessFmt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n1#2:193\n*E\n"})
/* loaded from: classes3.dex */
public final class VmessFmt extends FmtBase {

    @NotNull
    public static final VmessFmt INSTANCE = new VmessFmt();

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkType.values().length];
            try {
                iArr[NetworkType.KCP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NetworkType.GRPC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private VmessFmt() {
    }

    @Nullable
    public final ProfileItem parse(@NotNull String str) {
        String scy;
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{4667129588642958841L, -2959836720893398216L}).toString());
        if (StringsKt__StringsKt.indexOf$default((CharSequence) str, '?', 0, false, 6, (Object) null) > 0 && StringsKt__StringsKt.indexOf$default((CharSequence) str, Typography.amp, 0, false, 6, (Object) null) > 0) {
            return parseVmessStd(str);
        }
        boolean decodeSettingsBool = MmkvManager.INSTANCE.decodeSettingsBool(new ObfuscatedString(new long[]{8630249602031438086L, 8155103215051758006L, 3533860651329385724L, 1208400965147971791L}).toString(), false);
        ProfileItem.Companion companion = ProfileItem.INSTANCE;
        EConfigType eConfigType = EConfigType.VMESS;
        ProfileItem create = companion.create(eConfigType);
        String decode = Utils.INSTANCE.decode(AbstractC1197x89633db9.replace$default(str, eConfigType.getProtocolScheme(), new ObfuscatedString(new long[]{537285605210921265L}).toString(), false, 4, (Object) null));
        if (TextUtils.isEmpty(decode)) {
            new ObfuscatedString(new long[]{-75001156830300817L, -6095881515932494446L, 5827286308932903661L}).toString();
            new ObfuscatedString(new long[]{-8924358541929709204L, 1033775847732011044L, -151434459905516720L, 3522760199099797113L}).toString();
            return null;
        }
        VmessQRCode vmessQRCode = (VmessQRCode) JsonUtil.INSTANCE.fromJson(decode, VmessQRCode.class);
        if (!TextUtils.isEmpty(vmessQRCode.getAdd()) && !TextUtils.isEmpty(vmessQRCode.getPort()) && !TextUtils.isEmpty(vmessQRCode.getId()) && !TextUtils.isEmpty(vmessQRCode.getNet())) {
            create.setRemarks(vmessQRCode.getPs());
            create.setServer(vmessQRCode.getAdd());
            create.setServerPort(vmessQRCode.getPort());
            create.setPassword(vmessQRCode.getId());
            if (TextUtils.isEmpty(vmessQRCode.getScy())) {
                scy = new ObfuscatedString(new long[]{2812390460210507866L, -1876037573053682103L}).toString();
            } else {
                scy = vmessQRCode.getScy();
            }
            create.setMethod(scy);
            String net2 = vmessQRCode.getNet();
            if (net2 == null) {
                net2 = NetworkType.TCP.getType();
            }
            create.setNetwork(net2);
            create.setHeaderType(vmessQRCode.getType());
            create.setHost(vmessQRCode.getHost());
            create.setPath(vmessQRCode.getPath());
            int i = WhenMappings.$EnumSwitchMapping$0[NetworkType.INSTANCE.fromString(create.getNetwork()).ordinal()];
            if (i != 1) {
                if (i == 2) {
                    create.setMode(vmessQRCode.getType());
                    create.setServiceName(vmessQRCode.getPath());
                    create.setAuthority(vmessQRCode.getHost());
                }
            } else {
                create.setSeed(vmessQRCode.getPath());
            }
            create.setSecurity(vmessQRCode.getTls());
            create.setInsecure(Boolean.valueOf(decodeSettingsBool));
            create.setSni(vmessQRCode.getSni());
            create.setFingerPrint(vmessQRCode.getFp());
            create.setAlpn(vmessQRCode.getAlpn());
            return create;
        }
        new ObfuscatedString(new long[]{1824105891495917323L, -5983918497991360261L, -7200060149335140562L}).toString();
        new ObfuscatedString(new long[]{6437095441480586247L, -3753883642182095312L, 3398271073449120938L, -5479306596717663500L}).toString();
        return null;
    }

    @Nullable
    public final ProfileItem parseVmessStd(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-7204137300300153219L, -9204449431731120346L}).toString());
        boolean decodeSettingsBool = MmkvManager.INSTANCE.decodeSettingsBool(new ObfuscatedString(new long[]{-2180691433546308289L, 308039361422779871L, 5570707861376590554L, 7950629235549282743L}).toString(), false);
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.VMESS);
        Utils utils = Utils.INSTANCE;
        URI uri = new URI(utils.fixIllegalUrl(str));
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && rawQuery.length() != 0) {
            Map<String, String> queryParam = getQueryParam(uri);
            String fragment = uri.getFragment();
            if (fragment == null) {
                fragment = new ObfuscatedString(new long[]{-1816962644219058629L}).toString();
            }
            String urlDecode = utils.urlDecode(fragment);
            if (urlDecode.length() == 0) {
                urlDecode = new ObfuscatedString(new long[]{6838813984284065747L, 6325319551951756063L}).toString();
            }
            create.setRemarks(urlDecode);
            create.setServer(_ExtKt.getIdnHost(uri));
            create.setServerPort(String.valueOf(uri.getPort()));
            create.setPassword(uri.getUserInfo());
            create.setMethod(new ObfuscatedString(new long[]{-5052363920634456415L, -1483240398665733602L}).toString());
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
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{-5948372661701561539L, 4009707383748149672L, -8195718458868175459L}).toString());
        V2rayConfigManager v2rayConfigManager = V2rayConfigManager.INSTANCE;
        V2rayConfig.OutboundBean createInitOutbound = v2rayConfigManager.createInitOutbound(EConfigType.VMESS);
        if (createInitOutbound != null && (settings = createInitOutbound.getSettings()) != null && (vnext = settings.getVnext()) != null && (vnextBean = (V2rayConfig.OutboundBean.OutSettingsBean.VnextBean) CollectionsKt___CollectionsKt.first((List) vnext)) != null) {
            vnextBean.setAddress(INSTANCE.getServerAddress(profileItem));
            String serverPort = profileItem.getServerPort();
            if (serverPort == null) {
                serverPort = new ObfuscatedString(new long[]{-7527256540946388920L}).toString();
            }
            vnextBean.setPort(Integer.parseInt(serverPort));
            V2rayConfig.OutboundBean.OutSettingsBean.VnextBean.UsersBean usersBean = vnextBean.getUsers().get(0);
            String password = profileItem.getPassword();
            if (password == null) {
                password = new ObfuscatedString(new long[]{-6960394792132418235L}).toString();
            }
            usersBean.setId(password);
            vnextBean.getUsers().get(0).setSecurity(profileItem.getMethod());
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
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{9142189732311359863L, -4153618131588426089L}).toString());
        VmessQRCode vmessQRCode = new VmessQRCode(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
        vmessQRCode.setV(new ObfuscatedString(new long[]{2261968592472500908L, 2356964830877708973L}).toString());
        vmessQRCode.setPs(config2.getRemarks());
        String server = config2.getServer();
        if (server == null) {
            server = new ObfuscatedString(new long[]{2579859118349027499L}).toString();
        }
        vmessQRCode.setAdd(server);
        String serverPort = config2.getServerPort();
        if (serverPort == null) {
            serverPort = new ObfuscatedString(new long[]{3419046657609760452L}).toString();
        }
        vmessQRCode.setPort(serverPort);
        String password = config2.getPassword();
        if (password == null) {
            password = new ObfuscatedString(new long[]{371575067036906121L}).toString();
        }
        vmessQRCode.setId(password);
        String method = config2.getMethod();
        if (method == null) {
            method = new ObfuscatedString(new long[]{1296092712406922974L}).toString();
        }
        vmessQRCode.setScy(method);
        vmessQRCode.setAid(new ObfuscatedString(new long[]{1185836813210060494L, -8559074884248929154L}).toString());
        String network = config2.getNetwork();
        if (network == null) {
            network = new ObfuscatedString(new long[]{-316115374122667677L}).toString();
        }
        vmessQRCode.setNet(network);
        String headerType = config2.getHeaderType();
        if (headerType == null) {
            headerType = new ObfuscatedString(new long[]{2073136451354657840L}).toString();
        }
        vmessQRCode.setType(headerType);
        int i = WhenMappings.$EnumSwitchMapping$0[NetworkType.INSTANCE.fromString(config2.getNetwork()).ordinal()];
        if (i != 1) {
            if (i == 2) {
                String mode = config2.getMode();
                if (mode == null) {
                    mode = new ObfuscatedString(new long[]{-2070134992604790390L}).toString();
                }
                vmessQRCode.setType(mode);
                String serviceName = config2.getServiceName();
                if (serviceName == null) {
                    serviceName = new ObfuscatedString(new long[]{7146686419828107194L}).toString();
                }
                vmessQRCode.setPath(serviceName);
                String authority = config2.getAuthority();
                if (authority == null) {
                    authority = new ObfuscatedString(new long[]{-6575502839230343918L}).toString();
                }
                vmessQRCode.setHost(authority);
            }
        } else {
            String seed = config2.getSeed();
            if (seed == null) {
                seed = new ObfuscatedString(new long[]{-1853786003483038203L}).toString();
            }
            vmessQRCode.setPath(seed);
        }
        String host = config2.getHost();
        if (_ExtKt.isNotNullEmpty(host)) {
            if (host == null) {
                host = new ObfuscatedString(new long[]{-3393069395997221242L}).toString();
            }
            vmessQRCode.setHost(host);
        }
        String path = config2.getPath();
        if (_ExtKt.isNotNullEmpty(path)) {
            if (path == null) {
                path = new ObfuscatedString(new long[]{-216022741683779480L}).toString();
            }
            vmessQRCode.setPath(path);
        }
        String security = config2.getSecurity();
        if (security == null) {
            security = new ObfuscatedString(new long[]{5160366369850715619L}).toString();
        }
        vmessQRCode.setTls(security);
        String sni = config2.getSni();
        if (sni == null) {
            sni = new ObfuscatedString(new long[]{901267574275493913L}).toString();
        }
        vmessQRCode.setSni(sni);
        String fingerPrint = config2.getFingerPrint();
        if (fingerPrint == null) {
            fingerPrint = new ObfuscatedString(new long[]{-2959979797534759479L}).toString();
        }
        vmessQRCode.setFp(fingerPrint);
        String alpn = config2.getAlpn();
        if (alpn == null) {
            alpn = new ObfuscatedString(new long[]{2277591643173640438L}).toString();
        }
        vmessQRCode.setAlpn(alpn);
        return Utils.INSTANCE.encode(JsonUtil.INSTANCE.toJson(vmessQRCode));
    }
}
