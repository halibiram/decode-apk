package com.v2ray.ang.viewmodel;

import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.AssetManager;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tencent.mmkv.MMKV;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.dto.ServerAffiliationInfo;
import com.v2ray.ang.dto.ServersCache;
import com.v2ray.ang.dto.SubscriptionItem;
import com.v2ray.ang.handler.AngConfigManager;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.handler.SpeedtestManager;
import com.v2ray.ang.util.MessageUtil;
import com.v2ray.ang.util.Utils;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0587xb7546d05;
import defpackage.AbstractC0589xfe44cac1;
import defpackage.AbstractC0613x9f5dff2a;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.C0396x4a23d5ac;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000o\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004*\u0001O\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010,\u001a\u00020-J\b\u0010.\u001a\u00020-H\u0014J\u0006\u0010/\u001a\u00020-J\u000e\u00100\u001a\u00020-2\u0006\u00101\u001a\u00020\u000eJ\u0016\u00102\u001a\u00020-2\u0006\u00103\u001a\u00020!2\u0006\u00104\u001a\u00020!J\u0006\u00105\u001a\u00020-J\u0006\u00106\u001a\u00020!J\u0006\u00107\u001a\u00020!J\u0006\u00108\u001a\u00020-J\u0006\u00109\u001a\u00020-J\u0006\u0010:\u001a\u00020-J\u0010\u0010;\u001a\u00020-2\b\u0010<\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010=\u001a\u00020-2\u0006\u0010>\u001a\u00020\u000eH\u0002J*\u0010?\u001a\u001e\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r0@2\u0006\u0010A\u001a\u00020BJ\u000e\u0010C\u001a\u00020!2\u0006\u00101\u001a\u00020\u000eJ\u0006\u0010D\u001a\u00020!J\u0006\u0010E\u001a\u00020!J\u0006\u0010F\u001a\u00020!J\u0006\u0010G\u001a\u00020-J\u0006\u0010H\u001a\u00020-J\u000e\u0010I\u001a\u00020-2\u0006\u0010J\u001a\u00020KJ\u000e\u0010L\u001a\u00020-2\u0006\u0010M\u001a\u00020\u000eJ\u0006\u0010Q\u001a\u00020-R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\r¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR!\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u000b\u001a\u0004\b\u001b\u0010\u001eR!\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u001c8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u000b\u001a\u0004\b\"\u0010\u001eR!\u0010$\u001a\b\u0012\u0004\u0012\u00020\u000e0\u001c8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u000b\u001a\u0004\b%\u0010\u001eR\u001b\u0010'\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010\u000b\u001a\u0004\b)\u0010*R\u0010\u0010N\u001a\u00020OX\u0082\u0004¢\u0006\u0004\n\u0002\u0010P¨\u0006R"}, d2 = {"Lcom/v2ray/ang/viewmodel/MainViewModel;", "Landroidx/lifecycle/AndroidViewModel;", "application", "Landroid/app/Application;", "<init>", "(Landroid/app/Application;)V", "serverRawStorage", "Lcom/tencent/mmkv/MMKV;", "getServerRawStorage", "()Lcom/tencent/mmkv/MMKV;", "serverRawStorage$delegate", "Lkotlin/Lazy;", "serverList", "", "", "subscriptionId", "getSubscriptionId", "()Ljava/lang/String;", "setSubscriptionId", "(Ljava/lang/String;)V", "keywordFilter", "getKeywordFilter", "setKeywordFilter", "serversCache", "Lcom/v2ray/ang/dto/ServersCache;", "getServersCache", "()Ljava/util/List;", "isRunning", "Landroidx/lifecycle/MutableLiveData;", "", "()Landroidx/lifecycle/MutableLiveData;", "isRunning$delegate", "updateListAction", "", "getUpdateListAction", "updateListAction$delegate", "updateTestResultAction", "getUpdateTestResultAction", "updateTestResultAction$delegate", "tcpingTestScope", "Lkotlinx/coroutines/CoroutineScope;", "getTcpingTestScope", "()Lkotlinx/coroutines/CoroutineScope;", "tcpingTestScope$delegate", "startListenBroadcast", "", "onCleared", "reloadServerList", "removeServer", "guid", "swapServer", "fromPosition", "toPosition", "updateCache", "updateConfigViaSubAll", "exportAllServer", "testAllTcping", "testAllRealPing", "testCurrentServerRealPing", "logs", NotificationCompat.CATEGORY_MESSAGE, "subscriptionIdChanged", "id", "getSubscriptions", "Lkotlin/Pair;", "context", "Landroid/content/Context;", "getPosition", "removeDuplicateServer", "removeAllServer", "removeInvalidServer", "sortByTestResults", "createIntelligentSelectionAll", "initAssets", "assets", "Landroid/content/res/AssetManager;", "filterConfig", "keyword", "mMsgReceiver", "com/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1", "Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;", "clearAllTestDelay", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainViewModel.kt\ncom/v2ray/ang/viewmodel/MainViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,505:1\n1563#2:506\n1634#2,3:507\n1563#2:510\n1634#2,3:511\n1563#2:514\n1634#2,3:515\n1563#2:518\n1634#2,3:519\n1563#2:522\n1634#2,3:523\n1563#2:526\n1634#2,3:527\n1878#2,3:530\n1878#2,2:533\n1878#2,3:535\n1880#2:538\n1869#2,2:539\n1011#2,2:541\n1869#2,2:543\n*S KotlinDebug\n*F\n+ 1 MainViewModel.kt\ncom/v2ray/ang/viewmodel/MainViewModel\n*L\n203#1:506\n203#1:507,3\n219#1:510\n219#1:511,3\n244#1:514\n244#1:515,3\n286#1:518\n286#1:519,3\n293#1:522\n293#1:523,3\n295#1:526\n295#1:527,3\n307#1:530,3\n326#1:533,2\n328#1:535,3\n326#1:538\n387#1:539,2\n391#1:541,2\n393#1:543,2\n*E\n"})
/* loaded from: classes3.dex */
public final class MainViewModel extends AndroidViewModel {

    /* renamed from: isRunning$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy isRunning;

    @NotNull
    private String keywordFilter;

    @NotNull
    private final MainViewModel$mMsgReceiver$1 mMsgReceiver;

    @NotNull
    private List<String> serverList;

    /* renamed from: serverRawStorage$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy serverRawStorage;

    @NotNull
    private final List<ServersCache> serversCache;

    @NotNull
    private String subscriptionId;

    /* renamed from: tcpingTestScope$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy tcpingTestScope;

    /* renamed from: updateListAction$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy updateListAction;

    /* renamed from: updateTestResultAction$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy updateTestResultAction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainViewModel(@NotNull Application application) {
        super(application);
        Intrinsics.checkNotNullParameter(application, new ObfuscatedString(new long[]{-7025030555523465479L, 4975965896009439803L, -9179629040012102951L}).toString());
        this.serverRawStorage = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(5));
        this.serverList = MmkvManager.INSTANCE.decodeServerList();
        String decodeSettingsString = MmkvManager.decodeSettingsString(new ObfuscatedString(new long[]{6405596702686644902L, 3714404752631973204L, 7762222421255910122L, -889012424297953299L}).toString(), new ObfuscatedString(new long[]{6459507737078227373L}).toString());
        this.subscriptionId = decodeSettingsString == null ? new ObfuscatedString(new long[]{1897916809531309222L}).toString() : decodeSettingsString;
        this.keywordFilter = new ObfuscatedString(new long[]{-4385611898446181220L}).toString();
        this.serversCache = new ArrayList();
        this.isRunning = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(6));
        this.updateListAction = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(7));
        this.updateTestResultAction = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(8));
        this.tcpingTestScope = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(9));
        this.mMsgReceiver = new MainViewModel$mMsgReceiver$1(this);
    }

    private final MMKV getServerRawStorage() {
        return (MMKV) this.serverRawStorage.getValue();
    }

    private final CoroutineScope getTcpingTestScope() {
        return (CoroutineScope) this.tcpingTestScope.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData isRunning_delegate$lambda$1() {
        return new MutableLiveData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV serverRawStorage_delegate$lambda$0() {
        return MMKV.mmkvWithID(new ObfuscatedString(new long[]{7887490503021110988L, -5834308141884912443L, -30561673079532891L}).toString(), 2);
    }

    private final void subscriptionIdChanged(String id) {
        if (!Intrinsics.areEqual(this.subscriptionId, id)) {
            this.subscriptionId = id;
            MmkvManager.INSTANCE.encodeSettings(new ObfuscatedString(new long[]{2898620050579930302L, 3869128947701602776L, 8177228499873357169L, -3544559379601423552L}).toString(), this.subscriptionId);
            reloadServerList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope tcpingTestScope_delegate$lambda$4() {
        return CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData updateListAction_delegate$lambda$2() {
        return new MutableLiveData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData updateTestResultAction_delegate$lambda$3() {
        return new MutableLiveData();
    }

    public final void clearAllTestDelay() {
        getServerRawStorage().clearAll();
    }

    public final void createIntelligentSelectionAll() {
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new MainViewModel$createIntelligentSelectionAll$1(this, null), 2, null);
    }

    public final int exportAllServer() {
        List<String> list;
        if (this.subscriptionId.length() == 0 && this.keywordFilter.length() == 0) {
            list = this.serverList;
        } else {
            List<ServersCache> list2 = this.serversCache;
            ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list2, 10));
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((ServersCache) it.next()).getGuid());
            }
            list = CollectionsKt___CollectionsKt.toList(arrayList);
        }
        return AngConfigManager.INSTANCE.shareNonCustomConfigsToClipboard(getApplication(), list);
    }

    public final void filterConfig(@NotNull String keyword) {
        Intrinsics.checkNotNullParameter(keyword, new ObfuscatedString(new long[]{8930927333253555162L, 8635084714957806797L}).toString());
        if (Intrinsics.areEqual(keyword, this.keywordFilter)) {
            return;
        }
        this.keywordFilter = keyword;
        MmkvManager.INSTANCE.encodeSettings(new ObfuscatedString(new long[]{-5132290280250550461L, 6724376144754894057L, -6778766978149488468L, -5986977316431089445L}).toString(), this.keywordFilter);
        reloadServerList();
    }

    @NotNull
    public final String getKeywordFilter() {
        return this.keywordFilter;
    }

    public final int getPosition(@NotNull String guid) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{-7346772385793020806L, -763536113000268120L}).toString());
        int i = 0;
        for (Object obj : this.serversCache) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            if (Intrinsics.areEqual(((ServersCache) obj).getGuid(), guid)) {
                return i;
            }
            i = i2;
        }
        return -1;
    }

    @NotNull
    public final List<ServersCache> getServersCache() {
        return this.serversCache;
    }

    @NotNull
    public final String getSubscriptionId() {
        return this.subscriptionId;
    }

    @NotNull
    public final Pair<List<String>, List<String>> getSubscriptions(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{5263802527589091657L, 3380905849212506042L}).toString());
        List<Pair<String, SubscriptionItem>> decodeSubscriptions = MmkvManager.INSTANCE.decodeSubscriptions();
        if (this.subscriptionId.length() > 0) {
            List<Pair<String, SubscriptionItem>> list = decodeSubscriptions;
            ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add((String) ((Pair) it.next()).getFirst());
            }
            if (!arrayList.contains(this.subscriptionId)) {
                subscriptionIdChanged(new ObfuscatedString(new long[]{4707221709536623234L}).toString());
            }
        }
        if (decodeSubscriptions.isEmpty()) {
            return TuplesKt.to(null, null);
        }
        List<Pair<String, SubscriptionItem>> list2 = decodeSubscriptions;
        ArrayList arrayList2 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list2, 10));
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList2.add((String) ((Pair) it2.next()).getFirst());
        }
        List mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        mutableList.add(0, new ObfuscatedString(new long[]{7592759599182349327L}).toString());
        ArrayList arrayList3 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list2, 10));
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((SubscriptionItem) ((Pair) it3.next()).getSecond()).getRemarks());
        }
        List mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList3);
        String string = context.getString(R.string.filter_config_all);
        Intrinsics.checkNotNullExpressionValue(string, new ObfuscatedString(new long[]{1311674125554240612L, 2483990381784659265L, -2888895333817125285L}).toString());
        mutableList2.add(0, string);
        return TuplesKt.to(mutableList, mutableList2);
    }

    @NotNull
    public final MutableLiveData<Integer> getUpdateListAction() {
        return (MutableLiveData) this.updateListAction.getValue();
    }

    @NotNull
    public final MutableLiveData<String> getUpdateTestResultAction() {
        return (MutableLiveData) this.updateTestResultAction.getValue();
    }

    public final void initAssets(@NotNull AssetManager assets) {
        Intrinsics.checkNotNullParameter(assets, new ObfuscatedString(new long[]{-3114262834658378931L, 5959945424813132352L}).toString());
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getDefault(), null, new MainViewModel$initAssets$1(this, assets, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<Boolean> isRunning() {
        return (MutableLiveData) this.isRunning.getValue();
    }

    public final void logs(@Nullable String msg) {
        TkLogStatus.logInfo(msg);
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        Job job = (Job) getTcpingTestScope().getCoroutineContext().get(Job.INSTANCE);
        if (job != null) {
            JobKt.cancelChildren$default(job, (CancellationException) null, 1, (Object) null);
        }
        SpeedtestManager.INSTANCE.closeAllTcpSockets();
        new ObfuscatedString(new long[]{-1147458628899920711L, -2355030975228055700L, 2966936701525433035L}).toString();
        new ObfuscatedString(new long[]{-1176771526211357133L, 2977988461696591187L, -2320195124866933658L, -6165706387151814802L, 6014025073902042197L}).toString();
        super.onCleared();
    }

    public final void reloadServerList() {
        this.serverList = MmkvManager.INSTANCE.decodeServerList();
        updateCache();
        getUpdateListAction().setValue(-1);
    }

    public final int removeAllServer() {
        if (this.subscriptionId.length() == 0 && this.keywordFilter.length() == 0) {
            return MmkvManager.INSTANCE.removeAllServer();
        }
        Iterator it = CollectionsKt___CollectionsKt.toList(this.serversCache).iterator();
        while (it.hasNext()) {
            MmkvManager.INSTANCE.removeServer(((ServersCache) it.next()).getGuid());
        }
        return CollectionsKt___CollectionsKt.toList(this.serversCache).size();
    }

    public final int removeDuplicateServer() {
        ArrayList arrayList = new ArrayList();
        for (ServersCache serversCache : this.serversCache) {
            ProfileItem decodeServerConfig = MmkvManager.INSTANCE.decodeServerConfig(serversCache.getGuid());
            if (decodeServerConfig != null) {
                arrayList.add(new Pair(serversCache.getGuid(), decodeServerConfig));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        for (Object obj : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ProfileItem profileItem = (ProfileItem) ((Pair) obj).getSecond();
            int i3 = 0;
            for (Object obj2 : arrayList) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                Pair pair = (Pair) obj2;
                if (i3 > i && profileItem.equals((ProfileItem) pair.getSecond()) && !arrayList2.contains(pair.getFirst())) {
                    arrayList2.add(pair.getFirst());
                }
                i3 = i4;
            }
            i = i2;
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            MmkvManager.INSTANCE.removeServer((String) it.next());
        }
        return arrayList2.size();
    }

    public final int removeInvalidServer() {
        int i = 0;
        if (this.subscriptionId.length() == 0 && this.keywordFilter.length() == 0) {
            return MmkvManager.INSTANCE.removeInvalidServer(new ObfuscatedString(new long[]{7053817792087231299L}).toString());
        }
        Iterator it = CollectionsKt___CollectionsKt.toList(this.serversCache).iterator();
        while (it.hasNext()) {
            i += MmkvManager.INSTANCE.removeInvalidServer(((ServersCache) it.next()).getGuid());
        }
        return i;
    }

    public final void removeServer(@NotNull String guid) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{4547192075197582008L, 6628186254433404866L}).toString());
        this.serverList.remove(guid);
        MmkvManager.INSTANCE.removeServer(guid);
        int position = getPosition(guid);
        if (position >= 0) {
            this.serversCache.remove(position);
        }
    }

    public final void setKeywordFilter(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-4891945997020916411L, 8435871472143966368L}).toString());
        this.keywordFilter = str;
    }

    public final void setSubscriptionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{6599057909743402774L, -7119102412141155779L}).toString());
        this.subscriptionId = str;
    }

    public final void sortByTestResults() {
        long j;
        ArrayList<MainViewModel$sortByTestResults$ServerDelay> arrayList = new ArrayList();
        List<String> decodeServerList = MmkvManager.INSTANCE.decodeServerList();
        for (String str : decodeServerList) {
            ServerAffiliationInfo decodeServerAffiliationInfo = MmkvManager.INSTANCE.decodeServerAffiliationInfo(str);
            if (decodeServerAffiliationInfo != null) {
                j = decodeServerAffiliationInfo.getTestDelayMillis();
            } else {
                j = 0;
            }
            if (j <= 0) {
                j = 999999;
            }
            arrayList.add(new MainViewModel$sortByTestResults$ServerDelay(str, j));
        }
        if (arrayList.size() > 1) {
            AbstractC0589xfe44cac1.sortWith(arrayList, new Comparator() { // from class: com.v2ray.ang.viewmodel.MainViewModel$sortByTestResults$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return AbstractC0613x9f5dff2a.compareValues(Long.valueOf(((MainViewModel$sortByTestResults$ServerDelay) t).getTestDelayMillis()), Long.valueOf(((MainViewModel$sortByTestResults$ServerDelay) t2).getTestDelayMillis()));
                }
            });
        }
        for (MainViewModel$sortByTestResults$ServerDelay mainViewModel$sortByTestResults$ServerDelay : arrayList) {
            decodeServerList.remove(mainViewModel$sortByTestResults$ServerDelay.getGuid());
            decodeServerList.add(mainViewModel$sortByTestResults$ServerDelay.getGuid());
        }
        MmkvManager.INSTANCE.encodeServerList(decodeServerList);
    }

    public final void startListenBroadcast() {
        isRunning().setValue(Boolean.FALSE);
        ContextCompat.registerReceiver(getApplication(), this.mMsgReceiver, new IntentFilter(new ObfuscatedString(new long[]{-999762269301947625L, -4642531084992063132L, -2209277515834512290L, -8359380292106892960L, 4542030959601957097L}).toString()), Utils.INSTANCE.receiverFlags());
        MessageUtil.INSTANCE.sendMsg2Service(getApplication(), 1, new ObfuscatedString(new long[]{-8464941503951037070L}).toString());
    }

    public final void swapServer(int fromPosition, int toPosition) {
        if (this.subscriptionId.length() == 0) {
            Collections.swap(this.serverList, fromPosition, toPosition);
        } else {
            Collections.swap(this.serverList, this.serverList.indexOf(this.serversCache.get(fromPosition).getGuid()), this.serverList.indexOf(this.serversCache.get(toPosition).getGuid()));
        }
        Collections.swap(this.serversCache, fromPosition, toPosition);
        MmkvManager.INSTANCE.encodeServerList(this.serverList);
    }

    public final void testAllRealPing() {
        MessageUtil.INSTANCE.sendMsg2TestService(getApplication(), 72, new ObfuscatedString(new long[]{-5242633451814914469L}).toString());
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        List<ServersCache> list = this.serversCache;
        ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ServersCache) it.next()).getGuid());
        }
        mmkvManager.clearAllTestDelayResults(CollectionsKt___CollectionsKt.toList(arrayList));
        getUpdateListAction().setValue(-1);
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getDefault(), null, new MainViewModel$testAllRealPing$2(CollectionsKt___CollectionsKt.toList(this.serversCache), this, null), 2, null);
    }

    public final void testAllTcping() {
        Job job = (Job) getTcpingTestScope().getCoroutineContext().get(Job.INSTANCE);
        if (job != null) {
            JobKt.cancelChildren$default(job, (CancellationException) null, 1, (Object) null);
        }
        SpeedtestManager.INSTANCE.closeAllTcpSockets();
        MmkvManager mmkvManager = MmkvManager.INSTANCE;
        List<ServersCache> list = this.serversCache;
        ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ServersCache) it.next()).getGuid());
        }
        mmkvManager.clearAllTestDelayResults(CollectionsKt___CollectionsKt.toList(arrayList));
        for (ServersCache serversCache : CollectionsKt___CollectionsKt.toList(this.serversCache)) {
            ProfileItem profile = serversCache.getProfile();
            String server = profile.getServer();
            String serverPort = profile.getServerPort();
            if (server != null && serverPort != null) {
                BuildersKt.launch$default(getTcpingTestScope(), null, null, new MainViewModel$testAllTcping$2$1(server, serverPort, serversCache, this, null), 3, null);
            }
        }
    }

    public final void testCurrentServerRealPing() {
        MessageUtil.INSTANCE.sendMsg2Service(getApplication(), 6, new ObfuscatedString(new long[]{3545347167072899076L}).toString());
    }

    public final synchronized void updateCache() {
        try {
            this.serversCache.clear();
            for (String str : this.serverList) {
                ProfileItem decodeServerConfig = MmkvManager.INSTANCE.decodeServerConfig(str);
                if (decodeServerConfig != null && (this.subscriptionId.length() <= 0 || Intrinsics.areEqual(this.subscriptionId, decodeServerConfig.getSubscriptionId()))) {
                    if (this.keywordFilter.length() != 0) {
                        String remarks = decodeServerConfig.getRemarks();
                        Locale locale = Locale.ROOT;
                        String lowerCase = remarks.toLowerCase(locale);
                        Intrinsics.checkNotNullExpressionValue(lowerCase, new ObfuscatedString(new long[]{7876619153960863099L, -8479555999408880159L, -6383036579556729396L}).toString());
                        String lowerCase2 = this.keywordFilter.toLowerCase(locale);
                        Intrinsics.checkNotNullExpressionValue(lowerCase2, new ObfuscatedString(new long[]{9195517462513464453L, -897493912497509219L, 4001873069179705663L}).toString());
                        if (StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) lowerCase2, false, 2, (Object) null)) {
                        }
                    }
                    this.serversCache.add(new ServersCache(str, decodeServerConfig));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final int updateConfigViaSubAll() {
        if (this.subscriptionId.length() == 0) {
            return AngConfigManager.INSTANCE.updateConfigViaSubAll();
        }
        SubscriptionItem decodeSubscription = MmkvManager.INSTANCE.decodeSubscription(this.subscriptionId);
        if (decodeSubscription == null) {
            return 0;
        }
        return AngConfigManager.INSTANCE.updateConfigViaSub(new Pair<>(this.subscriptionId, decodeSubscription));
    }
}
