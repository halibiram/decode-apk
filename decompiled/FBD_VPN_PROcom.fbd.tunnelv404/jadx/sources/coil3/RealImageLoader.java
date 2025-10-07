package coil3;

import android.content.Context;
import coil3.EventListener;
import coil3.ImageLoader;
import coil3.content.Logger;
import coil3.content.SystemCallbacks;
import coil3.content.SystemCallbacksKt;
import coil3.content.UtilsKt;
import coil3.decode.DataSource;
import coil3.disk.DiskCache;
import coil3.intercept.EngineInterceptor;
import coil3.memory.MemoryCache;
import coil3.request.Disposable;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.ImageResult;
import coil3.request.NullRequestData;
import coil3.request.NullRequestDataException;
import coil3.request.RequestDelegate;
import coil3.request.RequestService;
import coil3.request.RequestService_androidKt;
import coil3.request.SuccessResult;
import coil3.size.Size;
import coil3.size.SizeResolver;
import coil3.target.Target;
import coil3.transition.NoneTransition;
import coil3.transition.Transition;
import coil3.transition.TransitionTarget;
import defpackage.AbstractC0892xc141c517;
import defpackage.C1067x123fd1d;
import defpackage.C1069x6a21fa1c;
import defpackage.C1070xaab8abe6;
import defpackage.C1071x6a9bbf16;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001.B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u001d\u001a\u00020\u00188\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u001d\u0010'\u001a\u0004\u0018\u00010\"8VX\u0096\u0084\u0002¢\u0006\f\u001a\u0004\b#\u0010$*\u0004\b%\u0010&R\u001d\u0010,\u001a\u0004\u0018\u00010(8VX\u0096\u0084\u0002¢\u0006\f\u001a\u0004\b)\u0010**\u0004\b+\u0010&R\u000b\u0010\u000f\u001a\u00020-8\u0002X\u0082\u0004¨\u0006/"}, d2 = {"Lcoil3/RealImageLoader;", "Lcoil3/ImageLoader;", "Lcoil3/RealImageLoader$Options;", "options", "<init>", "(Lcoil3/RealImageLoader$Options;)V", "Lcoil3/request/ImageRequest;", "request", "Lcoil3/request/Disposable;", "enqueue", "(Lcoil3/request/ImageRequest;)Lcoil3/request/Disposable;", "Lcoil3/request/ImageResult;", "execute", "(Lcoil3/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "shutdown", "()V", "Lcoil3/ImageLoader$Builder;", "newBuilder", "()Lcoil3/ImageLoader$Builder;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lcoil3/RealImageLoader$Options;", "getOptions", "()Lcoil3/RealImageLoader$Options;", "Lcoil3/ComponentRegistry;", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "Lcoil3/ComponentRegistry;", "getComponents", "()Lcoil3/ComponentRegistry;", "components", "Lcoil3/request/ImageRequest$Defaults;", "getDefaults", "()Lcoil3/request/ImageRequest$Defaults;", "defaults", "Lcoil3/memory/MemoryCache;", "getMemoryCache", "()Lcoil3/memory/MemoryCache;", "getMemoryCache$delegate", "(Lcoil3/RealImageLoader;)Ljava/lang/Object;", "memoryCache", "Lcoil3/disk/DiskCache;", "getDiskCache", "()Lcoil3/disk/DiskCache;", "getDiskCache$delegate", "diskCache", "Lkotlinx/atomicfu/AtomicBoolean;", "Options", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealImageLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealImageLoader.kt\ncoil3/RealImageLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 logging.kt\ncoil3/util/LoggingKt\n+ 4 RealImageLoader.android.kt\ncoil3/RealImageLoader_androidKt\n*L\n1#1,308:1\n1#2:309\n68#3,4:310\n62#3,4:329\n68#3,4:348\n57#4,15:314\n57#4,15:333\n*S KotlinDebug\n*F\n+ 1 RealImageLoader.kt\ncoil3/RealImageLoader\n*L\n182#1:310,4\n198#1:329,4\n212#1:348,4\n185#1:314,15\n201#1:333,15\n*E\n"})
/* loaded from: classes.dex */
public final class RealImageLoader implements ImageLoader {

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f474x34271fae = AtomicIntegerFieldUpdater.newUpdater(RealImageLoader.class, "뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤");

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final Options options;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final CoroutineScope f476x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final SystemCallbacks f477x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final RequestService f478x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters and from kotlin metadata */
    public final ComponentRegistry components;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public volatile /* synthetic */ int f480x9e171bf9;

    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0017\b\u0086\b\u0018\u00002\u00020\u0001BU\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007\u0012\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0014\u0010\u0014\u001a\u00060\u0002j\u0002`\u0003HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0018\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007HÆ\u0003¢\u0006\u0004\b\u001a\u0010\u0019J\u0010\u0010\u001b\u001a\u00020\fHÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u000eHÆ\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0004\b\u001f\u0010 Jl\u0010!\u001a\u00020\u00002\f\b\u0002\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00052\u0010\b\u0002\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00072\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÆ\u0001¢\u0006\u0004\b!\u0010\"J\u0010\u0010$\u001a\u00020#HÖ\u0001¢\u0006\u0004\b$\u0010%J\u0010\u0010'\u001a\u00020&HÖ\u0001¢\u0006\u0004\b'\u0010(J\u001a\u0010+\u001a\u00020*2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b+\u0010,R\u001b\u0010\u0004\u001a\u00060\u0002j\u0002`\u00038\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u0010\u0015R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u0010\u0017R\u001f\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00078\u0006¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u0010\u0019R\u001f\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00078\u0006¢\u0006\f\n\u0004\b6\u00104\u001a\u0004\b7\u0010\u0019R\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010\u001cR\u0017\u0010\u000f\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010\u001eR\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010 ¨\u0006A"}, d2 = {"Lcoil3/RealImageLoader$Options;", "", "Landroid/content/Context;", "Lcoil3/PlatformContext;", "application", "Lcoil3/request/ImageRequest$Defaults;", "defaults", "Lkotlin/Lazy;", "Lcoil3/memory/MemoryCache;", "memoryCacheLazy", "Lcoil3/disk/DiskCache;", "diskCacheLazy", "Lcoil3/EventListener$Factory;", "eventListenerFactory", "Lcoil3/ComponentRegistry;", "componentRegistry", "Lcoil3/util/Logger;", "logger", "<init>", "(Landroid/content/Context;Lcoil3/request/ImageRequest$Defaults;Lkotlin/Lazy;Lkotlin/Lazy;Lcoil3/EventListener$Factory;Lcoil3/ComponentRegistry;Lcoil3/util/Logger;)V", "component1", "()Landroid/content/Context;", "component2", "()Lcoil3/request/ImageRequest$Defaults;", "component3", "()Lkotlin/Lazy;", "component4", "component5", "()Lcoil3/EventListener$Factory;", "component6", "()Lcoil3/ComponentRegistry;", "component7", "()Lcoil3/util/Logger;", "copy", "(Landroid/content/Context;Lcoil3/request/ImageRequest$Defaults;Lkotlin/Lazy;Lkotlin/Lazy;Lcoil3/EventListener$Factory;Lcoil3/ComponentRegistry;Lcoil3/util/Logger;)Lcoil3/RealImageLoader$Options;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Landroid/content/Context;", "getApplication", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lcoil3/request/ImageRequest$Defaults;", "getDefaults", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Lkotlin/Lazy;", "getMemoryCacheLazy", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "getDiskCacheLazy", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "Lcoil3/EventListener$Factory;", "getEventListenerFactory", "뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤", "Lcoil3/ComponentRegistry;", "getComponentRegistry", "뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋", "Lcoil3/util/Logger;", "getLogger", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class Options {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final Context application;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
        public final ImageRequest.Defaults defaults;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
        public final Lazy memoryCacheLazy;

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters and from kotlin metadata */
        public final Lazy diskCacheLazy;

        /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters and from kotlin metadata */
        public final EventListener.Factory eventListenerFactory;

        /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters and from kotlin metadata */
        public final ComponentRegistry componentRegistry;

        /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters and from kotlin metadata */
        public final Logger logger;

        public Options(@NotNull Context context, @NotNull ImageRequest.Defaults defaults, @NotNull Lazy<? extends MemoryCache> lazy, @NotNull Lazy<? extends DiskCache> lazy2, @NotNull EventListener.Factory factory, @NotNull ComponentRegistry componentRegistry, @Nullable Logger logger) {
            this.application = context;
            this.defaults = defaults;
            this.memoryCacheLazy = lazy;
            this.diskCacheLazy = lazy2;
            this.eventListenerFactory = factory;
            this.componentRegistry = componentRegistry;
            this.logger = logger;
        }

        public static /* synthetic */ Options copy$default(Options options, Context context, ImageRequest.Defaults defaults, Lazy lazy, Lazy lazy2, EventListener.Factory factory, ComponentRegistry componentRegistry, Logger logger, int i, Object obj) {
            if ((i & 1) != 0) {
                context = options.application;
            }
            if ((i & 2) != 0) {
                defaults = options.defaults;
            }
            ImageRequest.Defaults defaults2 = defaults;
            if ((i & 4) != 0) {
                lazy = options.memoryCacheLazy;
            }
            Lazy lazy3 = lazy;
            if ((i & 8) != 0) {
                lazy2 = options.diskCacheLazy;
            }
            Lazy lazy4 = lazy2;
            if ((i & 16) != 0) {
                factory = options.eventListenerFactory;
            }
            EventListener.Factory factory2 = factory;
            if ((i & 32) != 0) {
                componentRegistry = options.componentRegistry;
            }
            ComponentRegistry componentRegistry2 = componentRegistry;
            if ((i & 64) != 0) {
                logger = options.logger;
            }
            return options.copy(context, defaults2, lazy3, lazy4, factory2, componentRegistry2, logger);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final Context getApplication() {
            return this.application;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final ImageRequest.Defaults getDefaults() {
            return this.defaults;
        }

        @NotNull
        public final Lazy<MemoryCache> component3() {
            return this.memoryCacheLazy;
        }

        @NotNull
        public final Lazy<DiskCache> component4() {
            return this.diskCacheLazy;
        }

        @NotNull
        /* renamed from: component5, reason: from getter */
        public final EventListener.Factory getEventListenerFactory() {
            return this.eventListenerFactory;
        }

        @NotNull
        /* renamed from: component6, reason: from getter */
        public final ComponentRegistry getComponentRegistry() {
            return this.componentRegistry;
        }

        @Nullable
        /* renamed from: component7, reason: from getter */
        public final Logger getLogger() {
            return this.logger;
        }

        @NotNull
        public final Options copy(@NotNull Context application, @NotNull ImageRequest.Defaults defaults, @NotNull Lazy<? extends MemoryCache> memoryCacheLazy, @NotNull Lazy<? extends DiskCache> diskCacheLazy, @NotNull EventListener.Factory eventListenerFactory, @NotNull ComponentRegistry componentRegistry, @Nullable Logger logger) {
            return new Options(application, defaults, memoryCacheLazy, diskCacheLazy, eventListenerFactory, componentRegistry, logger);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Options)) {
                return false;
            }
            Options options = (Options) other;
            return Intrinsics.areEqual(this.application, options.application) && Intrinsics.areEqual(this.defaults, options.defaults) && Intrinsics.areEqual(this.memoryCacheLazy, options.memoryCacheLazy) && Intrinsics.areEqual(this.diskCacheLazy, options.diskCacheLazy) && Intrinsics.areEqual(this.eventListenerFactory, options.eventListenerFactory) && Intrinsics.areEqual(this.componentRegistry, options.componentRegistry) && Intrinsics.areEqual(this.logger, options.logger);
        }

        @NotNull
        public final Context getApplication() {
            return this.application;
        }

        @NotNull
        public final ComponentRegistry getComponentRegistry() {
            return this.componentRegistry;
        }

        @NotNull
        public final ImageRequest.Defaults getDefaults() {
            return this.defaults;
        }

        @NotNull
        public final Lazy<DiskCache> getDiskCacheLazy() {
            return this.diskCacheLazy;
        }

        @NotNull
        public final EventListener.Factory getEventListenerFactory() {
            return this.eventListenerFactory;
        }

        @Nullable
        public final Logger getLogger() {
            return this.logger;
        }

        @NotNull
        public final Lazy<MemoryCache> getMemoryCacheLazy() {
            return this.memoryCacheLazy;
        }

        public int hashCode() {
            int hashCode = (this.componentRegistry.hashCode() + ((this.eventListenerFactory.hashCode() + ((this.diskCacheLazy.hashCode() + ((this.memoryCacheLazy.hashCode() + ((this.defaults.hashCode() + (this.application.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
            Logger logger = this.logger;
            return hashCode + (logger == null ? 0 : logger.hashCode());
        }

        @NotNull
        public String toString() {
            return "Options(application=" + this.application + ", defaults=" + this.defaults + ", memoryCacheLazy=" + this.memoryCacheLazy + ", diskCacheLazy=" + this.diskCacheLazy + ", eventListenerFactory=" + this.eventListenerFactory + ", componentRegistry=" + this.componentRegistry + ", logger=" + this.logger + ')';
        }
    }

    public RealImageLoader(@NotNull Options options) {
        this.options = options;
        this.f476x3271d0aa = RealImageLoaderKt.access$CoroutineScope(options.getLogger());
        SystemCallbacks SystemCallbacks = SystemCallbacksKt.SystemCallbacks(this);
        this.f477x1378447b = SystemCallbacks;
        RequestService RequestService = RequestService_androidKt.RequestService(this, SystemCallbacks, options.getLogger());
        this.f478x75d576dc = RequestService;
        options.getMemoryCacheLazy();
        options.getDiskCacheLazy();
        this.components = RealImageLoaderKt.addCommonComponents(RealImageLoader_nonNativeKt.addAppleComponents(RealImageLoader_jvmCommonKt.addJvmComponents(RealImageLoader_androidKt.addAndroidComponents(RealImageLoaderKt.addServiceLoaderComponents(options.getComponentRegistry().newBuilder(), options), options), options), options)).add(new EngineInterceptor(this, SystemCallbacks, RequestService, options.getLogger())).build();
    }

    @Override // coil3.ImageLoader
    @NotNull
    public Disposable enqueue(@NotNull ImageRequest request) {
        return RealImageLoader_androidKt.getDisposable(request, BuildersKt.async$default(this.f476x3271d0aa, Dispatchers.getMain().getImmediate(), null, new C1067x123fd1d(this, request, null), 2, null));
    }

    @Override // coil3.ImageLoader
    @Nullable
    public Object execute(@NotNull ImageRequest imageRequest, @NotNull Continuation<? super ImageResult> continuation) {
        if (!RealImageLoader_androidKt.needsExecuteOnMainDispatcher(imageRequest)) {
            return m924xfbe0c504(imageRequest, 1, continuation);
        }
        return CoroutineScopeKt.coroutineScope(new C1069x6a21fa1c(this, imageRequest, null), continuation);
    }

    @Override // coil3.ImageLoader
    @NotNull
    public ComponentRegistry getComponents() {
        return this.components;
    }

    @Override // coil3.ImageLoader
    @NotNull
    public ImageRequest.Defaults getDefaults() {
        return this.options.getDefaults();
    }

    @Override // coil3.ImageLoader
    @Nullable
    public DiskCache getDiskCache() {
        return this.options.getDiskCacheLazy().getValue();
    }

    @Override // coil3.ImageLoader
    @Nullable
    public MemoryCache getMemoryCache() {
        return this.options.getMemoryCacheLazy().getValue();
    }

    @NotNull
    public final Options getOptions() {
        return this.options;
    }

    @Override // coil3.ImageLoader
    @NotNull
    public ImageLoader.Builder newBuilder() {
        return new ImageLoader.Builder(this.options);
    }

    @Override // coil3.ImageLoader
    public void shutdown() {
        if (f474x34271fae.getAndSet(this, 1) == 1) {
            return;
        }
        CoroutineScopeKt.cancel$default(this.f476x3271d0aa, null, 1, null);
        this.f477x1378447b.shutdown();
        MemoryCache memoryCache = getMemoryCache();
        if (memoryCache != null) {
            memoryCache.clear();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x015d A[Catch: all -> 0x003f, TryCatch #5 {all -> 0x003f, blocks: (B:13:0x003a, B:14:0x0157, B:16:0x015d, B:20:0x0168, B:22:0x016c, B:23:0x017a, B:24:0x017f), top: B:12:0x003a }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0168 A[Catch: all -> 0x003f, TryCatch #5 {all -> 0x003f, blocks: (B:13:0x003a, B:14:0x0157, B:16:0x015d, B:20:0x0168, B:22:0x016c, B:23:0x017a, B:24:0x017f), top: B:12:0x003a }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x018a A[Catch: all -> 0x0199, TRY_LEAVE, TryCatch #2 {all -> 0x0199, blocks: (B:27:0x0186, B:29:0x018a, B:32:0x019b, B:33:0x019e), top: B:26:0x0186 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x019b A[Catch: all -> 0x0199, TRY_ENTER, TryCatch #2 {all -> 0x0199, blocks: (B:27:0x0186, B:29:0x018a, B:32:0x019b, B:33:0x019e), top: B:26:0x0186 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0152 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d3 A[Catch: all -> 0x00e4, TryCatch #1 {all -> 0x00e4, blocks: (B:55:0x00cd, B:57:0x00d3, B:59:0x00d9, B:61:0x00df, B:62:0x00ea, B:65:0x00f2, B:66:0x00f8, B:68:0x00fb, B:70:0x0104, B:71:0x0107), top: B:54:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0104 A[Catch: all -> 0x00e4, TryCatch #1 {all -> 0x00e4, blocks: (B:55:0x00cd, B:57:0x00d3, B:59:0x00d9, B:61:0x00df, B:62:0x00ea, B:65:0x00f2, B:66:0x00f8, B:68:0x00fb, B:70:0x0104, B:71:0x0107), top: B:54:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0120 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m924xfbe0c504(ImageRequest imageRequest, int i, Continuation continuation) {
        C1070xaab8abe6 c1070xaab8abe6;
        Object coroutine_suspended;
        int i2;
        boolean z;
        RequestDelegate requestDelegate;
        ImageRequest updateRequest;
        RealImageLoader realImageLoader;
        RequestDelegate requestDelegate2;
        EventListener eventListener;
        RealImageLoader realImageLoader2;
        ImageRequest imageRequest2;
        EventListener eventListener2;
        RequestDelegate requestDelegate3;
        MemoryCache.Key placeholderMemoryCacheKey;
        Image image;
        Target target;
        ImageRequest.Listener listener;
        Object size;
        Image image2;
        RealImageLoader realImageLoader3;
        RequestDelegate requestDelegate4;
        ImageRequest imageRequest3;
        Image image3;
        MemoryCache memoryCache;
        MemoryCache.Value value;
        ImageResult imageResult;
        try {
            if (continuation instanceof C1070xaab8abe6) {
                c1070xaab8abe6 = (C1070xaab8abe6) continuation;
                int i3 = c1070xaab8abe6.f5345x95f25580;
                if ((i3 & Integer.MIN_VALUE) != 0) {
                    c1070xaab8abe6.f5345x95f25580 = i3 - Integer.MIN_VALUE;
                    Object obj = c1070xaab8abe6.f5343x9e171bf9;
                    coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i2 = c1070xaab8abe6.f5345x95f25580;
                    if (i2 == 0) {
                        if (i2 != 1) {
                            if (i2 != 2) {
                                if (i2 == 3) {
                                    eventListener = c1070xaab8abe6.f5341x75d576dc;
                                    updateRequest = c1070xaab8abe6.f5340x1378447b;
                                    requestDelegate2 = c1070xaab8abe6.f5339x3271d0aa;
                                    realImageLoader = c1070xaab8abe6.f5338xfbe0c504;
                                    try {
                                        ResultKt.throwOnFailure(obj);
                                        imageResult = (ImageResult) obj;
                                        if (!(imageResult instanceof SuccessResult)) {
                                            realImageLoader.m927x75d576dc((SuccessResult) imageResult, updateRequest.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String(), eventListener);
                                        } else if (imageResult instanceof ErrorResult) {
                                            realImageLoader.m926x1378447b((ErrorResult) imageResult, updateRequest.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String(), eventListener);
                                        } else {
                                            throw new NoWhenBranchMatchedException();
                                        }
                                        return imageResult;
                                    } catch (Throwable th) {
                                        th = th;
                                        try {
                                            if (!(th instanceof CancellationException)) {
                                            }
                                        } finally {
                                            requestDelegate2.complete();
                                        }
                                    }
                                } else {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                            } else {
                                Image image4 = c1070xaab8abe6.f5342x9738a56c;
                                eventListener2 = c1070xaab8abe6.f5341x75d576dc;
                                imageRequest3 = c1070xaab8abe6.f5340x1378447b;
                                requestDelegate4 = c1070xaab8abe6.f5339x3271d0aa;
                                realImageLoader3 = c1070xaab8abe6.f5338xfbe0c504;
                                try {
                                    ResultKt.throwOnFailure(obj);
                                    image2 = image4;
                                    Size size2 = (Size) obj;
                                    eventListener2.resolveSizeEnd(imageRequest3, size2);
                                    CoroutineContext interceptorCoroutineContext = imageRequest3.getInterceptorCoroutineContext();
                                    C1071x6a9bbf16 c1071x6a9bbf16 = new C1071x6a9bbf16(imageRequest3, realImageLoader3, size2, eventListener2, image2, null);
                                    c1070xaab8abe6.f5338xfbe0c504 = realImageLoader3;
                                    c1070xaab8abe6.f5339x3271d0aa = requestDelegate4;
                                    c1070xaab8abe6.f5340x1378447b = imageRequest3;
                                    c1070xaab8abe6.f5341x75d576dc = eventListener2;
                                    c1070xaab8abe6.f5342x9738a56c = null;
                                    c1070xaab8abe6.f5345x95f25580 = 3;
                                    obj = BuildersKt.withContext(interceptorCoroutineContext, c1071x6a9bbf16, c1070xaab8abe6);
                                    if (obj != coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    eventListener = eventListener2;
                                    updateRequest = imageRequest3;
                                    requestDelegate2 = requestDelegate4;
                                    realImageLoader = realImageLoader3;
                                    imageResult = (ImageResult) obj;
                                    if (!(imageResult instanceof SuccessResult)) {
                                    }
                                    return imageResult;
                                } catch (Throwable th2) {
                                    th = th2;
                                    eventListener = eventListener2;
                                    updateRequest = imageRequest3;
                                    requestDelegate2 = requestDelegate4;
                                    realImageLoader = realImageLoader3;
                                    if (!(th instanceof CancellationException)) {
                                    }
                                }
                            }
                        } else {
                            eventListener2 = c1070xaab8abe6.f5341x75d576dc;
                            imageRequest2 = c1070xaab8abe6.f5340x1378447b;
                            requestDelegate3 = c1070xaab8abe6.f5339x3271d0aa;
                            realImageLoader2 = c1070xaab8abe6.f5338xfbe0c504;
                            try {
                                ResultKt.throwOnFailure(obj);
                            } catch (Throwable th3) {
                                th = th3;
                                eventListener = eventListener2;
                                updateRequest = imageRequest2;
                                requestDelegate2 = requestDelegate3;
                                realImageLoader = realImageLoader2;
                                if (!(th instanceof CancellationException)) {
                                }
                            }
                        }
                    } else {
                        ResultKt.throwOnFailure(obj);
                        Job job = JobKt.getJob(c1070xaab8abe6.getContext());
                        if (i == 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        RequestService requestService = this.f478x75d576dc;
                        requestDelegate = requestService.requestDelegate(imageRequest, job, z);
                        requestDelegate.assertActive();
                        updateRequest = requestService.updateRequest(imageRequest);
                        EventListener create = this.options.getEventListenerFactory().create(updateRequest);
                        try {
                            if (!Intrinsics.areEqual(updateRequest.getData(), NullRequestData.INSTANCE)) {
                                requestDelegate.start();
                                if (i == 0) {
                                    c1070xaab8abe6.f5338xfbe0c504 = this;
                                    c1070xaab8abe6.f5339x3271d0aa = requestDelegate;
                                    c1070xaab8abe6.f5340x1378447b = updateRequest;
                                    c1070xaab8abe6.f5341x75d576dc = create;
                                    c1070xaab8abe6.f5345x95f25580 = 1;
                                    if (requestDelegate.awaitStarted(c1070xaab8abe6) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    realImageLoader2 = this;
                                    imageRequest2 = updateRequest;
                                    eventListener2 = create;
                                    requestDelegate3 = requestDelegate;
                                } else {
                                    realImageLoader2 = this;
                                    imageRequest2 = updateRequest;
                                    eventListener2 = create;
                                    placeholderMemoryCacheKey = imageRequest2.getPlaceholderMemoryCacheKey();
                                    if (placeholderMemoryCacheKey == null && (memoryCache = realImageLoader2.getMemoryCache()) != null && (value = memoryCache.get(placeholderMemoryCacheKey)) != null) {
                                        image = value.getImage();
                                    } else {
                                        image = null;
                                    }
                                    target = imageRequest2.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String();
                                    if (target != null) {
                                        if (image == null) {
                                            image3 = imageRequest2.placeholder();
                                        } else {
                                            image3 = image;
                                        }
                                        target.onStart(image3);
                                    }
                                    eventListener2.onStart(imageRequest2);
                                    listener = imageRequest2.getListener();
                                    if (listener != null) {
                                        listener.onStart(imageRequest2);
                                    }
                                    SizeResolver sizeResolver = imageRequest2.getSizeResolver();
                                    eventListener2.resolveSizeStart(imageRequest2, sizeResolver);
                                    c1070xaab8abe6.f5338xfbe0c504 = realImageLoader2;
                                    c1070xaab8abe6.f5339x3271d0aa = requestDelegate;
                                    c1070xaab8abe6.f5340x1378447b = imageRequest2;
                                    c1070xaab8abe6.f5341x75d576dc = eventListener2;
                                    c1070xaab8abe6.f5342x9738a56c = image;
                                    c1070xaab8abe6.f5345x95f25580 = 2;
                                    size = sizeResolver.size(c1070xaab8abe6);
                                    if (size == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    image2 = image;
                                    realImageLoader3 = realImageLoader2;
                                    ImageRequest imageRequest4 = imageRequest2;
                                    requestDelegate4 = requestDelegate;
                                    obj = size;
                                    imageRequest3 = imageRequest4;
                                    Size size22 = (Size) obj;
                                    eventListener2.resolveSizeEnd(imageRequest3, size22);
                                    CoroutineContext interceptorCoroutineContext2 = imageRequest3.getInterceptorCoroutineContext();
                                    C1071x6a9bbf16 c1071x6a9bbf162 = new C1071x6a9bbf16(imageRequest3, realImageLoader3, size22, eventListener2, image2, null);
                                    c1070xaab8abe6.f5338xfbe0c504 = realImageLoader3;
                                    c1070xaab8abe6.f5339x3271d0aa = requestDelegate4;
                                    c1070xaab8abe6.f5340x1378447b = imageRequest3;
                                    c1070xaab8abe6.f5341x75d576dc = eventListener2;
                                    c1070xaab8abe6.f5342x9738a56c = null;
                                    c1070xaab8abe6.f5345x95f25580 = 3;
                                    obj = BuildersKt.withContext(interceptorCoroutineContext2, c1071x6a9bbf162, c1070xaab8abe6);
                                    if (obj != coroutine_suspended) {
                                    }
                                }
                            } else {
                                throw new NullRequestDataException();
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            realImageLoader = this;
                            requestDelegate2 = requestDelegate;
                            eventListener = create;
                            if (!(th instanceof CancellationException)) {
                                ErrorResult ErrorResult = UtilsKt.ErrorResult(updateRequest, th);
                                realImageLoader.m926x1378447b(ErrorResult, updateRequest.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String(), eventListener);
                                return ErrorResult;
                            }
                            realImageLoader.m925x3271d0aa(updateRequest, eventListener);
                            throw th;
                        }
                    }
                    requestDelegate = requestDelegate3;
                    placeholderMemoryCacheKey = imageRequest2.getPlaceholderMemoryCacheKey();
                    if (placeholderMemoryCacheKey == null) {
                    }
                    image = null;
                    target = imageRequest2.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String();
                    if (target != null) {
                    }
                    eventListener2.onStart(imageRequest2);
                    listener = imageRequest2.getListener();
                    if (listener != null) {
                    }
                    SizeResolver sizeResolver2 = imageRequest2.getSizeResolver();
                    eventListener2.resolveSizeStart(imageRequest2, sizeResolver2);
                    c1070xaab8abe6.f5338xfbe0c504 = realImageLoader2;
                    c1070xaab8abe6.f5339x3271d0aa = requestDelegate;
                    c1070xaab8abe6.f5340x1378447b = imageRequest2;
                    c1070xaab8abe6.f5341x75d576dc = eventListener2;
                    c1070xaab8abe6.f5342x9738a56c = image;
                    c1070xaab8abe6.f5345x95f25580 = 2;
                    size = sizeResolver2.size(c1070xaab8abe6);
                    if (size == coroutine_suspended) {
                    }
                }
            }
            placeholderMemoryCacheKey = imageRequest2.getPlaceholderMemoryCacheKey();
            if (placeholderMemoryCacheKey == null) {
            }
            image = null;
            target = imageRequest2.getAndroidx.constraintlayout.core.motion.utils.TypedValues.AttributesType.S_TARGET java.lang.String();
            if (target != null) {
            }
            eventListener2.onStart(imageRequest2);
            listener = imageRequest2.getListener();
            if (listener != null) {
            }
            SizeResolver sizeResolver22 = imageRequest2.getSizeResolver();
            eventListener2.resolveSizeStart(imageRequest2, sizeResolver22);
            c1070xaab8abe6.f5338xfbe0c504 = realImageLoader2;
            c1070xaab8abe6.f5339x3271d0aa = requestDelegate;
            c1070xaab8abe6.f5340x1378447b = imageRequest2;
            c1070xaab8abe6.f5341x75d576dc = eventListener2;
            c1070xaab8abe6.f5342x9738a56c = image;
            c1070xaab8abe6.f5345x95f25580 = 2;
            size = sizeResolver22.size(c1070xaab8abe6);
            if (size == coroutine_suspended) {
            }
        } catch (Throwable th5) {
            th = th5;
            requestDelegate2 = requestDelegate;
            eventListener = eventListener2;
            updateRequest = imageRequest2;
            realImageLoader = realImageLoader2;
            if (!(th instanceof CancellationException)) {
            }
        }
        c1070xaab8abe6 = new C1070xaab8abe6(this, continuation);
        Object obj2 = c1070xaab8abe6.f5343x9e171bf9;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i2 = c1070xaab8abe6.f5345x95f25580;
        if (i2 == 0) {
        }
        requestDelegate = requestDelegate3;
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final void m925x3271d0aa(ImageRequest imageRequest, EventListener eventListener) {
        Logger logger = this.options.getLogger();
        if (logger != null) {
            Logger.Level level = Logger.Level.Info;
            if (logger.getMinLevel().compareTo(level) <= 0) {
                logger.log("RealImageLoader", level, "🏗 Cancelled - " + imageRequest.getData(), null);
            }
        }
        eventListener.onCancel(imageRequest);
        ImageRequest.Listener listener = imageRequest.getListener();
        if (listener != null) {
            listener.onCancel(imageRequest);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0037, code lost:
    
        if (r8 != null) goto L13;
     */
    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m926x1378447b(ErrorResult errorResult, Target target, EventListener eventListener) {
        ImageRequest request = errorResult.getRequest();
        Logger logger = this.options.getLogger();
        if (logger != null) {
            Throwable throwable = errorResult.getThrowable();
            Logger.Level minLevel = logger.getMinLevel();
            Logger.Level level = Logger.Level.Error;
            if (minLevel.compareTo(level) <= 0) {
                logger.log("RealImageLoader", level, "🚨 Failed - " + request.getData(), throwable);
            }
        }
        if (target instanceof TransitionTarget) {
            Transition create = ImageRequests_androidKt.getTransitionFactory(errorResult.getRequest()).create((TransitionTarget) target, errorResult);
            if (!(create instanceof NoneTransition)) {
                eventListener.transitionStart(errorResult.getRequest(), create);
                create.transition();
                eventListener.transitionEnd(errorResult.getRequest(), create);
            }
            target.onError(errorResult.getImage());
        }
        eventListener.onError(request, errorResult);
        ImageRequest.Listener listener = request.getListener();
        if (listener != null) {
            listener.onError(request, errorResult);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x004e, code lost:
    
        if (r8 != null) goto L13;
     */
    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m927x75d576dc(SuccessResult successResult, Target target, EventListener eventListener) {
        ImageRequest request = successResult.getRequest();
        DataSource dataSource = successResult.getDataSource();
        Logger logger = this.options.getLogger();
        if (logger != null) {
            Logger.Level level = Logger.Level.Info;
            if (logger.getMinLevel().compareTo(level) <= 0) {
                logger.log("RealImageLoader", level, UtilsKt.getEmoji(dataSource) + " Successful (" + dataSource.name() + ") - " + request.getData(), null);
            }
        }
        if (target instanceof TransitionTarget) {
            Transition create = ImageRequests_androidKt.getTransitionFactory(successResult.getRequest()).create((TransitionTarget) target, successResult);
            if (!(create instanceof NoneTransition)) {
                eventListener.transitionStart(successResult.getRequest(), create);
                create.transition();
                eventListener.transitionEnd(successResult.getRequest(), create);
            }
            target.onSuccess(successResult.getImage());
        }
        eventListener.onSuccess(request, successResult);
        ImageRequest.Listener listener = request.getListener();
        if (listener != null) {
            listener.onSuccess(request, successResult);
        }
    }
}
