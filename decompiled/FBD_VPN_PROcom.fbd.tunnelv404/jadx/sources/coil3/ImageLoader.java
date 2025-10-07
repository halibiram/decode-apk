package coil3;

import android.content.Context;
import coil3.ComponentRegistry;
import coil3.EventListener;
import coil3.Extras;
import coil3.RealImageLoader;
import coil3.content.Logger;
import coil3.disk.DiskCache;
import coil3.memory.MemoryCache;
import coil3.request.CachePolicy;
import coil3.request.Disposable;
import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import coil3.size.Precision;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.AbstractC0920x3103481d;
import defpackage.C0346x75d576dc;
import defpackage.C0350x95f25580;
import defpackage.C0396x4a23d5ac;
import defpackage.C0419x35cc9f53;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import okio.FileSystem;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u001dJ\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H&J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015H¦@¢\u0006\u0002\u0010\u0018J\b\u0010\u0019\u001a\u00020\u001aH&J\b\u0010\u001b\u001a\u00020\u001cH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001eÀ\u0006\u0001"}, d2 = {"Lcoil3/ImageLoader;", "", "defaults", "Lcoil3/request/ImageRequest$Defaults;", "getDefaults", "()Lcoil3/request/ImageRequest$Defaults;", "components", "Lcoil3/ComponentRegistry;", "getComponents", "()Lcoil3/ComponentRegistry;", "memoryCache", "Lcoil3/memory/MemoryCache;", "getMemoryCache", "()Lcoil3/memory/MemoryCache;", "diskCache", "Lcoil3/disk/DiskCache;", "getDiskCache", "()Lcoil3/disk/DiskCache;", "enqueue", "Lcoil3/request/Disposable;", "request", "Lcoil3/request/ImageRequest;", "execute", "Lcoil3/request/ImageResult;", "(Lcoil3/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shutdown", "", "newBuilder", "Lcoil3/ImageLoader$Builder;", "Builder", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public interface ImageLoader {

    @Metadata(d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\b\u0016\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\tJ)\u0010\u000f\u001a\u00020\u00002\u0017\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\b¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0011¢\u0006\u0004\b\u000f\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0014\u001a\u00020\u00002\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0016¢\u0006\u0004\b\u0014\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010\u001a\u001a\u00020\u00002\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0016¢\u0006\u0004\b\u001a\u0010\u0018J\u0015\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010!\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"J\u0015\u0010%\u001a\u00020\u00002\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J\u0015\u0010(\u001a\u00020\u00002\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b(\u0010)J\u0015\u0010+\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020*¢\u0006\u0004\b+\u0010,J\u0015\u0010-\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020*¢\u0006\u0004\b-\u0010,J\u0015\u0010.\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020*¢\u0006\u0004\b.\u0010,J\u0015\u0010/\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020*¢\u0006\u0004\b/\u0010,J\u0017\u00102\u001a\u00020\u00002\b\u00101\u001a\u0004\u0018\u000100¢\u0006\u0004\b2\u00103J#\u00102\u001a\u00020\u00002\u0014\u0010$\u001a\u0010\u0012\u0004\u0012\u000204\u0012\u0006\u0012\u0004\u0018\u0001000\n¢\u0006\u0004\b2\u0010\u0010J\u0017\u00105\u001a\u00020\u00002\b\u00101\u001a\u0004\u0018\u000100¢\u0006\u0004\b5\u00103J#\u00105\u001a\u00020\u00002\u0014\u0010$\u001a\u0010\u0012\u0004\u0012\u000204\u0012\u0006\u0012\u0004\u0018\u0001000\n¢\u0006\u0004\b5\u0010\u0010J\u0017\u00106\u001a\u00020\u00002\b\u00101\u001a\u0004\u0018\u000100¢\u0006\u0004\b6\u00103J#\u00106\u001a\u00020\u00002\u0014\u0010$\u001a\u0010\u0012\u0004\u0012\u000204\u0012\u0006\u0012\u0004\u0018\u0001000\n¢\u0006\u0004\b6\u0010\u0010J\u0015\u00109\u001a\u00020\u00002\u0006\u00108\u001a\u000207¢\u0006\u0004\b9\u0010:J\u0015\u0010;\u001a\u00020\u00002\u0006\u00108\u001a\u000207¢\u0006\u0004\b;\u0010:J\u0015\u0010<\u001a\u00020\u00002\u0006\u00108\u001a\u000207¢\u0006\u0004\b<\u0010:J\u0017\u0010>\u001a\u00020\u00002\b\u0010>\u001a\u0004\u0018\u00010=¢\u0006\u0004\b>\u0010?J\r\u0010A\u001a\u00020@¢\u0006\u0004\bA\u0010BR\u0017\u0010H\u001a\u00020C8\u0006¢\u0006\f\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G¨\u0006I"}, d2 = {"Lcoil3/ImageLoader$Builder;", "", "Landroid/content/Context;", "Lcoil3/PlatformContext;", "context", "<init>", "(Landroid/content/Context;)V", "Lcoil3/RealImageLoader$Options;", "options", "(Lcoil3/RealImageLoader$Options;)V", "Lkotlin/Function1;", "Lcoil3/ComponentRegistry$Builder;", "", "Lkotlin/ExtensionFunctionType;", "builder", "components", "(Lkotlin/jvm/functions/Function1;)Lcoil3/ImageLoader$Builder;", "Lcoil3/ComponentRegistry;", "(Lcoil3/ComponentRegistry;)Lcoil3/ImageLoader$Builder;", "Lcoil3/memory/MemoryCache;", "memoryCache", "(Lcoil3/memory/MemoryCache;)Lcoil3/ImageLoader$Builder;", "Lkotlin/Function0;", "initializer", "(Lkotlin/jvm/functions/Function0;)Lcoil3/ImageLoader$Builder;", "Lcoil3/disk/DiskCache;", "diskCache", "(Lcoil3/disk/DiskCache;)Lcoil3/ImageLoader$Builder;", "Lokio/FileSystem;", "fileSystem", "(Lokio/FileSystem;)Lcoil3/ImageLoader$Builder;", "Lcoil3/EventListener;", "listener", "eventListener", "(Lcoil3/EventListener;)Lcoil3/ImageLoader$Builder;", "Lcoil3/EventListener$Factory;", "factory", "eventListenerFactory", "(Lcoil3/EventListener$Factory;)Lcoil3/ImageLoader$Builder;", "Lcoil3/size/Precision;", "precision", "(Lcoil3/size/Precision;)Lcoil3/ImageLoader$Builder;", "Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "(Lkotlin/coroutines/CoroutineContext;)Lcoil3/ImageLoader$Builder;", "interceptorCoroutineContext", "fetcherCoroutineContext", "decoderCoroutineContext", "Lcoil3/Image;", "image", "placeholder", "(Lcoil3/Image;)Lcoil3/ImageLoader$Builder;", "Lcoil3/request/ImageRequest;", "error", "fallback", "Lcoil3/request/CachePolicy;", "policy", "memoryCachePolicy", "(Lcoil3/request/CachePolicy;)Lcoil3/ImageLoader$Builder;", "diskCachePolicy", "networkCachePolicy", "Lcoil3/util/Logger;", "logger", "(Lcoil3/util/Logger;)Lcoil3/ImageLoader$Builder;", "Lcoil3/ImageLoader;", "build", "()Lcoil3/ImageLoader;", "Lcoil3/Extras$Builder;", "뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두", "Lcoil3/Extras$Builder;", "getExtras", "()Lcoil3/Extras$Builder;", "extras", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final Context f462xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public ImageRequest.Defaults f463x3271d0aa;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
        public Lazy f464x1378447b;

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
        public Lazy f465x75d576dc;

        /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
        public EventListener.Factory f466x9738a56c;

        /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
        public ComponentRegistry f467x9e171bf9;

        /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
        public Logger f468x34271fae;

        /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters and from kotlin metadata */
        public final Extras.Builder extras;

        public Builder(@NotNull Context context) {
            this.f462xfbe0c504 = coil3.content.Context.getApplication(context);
            this.f463x3271d0aa = ImageRequest.Defaults.DEFAULT;
            this.f464x1378447b = null;
            this.f465x75d576dc = null;
            this.f466x9738a56c = null;
            this.f467x9e171bf9 = null;
            this.f468x34271fae = null;
            this.extras = new Extras.Builder();
        }

        @NotNull
        public final ImageLoader build() {
            ImageRequest.Defaults copy$default = ImageRequest.Defaults.copy$default(this.f463x3271d0aa, null, null, null, null, null, null, null, null, null, null, null, null, null, this.extras.build(), 8191, null);
            Lazy lazy = this.f464x1378447b;
            if (lazy == null) {
                lazy = AbstractC0919x86d1e2e2.lazy(new C0350x95f25580(this, 9));
            }
            Lazy lazy2 = lazy;
            Lazy lazy3 = this.f465x75d576dc;
            if (lazy3 == null) {
                lazy3 = AbstractC0919x86d1e2e2.lazy(new C0396x4a23d5ac(4));
            }
            Lazy lazy4 = lazy3;
            EventListener.Factory factory = this.f466x9738a56c;
            if (factory == null) {
                factory = EventListener.Factory.NONE;
            }
            EventListener.Factory factory2 = factory;
            ComponentRegistry componentRegistry = this.f467x9e171bf9;
            if (componentRegistry == null) {
                componentRegistry = new ComponentRegistry();
            }
            Logger logger = this.f468x34271fae;
            return new RealImageLoader(new RealImageLoader.Options(this.f462xfbe0c504, copy$default, lazy2, lazy4, factory2, componentRegistry, logger));
        }

        public final /* synthetic */ Builder components(Function1<? super ComponentRegistry.Builder, Unit> builder) {
            ComponentRegistry.Builder builder2 = new ComponentRegistry.Builder();
            builder.invoke(builder2);
            return components(builder2.build());
        }

        @NotNull
        public final Builder coroutineContext(@NotNull CoroutineContext context) {
            this.f463x3271d0aa = ImageRequest.Defaults.copy$default(this.f463x3271d0aa, null, context, context, context, null, null, null, null, null, null, null, null, null, null, 16369, null);
            return this;
        }

        @NotNull
        public final Builder decoderCoroutineContext(@NotNull CoroutineContext context) {
            this.f463x3271d0aa = ImageRequest.Defaults.copy$default(this.f463x3271d0aa, null, null, null, context, null, null, null, null, null, null, null, null, null, null, 16375, null);
            return this;
        }

        @NotNull
        public final Builder diskCache(@Nullable DiskCache diskCache) {
            this.f465x75d576dc = AbstractC0920x3103481d.lazyOf(diskCache);
            return this;
        }

        @NotNull
        public final Builder diskCachePolicy(@NotNull CachePolicy policy) {
            this.f463x3271d0aa = ImageRequest.Defaults.copy$default(this.f463x3271d0aa, null, null, null, null, null, policy, null, null, null, null, null, null, null, null, 16351, null);
            return this;
        }

        @NotNull
        public final Builder error(@Nullable Image image) {
            return error(new C0346x75d576dc(image, 7));
        }

        @NotNull
        public final Builder eventListener(@NotNull EventListener listener) {
            return eventListenerFactory(new C0419x35cc9f53(listener, 14));
        }

        @NotNull
        public final Builder eventListenerFactory(@NotNull EventListener.Factory factory) {
            this.f466x9738a56c = factory;
            return this;
        }

        @NotNull
        public final Builder fallback(@Nullable Image image) {
            return fallback(new C0346x75d576dc(image, 7));
        }

        @NotNull
        public final Builder fetcherCoroutineContext(@NotNull CoroutineContext context) {
            this.f463x3271d0aa = ImageRequest.Defaults.copy$default(this.f463x3271d0aa, null, null, context, null, null, null, null, null, null, null, null, null, null, null, 16379, null);
            return this;
        }

        @NotNull
        public final Builder fileSystem(@NotNull FileSystem fileSystem) {
            this.f463x3271d0aa = ImageRequest.Defaults.copy$default(this.f463x3271d0aa, fileSystem, null, null, null, null, null, null, null, null, null, null, null, null, null, 16382, null);
            return this;
        }

        @NotNull
        public final Extras.Builder getExtras() {
            return this.extras;
        }

        @NotNull
        public final Builder interceptorCoroutineContext(@NotNull CoroutineContext context) {
            this.f463x3271d0aa = ImageRequest.Defaults.copy$default(this.f463x3271d0aa, null, context, null, null, null, null, null, null, null, null, null, null, null, null, 16381, null);
            return this;
        }

        @NotNull
        public final Builder logger(@Nullable Logger logger) {
            this.f468x34271fae = logger;
            return this;
        }

        @NotNull
        public final Builder memoryCache(@Nullable MemoryCache memoryCache) {
            this.f464x1378447b = AbstractC0920x3103481d.lazyOf(memoryCache);
            return this;
        }

        @NotNull
        public final Builder memoryCachePolicy(@NotNull CachePolicy policy) {
            this.f463x3271d0aa = ImageRequest.Defaults.copy$default(this.f463x3271d0aa, null, null, null, null, policy, null, null, null, null, null, null, null, null, null, 16367, null);
            return this;
        }

        @NotNull
        public final Builder networkCachePolicy(@NotNull CachePolicy policy) {
            this.f463x3271d0aa = ImageRequest.Defaults.copy$default(this.f463x3271d0aa, null, null, null, null, null, null, policy, null, null, null, null, null, null, null, 16319, null);
            return this;
        }

        @NotNull
        public final Builder placeholder(@Nullable Image image) {
            return placeholder(new C0346x75d576dc(image, 7));
        }

        @NotNull
        public final Builder precision(@NotNull Precision precision) {
            this.f463x3271d0aa = ImageRequest.Defaults.copy$default(this.f463x3271d0aa, null, null, null, null, null, null, null, null, null, null, null, null, precision, null, 12287, null);
            return this;
        }

        @NotNull
        public final Builder components(@NotNull ComponentRegistry components) {
            this.f467x9e171bf9 = components;
            return this;
        }

        @NotNull
        public final Builder diskCache(@NotNull Function0<? extends DiskCache> initializer) {
            this.f465x75d576dc = AbstractC0919x86d1e2e2.lazy(initializer);
            return this;
        }

        @NotNull
        public final Builder error(@NotNull Function1<? super ImageRequest, ? extends Image> factory) {
            this.f463x3271d0aa = ImageRequest.Defaults.copy$default(this.f463x3271d0aa, null, null, null, null, null, null, null, null, factory, null, null, null, null, null, 16127, null);
            return this;
        }

        @NotNull
        public final Builder fallback(@NotNull Function1<? super ImageRequest, ? extends Image> factory) {
            this.f463x3271d0aa = ImageRequest.Defaults.copy$default(this.f463x3271d0aa, null, null, null, null, null, null, null, null, null, factory, null, null, null, null, 15871, null);
            return this;
        }

        @NotNull
        public final Builder memoryCache(@NotNull Function0<? extends MemoryCache> initializer) {
            this.f464x1378447b = AbstractC0919x86d1e2e2.lazy(initializer);
            return this;
        }

        @NotNull
        public final Builder placeholder(@NotNull Function1<? super ImageRequest, ? extends Image> factory) {
            this.f463x3271d0aa = ImageRequest.Defaults.copy$default(this.f463x3271d0aa, null, null, null, null, null, null, null, factory, null, null, null, null, null, null, 16255, null);
            return this;
        }

        public Builder(@NotNull RealImageLoader.Options options) {
            this.f462xfbe0c504 = options.getApplication();
            this.f463x3271d0aa = options.getDefaults();
            this.f464x1378447b = options.getMemoryCacheLazy();
            this.f465x75d576dc = options.getDiskCacheLazy();
            this.f466x9738a56c = options.getEventListenerFactory();
            this.f467x9e171bf9 = options.getComponentRegistry();
            this.f468x34271fae = options.getLogger();
            this.extras = options.getDefaults().getExtras().newBuilder();
        }
    }

    @NotNull
    Disposable enqueue(@NotNull ImageRequest request);

    @Nullable
    Object execute(@NotNull ImageRequest imageRequest, @NotNull Continuation<? super ImageResult> continuation);

    @NotNull
    ComponentRegistry getComponents();

    @NotNull
    ImageRequest.Defaults getDefaults();

    @Nullable
    DiskCache getDiskCache();

    @Nullable
    MemoryCache getMemoryCache();

    @NotNull
    Builder newBuilder();

    void shutdown();
}
