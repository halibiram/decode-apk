package com.v2ray.ang.fmt;

import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.Hysteria2Bean;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.V2rayConfig;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.handler.V2rayConfigManager;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC0362x4440ab85;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0005¨\u0006\u0011"}, d2 = {"Lcom/v2ray/ang/fmt/Hysteria2Fmt;", "Lcom/v2ray/ang/fmt/FmtBase;", "<init>", "()V", "parse", "Lcom/v2ray/ang/dto/ProfileItem;", "str", "", "toUri", "config", "toNativeConfig", "Lcom/v2ray/ang/dto/Hysteria2Bean;", "socksPort", "", "toOutbound", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;", "profileItem", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHysteria2Fmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Hysteria2Fmt.kt\ncom/v2ray/ang/fmt/Hysteria2Fmt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,151:1\n1#2:152\n*E\n"})
/* loaded from: classes3.dex */
public final class Hysteria2Fmt extends FmtBase {

    @NotNull
    public static final Hysteria2Fmt INSTANCE = new Hysteria2Fmt();

    private Hysteria2Fmt() {
    }

    @Nullable
    public final ProfileItem parse(@NotNull String str) {
        Boolean valueOf;
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{1987681511023257069L, -3930033445319054825L}).toString());
        boolean decodeSettingsBool = MmkvManager.INSTANCE.decodeSettingsBool(new ObfuscatedString(new long[]{-8919748682983094841L, -8092843485947419755L, 8784299538080697648L, 2890755854748950905L}).toString(), false);
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.HYSTERIA2);
        Utils utils = Utils.INSTANCE;
        URI uri = new URI(utils.fixIllegalUrl(str));
        String fragment = uri.getFragment();
        if (fragment == null) {
            fragment = new ObfuscatedString(new long[]{5979755242238426035L}).toString();
        }
        String urlDecode = utils.urlDecode(fragment);
        if (urlDecode.length() == 0) {
            urlDecode = new ObfuscatedString(new long[]{2822858404277675969L, -1596594455318481297L}).toString();
        }
        create.setRemarks(urlDecode);
        create.setServer(_ExtKt.getIdnHost(uri));
        create.setServerPort(String.valueOf(uri.getPort()));
        create.setPassword(uri.getUserInfo());
        create.setSecurity(new ObfuscatedString(new long[]{1345637214247513581L, 6326812422386219641L}).toString());
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && rawQuery.length() != 0) {
            Map<String, String> queryParam = getQueryParam(uri);
            String str2 = queryParam.get(new ObfuscatedString(new long[]{5089027558582774724L, -2519934554102770668L}).toString());
            if (str2 == null) {
                str2 = new ObfuscatedString(new long[]{-3429008475239229385L, 2893952254020136549L}).toString();
            }
            create.setSecurity(str2);
            String str3 = queryParam.get(new ObfuscatedString(new long[]{5953468238632184688L, 410240874205875238L}).toString());
            if (str3 != null && str3.length() != 0) {
                String str4 = queryParam.get(new ObfuscatedString(new long[]{3887955626837630642L, -6384306032748449200L}).toString());
                if (str4 == null) {
                    str4 = new ObfuscatedString(new long[]{-4131682337635233029L}).toString();
                }
                valueOf = Boolean.valueOf(Intrinsics.areEqual(str4, new ObfuscatedString(new long[]{-1878098180013179738L, 2423119970323293189L}).toString()));
            } else {
                valueOf = Boolean.valueOf(decodeSettingsBool);
            }
            create.setInsecure(valueOf);
            create.setSni(queryParam.get(new ObfuscatedString(new long[]{-6418275154174710786L, 457996504821926517L}).toString()));
            create.setAlpn(queryParam.get(new ObfuscatedString(new long[]{-7161046035013767889L, 3899552463190470726L}).toString()));
            create.setObfsPassword(queryParam.get(new ObfuscatedString(new long[]{520927867161415823L, -3544531880547900230L, 5669664965492244778L}).toString()));
            create.setPortHopping(queryParam.get(new ObfuscatedString(new long[]{-7508829015028427011L, 1194641793468355727L}).toString()));
            create.setPinSHA256(queryParam.get(new ObfuscatedString(new long[]{7432226146705391354L, -8892836221363006086L, -3080975340638737114L}).toString()));
        }
        return create;
    }

    @Nullable
    public final Hysteria2Bean toNativeConfig(@NotNull ProfileItem config2, int socksPort) {
        Hysteria2Bean.ObfsBean obfsBean;
        Hysteria2Bean.TransportBean transportBean;
        Hysteria2Bean.BandwidthBean bandwidthBean;
        String serverAddressAndPort;
        String bandwidthUp;
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{-2294024815150636864L, -6443187437005459143L}).toString());
        String obfsPassword = config2.getObfsPassword();
        String str = null;
        if (obfsPassword != null && obfsPassword.length() != 0) {
            obfsBean = new Hysteria2Bean.ObfsBean(new ObfuscatedString(new long[]{7165152019575743030L, 6049012269913057834L, 9125675531532409478L}).toString(), new Hysteria2Bean.ObfsBean.SalamanderBean(config2.getObfsPassword()));
        } else {
            obfsBean = null;
        }
        String portHopping = config2.getPortHopping();
        if (portHopping != null && portHopping.length() != 0) {
            String obfuscatedString = new ObfuscatedString(new long[]{6799268780106483961L, 8973848291980528370L}).toString();
            String portHoppingInterval = config2.getPortHoppingInterval();
            if (portHoppingInterval == null) {
                portHoppingInterval = new ObfuscatedString(new long[]{8779053547100124535L, -8788292554227610813L}).toString();
            }
            transportBean = new Hysteria2Bean.TransportBean(obfuscatedString, new Hysteria2Bean.TransportBean.TransportUdpBean(AbstractC0362x4440ab85.m2931x34271fae(portHoppingInterval, "s")));
        } else {
            transportBean = null;
        }
        String bandwidthDown = config2.getBandwidthDown();
        if (bandwidthDown != null && bandwidthDown.length() != 0 && (bandwidthUp = config2.getBandwidthUp()) != null && bandwidthUp.length() != 0) {
            bandwidthBean = new Hysteria2Bean.BandwidthBean(config2.getBandwidthDown(), config2.getBandwidthUp());
        } else {
            bandwidthBean = null;
        }
        String portHopping2 = config2.getPortHopping();
        if (portHopping2 != null && portHopping2.length() != 0) {
            serverAddressAndPort = AbstractC0362x4440ab85.m2953x742e2fda(Utils.INSTANCE.getIpv6Address(config2.getServer()), ":", config2.getPortHopping());
        } else {
            serverAddressAndPort = config2.getServerAddressAndPort();
        }
        String str2 = serverAddressAndPort;
        String password = config2.getPassword();
        Hysteria2Bean.Socks5Bean socks5Bean = new Hysteria2Bean.Socks5Bean(AbstractC0362x4440ab85.m2929x9738a56c(socksPort, "127.0.0.1:"));
        Hysteria2Bean.Socks5Bean socks5Bean2 = new Hysteria2Bean.Socks5Bean(AbstractC0362x4440ab85.m2929x9738a56c(socksPort, "127.0.0.1:"));
        String sni = config2.getSni();
        if (sni == null) {
            sni = config2.getServer();
        }
        Boolean insecure = config2.getInsecure();
        String pinSHA256 = config2.getPinSHA256();
        if (pinSHA256 != null && pinSHA256.length() != 0) {
            str = config2.getPinSHA256();
        }
        return new Hysteria2Bean(str2, password, null, obfsBean, socks5Bean, socks5Bean2, new Hysteria2Bean.TlsBean(sni, insecure, str), transportBean, bandwidthBean, 4, null);
    }

    @Nullable
    public final V2rayConfig.OutboundBean toOutbound(@NotNull ProfileItem profileItem) {
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{1047168452282683367L, 1167534074773060015L, 6715517606670400908L}).toString());
        return V2rayConfigManager.INSTANCE.createInitOutbound(EConfigType.HYSTERIA2);
    }

    @NotNull
    public final String toUri(@NotNull ProfileItem config2) {
        ObfuscatedString obfuscatedString;
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{3066962208200087649L, -8076946156999274009L}).toString());
        HashMap<String, String> hashMap = new HashMap<>();
        String security = config2.getSecurity();
        if (security != null) {
            hashMap.put(new ObfuscatedString(new long[]{-7698595790352295592L, -8379805029842258627L}).toString(), security);
        }
        String sni = config2.getSni();
        if (_ExtKt.isNotNullEmpty(sni)) {
            String obfuscatedString2 = new ObfuscatedString(new long[]{639662285204812760L, 6035045088823063344L}).toString();
            if (sni == null) {
                sni = new ObfuscatedString(new long[]{8724023955358166937L}).toString();
            }
            hashMap.put(obfuscatedString2, sni);
        }
        String alpn = config2.getAlpn();
        if (_ExtKt.isNotNullEmpty(alpn)) {
            String obfuscatedString3 = new ObfuscatedString(new long[]{-6820802832644625855L, -2388915153994589227L}).toString();
            if (alpn == null) {
                alpn = new ObfuscatedString(new long[]{-6813660548569904562L}).toString();
            }
            hashMap.put(obfuscatedString3, alpn);
        }
        Boolean insecure = config2.getInsecure();
        String obfuscatedString4 = new ObfuscatedString(new long[]{-5771630424128198749L, -1784492695054935320L}).toString();
        if (Intrinsics.areEqual(insecure, Boolean.TRUE)) {
            obfuscatedString = new ObfuscatedString(new long[]{6261151295793963356L, -9028884777115215204L});
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-4225036057808408108L, -7612683065954499132L});
        }
        hashMap.put(obfuscatedString4, obfuscatedString.toString());
        if (_ExtKt.isNotNullEmpty(config2.getObfsPassword())) {
            hashMap.put(new ObfuscatedString(new long[]{-773334589822521583L, 2717801249884245825L}).toString(), new ObfuscatedString(new long[]{3348159103973757232L, -5015871727853196465L, -4808471753279434259L}).toString());
            String obfuscatedString5 = new ObfuscatedString(new long[]{88593550641310514L, -7203457328650537757L, -2670437798841830682L}).toString();
            String obfsPassword = config2.getObfsPassword();
            if (obfsPassword == null) {
                obfsPassword = new ObfuscatedString(new long[]{-5730913660083120324L}).toString();
            }
            hashMap.put(obfuscatedString5, obfsPassword);
        }
        if (_ExtKt.isNotNullEmpty(config2.getPortHopping())) {
            String obfuscatedString6 = new ObfuscatedString(new long[]{-1657142582047244379L, -8913644590288134683L}).toString();
            String portHopping = config2.getPortHopping();
            if (portHopping == null) {
                portHopping = new ObfuscatedString(new long[]{6182076301873555753L}).toString();
            }
            hashMap.put(obfuscatedString6, portHopping);
        }
        if (_ExtKt.isNotNullEmpty(config2.getPinSHA256())) {
            String obfuscatedString7 = new ObfuscatedString(new long[]{4873628550596034917L, -2377808573343611244L, 8590179606434770539L}).toString();
            String pinSHA256 = config2.getPinSHA256();
            if (pinSHA256 == null) {
                pinSHA256 = new ObfuscatedString(new long[]{-3588881642600048302L}).toString();
            }
            hashMap.put(obfuscatedString7, pinSHA256);
        }
        return toUri(config2, config2.getPassword(), hashMap);
    }
}
