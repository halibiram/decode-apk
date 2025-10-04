package com.v2ray.ang.util;

import com.google.gson.Gson;
import com.panda912.muddy.ObfuscatedString;
import com.tencent.mmkv.MMKV;
import com.v2ray.ang.dto.ServerAffiliationInfo;
import com.v2ray.ang.dto.ServerConfig;
import com.v2ray.ang.dto.SubscriptionItem;
import defpackage.AbstractC0613x9f5dff2a;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.C0396x4a23d5ac;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00050\u001dJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u0005J\u0016\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u001fJ\u000e\u0010#\u001a\u00020$2\u0006\u0010 \u001a\u00020\u0005J\u000e\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u0005J\u0010\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010 \u001a\u00020\u0005J\u0006\u0010)\u001a\u00020$J\u000e\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0005J\u0018\u0010-\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002000/0.J\u0006\u00101\u001a\u00020$R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0013\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0014\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0012\u001a\u0004\b\u0017\u0010\u0010R\u001b\u0010\u0019\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0012\u001a\u0004\b\u001a\u0010\u0010¨\u00062"}, d2 = {"Lcom/v2ray/ang/util/MmkvManager;", "", "<init>", "()V", "ID_MAIN", "", "ID_SERVER_CONFIG", "ID_SERVER_RAW", "ID_SERVER_AFF", "ID_SUB", "ID_SETTING", "KEY_SELECTED_SERVER", "KEY_ANG_CONFIGS", "mainStorage", "Lcom/tencent/mmkv/MMKV;", "getMainStorage", "()Lcom/tencent/mmkv/MMKV;", "mainStorage$delegate", "Lkotlin/Lazy;", "serverStorage", "getServerStorage", "serverStorage$delegate", "serverAffStorage", "getServerAffStorage", "serverAffStorage$delegate", "subStorage", "getSubStorage", "subStorage$delegate", "decodeServerList", "", "decodeServerConfig", "Lcom/v2ray/ang/dto/ServerConfig;", "guid", "encodeServerConfig", "config", "removeServer", "", "removeServerViaSubid", "subid", "decodeServerAffiliationInfo", "Lcom/v2ray/ang/dto/ServerAffiliationInfo;", "clearAllTestDelayResults", "importUrlAsSubscription", "", "url", "decodeSubscriptions", "", "Lkotlin/Pair;", "Lcom/v2ray/ang/dto/SubscriptionItem;", "removeAllServer", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMmkvManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MmkvManager.kt\ncom/v2ray/ang/util/MmkvManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n1#2:139\n13472#3,2:140\n13472#3,2:142\n13472#3,2:146\n1869#4,2:144\n1056#4:148\n*S KotlinDebug\n*F\n+ 1 MmkvManager.kt\ncom/v2ray/ang/util/MmkvManager\n*L\n76#1:140,2\n97#1:142,2\n121#1:146,2\n107#1:144,2\n127#1:148\n*E\n"})
/* loaded from: classes3.dex */
public final class MmkvManager {

    @NotNull
    public static final String ID_MAIN = new ObfuscatedString(new long[]{1527326127402094237L, 8864174389860386626L}).toString();

    @NotNull
    private static final String ID_SERVER_CONFIG = new ObfuscatedString(new long[]{6045685201750462138L, -7873631570886145962L, -1029013021680460097L}).toString();

    @NotNull
    public static final String ID_SERVER_RAW = new ObfuscatedString(new long[]{-8895073257181083947L, -1106976496177975535L, -585916796161708560L}).toString();

    @NotNull
    private static final String ID_SERVER_AFF = new ObfuscatedString(new long[]{9009894953276903012L, 323030581015477976L, 1037602110107917736L}).toString();

    @NotNull
    public static final String ID_SUB = new ObfuscatedString(new long[]{-2084039564686443383L, 7635797226205743514L}).toString();

    @NotNull
    public static final String ID_SETTING = new ObfuscatedString(new long[]{3432853389181615700L, 3546236800526866343L}).toString();

    @NotNull
    public static final String KEY_SELECTED_SERVER = new ObfuscatedString(new long[]{-2549096449968675157L, 6644012182784632221L, -1259125505798864835L}).toString();

    @NotNull
    private static final String KEY_ANG_CONFIGS = new ObfuscatedString(new long[]{-185187633856164796L, 5042975061185984571L, -3864721708955859933L}).toString();

    @NotNull
    public static final MmkvManager INSTANCE = new MmkvManager();

    /* renamed from: mainStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy mainStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(11));

    /* renamed from: serverStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy serverStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(13));

    /* renamed from: serverAffStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy serverAffStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(15));

    /* renamed from: subStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy subStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(17));

    private MmkvManager() {
    }

    private final MMKV getMainStorage() {
        return (MMKV) mainStorage.getValue();
    }

    private final MMKV getServerAffStorage() {
        return (MMKV) serverAffStorage.getValue();
    }

    private final MMKV getServerStorage() {
        return (MMKV) serverStorage.getValue();
    }

    private final MMKV getSubStorage() {
        return (MMKV) subStorage.getValue();
    }

    public static final MMKV mainStorage_delegate$lambda$0() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{-591449272376132243L, 7871872609423174599L}).toString(), 2);
    }

    public static final MMKV serverAffStorage_delegate$lambda$2() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{1994991189346410080L, -2799691592509702884L, 1970368072433212957L}).toString(), 2);
    }

    public static final MMKV serverStorage_delegate$lambda$1() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{-4169911223802796962L, 753206369609039290L, -5585911749765537367L}).toString(), 2);
    }

    public static final MMKV subStorage_delegate$lambda$3() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{7319188531525092470L, -6211141183979254958L}).toString(), 2);
    }

    public final void clearAllTestDelayResults() {
        String[] allKeys = getServerAffStorage().allKeys();
        if (allKeys != null) {
            for (String str : allKeys) {
                MmkvManager mmkvManager = INSTANCE;
                Intrinsics.checkNotNull(str);
                ServerAffiliationInfo decodeServerAffiliationInfo = mmkvManager.decodeServerAffiliationInfo(str);
                if (decodeServerAffiliationInfo != null) {
                    decodeServerAffiliationInfo.setTestDelayMillis(0L);
                    mmkvManager.getServerAffStorage().encode(str, new Gson().toJson(decodeServerAffiliationInfo));
                }
            }
        }
    }

    @Nullable
    public final ServerAffiliationInfo decodeServerAffiliationInfo(@NotNull String guid) {
        String decodeString;
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{-8583384741839748712L, 1014594967594147847L}).toString());
        if (StringsKt__StringsKt.isBlank(guid) || (decodeString = getServerAffStorage().decodeString(guid)) == null || StringsKt__StringsKt.isBlank(decodeString)) {
            return null;
        }
        return (ServerAffiliationInfo) new Gson().fromJson(decodeString, ServerAffiliationInfo.class);
    }

    @Nullable
    public final ServerConfig decodeServerConfig(@NotNull String guid) {
        String decodeString;
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{-3932764369468272252L, -1166312808322510639L}).toString());
        if (StringsKt__StringsKt.isBlank(guid) || (decodeString = getServerStorage().decodeString(guid)) == null || StringsKt__StringsKt.isBlank(decodeString)) {
            return null;
        }
        return (ServerConfig) new Gson().fromJson(decodeString, ServerConfig.class);
    }

    @NotNull
    public final List<String> decodeServerList() {
        String decodeString = getMainStorage().decodeString(new ObfuscatedString(new long[]{5086365612846301255L, 8210640481723057923L, -7956380368042638923L}).toString());
        if (decodeString != null && !StringsKt__StringsKt.isBlank(decodeString)) {
            Object fromJson = new Gson().fromJson(decodeString, (Class<Object>) String[].class);
            Intrinsics.checkNotNullExpressionValue(fromJson, new ObfuscatedString(new long[]{7632294771448372416L, -2410504473023400873L, 390700691004708375L}).toString());
            return ArraysKt___ArraysKt.toMutableList((Object[]) fromJson);
        }
        return new ArrayList();
    }

    @NotNull
    public final List<Pair<String, SubscriptionItem>> decodeSubscriptions() {
        ArrayList arrayList = new ArrayList();
        String[] allKeys = getSubStorage().allKeys();
        if (allKeys != null) {
            for (String str : allKeys) {
                String decodeString = INSTANCE.getSubStorage().decodeString(str);
                if (decodeString != null && !StringsKt__StringsKt.isBlank(decodeString)) {
                    arrayList.add(new Pair(str, new Gson().fromJson(decodeString, SubscriptionItem.class)));
                }
            }
        }
        CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.v2ray.ang.util.MmkvManager$decodeSubscriptions$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return AbstractC0613x9f5dff2a.compareValues(Long.valueOf(((SubscriptionItem) ((Pair) t).component2()).getAddedTime()), Long.valueOf(((SubscriptionItem) ((Pair) t2).component2()).getAddedTime()));
            }
        });
        return arrayList;
    }

    @NotNull
    public final String encodeServerConfig(@NotNull String guid, @NotNull ServerConfig config2) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{-4080430149776961818L, -3393414837407023703L}).toString());
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{4203584376405070188L, -3865198319499519238L}).toString());
        if (StringsKt__StringsKt.isBlank(guid)) {
            guid = Utils.INSTANCE.getUuid();
        }
        getServerStorage().encode(guid, new Gson().toJson(config2));
        List<String> decodeServerList = decodeServerList();
        if (!decodeServerList.contains(guid)) {
            decodeServerList.add(0, guid);
            getMainStorage().encode(new ObfuscatedString(new long[]{2319187081937090448L, 7791541004104856204L, 3709727725115483355L}).toString(), new Gson().toJson(decodeServerList));
            String decodeString = getMainStorage().decodeString(new ObfuscatedString(new long[]{8901840219094672584L, 7280352960335996558L, -4792806417903871109L}).toString());
            if (decodeString == null || StringsKt__StringsKt.isBlank(decodeString)) {
                getMainStorage().encode(new ObfuscatedString(new long[]{-3282670938433305974L, -6708918500287570898L, 8814494112950665975L}).toString(), guid);
            }
        }
        return guid;
    }

    public final int importUrlAsSubscription(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, new ObfuscatedString(new long[]{7510532234717101394L, 2536667833472900686L}).toString());
        Iterator<T> it = decodeSubscriptions().iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(((SubscriptionItem) ((Pair) it.next()).getSecond()).getUrl(), url)) {
                return 0;
            }
        }
        SubscriptionItem subscriptionItem = new SubscriptionItem(null, null, false, 0L, 0L, false, null, null, null, null, null, false, 4095, null);
        subscriptionItem.setRemarks(new ObfuscatedString(new long[]{-4680418390375851216L, 1640387579970775977L, 7089083212803997489L}).toString());
        subscriptionItem.setUrl(url);
        getSubStorage().encode(Utils.INSTANCE.getUuid(), new Gson().toJson(subscriptionItem));
        return 1;
    }

    public final void removeAllServer() {
        getMainStorage().clearAll();
        getServerStorage().clearAll();
        getServerAffStorage().clearAll();
    }

    public final void removeServer(@NotNull String guid) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{7343341769390056327L, 7873410992914659140L}).toString());
        if (StringsKt__StringsKt.isBlank(guid)) {
            return;
        }
        if (Intrinsics.areEqual(getMainStorage().decodeString(new ObfuscatedString(new long[]{1766882424623205249L, -7264431724300221463L, 2163133412742225744L}).toString()), guid)) {
            getMainStorage().remove(new ObfuscatedString(new long[]{8012977249894419875L, 624250711407251679L, 2046334631564003508L}).toString());
        }
        List<String> decodeServerList = decodeServerList();
        decodeServerList.remove(guid);
        getMainStorage().encode(new ObfuscatedString(new long[]{1649549130245022360L, 7346061801029688106L, 6803192968124918046L}).toString(), new Gson().toJson(decodeServerList));
        getServerStorage().remove(guid);
        getServerAffStorage().remove(guid);
    }

    public final void removeServerViaSubid(@NotNull String subid) {
        String[] allKeys;
        Intrinsics.checkNotNullParameter(subid, new ObfuscatedString(new long[]{5836386605863899238L, -2021931903583883584L}).toString());
        if (!StringsKt__StringsKt.isBlank(subid) && (allKeys = getServerStorage().allKeys()) != null) {
            for (String str : allKeys) {
                MmkvManager mmkvManager = INSTANCE;
                Intrinsics.checkNotNull(str);
                ServerConfig decodeServerConfig = mmkvManager.decodeServerConfig(str);
                if (decodeServerConfig != null && Intrinsics.areEqual(decodeServerConfig.getSubscriptionId(), subid)) {
                    mmkvManager.removeServer(str);
                }
            }
        }
    }
}
