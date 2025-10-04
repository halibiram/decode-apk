package defpackage;

import android.net.NetworkRequest;
import androidx.lifecycle.ViewModelLazy;
import coil3.content.Collections_jvmCommonKt;
import coil3.content.DecoderServiceLoaderTarget;
import coil3.content.FetcherServiceLoaderTarget;
import coil3.content.ServiceLoaderComponentRegistry;
import coil3.disk.DiskCache;
import coil3.disk.UtilsKt;
import com.v2ray.ang.handler.V2rayConfigManager;
import com.v2ray.ang.service.V2RayTestService;
import com.v2ray.ang.service.V2RayVpnService;
import java.util.ServiceLoader;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import okio.FileSystem;

/* renamed from: 땜땥딐듐뎽땪땪득딨땵뒋듟딜뒬땡땥뒼된딃땨돝됐둑듌듼돛땍딽됨듟뎡뒨딁뒙듽땮디뒵딃딝땧드돨뎨땠듌땦뒹땟뒀돶딐듔됐뒵뒙될땹딃딻뒋뒐딟딽땔될뒨도둘딀드땔딟디된땍뎰둣듼둡뎽땯딐둡딟땪뎽뒙됨뒹뒘딞뒨돶땪땪듽딃딹돸듸돴둘땳땍뎠땧뒵딽돼딎땭딠둑됩듟드둬딤땝딜딹돷돤딎뒙땄듔뒼땤, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1140xd0502f52 implements Function0 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5494xfbe0c504;

    public /* synthetic */ C1140xd0502f52(int i) {
        this.f5494xfbe0c504 = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        NetworkRequest defaultNetworkRequest_delegate$lambda$0;
        String updateOutboundWithGlobalSettings$lambda$20;
        switch (this.f5494xfbe0c504) {
            case 0:
                ServiceLoaderComponentRegistry serviceLoaderComponentRegistry = ServiceLoaderComponentRegistry.INSTANCE;
                return Collections_jvmCommonKt.toImmutableList(SequencesKt___SequencesKt.toList(SequencesKt__SequencesKt.asSequence(ServiceLoader.load(FetcherServiceLoaderTarget.class, FetcherServiceLoaderTarget.class.getClassLoader()).iterator())));
            case 1:
                ServiceLoaderComponentRegistry serviceLoaderComponentRegistry2 = ServiceLoaderComponentRegistry.INSTANCE;
                return Collections_jvmCommonKt.toImmutableList(SequencesKt___SequencesKt.toList(SequencesKt__SequencesKt.asSequence(ServiceLoader.load(DecoderServiceLoaderTarget.class, DecoderServiceLoaderTarget.class.getClassLoader()).iterator())));
            case 2:
                Lazy lazy = UtilsKt.f593xfbe0c504;
                return new DiskCache.Builder().directory(FileSystem.SYSTEM_TEMPORARY_DIRECTORY.resolve("coil3_disk_cache")).build();
            case 3:
                return V2RayTestService.m1725xfbe0c504();
            case 4:
                defaultNetworkRequest_delegate$lambda$0 = V2RayVpnService.defaultNetworkRequest_delegate$lambda$0();
                return defaultNetworkRequest_delegate$lambda$0;
            case 5:
                updateOutboundWithGlobalSettings$lambda$20 = V2rayConfigManager.updateOutboundWithGlobalSettings$lambda$20();
                return updateOutboundWithGlobalSettings$lambda$20;
            default:
                return ViewModelLazy.m642xfbe0c504();
        }
    }
}
