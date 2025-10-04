package defpackage;

import androidx.lifecycle.MutableLiveData;
import coil3.content.DecoderServiceLoaderTarget;
import coil3.content.FetcherServiceLoaderTarget;
import coil3.content.ServiceLoaderComponentRegistry;
import coil3.decode.BlackholeDecoder;
import coil3.decode.Decoder;
import coil3.disk.UtilsKt;
import coil3.fetch.Fetcher;
import com.tencent.mmkv.MMKV;
import com.v2ray.ang.handler.AngConfigManager;
import com.v2ray.ang.handler.MigrateManager;
import com.v2ray.ang.plugin.PluginManager;
import com.v2ray.ang.service.ProcessService;
import com.v2ray.ang.util.MmkvManager;
import com.v2ray.ang.util.PluginUtil;
import com.v2ray.ang.viewmodel.MainViewModel;
import defpackage.AbstractC0613x9f5dff2a;
import io.github.g00fy2.quickie.QROverlayView;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.reflect.KClass;
import kotlin.text.CharDirectionality;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
import kotlinx.serialization.SerializationException;

/* renamed from: 뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0396x4a23d5ac implements Function0 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3825xfbe0c504;

    public /* synthetic */ C0396x4a23d5ac(int i) {
        this.f3825xfbe0c504 = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        MMKV serverRawStorage_delegate$lambda$0;
        MMKV serverRawStorage_delegate$lambda$02;
        MutableLiveData isRunning_delegate$lambda$1;
        MutableLiveData updateListAction_delegate$lambda$2;
        MutableLiveData updateTestResultAction_delegate$lambda$3;
        CoroutineScope tcpingTestScope_delegate$lambda$4;
        MMKV mainStorage_delegate$lambda$0;
        MMKV profileFullStorage_delegate$lambda$1;
        MMKV serverRawStorage_delegate$lambda$2;
        MMKV serverAffStorage_delegate$lambda$3;
        MMKV subStorage_delegate$lambda$4;
        MMKV assetStorage_delegate$lambda$5;
        MMKV mmkv;
        Unit fetchPlugins$lambda$2$lambda$1;
        ProcessService procService_delegate$lambda$0;
        KClass type;
        Unit unit;
        int i = 0;
        switch (this.f3825xfbe0c504) {
            case 0:
                serverRawStorage_delegate$lambda$0 = AngConfigManager.serverRawStorage_delegate$lambda$0();
                return serverRawStorage_delegate$lambda$0;
            case 1:
                return BlackholeDecoder.Factory.EMPTY_IMAGE;
            case 2:
                EnumEntries<CharDirectionality> entries = CharDirectionality.getEntries();
                LinkedHashMap linkedHashMap = new LinkedHashMap(AbstractC0296x1378447b.coerceAtLeast(AbstractC0961xbc4021d9.mapCapacity(AbstractC0587xb7546d05.collectionSizeOrDefault(entries, 10)), 16));
                for (Object obj : entries) {
                    linkedHashMap.put(Integer.valueOf(((CharDirectionality) obj).value), obj);
                }
                return linkedHashMap;
            case 3:
                DebugProbesImpl.f1893x1db10c9d.runWeakRefQueueCleaningLoopUntilInterrupted();
                return Unit.INSTANCE;
            case 4:
                return UtilsKt.singletonDiskCache();
            case 5:
                serverRawStorage_delegate$lambda$02 = MainViewModel.serverRawStorage_delegate$lambda$0();
                return serverRawStorage_delegate$lambda$02;
            case 6:
                isRunning_delegate$lambda$1 = MainViewModel.isRunning_delegate$lambda$1();
                return isRunning_delegate$lambda$1;
            case 7:
                updateListAction_delegate$lambda$2 = MainViewModel.updateListAction_delegate$lambda$2();
                return updateListAction_delegate$lambda$2;
            case 8:
                updateTestResultAction_delegate$lambda$3 = MainViewModel.updateTestResultAction_delegate$lambda$3();
                return updateTestResultAction_delegate$lambda$3;
            case 9:
                tcpingTestScope_delegate$lambda$4 = MainViewModel.tcpingTestScope_delegate$lambda$4();
                return tcpingTestScope_delegate$lambda$4;
            case 10:
                return MigrateManager.m1705xfbe0c504();
            case 11:
                return MmkvManager.m1734x75d576dc();
            case 12:
                mainStorage_delegate$lambda$0 = com.v2ray.ang.handler.MmkvManager.mainStorage_delegate$lambda$0();
                return mainStorage_delegate$lambda$0;
            case 13:
                return MmkvManager.m1731xfbe0c504();
            case 14:
                profileFullStorage_delegate$lambda$1 = com.v2ray.ang.handler.MmkvManager.profileFullStorage_delegate$lambda$1();
                return profileFullStorage_delegate$lambda$1;
            case 15:
                return MmkvManager.m1732x3271d0aa();
            case 16:
                serverRawStorage_delegate$lambda$2 = com.v2ray.ang.handler.MmkvManager.serverRawStorage_delegate$lambda$2();
                return serverRawStorage_delegate$lambda$2;
            case 17:
                return MmkvManager.m1733x1378447b();
            case 18:
                serverAffStorage_delegate$lambda$3 = com.v2ray.ang.handler.MmkvManager.serverAffStorage_delegate$lambda$3();
                return serverAffStorage_delegate$lambda$3;
            case 19:
                subStorage_delegate$lambda$4 = com.v2ray.ang.handler.MmkvManager.subStorage_delegate$lambda$4();
                return subStorage_delegate$lambda$4;
            case 20:
                assetStorage_delegate$lambda$5 = com.v2ray.ang.handler.MmkvManager.assetStorage_delegate$lambda$5();
                return assetStorage_delegate$lambda$5;
            case 21:
                mmkv = com.v2ray.ang.handler.MmkvManager.settingsStorage_delegate$lambda$6();
                return mmkv;
            case 22:
                fetchPlugins$lambda$2$lambda$1 = PluginManager.fetchPlugins$lambda$2$lambda$1();
                return fetchPlugins$lambda$2$lambda$1;
            case 23:
                procService_delegate$lambda$0 = PluginUtil.procService_delegate$lambda$0();
                return procService_delegate$lambda$0;
            case 24:
                return Unit.INSTANCE;
            case 25:
                QROverlayView.Companion companion = QROverlayView.INSTANCE;
                return Unit.INSTANCE;
            case 26:
                List sortedWith = CollectionsKt___CollectionsKt.sortedWith(ServiceLoaderComponentRegistry.INSTANCE.getFetchers(), new Comparator() { // from class: coil3.RealImageLoaderKt$addServiceLoaderComponents$lambda$3$$inlined$sortedByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return AbstractC0613x9f5dff2a.compareValues(Integer.valueOf(((FetcherServiceLoaderTarget) t2).priority()), Integer.valueOf(((FetcherServiceLoaderTarget) t).priority()));
                    }
                });
                ArrayList arrayList = new ArrayList();
                int size = sortedWith.size();
                while (i < size) {
                    FetcherServiceLoaderTarget fetcherServiceLoaderTarget = (FetcherServiceLoaderTarget) sortedWith.get(i);
                    Intrinsics.checkNotNull(fetcherServiceLoaderTarget, "null cannot be cast to non-null type coil3.util.FetcherServiceLoaderTarget<kotlin.Any>");
                    Fetcher.Factory factory = fetcherServiceLoaderTarget.factory();
                    Pair pair = null;
                    if (factory != null && (type = fetcherServiceLoaderTarget.type()) != null) {
                        pair = TuplesKt.to(factory, type);
                    }
                    if (pair != null) {
                        arrayList.add(pair);
                    }
                    i++;
                }
                return arrayList;
            case 27:
                List sortedWith2 = CollectionsKt___CollectionsKt.sortedWith(ServiceLoaderComponentRegistry.INSTANCE.getDecoders(), new Comparator() { // from class: coil3.RealImageLoaderKt$addServiceLoaderComponents$lambda$6$$inlined$sortedByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return AbstractC0613x9f5dff2a.compareValues(Integer.valueOf(((DecoderServiceLoaderTarget) t2).priority()), Integer.valueOf(((DecoderServiceLoaderTarget) t).priority()));
                    }
                });
                ArrayList arrayList2 = new ArrayList();
                int size2 = sortedWith2.size();
                while (i < size2) {
                    Decoder.Factory factory2 = ((DecoderServiceLoaderTarget) sortedWith2.get(i)).factory();
                    if (factory2 != null) {
                        arrayList2.add(factory2);
                    }
                    i++;
                }
                return arrayList2;
            case 28:
                unit = Unit.INSTANCE;
                return unit;
            default:
                throw new SerializationException("It is not possible to retrieve an array serializer using KClass alone, use KType instead or ArraySerializer factory");
        }
    }
}
