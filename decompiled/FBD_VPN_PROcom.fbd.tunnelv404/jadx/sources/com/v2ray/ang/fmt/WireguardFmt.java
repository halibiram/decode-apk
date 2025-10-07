package com.v2ray.ang.fmt;

import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.EConfigType;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.V2rayConfig;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.V2rayConfigManager;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC0587xb7546d05;
import defpackage.AbstractC1197x89633db9;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0005¨\u0006\u000e"}, d2 = {"Lcom/v2ray/ang/fmt/WireguardFmt;", "Lcom/v2ray/ang/fmt/FmtBase;", "<init>", "()V", "parse", "Lcom/v2ray/ang/dto/ProfileItem;", "str", "", "parseWireguardConfFile", "toOutbound", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;", "profileItem", "toUri", "config", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWireguardFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WireguardFmt.kt\ncom/v2ray/ang/fmt/WireguardFmt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,150:1\n1#2:151\n1869#3:152\n1563#3:153\n1634#3,3:154\n1870#3:157\n774#3:158\n865#3,2:159\n1563#3:161\n1634#3,3:162\n*S KotlinDebug\n*F\n+ 1 WireguardFmt.kt\ncom/v2ray/ang/fmt/WireguardFmt\n*L\n56#1:152\n68#1:153\n68#1:154,3\n56#1:157\n120#1:158\n120#1:159,2\n120#1:161\n120#1:162,3\n*E\n"})
/* loaded from: classes3.dex */
public final class WireguardFmt extends FmtBase {

    @NotNull
    public static final WireguardFmt INSTANCE = new WireguardFmt();

    private WireguardFmt() {
    }

    @Nullable
    public final ProfileItem parse(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-923282118656418778L, 6872942704899434814L}).toString());
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.WIREGUARD);
        Utils utils = Utils.INSTANCE;
        URI uri = new URI(utils.fixIllegalUrl(str));
        String rawQuery = uri.getRawQuery();
        if (rawQuery == null || rawQuery.length() == 0) {
            return null;
        }
        Map<String, String> queryParam = getQueryParam(uri);
        String fragment = uri.getFragment();
        if (fragment == null) {
            fragment = new ObfuscatedString(new long[]{8477938972919783276L}).toString();
        }
        String urlDecode = utils.urlDecode(fragment);
        if (urlDecode.length() == 0) {
            urlDecode = new ObfuscatedString(new long[]{1760054854969996269L, 8884949326966512886L}).toString();
        }
        create.setRemarks(urlDecode);
        create.setServer(_ExtKt.getIdnHost(uri));
        create.setServerPort(String.valueOf(uri.getPort()));
        String userInfo = uri.getUserInfo();
        if (userInfo == null) {
            userInfo = new ObfuscatedString(new long[]{71896916418666746L}).toString();
        }
        create.setSecretKey(userInfo);
        String str2 = queryParam.get(new ObfuscatedString(new long[]{8041900871751644733L, 1002300255949365650L}).toString());
        if (str2 == null) {
            str2 = new ObfuscatedString(new long[]{2453775010777890627L, -464653692090897112L, -4952569962359713082L}).toString();
        }
        create.setLocalAddress(str2);
        String str3 = queryParam.get(new ObfuscatedString(new long[]{-8326605260630026365L, 7142446923035327210L, -2405991665133148025L}).toString());
        if (str3 == null) {
            str3 = new ObfuscatedString(new long[]{8904634244094191535L}).toString();
        }
        create.setPublicKey(str3);
        String str4 = queryParam.get(new ObfuscatedString(new long[]{554947430294802830L, 7277937708701884179L, -3040388601719193155L}).toString());
        if (str4 == null || str4.length() <= 0) {
            str4 = null;
        }
        create.setPreSharedKey(str4);
        String str5 = queryParam.get(new ObfuscatedString(new long[]{-3502917128633830218L, -7191804745936384553L}).toString());
        if (str5 == null) {
            str5 = new ObfuscatedString(new long[]{4057907750233014941L, -3678157270257402596L}).toString();
        }
        create.setMtu(Integer.valueOf(Utils.parseInt$default(utils, str5, 0, 2, null)));
        String str6 = queryParam.get(new ObfuscatedString(new long[]{5628688456347508678L, 5721671021198986599L}).toString());
        if (str6 == null) {
            str6 = new ObfuscatedString(new long[]{1049459193040305470L, 4791096804562323049L}).toString();
        }
        create.setReserved(str6);
        return create;
    }

    @Nullable
    public final ProfileItem parseWireguardConfFile(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{7703204119570719457L, -2642800492211688270L}).toString());
        ProfileItem create = ProfileItem.INSTANCE.create(EConfigType.WIREGUARD);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator<T> it = StringsKt__StringsKt.lines(str).iterator();
        String str2 = null;
        String str3 = null;
        while (it.hasNext()) {
            String obj = StringsKt__StringsKt.trim((String) it.next()).toString();
            if (obj.length() != 0 && !AbstractC1197x89633db9.startsWith$default(obj, new ObfuscatedString(new long[]{-6735267430744790237L, 4097527337290706469L}).toString(), false, 2, null)) {
                if (AbstractC1197x89633db9.startsWith(obj, new ObfuscatedString(new long[]{649534224588326061L, 5931608792124080909L, -4121372191815422112L}).toString(), true)) {
                    str3 = new ObfuscatedString(new long[]{2455954727236649817L, 914019649912155727L, 4103253825028149639L}).toString();
                } else if (AbstractC1197x89633db9.startsWith(obj, new ObfuscatedString(new long[]{6057510786963968249L, 2451854158926186234L}).toString(), true)) {
                    str3 = new ObfuscatedString(new long[]{-1517794828207642590L, -8091108035584595873L}).toString();
                } else if (str3 != null) {
                    List split$default = StringsKt__StringsKt.split$default((CharSequence) obj, new String[]{new ObfuscatedString(new long[]{893822568313864125L, -1268623250467881187L}).toString()}, false, 2, 2, (Object) null);
                    ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(split$default, 10));
                    Iterator it2 = split$default.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(StringsKt__StringsKt.trim((String) it2.next()).toString());
                    }
                    if (arrayList.size() == 2) {
                        String lowerCase = ((String) arrayList.get(0)).toLowerCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(lowerCase, new ObfuscatedString(new long[]{4702684866164750077L, 5614418988616469236L, -5941658049628741728L}).toString());
                        String str4 = (String) arrayList.get(1);
                        if (Intrinsics.areEqual(str3, new ObfuscatedString(new long[]{1045607253387150515L, -3448174544985570284L, -9072096194840681736L}).toString())) {
                            linkedHashMap.put(lowerCase, str4);
                        } else if (Intrinsics.areEqual(str3, new ObfuscatedString(new long[]{4903141826091210816L, 813015815574887775L}).toString())) {
                            linkedHashMap2.put(lowerCase, str4);
                        }
                    }
                }
            }
        }
        String str5 = (String) linkedHashMap.get(new ObfuscatedString(new long[]{5766758418467443923L, 8007763386001280464L, 8839327130188739667L}).toString());
        if (str5 == null) {
            str5 = new ObfuscatedString(new long[]{-2250411165457102928L}).toString();
        }
        create.setSecretKey(str5);
        create.setRemarks(String.valueOf(System.currentTimeMillis()));
        String str6 = (String) linkedHashMap.get(new ObfuscatedString(new long[]{-8467678742891695689L, -3373920335633836073L}).toString());
        if (str6 == null) {
            str6 = new ObfuscatedString(new long[]{-432684408505893083L, -6624961357574055607L, 5658563078159157037L}).toString();
        }
        create.setLocalAddress(str6);
        Utils utils = Utils.INSTANCE;
        String str7 = (String) linkedHashMap.get(new ObfuscatedString(new long[]{-199777892179221645L, 8511754449592539012L}).toString());
        if (str7 == null) {
            str7 = new ObfuscatedString(new long[]{5202072735945279338L, 9189848370595081616L}).toString();
        }
        create.setMtu(Integer.valueOf(Utils.parseInt$default(utils, str7, 0, 2, null)));
        String str8 = (String) linkedHashMap2.get(new ObfuscatedString(new long[]{-3912055267343805977L, -8078330739503668070L, -4740836229029658337L}).toString());
        if (str8 == null) {
            str8 = new ObfuscatedString(new long[]{-6101044948561477341L}).toString();
        }
        create.setPublicKey(str8);
        String str9 = (String) linkedHashMap2.get(new ObfuscatedString(new long[]{8177091142305739822L, 62632778061038492L, -5434932659195115455L}).toString());
        if (str9 != null && str9.length() > 0) {
            str2 = str9;
        }
        create.setPreSharedKey(str2);
        String str10 = (String) linkedHashMap2.get(new ObfuscatedString(new long[]{-6847088121236825590L, 3794523153302137842L}).toString());
        if (str10 == null) {
            str10 = new ObfuscatedString(new long[]{3471051728504819113L}).toString();
        }
        List split$default2 = StringsKt__StringsKt.split$default((CharSequence) str10, new String[]{new ObfuscatedString(new long[]{8415862304756837546L, 5188417847724627543L}).toString()}, false, 2, 2, (Object) null);
        if (split$default2.size() == 2) {
            create.setServer((String) split$default2.get(0));
            create.setServerPort((String) split$default2.get(1));
        } else {
            create.setServer(str10);
            create.setServerPort(new ObfuscatedString(new long[]{704061762676439707L}).toString());
        }
        String str11 = (String) linkedHashMap2.get(new ObfuscatedString(new long[]{-1076703639624629678L, -668455022400803678L}).toString());
        if (str11 == null) {
            str11 = new ObfuscatedString(new long[]{7907865122251647268L, -62482706108810027L}).toString();
        }
        create.setReserved(str11);
        return create;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0095, code lost:
    
        if (r0 != false) goto L24;
     */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final V2rayConfig.OutboundBean toOutbound(@NotNull ProfileItem profileItem) {
        V2rayConfig.OutboundBean.OutSettingsBean settings;
        String str;
        List split$default;
        V2rayConfig.OutboundBean.OutSettingsBean.WireGuardBean wireGuardBean;
        boolean z = false;
        Intrinsics.checkNotNullParameter(profileItem, new ObfuscatedString(new long[]{-4404617568883159103L, -1201963292611319746L, 3730304952276425684L}).toString());
        V2rayConfig.OutboundBean createInitOutbound = V2rayConfigManager.INSTANCE.createInitOutbound(EConfigType.WIREGUARD);
        if (createInitOutbound != null && (settings = createInitOutbound.getSettings()) != null) {
            settings.setSecretKey(profileItem.getSecretKey());
            String localAddress = profileItem.getLocalAddress();
            if (localAddress == null) {
                localAddress = new ObfuscatedString(new long[]{3101722716313398910L, 8637013334267735247L, -4634187298259533456L}).toString();
            }
            settings.setAddress(StringsKt__StringsKt.split$default((CharSequence) localAddress, new String[]{new ObfuscatedString(new long[]{-6305957683490543994L, -3533679378936176857L}).toString()}, false, 0, 6, (Object) null));
            List<V2rayConfig.OutboundBean.OutSettingsBean.WireGuardBean> peers = settings.getPeers();
            ArrayList arrayList = null;
            if (peers != null && (wireGuardBean = (V2rayConfig.OutboundBean.OutSettingsBean.WireGuardBean) CollectionsKt___CollectionsKt.firstOrNull((List) peers)) != null) {
                String publicKey = profileItem.getPublicKey();
                if (publicKey == null) {
                    publicKey = new ObfuscatedString(new long[]{1817380253350314588L}).toString();
                }
                wireGuardBean.setPublicKey(publicKey);
                String preSharedKey = profileItem.getPreSharedKey();
                if (preSharedKey != null) {
                    if (preSharedKey.length() > 0) {
                        z = true;
                    }
                }
                preSharedKey = null;
                wireGuardBean.setPreSharedKey(preSharedKey);
                wireGuardBean.setEndpoint(Utils.INSTANCE.getIpv6Address(profileItem.getServer()) + ":" + profileItem.getServerPort());
            }
            settings.setMtu(profileItem.getMtu());
            String reserved = profileItem.getReserved();
            if (reserved != null) {
                if (!StringsKt__StringsKt.isBlank(reserved)) {
                    str = reserved;
                } else {
                    str = null;
                }
                if (str != null && (split$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{new ObfuscatedString(new long[]{-7640830382899612932L, 1921505915998978783L}).toString()}, false, 0, 6, (Object) null)) != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : split$default) {
                        if (!StringsKt__StringsKt.isBlank((String) obj)) {
                            arrayList2.add(obj);
                        }
                    }
                    arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(arrayList2, 10));
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        arrayList.add(Integer.valueOf(Integer.parseInt(StringsKt__StringsKt.trim((String) it.next()).toString())));
                    }
                }
            }
            settings.setReserved(arrayList);
        }
        return createInitOutbound;
    }

    @NotNull
    public final String toUri(@NotNull ProfileItem config2) {
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{-7261404580752127030L, -6245091285169876224L}).toString());
        HashMap<String, String> hashMap = new HashMap<>();
        String obfuscatedString = new ObfuscatedString(new long[]{2403403877628687820L, 658938251230493802L, -8670142832900940180L}).toString();
        String publicKey = config2.getPublicKey();
        if (publicKey == null) {
            publicKey = new ObfuscatedString(new long[]{8508745181174980539L}).toString();
        }
        hashMap.put(obfuscatedString, publicKey);
        if (config2.getReserved() != null) {
            String obfuscatedString2 = new ObfuscatedString(new long[]{-1324005143034348987L, -5697954485416799828L}).toString();
            String removeWhiteSpace = _ExtKt.removeWhiteSpace(config2.getReserved());
            if (removeWhiteSpace == null) {
                removeWhiteSpace = new ObfuscatedString(new long[]{5213136973405605217L}).toString();
            }
            hashMap.put(obfuscatedString2, removeWhiteSpace);
        }
        String obfuscatedString3 = new ObfuscatedString(new long[]{1317337231193406412L, 8375769133827256842L}).toString();
        String removeWhiteSpace2 = _ExtKt.removeWhiteSpace(config2.getLocalAddress());
        if (removeWhiteSpace2 == null) {
            removeWhiteSpace2 = new ObfuscatedString(new long[]{1618672983162020803L}).toString();
        }
        hashMap.put(obfuscatedString3, removeWhiteSpace2);
        if (config2.getMtu() != null) {
            hashMap.put(new ObfuscatedString(new long[]{3652885801892622536L, 8169896087418852882L}).toString(), String.valueOf(config2.getMtu()));
        }
        if (config2.getPreSharedKey() != null) {
            String obfuscatedString4 = new ObfuscatedString(new long[]{4123875659941042542L, -8133002746159198792L, -4201836809367512135L}).toString();
            String removeWhiteSpace3 = _ExtKt.removeWhiteSpace(config2.getPreSharedKey());
            if (removeWhiteSpace3 == null) {
                removeWhiteSpace3 = new ObfuscatedString(new long[]{6873978000397286030L}).toString();
            }
            hashMap.put(obfuscatedString4, removeWhiteSpace3);
        }
        return toUri(config2, config2.getSecretKey(), hashMap);
    }
}
