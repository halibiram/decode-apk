package com.v2ray.ang.fmt;

import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.NetworkType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.util.HttpUtil;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0587xb7546d05;
import defpackage.AbstractC0961xbc4021d9;
import defpackage.AbstractC0964x2631a5ef;
import defpackage.C0648x4ba9bb0c;
import java.net.URI;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J@\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00052&\u0010\t\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\nj\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u000bJ\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r2\u0006\u0010\u000e\u001a\u00020\u000fJ*\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r2\u0006\u0010\u0013\u001a\u00020\u0014J*\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\nj\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u000b2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0007¨\u0006\u0018"}, d2 = {"Lcom/v2ray/ang/fmt/FmtBase;", "", "<init>", "()V", "toUri", "", "config", "Lcom/v2ray/ang/dto/ProfileItem;", "userInfo", "dicQuery", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "getQueryParam", "", "uri", "Ljava/net/URI;", "getItemFormQuery", "", "queryParam", "allowInsecure", "", "getQueryDic", "getServerAddress", "profileItem", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFmtBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FmtBase.kt\ncom/v2ray/ang/fmt/FmtBase\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n1193#2,2:172\n1267#2,2:174\n1270#2:177\n1#3:176\n*S KotlinDebug\n*F\n+ 1 FmtBase.kt\ncom/v2ray/ang/fmt/FmtBase\n*L\n46#1:172,2\n46#1:174,2\n46#1:177\n*E\n"})
/* loaded from: classes3.dex */
public class FmtBase {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkType.values().length];
            try {
                iArr[NetworkType.TCP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NetworkType.KCP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NetworkType.WS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NetworkType.HTTP_UPGRADE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[NetworkType.XHTTP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[NetworkType.HTTP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[NetworkType.H2.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[NetworkType.GRPC.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final CharSequence toUri$lambda$0(Pair pair) {
        Intrinsics.checkNotNullParameter(pair, new ObfuscatedString(new long[]{8684245509853248786L, 4087216836348103976L}).toString());
        return pair.getFirst() + "=" + Utils.INSTANCE.urlEncode((String) pair.getSecond());
    }

    public final void getItemFormQuery(@NotNull ProfileItem config2, @NotNull Map<String, String> queryParam, boolean allowInsecure) {
        Boolean valueOf;
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{-3314274549317605865L, -1184234499586202246L}).toString());
        Intrinsics.checkNotNullParameter(queryParam, new ObfuscatedString(new long[]{-6194728300338326397L, 5827385932230252319L, 3048071943997172488L}).toString());
        String str = queryParam.get(new ObfuscatedString(new long[]{6523676040699697425L, 6209838524143889059L}).toString());
        if (str == null) {
            str = NetworkType.TCP.getType();
        }
        config2.setNetwork(str);
        config2.setHeaderType(queryParam.get(new ObfuscatedString(new long[]{-5764716075430902540L, -7846928874474728339L, 6970060472293971631L}).toString()));
        config2.setHost(queryParam.get(new ObfuscatedString(new long[]{-7675298821693061440L, 153146830301615464L}).toString()));
        config2.setPath(queryParam.get(new ObfuscatedString(new long[]{-2579428076610158186L, -6713387352168812153L}).toString()));
        config2.setSeed(queryParam.get(new ObfuscatedString(new long[]{-5376782357349195869L, -8093058836317186660L}).toString()));
        config2.setQuicSecurity(queryParam.get(new ObfuscatedString(new long[]{-2278442173892126507L, 8442773892794190496L, 5160700621184402161L}).toString()));
        config2.setQuicKey(queryParam.get(new ObfuscatedString(new long[]{-4962677299975434023L, 1710231951670863047L}).toString()));
        config2.setMode(queryParam.get(new ObfuscatedString(new long[]{-3972297900054631535L, 3910191361258338606L}).toString()));
        config2.setServiceName(queryParam.get(new ObfuscatedString(new long[]{3878235845320548773L, -4038821574717584206L, 7822246561354612181L}).toString()));
        config2.setAuthority(queryParam.get(new ObfuscatedString(new long[]{1906952099487685157L, -5493593740504202325L, -5140871855330446393L}).toString()));
        config2.setXhttpMode(queryParam.get(new ObfuscatedString(new long[]{6402040029463790278L, 6346223952111657980L}).toString()));
        config2.setXhttpExtra(queryParam.get(new ObfuscatedString(new long[]{-8564686350964177337L, 9063490624046370593L}).toString()));
        config2.setSecurity(queryParam.get(new ObfuscatedString(new long[]{952966605115371984L, 4858715285035309006L}).toString()));
        if (!Intrinsics.areEqual(config2.getSecurity(), new ObfuscatedString(new long[]{7094743623740591430L, 2114152210263818071L}).toString()) && !Intrinsics.areEqual(config2.getSecurity(), new ObfuscatedString(new long[]{3997514845689221113L, -8311170137102295709L}).toString())) {
            config2.setSecurity(null);
        }
        String str2 = queryParam.get(new ObfuscatedString(new long[]{3156324897794614917L, 437109475720601086L, -5145591055385729081L}).toString());
        if (str2 != null && str2.length() != 0) {
            String str3 = queryParam.get(new ObfuscatedString(new long[]{5914560793070259213L, -89597391296881781L, 2500576991983295065L}).toString());
            if (str3 == null) {
                str3 = new ObfuscatedString(new long[]{6736531557289290279L}).toString();
            }
            valueOf = Boolean.valueOf(Intrinsics.areEqual(str3, new ObfuscatedString(new long[]{-7180574141538416906L, 6797639698655236433L}).toString()));
        } else {
            valueOf = Boolean.valueOf(allowInsecure);
        }
        config2.setInsecure(valueOf);
        config2.setSni(queryParam.get(new ObfuscatedString(new long[]{392888935713977054L, -6142315188948541377L}).toString()));
        config2.setFingerPrint(queryParam.get(new ObfuscatedString(new long[]{-6071330657048065533L, -7640622261532246637L}).toString()));
        config2.setAlpn(queryParam.get(new ObfuscatedString(new long[]{-167855265815429373L, -2067756507167445998L}).toString()));
        config2.setPublicKey(queryParam.get(new ObfuscatedString(new long[]{8263887047783148389L, 7720264214620534369L}).toString()));
        config2.setShortId(queryParam.get(new ObfuscatedString(new long[]{5105638019066506766L, -1804061852101425444L}).toString()));
        config2.setSpiderX(queryParam.get(new ObfuscatedString(new long[]{-3421802878189547017L, 5010681161647514168L}).toString()));
        config2.setFlow(queryParam.get(new ObfuscatedString(new long[]{-801929891826081621L, -7961414427069951230L}).toString()));
    }

    @NotNull
    public final HashMap<String, String> getQueryDic(@NotNull ProfileItem config2) {
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{-3664821809124066649L, -9071271903170273543L}).toString());
        HashMap<String, String> hashMap = new HashMap<>();
        String obfuscatedString = new ObfuscatedString(new long[]{-8138739727840246848L, -7094938413772646862L}).toString();
        String security = config2.getSecurity();
        String str = null;
        if (security == null) {
            security = null;
        } else if (security.length() == 0) {
            security = new ObfuscatedString(new long[]{700927221577823081L, 1540799845567969753L}).toString();
        }
        if (security == null) {
            security = new ObfuscatedString(new long[]{5384510916570566304L}).toString();
        }
        hashMap.put(obfuscatedString, security);
        String sni = config2.getSni();
        if (_ExtKt.isNotNullEmpty(sni)) {
            String obfuscatedString2 = new ObfuscatedString(new long[]{-810513343336860708L, 7754764377318046480L}).toString();
            if (sni == null) {
                sni = new ObfuscatedString(new long[]{1104281812077725664L}).toString();
            }
            hashMap.put(obfuscatedString2, sni);
        }
        String alpn = config2.getAlpn();
        if (_ExtKt.isNotNullEmpty(alpn)) {
            String obfuscatedString3 = new ObfuscatedString(new long[]{1855311371930763847L, 1034515935442556607L}).toString();
            if (alpn == null) {
                alpn = new ObfuscatedString(new long[]{195612932639918737L}).toString();
            }
            hashMap.put(obfuscatedString3, alpn);
        }
        String fingerPrint = config2.getFingerPrint();
        if (_ExtKt.isNotNullEmpty(fingerPrint)) {
            String obfuscatedString4 = new ObfuscatedString(new long[]{591158193767032155L, 8208917675950594574L}).toString();
            if (fingerPrint == null) {
                fingerPrint = new ObfuscatedString(new long[]{-114283207469755192L}).toString();
            }
            hashMap.put(obfuscatedString4, fingerPrint);
        }
        String publicKey = config2.getPublicKey();
        if (_ExtKt.isNotNullEmpty(publicKey)) {
            String obfuscatedString5 = new ObfuscatedString(new long[]{-6644897210505247856L, -4869295003215287770L}).toString();
            if (publicKey == null) {
                publicKey = new ObfuscatedString(new long[]{-2702152074196864795L}).toString();
            }
            hashMap.put(obfuscatedString5, publicKey);
        }
        String shortId = config2.getShortId();
        if (_ExtKt.isNotNullEmpty(shortId)) {
            String obfuscatedString6 = new ObfuscatedString(new long[]{-5453648490558976692L, 5526931532729931703L}).toString();
            if (shortId == null) {
                shortId = new ObfuscatedString(new long[]{-1430381781904742308L}).toString();
            }
            hashMap.put(obfuscatedString6, shortId);
        }
        String spiderX = config2.getSpiderX();
        if (_ExtKt.isNotNullEmpty(spiderX)) {
            String obfuscatedString7 = new ObfuscatedString(new long[]{-8744943945041624954L, -85380647241732743L}).toString();
            if (spiderX == null) {
                spiderX = new ObfuscatedString(new long[]{7193046134502445960L}).toString();
            }
            hashMap.put(obfuscatedString7, spiderX);
        }
        String flow = config2.getFlow();
        if (_ExtKt.isNotNullEmpty(flow)) {
            String obfuscatedString8 = new ObfuscatedString(new long[]{-4125804533677951000L, -8846098481352277813L}).toString();
            if (flow == null) {
                flow = new ObfuscatedString(new long[]{-6778059655427988316L}).toString();
            }
            hashMap.put(obfuscatedString8, flow);
        }
        NetworkType fromString = NetworkType.INSTANCE.fromString(config2.getNetwork());
        hashMap.put(new ObfuscatedString(new long[]{8646446584723356333L, 1860186230908534922L}).toString(), fromString.getType());
        switch (WhenMappings.$EnumSwitchMapping$0[fromString.ordinal()]) {
            case 1:
                String obfuscatedString9 = new ObfuscatedString(new long[]{-8345620872719973115L, -6907530838540870414L, -9096082815247945898L}).toString();
                String headerType = config2.getHeaderType();
                if (headerType != null) {
                    if (headerType.length() == 0) {
                        headerType = new ObfuscatedString(new long[]{-5511243695727528261L, -3848130262948459143L}).toString();
                    }
                    str = headerType;
                }
                if (str == null) {
                    str = new ObfuscatedString(new long[]{-912580586022927665L}).toString();
                }
                hashMap.put(obfuscatedString9, str);
                String host = config2.getHost();
                if (_ExtKt.isNotNullEmpty(host)) {
                    String obfuscatedString10 = new ObfuscatedString(new long[]{8488376828076367318L, 2131818886393541900L}).toString();
                    if (host == null) {
                        host = new ObfuscatedString(new long[]{6205715248069484161L}).toString();
                    }
                    hashMap.put(obfuscatedString10, host);
                }
                return hashMap;
            case 2:
                String obfuscatedString11 = new ObfuscatedString(new long[]{-8621513163466359215L, 1845760217088529947L, 6109437961500740719L}).toString();
                String headerType2 = config2.getHeaderType();
                if (headerType2 != null) {
                    if (headerType2.length() == 0) {
                        headerType2 = new ObfuscatedString(new long[]{4075619656986485497L, 1767076348776710747L}).toString();
                    }
                    str = headerType2;
                }
                if (str == null) {
                    str = new ObfuscatedString(new long[]{9814273680318552L}).toString();
                }
                hashMap.put(obfuscatedString11, str);
                String seed = config2.getSeed();
                if (_ExtKt.isNotNullEmpty(seed)) {
                    String obfuscatedString12 = new ObfuscatedString(new long[]{-933447562954204577L, 503720881510916879L}).toString();
                    if (seed == null) {
                        seed = new ObfuscatedString(new long[]{-4207072714035240216L}).toString();
                    }
                    hashMap.put(obfuscatedString12, seed);
                }
                return hashMap;
            case 3:
            case 4:
                String host2 = config2.getHost();
                if (_ExtKt.isNotNullEmpty(host2)) {
                    String obfuscatedString13 = new ObfuscatedString(new long[]{6952909733992226200L, 7009253708406255156L}).toString();
                    if (host2 == null) {
                        host2 = new ObfuscatedString(new long[]{-8480605913720044937L}).toString();
                    }
                    hashMap.put(obfuscatedString13, host2);
                }
                String path = config2.getPath();
                if (_ExtKt.isNotNullEmpty(path)) {
                    String obfuscatedString14 = new ObfuscatedString(new long[]{2343988236539414267L, -8417974071616004783L}).toString();
                    if (path == null) {
                        path = new ObfuscatedString(new long[]{5601883656224580449L}).toString();
                    }
                    hashMap.put(obfuscatedString14, path);
                }
                return hashMap;
            case 5:
                String host3 = config2.getHost();
                if (_ExtKt.isNotNullEmpty(host3)) {
                    String obfuscatedString15 = new ObfuscatedString(new long[]{4065460892067443764L, 5511177106282132595L}).toString();
                    if (host3 == null) {
                        host3 = new ObfuscatedString(new long[]{-6602360740033819852L}).toString();
                    }
                    hashMap.put(obfuscatedString15, host3);
                }
                String path2 = config2.getPath();
                if (_ExtKt.isNotNullEmpty(path2)) {
                    String obfuscatedString16 = new ObfuscatedString(new long[]{-8185287753226081122L, 914395343621897648L}).toString();
                    if (path2 == null) {
                        path2 = new ObfuscatedString(new long[]{-2371949274673000663L}).toString();
                    }
                    hashMap.put(obfuscatedString16, path2);
                }
                String xhttpMode = config2.getXhttpMode();
                if (_ExtKt.isNotNullEmpty(xhttpMode)) {
                    String obfuscatedString17 = new ObfuscatedString(new long[]{-4398965500801774948L, -1789981068883136038L}).toString();
                    if (xhttpMode == null) {
                        xhttpMode = new ObfuscatedString(new long[]{-3325260701581337506L}).toString();
                    }
                    hashMap.put(obfuscatedString17, xhttpMode);
                }
                String xhttpExtra = config2.getXhttpExtra();
                if (_ExtKt.isNotNullEmpty(xhttpExtra)) {
                    String obfuscatedString18 = new ObfuscatedString(new long[]{6616230472947301715L, -6029966514213136703L}).toString();
                    if (xhttpExtra == null) {
                        xhttpExtra = new ObfuscatedString(new long[]{8275327660423334289L}).toString();
                    }
                    hashMap.put(obfuscatedString18, xhttpExtra);
                }
                return hashMap;
            case 6:
            case 7:
                hashMap.put(new ObfuscatedString(new long[]{-7512738205005770894L, -5013525338278119552L}).toString(), new ObfuscatedString(new long[]{7740349421026960404L, -632258432796165458L}).toString());
                String host4 = config2.getHost();
                if (_ExtKt.isNotNullEmpty(host4)) {
                    String obfuscatedString19 = new ObfuscatedString(new long[]{3513240274649794868L, 860589458891904486L}).toString();
                    if (host4 == null) {
                        host4 = new ObfuscatedString(new long[]{-3439944038703320077L}).toString();
                    }
                    hashMap.put(obfuscatedString19, host4);
                }
                String path3 = config2.getPath();
                if (_ExtKt.isNotNullEmpty(path3)) {
                    String obfuscatedString20 = new ObfuscatedString(new long[]{-1531496266606060815L, -2691796297281975037L}).toString();
                    if (path3 == null) {
                        path3 = new ObfuscatedString(new long[]{12144978849424355L}).toString();
                    }
                    hashMap.put(obfuscatedString20, path3);
                }
                return hashMap;
            case 8:
                String mode = config2.getMode();
                if (_ExtKt.isNotNullEmpty(mode)) {
                    String obfuscatedString21 = new ObfuscatedString(new long[]{5796902054783466249L, 7902464464751833498L}).toString();
                    if (mode == null) {
                        mode = new ObfuscatedString(new long[]{3177411181020456322L}).toString();
                    }
                    hashMap.put(obfuscatedString21, mode);
                }
                String authority = config2.getAuthority();
                if (_ExtKt.isNotNullEmpty(authority)) {
                    String obfuscatedString22 = new ObfuscatedString(new long[]{-8928182796353784815L, -8348570134283574764L, -4292477202784889265L}).toString();
                    if (authority == null) {
                        authority = new ObfuscatedString(new long[]{-3148303083351053417L}).toString();
                    }
                    hashMap.put(obfuscatedString22, authority);
                }
                String serviceName = config2.getServiceName();
                if (_ExtKt.isNotNullEmpty(serviceName)) {
                    String obfuscatedString23 = new ObfuscatedString(new long[]{2141589299712749439L, 5620602665012985852L, -7630512285273652777L}).toString();
                    if (serviceName == null) {
                        serviceName = new ObfuscatedString(new long[]{4267769399922536976L}).toString();
                    }
                    hashMap.put(obfuscatedString23, serviceName);
                }
                return hashMap;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @NotNull
    public final Map<String, String> getQueryParam(@NotNull URI uri) {
        Intrinsics.checkNotNullParameter(uri, new ObfuscatedString(new long[]{1330255852532245387L, 5955489524667410687L}).toString());
        String rawQuery = uri.getRawQuery();
        Intrinsics.checkNotNullExpressionValue(rawQuery, new ObfuscatedString(new long[]{3098766777122375673L, 3492263192200246891L, 3425646845774697775L}).toString());
        List split$default = StringsKt__StringsKt.split$default((CharSequence) rawQuery, new String[]{new ObfuscatedString(new long[]{-3650334106577111446L, -7360268870532039543L}).toString()}, false, 0, 6, (Object) null);
        LinkedHashMap linkedHashMap = new LinkedHashMap(AbstractC0296x1378447b.coerceAtLeast(AbstractC0961xbc4021d9.mapCapacity(AbstractC0587xb7546d05.collectionSizeOrDefault(split$default, 10)), 16));
        Iterator it = split$default.iterator();
        while (it.hasNext()) {
            List split$default2 = StringsKt__StringsKt.split$default((CharSequence) it.next(), new String[]{new ObfuscatedString(new long[]{4262046621016531336L, -1648257899685855553L}).toString()}, false, 0, 6, (Object) null);
            Pair pair = TuplesKt.to((String) split$default2.get(0), Utils.INSTANCE.urlDecode((String) split$default2.get(1)));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    @NotNull
    public final String getServerAddress(@NotNull ProfileItem profileItem) {
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{-2533164388090511244L, -2847155916466616441L, -7925508461872014283L}).toString());
        Utils utils = Utils.INSTANCE;
        String server = profileItem.getServer();
        if (server == null) {
            server = new ObfuscatedString(new long[]{-6342600898860884911L}).toString();
        }
        if (utils.isPureIpAddress(server)) {
            String server2 = profileItem.getServer();
            if (server2 == null) {
                return new ObfuscatedString(new long[]{7918819602342330975L}).toString();
            }
            return server2;
        }
        HttpUtil httpUtil = HttpUtil.INSTANCE;
        String server3 = profileItem.getServer();
        if (server3 == null) {
            server3 = new ObfuscatedString(new long[]{-2207270434083163415L}).toString();
        }
        String idnDomain = httpUtil.toIdnDomain(server3);
        if (!Intrinsics.areEqual(MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{8948126161532129355L, 1595104413449006839L, 2306516504753756986L, 9095643181881376418L, -2937531919258123750L, -4217409169725920657L}).toString(), new ObfuscatedString(new long[]{-8642211762984075877L, 3316003196099773681L}).toString()), new ObfuscatedString(new long[]{-7676092269845956583L, -2293227380705152972L}).toString())) {
            return idnDomain;
        }
        List<String> resolveHostToIP = httpUtil.resolveHostToIP(idnDomain, MmkvManager.INSTANCE.decodeSettingsBool(new ObfuscatedString(new long[]{-3657955984536846615L, 8140958325671015053L, 816591472322832799L}).toString()));
        List<String> list = resolveHostToIP;
        if (list != null && !list.isEmpty()) {
            return (String) CollectionsKt___CollectionsKt.first((List) resolveHostToIP);
        }
        return idnDomain;
    }

    @NotNull
    public final String toUri(@NotNull ProfileItem config2, @Nullable String userInfo, @Nullable HashMap<String, String> dicQuery) {
        String obfuscatedString;
        String str;
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{-3704540666678281066L, -7025353428704370013L}).toString());
        if (dicQuery != null) {
            obfuscatedString = AbstractC0362x4440ab85.m2952x5ac5058d("?", CollectionsKt___CollectionsKt.joinToString$default(AbstractC0964x2631a5ef.toList(dicQuery), new ObfuscatedString(new long[]{-263655487367584792L, 2034515428920834240L}).toString(), null, null, 0, null, new C0648x4ba9bb0c(4), 30, null));
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{4866186254051751869L}).toString();
        }
        String obfuscatedString2 = new ObfuscatedString(new long[]{-3996211329963480156L, -2057705810028854256L}).toString();
        Utils utils = Utils.INSTANCE;
        if (userInfo == null) {
            str = new ObfuscatedString(new long[]{1491064813066960820L}).toString();
        } else {
            str = userInfo;
        }
        String urlEncode = utils.urlEncode(str);
        HttpUtil httpUtil = HttpUtil.INSTANCE;
        String server = config2.getServer();
        if (server == null) {
            server = new ObfuscatedString(new long[]{-6832173283108468679L}).toString();
        }
        String format = String.format(obfuscatedString2, Arrays.copyOf(new Object[]{urlEncode, utils.getIpv6Address(httpUtil.toIdnDomain(server)), config2.getServerPort()}, 3));
        Intrinsics.checkNotNullExpressionValue(format, new ObfuscatedString(new long[]{-773289135834928999L, -9002385966433697770L, -3270538096888317329L}).toString());
        return format + obfuscatedString + "#" + utils.urlEncode(config2.getRemarks());
    }
}
