package com.v2ray.ang.handler;

import com.panda912.muddy.ObfuscatedString;
import com.tencent.mmkv.MMKV;
import com.v2ray.ang.dto.AssetUrlItem;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.RulesetItem;
import com.v2ray.ang.dto.ServerAffiliationInfo;
import com.v2ray.ang.dto.SubscriptionItem;
import com.v2ray.ang.util.JsonUtil;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC0613x9f5dff2a;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.C0396x4a23d5ac;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\n\u0010'\u001a\u0004\u0018\u00010\u0005H\u0007J\u000e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0005J\u0014\u0010+\u001a\u00020)2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00050-J\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00050-J\u0010\u0010/\u001a\u0004\u0018\u0001002\u0006\u0010*\u001a\u00020\u0005J\u0016\u00101\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u00052\u0006\u00102\u001a\u000200J\u000e\u00103\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0005J\u000e\u00104\u001a\u00020)2\u0006\u00105\u001a\u00020\u0005J\u0010\u00106\u001a\u0004\u0018\u0001072\u0006\u0010*\u001a\u00020\u0005J\u0016\u00108\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00052\u0006\u00109\u001a\u00020:J\u0016\u0010;\u001a\u00020)2\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010=J\u0006\u0010>\u001a\u00020?J\u000e\u0010@\u001a\u00020?2\u0006\u0010*\u001a\u00020\u0005J\u0016\u0010A\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00052\u0006\u00102\u001a\u00020\u0005J\u0010\u0010B\u001a\u0004\u0018\u00010\u00052\u0006\u0010*\u001a\u00020\u0005J\b\u0010C\u001a\u00020)H\u0002J\u0018\u0010D\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020F0E0=J\u000e\u0010G\u001a\u00020)2\u0006\u00105\u001a\u00020\u0005J\u0016\u0010H\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00052\u0006\u0010I\u001a\u00020FJ\u0010\u0010J\u001a\u0004\u0018\u00010F2\u0006\u0010K\u001a\u00020\u0005J\u0014\u0010L\u001a\u00020)2\f\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00050-J\f\u0010N\u001a\b\u0012\u0004\u0012\u00020\u00050-J\u0018\u0010O\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020P0E0=J\u000e\u0010Q\u001a\u00020)2\u0006\u0010R\u001a\u00020\u0005J\u0016\u0010S\u001a\u00020)2\u0006\u0010R\u001a\u00020\u00052\u0006\u0010T\u001a\u00020PJ\u0010\u0010U\u001a\u0004\u0018\u00010P2\u0006\u0010R\u001a\u00020\u0005J\u000e\u0010V\u001a\n\u0012\u0004\u0012\u00020W\u0018\u00010-J\u0016\u0010X\u001a\u00020)2\u000e\u0010Y\u001a\n\u0012\u0004\u0012\u00020W\u0018\u00010-J\u0018\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u00052\b\u0010]\u001a\u0004\u0018\u00010\u0005J\u0016\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u00052\u0006\u0010]\u001a\u00020?J\u0016\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u00052\u0006\u0010]\u001a\u00020[J\u001c\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u00052\f\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00050^J\u0012\u0010_\u001a\u0004\u0018\u00010\u00052\u0006\u0010\\\u001a\u00020\u0005H\u0007J\u001c\u0010_\u001a\u0004\u0018\u00010\u00052\u0006\u0010\\\u001a\u00020\u00052\b\u0010`\u001a\u0004\u0018\u00010\u0005H\u0007J\u000e\u0010a\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u0005J\u0016\u0010a\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u00052\u0006\u0010`\u001a\u00020[J\u0018\u0010b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010^2\u0006\u0010\\\u001a\u00020\u0005H\u0007J\u000e\u0010c\u001a\u00020)2\u0006\u0010d\u001a\u00020[J\u0006\u0010e\u001a\u00020[R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0015\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0016\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u0019\u0010\u0012R\u001b\u0010\u001b\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0014\u001a\u0004\b\u001c\u0010\u0012R\u001b\u0010\u001e\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0014\u001a\u0004\b\u001f\u0010\u0012R\u001b\u0010!\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u0014\u001a\u0004\b\"\u0010\u0012R\u001b\u0010$\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u0014\u001a\u0004\b%\u0010\u0012¨\u0006f"}, d2 = {"Lcom/v2ray/ang/handler/MmkvManager;", "", "<init>", "()V", "ID_MAIN", "", "ID_PROFILE_FULL_CONFIG", "ID_SERVER_RAW", "ID_SERVER_AFF", "ID_SUB", "ID_ASSET", "ID_SETTING", "KEY_SELECTED_SERVER", "KEY_ANG_CONFIGS", "KEY_SUB_IDS", "mainStorage", "Lcom/tencent/mmkv/MMKV;", "getMainStorage", "()Lcom/tencent/mmkv/MMKV;", "mainStorage$delegate", "Lkotlin/Lazy;", "profileFullStorage", "getProfileFullStorage", "profileFullStorage$delegate", "serverRawStorage", "getServerRawStorage", "serverRawStorage$delegate", "serverAffStorage", "getServerAffStorage", "serverAffStorage$delegate", "subStorage", "getSubStorage", "subStorage$delegate", "assetStorage", "getAssetStorage", "assetStorage$delegate", "settingsStorage", "getSettingsStorage", "settingsStorage$delegate", "getSelectServer", "setSelectServer", "", "guid", "encodeServerList", "serverList", "", "decodeServerList", "decodeServerConfig", "Lcom/v2ray/ang/dto/ProfileItem;", "encodeServerConfig", "config", "removeServer", "removeServerViaSubid", "subid", "decodeServerAffiliationInfo", "Lcom/v2ray/ang/dto/ServerAffiliationInfo;", "encodeServerTestDelayMillis", "testResult", "", "clearAllTestDelayResults", "keys", "", "removeAllServer", "", "removeInvalidServer", "encodeServerRaw", "decodeServerRaw", "initSubsList", "decodeSubscriptions", "Lkotlin/Pair;", "Lcom/v2ray/ang/dto/SubscriptionItem;", "removeSubscription", "encodeSubscription", "subItem", "decodeSubscription", "subscriptionId", "encodeSubsList", "subsList", "decodeSubsList", "decodeAssetUrls", "Lcom/v2ray/ang/dto/AssetUrlItem;", "removeAssetUrl", "assetid", "encodeAsset", "assetItem", "decodeAsset", "decodeRoutingRulesets", "Lcom/v2ray/ang/dto/RulesetItem;", "encodeRoutingRulesets", "rulesetList", "encodeSettings", "", "key", "value", "", "decodeSettingsString", "defaultValue", "decodeSettingsBool", "decodeSettingsStringSet", "encodeStartOnBoot", "startOnBoot", "decodeStartOnBoot", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMmkvManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MmkvManager.kt\ncom/v2ray/ang/handler/MmkvManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,593:1\n1#2:594\n13472#3,2:595\n13472#3,2:599\n13472#3,2:601\n13472#3,2:605\n1869#4,2:597\n1869#4,2:603\n1056#4:607\n*S KotlinDebug\n*F\n+ 1 MmkvManager.kt\ncom/v2ray/ang/handler/MmkvManager\n*L\n171#1:595,2\n256#1:599,2\n300#1:601,2\n400#1:605,2\n218#1:597,2\n315#1:603,2\n406#1:607\n*E\n"})
/* loaded from: classes3.dex */
public final class MmkvManager {

    @NotNull
    public static final String ID_MAIN = new ObfuscatedString(new long[]{-3880080346259702832L, 417865071068896168L}).toString();

    @NotNull
    private static final String ID_PROFILE_FULL_CONFIG = new ObfuscatedString(new long[]{-1556893825446845663L, 4674701883405468110L, -4553461094843084821L, 508676270680816016L}).toString();

    @NotNull
    public static final String ID_SERVER_RAW = new ObfuscatedString(new long[]{8150530721101174152L, -7286658461177691295L, 8261015174317984239L}).toString();

    @NotNull
    private static final String ID_SERVER_AFF = new ObfuscatedString(new long[]{-7953512970819544210L, 2031357742443606976L, -2597688238687120756L}).toString();

    @NotNull
    private static final String ID_SUB = new ObfuscatedString(new long[]{-1593013223658953249L, -3545630996586073643L}).toString();

    @NotNull
    private static final String ID_ASSET = new ObfuscatedString(new long[]{1109733996483749957L, 793742389381367332L}).toString();

    @NotNull
    public static final String ID_SETTING = new ObfuscatedString(new long[]{7827801992855163160L, -6463496711061508432L}).toString();

    @NotNull
    private static final String KEY_SELECTED_SERVER = new ObfuscatedString(new long[]{9081485448636021297L, -1957281041431086136L, -6554442224349778306L}).toString();

    @NotNull
    private static final String KEY_ANG_CONFIGS = new ObfuscatedString(new long[]{-5498034203402422457L, -4207577581427831366L, 5647770421664396380L}).toString();

    @NotNull
    private static final String KEY_SUB_IDS = new ObfuscatedString(new long[]{-6205932779936031624L, 430699600950876920L}).toString();

    @NotNull
    public static final MmkvManager INSTANCE = new MmkvManager();

    /* renamed from: mainStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy mainStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(12));

    /* renamed from: profileFullStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy profileFullStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(14));

    /* renamed from: serverRawStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy serverRawStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(16));

    /* renamed from: serverAffStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy serverAffStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(18));

    /* renamed from: subStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy subStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(19));

    /* renamed from: assetStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy assetStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(20));

    /* renamed from: settingsStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy settingsStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(21));

    private MmkvManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV assetStorage_delegate$lambda$5() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{2370432377497114792L, 2479530587545001210L}).toString(), 2);
    }

    @JvmStatic
    @Nullable
    public static final String decodeSettingsString(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, new ObfuscatedString(new long[]{7282668803630097670L, -4135117670495710010L}).toString());
        return INSTANCE.getSettingsStorage().decodeString(key);
    }

    @JvmStatic
    @Nullable
    public static final Set<String> decodeSettingsStringSet(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, new ObfuscatedString(new long[]{-4286493205833801069L, 3253268279296401533L}).toString());
        return INSTANCE.getSettingsStorage().decodeStringSet(key);
    }

    private final MMKV getAssetStorage() {
        return (MMKV) assetStorage.getValue();
    }

    private final MMKV getMainStorage() {
        return (MMKV) mainStorage.getValue();
    }

    private final MMKV getProfileFullStorage() {
        return (MMKV) profileFullStorage.getValue();
    }

    @JvmStatic
    @Nullable
    public static final String getSelectServer() {
        return INSTANCE.getMainStorage().decodeString(new ObfuscatedString(new long[]{-2819583798597646584L, -1816002438527691757L, 645545879570650691L}).toString());
    }

    private final MMKV getServerAffStorage() {
        return (MMKV) serverAffStorage.getValue();
    }

    private final MMKV getServerRawStorage() {
        return (MMKV) serverRawStorage.getValue();
    }

    private final MMKV getSettingsStorage() {
        return (MMKV) settingsStorage.getValue();
    }

    private final MMKV getSubStorage() {
        return (MMKV) subStorage.getValue();
    }

    private final void initSubsList() {
        List<String> decodeSubsList = decodeSubsList();
        if (!decodeSubsList.isEmpty()) {
            return;
        }
        String[] allKeys = getSubStorage().allKeys();
        if (allKeys != null) {
            for (String str : allKeys) {
                Intrinsics.checkNotNull(str);
                decodeSubsList.add(str);
            }
        }
        encodeSubsList(decodeSubsList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV mainStorage_delegate$lambda$0() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{1177504259336131401L, 2184061340113364105L}).toString(), 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV profileFullStorage_delegate$lambda$1() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{-3490222671981415007L, 6477081036136424676L, -8799749086749468131L, 2414252557499469463L}).toString(), 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV serverAffStorage_delegate$lambda$3() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{-7937445426103680832L, -5072046520369687613L, -3969311112415253343L}).toString(), 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV serverRawStorage_delegate$lambda$2() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{3373328775631691896L, 2888114777583601349L, 5813977898088565641L}).toString(), 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV settingsStorage_delegate$lambda$6() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{-8529564847005455356L, -3054964930439629921L}).toString(), 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV subStorage_delegate$lambda$4() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{7650224403347353976L, -94949637101751976L}).toString(), 2);
    }

    public final void clearAllTestDelayResults(@Nullable List<String> keys) {
        if (keys != null) {
            for (String str : keys) {
                MmkvManager mmkvManager = INSTANCE;
                ServerAffiliationInfo decodeServerAffiliationInfo = mmkvManager.decodeServerAffiliationInfo(str);
                if (decodeServerAffiliationInfo != null) {
                    decodeServerAffiliationInfo.setTestDelayMillis(0L);
                    mmkvManager.getServerAffStorage().encode(str, JsonUtil.INSTANCE.toJson(decodeServerAffiliationInfo));
                }
            }
        }
    }

    @Nullable
    public final AssetUrlItem decodeAsset(@NotNull String assetid) {
        Intrinsics.checkNotNullParameter(assetid, new ObfuscatedString(new long[]{1373756156006159834L, -7453890005130708075L}).toString());
        String decodeString = getAssetStorage().decodeString(assetid);
        if (decodeString == null) {
            return null;
        }
        return (AssetUrlItem) JsonUtil.INSTANCE.fromJson(decodeString, AssetUrlItem.class);
    }

    @NotNull
    public final List<Pair<String, AssetUrlItem>> decodeAssetUrls() {
        ArrayList arrayList = new ArrayList();
        String[] allKeys = getAssetStorage().allKeys();
        if (allKeys != null) {
            for (String str : allKeys) {
                String decodeString = INSTANCE.getAssetStorage().decodeString(str);
                if (decodeString != null && !StringsKt__StringsKt.isBlank(decodeString)) {
                    arrayList.add(new Pair(str, JsonUtil.INSTANCE.fromJson(decodeString, AssetUrlItem.class)));
                }
            }
        }
        return CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.v2ray.ang.handler.MmkvManager$decodeAssetUrls$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return AbstractC0613x9f5dff2a.compareValues(Long.valueOf(((AssetUrlItem) ((Pair) t).component2()).getAddedTime()), Long.valueOf(((AssetUrlItem) ((Pair) t2).component2()).getAddedTime()));
            }
        });
    }

    @Nullable
    public final List<RulesetItem> decodeRoutingRulesets() {
        String decodeString = getSettingsStorage().decodeString(new ObfuscatedString(new long[]{7880040546686034580L, -2506700357832014633L, 7134638375338819071L, 7776749934973090572L}).toString());
        if (decodeString != null && decodeString.length() != 0) {
            return ArraysKt___ArraysKt.toMutableList((Object[]) JsonUtil.INSTANCE.fromJson(decodeString, RulesetItem[].class));
        }
        return null;
    }

    @Nullable
    public final ServerAffiliationInfo decodeServerAffiliationInfo(@NotNull String guid) {
        String decodeString;
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{-8973230107934428017L, -2417651061208768181L}).toString());
        if (StringsKt__StringsKt.isBlank(guid) || (decodeString = getServerAffStorage().decodeString(guid)) == null || StringsKt__StringsKt.isBlank(decodeString)) {
            return null;
        }
        return (ServerAffiliationInfo) JsonUtil.INSTANCE.fromJson(decodeString, ServerAffiliationInfo.class);
    }

    @Nullable
    public final ProfileItem decodeServerConfig(@NotNull String guid) {
        String decodeString;
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{-55567971974028438L, -5295565754550868908L}).toString());
        if (StringsKt__StringsKt.isBlank(guid) || (decodeString = getProfileFullStorage().decodeString(guid)) == null || StringsKt__StringsKt.isBlank(decodeString)) {
            return null;
        }
        return (ProfileItem) JsonUtil.INSTANCE.fromJson(decodeString, ProfileItem.class);
    }

    @NotNull
    public final List<String> decodeServerList() {
        String decodeString = getMainStorage().decodeString(new ObfuscatedString(new long[]{6242672707013661672L, -3865338265049582137L, 8015525276534554929L}).toString());
        if (decodeString != null && !StringsKt__StringsKt.isBlank(decodeString)) {
            return ArraysKt___ArraysKt.toMutableList((Object[]) JsonUtil.INSTANCE.fromJson(decodeString, String[].class));
        }
        return new ArrayList();
    }

    @Nullable
    public final String decodeServerRaw(@NotNull String guid) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{-3195107562414146369L, -1041553214969733493L}).toString());
        return getServerRawStorage().decodeString(guid);
    }

    public final boolean decodeSettingsBool(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, new ObfuscatedString(new long[]{3082022528307620927L, -177521633269425992L}).toString());
        return getSettingsStorage().decodeBool(key, false);
    }

    public final boolean decodeStartOnBoot() {
        return decodeSettingsBool(new ObfuscatedString(new long[]{4920593485653853825L, -4424979502542903233L, -2075696928390501837L}).toString(), false);
    }

    @NotNull
    public final List<String> decodeSubsList() {
        String decodeString = getMainStorage().decodeString(new ObfuscatedString(new long[]{-8662013954761311583L, -3318221853117215165L}).toString());
        if (decodeString != null && !StringsKt__StringsKt.isBlank(decodeString)) {
            return ArraysKt___ArraysKt.toMutableList((Object[]) JsonUtil.INSTANCE.fromJson(decodeString, String[].class));
        }
        return new ArrayList();
    }

    @Nullable
    public final SubscriptionItem decodeSubscription(@NotNull String subscriptionId) {
        Intrinsics.checkNotNullParameter(subscriptionId, new ObfuscatedString(new long[]{-5610036024364994355L, 6472495416738380534L, 5493638842790329944L}).toString());
        String decodeString = getSubStorage().decodeString(subscriptionId);
        if (decodeString == null) {
            return null;
        }
        return (SubscriptionItem) JsonUtil.INSTANCE.fromJson(decodeString, SubscriptionItem.class);
    }

    @NotNull
    public final List<Pair<String, SubscriptionItem>> decodeSubscriptions() {
        initSubsList();
        ArrayList arrayList = new ArrayList();
        for (String str : decodeSubsList()) {
            String decodeString = INSTANCE.getSubStorage().decodeString(str);
            if (decodeString != null && !StringsKt__StringsKt.isBlank(decodeString)) {
                arrayList.add(new Pair(str, JsonUtil.INSTANCE.fromJson(decodeString, SubscriptionItem.class)));
            }
        }
        return arrayList;
    }

    public final void encodeAsset(@NotNull String assetid, @NotNull AssetUrlItem assetItem) {
        Intrinsics.checkNotNullParameter(assetid, new ObfuscatedString(new long[]{-9032750312556314775L, 140500737567174052L}).toString());
        Intrinsics.checkNotNullParameter(assetItem, new ObfuscatedString(new long[]{-2517910287523116983L, -2458526644235580037L, -2207384386956164548L}).toString());
        if (StringsKt__StringsKt.isBlank(assetid)) {
            assetid = Utils.INSTANCE.getUuid();
        }
        getAssetStorage().encode(assetid, JsonUtil.INSTANCE.toJson(assetItem));
    }

    public final void encodeRoutingRulesets(@Nullable List<RulesetItem> rulesetList) {
        List<RulesetItem> list = rulesetList;
        if (list != null && !list.isEmpty()) {
            encodeSettings(new ObfuscatedString(new long[]{6390825950073435799L, -654069142694127835L, -5740256659297099321L, -4166749781194107995L}).toString(), JsonUtil.INSTANCE.toJson(rulesetList));
        } else {
            encodeSettings(new ObfuscatedString(new long[]{7257017479719839579L, 6310857330504896651L, 1303177810215323200L, 937294035909471687L}).toString(), new ObfuscatedString(new long[]{6559362928540289498L}).toString());
        }
    }

    @NotNull
    public final String encodeServerConfig(@NotNull String guid, @NotNull ProfileItem config2) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{-4365405182638469734L, -3584817458749706592L}).toString());
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{-1364361564780674167L, -922998061821461034L}).toString());
        if (StringsKt__StringsKt.isBlank(guid)) {
            guid = Utils.INSTANCE.getUuid();
        }
        getProfileFullStorage().encode(guid, JsonUtil.INSTANCE.toJson(config2));
        List<String> decodeServerList = decodeServerList();
        if (!decodeServerList.contains(guid)) {
            decodeServerList.add(0, guid);
            encodeServerList(decodeServerList);
            String selectServer = getSelectServer();
            if (selectServer == null || StringsKt__StringsKt.isBlank(selectServer)) {
                getMainStorage().encode(new ObfuscatedString(new long[]{-5622286665004415651L, 6698575130467261542L, 2695727050699621882L}).toString(), guid);
            }
        }
        return guid;
    }

    public final void encodeServerList(@NotNull List<String> serverList) {
        Intrinsics.checkNotNullParameter(serverList, new ObfuscatedString(new long[]{5334566573853119974L, -6162735860057738750L, 8367380699848555718L}).toString());
        getMainStorage().encode(new ObfuscatedString(new long[]{1313422020097674276L, 1536056496939996112L, 1923291467357250783L}).toString(), JsonUtil.INSTANCE.toJson(serverList));
    }

    public final void encodeServerRaw(@NotNull String guid, @NotNull String config2) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{-939831108985929361L, 4826081157034019419L}).toString());
        Intrinsics.checkNotNullParameter(config2, new ObfuscatedString(new long[]{-7029165618062180631L, 8551293870324505645L}).toString());
        getServerRawStorage().encode(guid, config2);
    }

    public final void encodeServerTestDelayMillis(@NotNull String guid, long testResult) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{344175482275701164L, -6490624325024221323L}).toString());
        if (StringsKt__StringsKt.isBlank(guid)) {
            return;
        }
        ServerAffiliationInfo decodeServerAffiliationInfo = decodeServerAffiliationInfo(guid);
        if (decodeServerAffiliationInfo == null) {
            decodeServerAffiliationInfo = new ServerAffiliationInfo(0L, 1, null);
        }
        decodeServerAffiliationInfo.setTestDelayMillis(testResult);
        getServerAffStorage().encode(guid, JsonUtil.INSTANCE.toJson(decodeServerAffiliationInfo));
    }

    public final boolean encodeSettings(@NotNull String key, @Nullable String value) {
        Intrinsics.checkNotNullParameter(key, new ObfuscatedString(new long[]{-4564568052061647882L, 7202940221097541883L}).toString());
        return getSettingsStorage().encode(key, value);
    }

    public final void encodeStartOnBoot(boolean startOnBoot) {
        encodeSettings(new ObfuscatedString(new long[]{-316527074259990813L, -949257989404445529L, 6794110718140590721L}).toString(), startOnBoot);
    }

    public final void encodeSubsList(@NotNull List<String> subsList) {
        Intrinsics.checkNotNullParameter(subsList, new ObfuscatedString(new long[]{3335788952625641801L, 8650998315755781461L}).toString());
        getMainStorage().encode(new ObfuscatedString(new long[]{-7514593260448642158L, -1646719801671102430L}).toString(), JsonUtil.INSTANCE.toJson(subsList));
    }

    public final void encodeSubscription(@NotNull String guid, @NotNull SubscriptionItem subItem) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{2364849576776502912L, -2868053835601235658L}).toString());
        Intrinsics.checkNotNullParameter(subItem, new ObfuscatedString(new long[]{-8753201154430246376L, -3273682216703261678L}).toString());
        if (StringsKt__StringsKt.isBlank(guid)) {
            guid = Utils.INSTANCE.getUuid();
        }
        getSubStorage().encode(guid, JsonUtil.INSTANCE.toJson(subItem));
        List<String> decodeSubsList = decodeSubsList();
        if (!decodeSubsList.contains(guid)) {
            decodeSubsList.add(guid);
            encodeSubsList(decodeSubsList);
        }
    }

    public final int removeAllServer() {
        int i;
        String[] allKeys = getProfileFullStorage().allKeys();
        if (allKeys != null) {
            i = allKeys.length;
        } else {
            i = 0;
        }
        getMainStorage().clearAll();
        getProfileFullStorage().clearAll();
        getServerAffStorage().clearAll();
        return i;
    }

    public final void removeAssetUrl(@NotNull String assetid) {
        Intrinsics.checkNotNullParameter(assetid, new ObfuscatedString(new long[]{924590350354615785L, 7553900139839767208L}).toString());
        getAssetStorage().remove(assetid);
    }

    public final int removeInvalidServer(@NotNull String guid) {
        int i = 1;
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{-5601230015477248811L, -8986126471855277711L}).toString());
        if (guid.length() > 0) {
            ServerAffiliationInfo decodeServerAffiliationInfo = decodeServerAffiliationInfo(guid);
            if (decodeServerAffiliationInfo == null) {
                return 0;
            }
            if (decodeServerAffiliationInfo.getTestDelayMillis() < 0) {
                INSTANCE.removeServer(guid);
            } else {
                i = 0;
            }
            return i;
        }
        String[] allKeys = getServerAffStorage().allKeys();
        if (allKeys == null) {
            return 0;
        }
        int i2 = 0;
        for (String str : allKeys) {
            MmkvManager mmkvManager = INSTANCE;
            Intrinsics.checkNotNull(str);
            ServerAffiliationInfo decodeServerAffiliationInfo2 = mmkvManager.decodeServerAffiliationInfo(str);
            if (decodeServerAffiliationInfo2 != null && decodeServerAffiliationInfo2.getTestDelayMillis() < 0) {
                mmkvManager.removeServer(str);
                i2++;
            }
        }
        return i2;
    }

    public final void removeServer(@NotNull String guid) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{5447820347177062782L, 7682890839326614746L}).toString());
        if (StringsKt__StringsKt.isBlank(guid)) {
            return;
        }
        if (Intrinsics.areEqual(getSelectServer(), guid)) {
            getMainStorage().remove(new ObfuscatedString(new long[]{1712909139979803307L, 1895746707934713742L, -7362776147743530164L}).toString());
        }
        List<String> decodeServerList = decodeServerList();
        decodeServerList.remove(guid);
        encodeServerList(decodeServerList);
        getProfileFullStorage().remove(guid);
        getServerAffStorage().remove(guid);
    }

    public final void removeServerViaSubid(@NotNull String subid) {
        String[] allKeys;
        Intrinsics.checkNotNullParameter(subid, new ObfuscatedString(new long[]{-6263680194547008046L, 6671425472173220954L}).toString());
        if (!StringsKt__StringsKt.isBlank(subid) && (allKeys = getProfileFullStorage().allKeys()) != null) {
            for (String str : allKeys) {
                MmkvManager mmkvManager = INSTANCE;
                Intrinsics.checkNotNull(str);
                ProfileItem decodeServerConfig = mmkvManager.decodeServerConfig(str);
                if (decodeServerConfig != null && Intrinsics.areEqual(decodeServerConfig.getSubscriptionId(), subid)) {
                    mmkvManager.removeServer(str);
                }
            }
        }
    }

    public final void removeSubscription(@NotNull String subid) {
        Intrinsics.checkNotNullParameter(subid, new ObfuscatedString(new long[]{-2723542727176165054L, -4416738012583347532L}).toString());
        getSubStorage().remove(subid);
        List<String> decodeSubsList = decodeSubsList();
        decodeSubsList.remove(subid);
        encodeSubsList(decodeSubsList);
        removeServerViaSubid(subid);
    }

    public final void setSelectServer(@NotNull String guid) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{-2650642619954633380L, -7720357327658069563L}).toString());
        getMainStorage().encode(new ObfuscatedString(new long[]{-6654173285400412460L, -1520234471286954484L, -5812381187521537764L}).toString(), guid);
    }

    @JvmStatic
    @Nullable
    public static final String decodeSettingsString(@NotNull String key, @Nullable String defaultValue) {
        Intrinsics.checkNotNullParameter(key, new ObfuscatedString(new long[]{-3592624155360914279L, -7850417255842373924L}).toString());
        return INSTANCE.getSettingsStorage().decodeString(key, defaultValue);
    }

    public final boolean decodeSettingsBool(@NotNull String key, boolean defaultValue) {
        Intrinsics.checkNotNullParameter(key, new ObfuscatedString(new long[]{-412740587758038752L, -1009853202564804441L}).toString());
        return getSettingsStorage().decodeBool(key, defaultValue);
    }

    public final boolean encodeSettings(@NotNull String key, int value) {
        Intrinsics.checkNotNullParameter(key, new ObfuscatedString(new long[]{6767333339980153241L, 7112840387759052134L}).toString());
        return getSettingsStorage().encode(key, value);
    }

    public final boolean encodeSettings(@NotNull String key, boolean value) {
        Intrinsics.checkNotNullParameter(key, new ObfuscatedString(new long[]{-4673161596672836978L, 3467227399956805727L}).toString());
        return getSettingsStorage().encode(key, value);
    }

    public final boolean encodeSettings(@NotNull String key, @NotNull Set<String> value) {
        Intrinsics.checkNotNullParameter(key, new ObfuscatedString(new long[]{-524728086465497959L, -8929170318725040707L}).toString());
        Intrinsics.checkNotNullParameter(value, new ObfuscatedString(new long[]{4920493047560049414L, 8533051208481063134L}).toString());
        return getSettingsStorage().encode(key, value);
    }
}
