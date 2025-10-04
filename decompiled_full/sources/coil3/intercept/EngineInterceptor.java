package coil3.intercept;

import coil3.ComponentRegistry;
import coil3.EventListener;
import coil3.Image;
import coil3.ImageLoader;
import coil3.content.Logger;
import coil3.content.SystemCallbacks;
import coil3.content.UtilsKt;
import coil3.content.Utils_androidKt;
import coil3.decode.DataSource;
import coil3.decode.DecodeResult;
import coil3.decode.Decoder;
import coil3.decode.FileImageSource;
import coil3.decode.ImageSource;
import coil3.fetch.FetchResult;
import coil3.fetch.Fetcher;
import coil3.fetch.ImageFetchResult;
import coil3.fetch.SourceFetchResult;
import coil3.intercept.Interceptor;
import coil3.memory.MemoryCache;
import coil3.memory.MemoryCacheService;
import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import coil3.request.Options;
import coil3.request.RequestService;
import coil3.size.Scale;
import coil3.size.Size;
import defpackage.AbstractC0892xc141c517;
import defpackage.C0709x910abae5;
import defpackage.C0710xca2023e9;
import defpackage.C0711x2558050f;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0096@¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcoil3/intercept/EngineInterceptor;", "Lcoil3/intercept/Interceptor;", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/util/SystemCallbacks;", "systemCallbacks", "Lcoil3/request/RequestService;", "requestService", "Lcoil3/util/Logger;", "logger", "<init>", "(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/request/RequestService;Lcoil3/util/Logger;)V", "Lcoil3/intercept/Interceptor$Chain;", "chain", "Lcoil3/request/ImageResult;", "intercept", "(Lcoil3/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "ExecuteResult", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEngineInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineInterceptor.kt\ncoil3/intercept/EngineInterceptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,272:1\n1#2:273\n*E\n"})
/* loaded from: classes.dex */
public final class EngineInterceptor implements Interceptor {

    @NotNull
    public static final String TAG = "EngineInterceptor";

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ImageLoader f624xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final SystemCallbacks f625x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final RequestService f626x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Logger f627x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final MemoryCacheService f628x9738a56c;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J:\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0013J\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001b\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001b\u0010\u001cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010\rR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u0005\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010\u0011R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010\u0013¨\u0006("}, d2 = {"Lcoil3/intercept/EngineInterceptor$ExecuteResult;", "", "Lcoil3/Image;", "image", "", "isSampled", "Lcoil3/decode/DataSource;", "dataSource", "", "diskCacheKey", "<init>", "(Lcoil3/Image;ZLcoil3/decode/DataSource;Ljava/lang/String;)V", "component1", "()Lcoil3/Image;", "component2", "()Z", "component3", "()Lcoil3/decode/DataSource;", "component4", "()Ljava/lang/String;", "copy", "(Lcoil3/Image;ZLcoil3/decode/DataSource;Ljava/lang/String;)Lcoil3/intercept/EngineInterceptor$ExecuteResult;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lcoil3/Image;", "getImage", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Z", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Lcoil3/decode/DataSource;", "getDataSource", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "Ljava/lang/String;", "getDiskCacheKey", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final /* data */ class ExecuteResult {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final Image image;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
        public final boolean isSampled;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
        public final DataSource dataSource;

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters and from kotlin metadata */
        public final String diskCacheKey;

        public ExecuteResult(@NotNull Image image, boolean z, @NotNull DataSource dataSource, @Nullable String str) {
            this.image = image;
            this.isSampled = z;
            this.dataSource = dataSource;
            this.diskCacheKey = str;
        }

        public static /* synthetic */ ExecuteResult copy$default(ExecuteResult executeResult, Image image, boolean z, DataSource dataSource, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                image = executeResult.image;
            }
            if ((i & 2) != 0) {
                z = executeResult.isSampled;
            }
            if ((i & 4) != 0) {
                dataSource = executeResult.dataSource;
            }
            if ((i & 8) != 0) {
                str = executeResult.diskCacheKey;
            }
            return executeResult.copy(image, z, dataSource, str);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final Image getImage() {
            return this.image;
        }

        /* renamed from: component2, reason: from getter */
        public final boolean getIsSampled() {
            return this.isSampled;
        }

        @NotNull
        /* renamed from: component3, reason: from getter */
        public final DataSource getDataSource() {
            return this.dataSource;
        }

        @Nullable
        /* renamed from: component4, reason: from getter */
        public final String getDiskCacheKey() {
            return this.diskCacheKey;
        }

        @NotNull
        public final ExecuteResult copy(@NotNull Image image, boolean isSampled, @NotNull DataSource dataSource, @Nullable String diskCacheKey) {
            return new ExecuteResult(image, isSampled, dataSource, diskCacheKey);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ExecuteResult)) {
                return false;
            }
            ExecuteResult executeResult = (ExecuteResult) other;
            return Intrinsics.areEqual(this.image, executeResult.image) && this.isSampled == executeResult.isSampled && this.dataSource == executeResult.dataSource && Intrinsics.areEqual(this.diskCacheKey, executeResult.diskCacheKey);
        }

        @NotNull
        public final DataSource getDataSource() {
            return this.dataSource;
        }

        @Nullable
        public final String getDiskCacheKey() {
            return this.diskCacheKey;
        }

        @NotNull
        public final Image getImage() {
            return this.image;
        }

        public int hashCode() {
            int i;
            int hashCode;
            int hashCode2 = this.image.hashCode() * 31;
            if (this.isSampled) {
                i = 1231;
            } else {
                i = 1237;
            }
            int hashCode3 = (this.dataSource.hashCode() + ((hashCode2 + i) * 31)) * 31;
            String str = this.diskCacheKey;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return hashCode3 + hashCode;
        }

        public final boolean isSampled() {
            return this.isSampled;
        }

        @NotNull
        public String toString() {
            return "ExecuteResult(image=" + this.image + ", isSampled=" + this.isSampled + ", dataSource=" + this.dataSource + ", diskCacheKey=" + this.diskCacheKey + ')';
        }
    }

    public EngineInterceptor(@NotNull ImageLoader imageLoader, @NotNull SystemCallbacks systemCallbacks, @NotNull RequestService requestService, @Nullable Logger logger) {
        this.f624xfbe0c504 = imageLoader;
        this.f625x3271d0aa = systemCallbacks;
        this.f626x1378447b = requestService;
        this.f627x75d576dc = logger;
        this.f628x9738a56c = new MemoryCacheService(imageLoader, requestService, logger);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008b -> B:10:0x0092). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object access$decode(EngineInterceptor engineInterceptor, SourceFetchResult sourceFetchResult, ComponentRegistry componentRegistry, ImageRequest imageRequest, Object obj, Options options, EventListener eventListener, Continuation continuation) {
        C0709x910abae5 c0709x910abae5;
        int i;
        int i2;
        Pair<Decoder, Integer> newDecoder;
        FileImageSource fileImageSource;
        engineInterceptor.getClass();
        if (continuation instanceof C0709x910abae5) {
            c0709x910abae5 = (C0709x910abae5) continuation;
            int i3 = c0709x910abae5.f4574xd2bcb0cf;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c0709x910abae5.f4574xd2bcb0cf = i3 - Integer.MIN_VALUE;
                Object obj2 = c0709x910abae5.f4572x9d12c1f4;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0709x910abae5.f4574xd2bcb0cf;
                if (i == 0) {
                    if (i == 1) {
                        int i4 = c0709x910abae5.f4571x3db60231;
                        Decoder decoder = c0709x910abae5.f4570x95f25580;
                        EventListener eventListener2 = c0709x910abae5.f4569x34271fae;
                        Options options2 = c0709x910abae5.f4568x9e171bf9;
                        obj = c0709x910abae5.f4567x9738a56c;
                        ImageRequest imageRequest2 = c0709x910abae5.f4566x75d576dc;
                        ComponentRegistry componentRegistry2 = c0709x910abae5.f4565x1378447b;
                        SourceFetchResult sourceFetchResult2 = c0709x910abae5.f4564x3271d0aa;
                        EngineInterceptor engineInterceptor2 = c0709x910abae5.f4563xfbe0c504;
                        ResultKt.throwOnFailure(obj2);
                        C0709x910abae5 c0709x910abae52 = c0709x910abae5;
                        int i5 = i4;
                        engineInterceptor = engineInterceptor2;
                        C0709x910abae5 c0709x910abae53 = c0709x910abae52;
                        eventListener = eventListener2;
                        componentRegistry = componentRegistry2;
                        options = options2;
                        imageRequest = imageRequest2;
                        DecodeResult decodeResult = (DecodeResult) obj2;
                        eventListener.decodeEnd(imageRequest, decoder, options, decodeResult);
                        if (decodeResult == null) {
                            Image image = decodeResult.getImage();
                            boolean isSampled = decodeResult.getIsSampled();
                            DataSource dataSource = sourceFetchResult2.getDataSource();
                            ImageSource source = sourceFetchResult2.getSource();
                            String str = null;
                            if (source instanceof FileImageSource) {
                                fileImageSource = (FileImageSource) source;
                            } else {
                                fileImageSource = null;
                            }
                            if (fileImageSource != null) {
                                str = fileImageSource.getDiskCacheKey();
                            }
                            coroutine_suspended = new ExecuteResult(image, isSampled, dataSource, str);
                            return coroutine_suspended;
                        }
                        i2 = i5;
                        sourceFetchResult = sourceFetchResult2;
                        c0709x910abae5 = c0709x910abae53;
                        newDecoder = componentRegistry.newDecoder(sourceFetchResult, options, engineInterceptor.f624xfbe0c504, i2);
                        if (newDecoder == null) {
                            Decoder first = newDecoder.getFirst();
                            int intValue = newDecoder.getSecond().intValue() + 1;
                            eventListener.decodeStart(imageRequest, first, options);
                            c0709x910abae5.f4563xfbe0c504 = engineInterceptor;
                            c0709x910abae5.f4564x3271d0aa = sourceFetchResult;
                            c0709x910abae5.f4565x1378447b = componentRegistry;
                            c0709x910abae5.f4566x75d576dc = imageRequest;
                            c0709x910abae5.f4567x9738a56c = obj;
                            c0709x910abae5.f4568x9e171bf9 = options;
                            c0709x910abae5.f4569x34271fae = eventListener;
                            c0709x910abae5.f4570x95f25580 = first;
                            c0709x910abae5.f4571x3db60231 = intValue;
                            c0709x910abae5.f4574xd2bcb0cf = 1;
                            Object decode = first.decode(c0709x910abae5);
                            if (decode != coroutine_suspended) {
                                sourceFetchResult2 = sourceFetchResult;
                                decoder = first;
                                C0709x910abae5 c0709x910abae54 = c0709x910abae5;
                                i5 = intValue;
                                obj2 = decode;
                                c0709x910abae53 = c0709x910abae54;
                                DecodeResult decodeResult2 = (DecodeResult) obj2;
                                eventListener.decodeEnd(imageRequest, decoder, options, decodeResult2);
                                if (decodeResult2 == null) {
                                }
                            }
                            return coroutine_suspended;
                        }
                        throw new IllegalStateException(("Unable to create a decoder that supports: " + obj).toString());
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj2);
                i2 = 0;
                newDecoder = componentRegistry.newDecoder(sourceFetchResult, options, engineInterceptor.f624xfbe0c504, i2);
                if (newDecoder == null) {
                }
            }
        }
        c0709x910abae5 = new C0709x910abae5(engineInterceptor, continuation);
        Object obj22 = c0709x910abae5.f4572x9d12c1f4;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0709x910abae5.f4574xd2bcb0cf;
        if (i == 0) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0116 A[Catch: all -> 0x0055, TryCatch #0 {all -> 0x0055, blocks: (B:20:0x0050, B:21:0x014b, B:34:0x006a, B:36:0x010b, B:38:0x0116, B:43:0x014f, B:45:0x0153, B:47:0x01bc, B:48:0x01c1), top: B:8:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x014f A[Catch: all -> 0x0055, TryCatch #0 {all -> 0x0055, blocks: (B:20:0x0050, B:21:0x014b, B:34:0x006a, B:36:0x010b, B:38:0x0116, B:43:0x014f, B:45:0x0153, B:47:0x01bc, B:48:0x01c1), top: B:8:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v15, types: [T, coil3.ComponentRegistry] */
    /* JADX WARN: Type inference failed for: r1v6, types: [T, coil3.ComponentRegistry] */
    /* JADX WARN: Type inference failed for: r1v8, types: [T, coil3.request.Options] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object access$execute(EngineInterceptor engineInterceptor, ImageRequest imageRequest, Object obj, Options options, EventListener eventListener, Continuation continuation) {
        C0710xca2023e9 c0710xca2023e9;
        Ref.ObjectRef objectRef;
        ImageSource source;
        Object m941xfbe0c504;
        ImageRequest imageRequest2;
        Object obj2;
        EventListener eventListener2;
        Ref.ObjectRef objectRef2;
        Ref.ObjectRef objectRef3;
        Ref.ObjectRef objectRef4;
        EngineInterceptor engineInterceptor2;
        Ref.ObjectRef objectRef5;
        T t;
        FetchResult fetchResult;
        ExecuteResult executeResult;
        Ref.ObjectRef objectRef6;
        EventListener eventListener3;
        ImageRequest imageRequest3;
        EngineInterceptor engineInterceptor3;
        T t2;
        SourceFetchResult sourceFetchResult;
        Object transform;
        ImageSource source2;
        Object obj3;
        Object obj4;
        engineInterceptor.getClass();
        try {
            if (continuation instanceof C0710xca2023e9) {
                c0710xca2023e9 = (C0710xca2023e9) continuation;
                int i = c0710xca2023e9.f4585x1db10c9d;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0710xca2023e9.f4585x1db10c9d = i - Integer.MIN_VALUE;
                    C0710xca2023e9 c0710xca2023e92 = c0710xca2023e9;
                    Object obj5 = c0710xca2023e92.f4583x3db60231;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    objectRef = c0710xca2023e92.f4585x1db10c9d;
                    SourceFetchResult sourceFetchResult2 = null;
                    if (objectRef == 0) {
                        if (objectRef != 1) {
                            if (objectRef != 2) {
                                if (objectRef == 3) {
                                    ResultKt.throwOnFailure(obj5);
                                    obj4 = obj5;
                                    ExecuteResult executeResult2 = (ExecuteResult) obj4;
                                    Utils_androidKt.prepareToDraw(executeResult2.getImage());
                                    return executeResult2;
                                }
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            objectRef4 = c0710xca2023e92.f4579x9738a56c;
                            objectRef6 = (Ref.ObjectRef) c0710xca2023e92.f4578x75d576dc;
                            eventListener3 = (EventListener) c0710xca2023e92.f4577x1378447b;
                            imageRequest3 = c0710xca2023e92.f4576x3271d0aa;
                            engineInterceptor3 = c0710xca2023e92.f4575xfbe0c504;
                            ResultKt.throwOnFailure(obj5);
                            obj3 = obj5;
                            executeResult = (ExecuteResult) obj3;
                            engineInterceptor2 = engineInterceptor3;
                            t2 = objectRef4.element;
                            if (t2 instanceof SourceFetchResult) {
                                sourceFetchResult = (SourceFetchResult) t2;
                            } else {
                                sourceFetchResult = null;
                            }
                            if (sourceFetchResult != null && (source2 = sourceFetchResult.getSource()) != null) {
                                UtilsKt.closeQuietly(source2);
                            }
                            Options options2 = (Options) objectRef6.element;
                            Logger logger = engineInterceptor2.f627x75d576dc;
                            c0710xca2023e92.f4575xfbe0c504 = null;
                            c0710xca2023e92.f4576x3271d0aa = null;
                            c0710xca2023e92.f4577x1378447b = null;
                            c0710xca2023e92.f4578x75d576dc = null;
                            c0710xca2023e92.f4579x9738a56c = null;
                            c0710xca2023e92.f4580x9e171bf9 = null;
                            c0710xca2023e92.f4581x34271fae = null;
                            c0710xca2023e92.f4582x95f25580 = null;
                            c0710xca2023e92.f4585x1db10c9d = 3;
                            transform = EngineInterceptorKt.transform(executeResult, imageRequest3, options2, eventListener3, logger, c0710xca2023e92);
                            obj4 = transform;
                            if (transform == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            ExecuteResult executeResult22 = (ExecuteResult) obj4;
                            Utils_androidKt.prepareToDraw(executeResult22.getImage());
                            return executeResult22;
                        }
                        objectRef5 = c0710xca2023e92.f4582x95f25580;
                        objectRef4 = c0710xca2023e92.f4581x34271fae;
                        Ref.ObjectRef objectRef7 = c0710xca2023e92.f4580x9e171bf9;
                        objectRef2 = c0710xca2023e92.f4579x9738a56c;
                        eventListener2 = (EventListener) c0710xca2023e92.f4578x75d576dc;
                        Object obj6 = c0710xca2023e92.f4577x1378447b;
                        imageRequest2 = c0710xca2023e92.f4576x3271d0aa;
                        engineInterceptor2 = c0710xca2023e92.f4575xfbe0c504;
                        ResultKt.throwOnFailure(obj5);
                        objectRef3 = objectRef7;
                        obj2 = obj6;
                        t = obj5;
                    } else {
                        ResultKt.throwOnFailure(obj5);
                        Ref.ObjectRef objectRef8 = new Ref.ObjectRef();
                        objectRef8.element = options;
                        Ref.ObjectRef objectRef9 = new Ref.ObjectRef();
                        objectRef9.element = engineInterceptor.f624xfbe0c504.getComponents();
                        Ref.ObjectRef objectRef10 = new Ref.ObjectRef();
                        try {
                            objectRef8.element = engineInterceptor.f626x1378447b.updateOptions((Options) objectRef8.element);
                            if (imageRequest.getFetcherFactory() == null) {
                                if (imageRequest.getDecoderFactory() != null) {
                                }
                                ComponentRegistry componentRegistry = (ComponentRegistry) objectRef9.element;
                                Options options3 = (Options) objectRef8.element;
                                c0710xca2023e92.f4575xfbe0c504 = engineInterceptor;
                                c0710xca2023e92.f4576x3271d0aa = imageRequest;
                                c0710xca2023e92.f4577x1378447b = obj;
                                c0710xca2023e92.f4578x75d576dc = eventListener;
                                c0710xca2023e92.f4579x9738a56c = objectRef8;
                                c0710xca2023e92.f4580x9e171bf9 = objectRef9;
                                c0710xca2023e92.f4581x34271fae = objectRef10;
                                c0710xca2023e92.f4582x95f25580 = objectRef10;
                                c0710xca2023e92.f4585x1db10c9d = 1;
                                m941xfbe0c504 = engineInterceptor.m941xfbe0c504(componentRegistry, imageRequest, obj, options3, eventListener, c0710xca2023e92);
                                if (m941xfbe0c504 == coroutine_suspended) {
                                    imageRequest2 = imageRequest;
                                    obj2 = obj;
                                    eventListener2 = eventListener;
                                    objectRef2 = objectRef8;
                                    objectRef3 = objectRef9;
                                    objectRef4 = objectRef10;
                                    engineInterceptor2 = engineInterceptor;
                                    objectRef5 = objectRef4;
                                    t = m941xfbe0c504;
                                } else {
                                    return coroutine_suspended;
                                }
                            }
                            objectRef9.element = UtilsKt.addFirst(UtilsKt.addFirst(((ComponentRegistry) objectRef9.element).newBuilder(), imageRequest.getFetcherFactory()), imageRequest.getDecoderFactory()).build();
                            ComponentRegistry componentRegistry2 = (ComponentRegistry) objectRef9.element;
                            Options options32 = (Options) objectRef8.element;
                            c0710xca2023e92.f4575xfbe0c504 = engineInterceptor;
                            c0710xca2023e92.f4576x3271d0aa = imageRequest;
                            c0710xca2023e92.f4577x1378447b = obj;
                            c0710xca2023e92.f4578x75d576dc = eventListener;
                            c0710xca2023e92.f4579x9738a56c = objectRef8;
                            c0710xca2023e92.f4580x9e171bf9 = objectRef9;
                            c0710xca2023e92.f4581x34271fae = objectRef10;
                            c0710xca2023e92.f4582x95f25580 = objectRef10;
                            c0710xca2023e92.f4585x1db10c9d = 1;
                            m941xfbe0c504 = engineInterceptor.m941xfbe0c504(componentRegistry2, imageRequest, obj, options32, eventListener, c0710xca2023e92);
                            if (m941xfbe0c504 == coroutine_suspended) {
                            }
                        } catch (Throwable th) {
                            th = th;
                            objectRef = objectRef10;
                            T t3 = objectRef.element;
                            if (t3 instanceof SourceFetchResult) {
                                sourceFetchResult2 = (SourceFetchResult) t3;
                            }
                            if (sourceFetchResult2 != null && (source = sourceFetchResult2.getSource()) != null) {
                                UtilsKt.closeQuietly(source);
                            }
                            throw th;
                        }
                    }
                    objectRef5.element = t;
                    T t4 = objectRef4.element;
                    fetchResult = (FetchResult) t4;
                    if (!(fetchResult instanceof SourceFetchResult)) {
                        CoroutineContext decoderCoroutineContext = imageRequest2.getDecoderCoroutineContext();
                        C0197xfbe0c504 c0197xfbe0c504 = new C0197xfbe0c504(engineInterceptor2, objectRef4, objectRef3, imageRequest2, obj2, objectRef2, eventListener2, null);
                        c0710xca2023e92.f4575xfbe0c504 = engineInterceptor2;
                        c0710xca2023e92.f4576x3271d0aa = imageRequest2;
                        c0710xca2023e92.f4577x1378447b = eventListener2;
                        c0710xca2023e92.f4578x75d576dc = objectRef2;
                        c0710xca2023e92.f4579x9738a56c = objectRef4;
                        c0710xca2023e92.f4580x9e171bf9 = null;
                        c0710xca2023e92.f4581x34271fae = null;
                        c0710xca2023e92.f4582x95f25580 = null;
                        c0710xca2023e92.f4585x1db10c9d = 2;
                        Object withContext = BuildersKt.withContext(decoderCoroutineContext, c0197xfbe0c504, c0710xca2023e92);
                        if (withContext != coroutine_suspended) {
                            objectRef6 = objectRef2;
                            eventListener3 = eventListener2;
                            imageRequest3 = imageRequest2;
                            engineInterceptor3 = engineInterceptor2;
                            obj3 = withContext;
                            executeResult = (ExecuteResult) obj3;
                            engineInterceptor2 = engineInterceptor3;
                            t2 = objectRef4.element;
                            if (t2 instanceof SourceFetchResult) {
                            }
                            if (sourceFetchResult != null) {
                                UtilsKt.closeQuietly(source2);
                            }
                            Options options22 = (Options) objectRef6.element;
                            Logger logger2 = engineInterceptor2.f627x75d576dc;
                            c0710xca2023e92.f4575xfbe0c504 = null;
                            c0710xca2023e92.f4576x3271d0aa = null;
                            c0710xca2023e92.f4577x1378447b = null;
                            c0710xca2023e92.f4578x75d576dc = null;
                            c0710xca2023e92.f4579x9738a56c = null;
                            c0710xca2023e92.f4580x9e171bf9 = null;
                            c0710xca2023e92.f4581x34271fae = null;
                            c0710xca2023e92.f4582x95f25580 = null;
                            c0710xca2023e92.f4585x1db10c9d = 3;
                            transform = EngineInterceptorKt.transform(executeResult, imageRequest3, options22, eventListener3, logger2, c0710xca2023e92);
                            obj4 = transform;
                            if (transform == coroutine_suspended) {
                            }
                            ExecuteResult executeResult222 = (ExecuteResult) obj4;
                            Utils_androidKt.prepareToDraw(executeResult222.getImage());
                            return executeResult222;
                        }
                        return coroutine_suspended;
                    }
                    if (fetchResult instanceof ImageFetchResult) {
                        executeResult = new ExecuteResult(((ImageFetchResult) t4).getImage(), ((ImageFetchResult) objectRef4.element).getIsSampled(), ((ImageFetchResult) objectRef4.element).getDataSource(), null);
                        objectRef6 = objectRef2;
                        eventListener3 = eventListener2;
                        imageRequest3 = imageRequest2;
                        t2 = objectRef4.element;
                        if (t2 instanceof SourceFetchResult) {
                        }
                        if (sourceFetchResult != null) {
                        }
                        Options options222 = (Options) objectRef6.element;
                        Logger logger22 = engineInterceptor2.f627x75d576dc;
                        c0710xca2023e92.f4575xfbe0c504 = null;
                        c0710xca2023e92.f4576x3271d0aa = null;
                        c0710xca2023e92.f4577x1378447b = null;
                        c0710xca2023e92.f4578x75d576dc = null;
                        c0710xca2023e92.f4579x9738a56c = null;
                        c0710xca2023e92.f4580x9e171bf9 = null;
                        c0710xca2023e92.f4581x34271fae = null;
                        c0710xca2023e92.f4582x95f25580 = null;
                        c0710xca2023e92.f4585x1db10c9d = 3;
                        transform = EngineInterceptorKt.transform(executeResult, imageRequest3, options222, eventListener3, logger22, c0710xca2023e92);
                        obj4 = transform;
                        if (transform == coroutine_suspended) {
                        }
                        ExecuteResult executeResult2222 = (ExecuteResult) obj4;
                        Utils_androidKt.prepareToDraw(executeResult2222.getImage());
                        return executeResult2222;
                    }
                    throw new NoWhenBranchMatchedException();
                }
            }
            if (objectRef == 0) {
            }
            objectRef5.element = t;
            T t42 = objectRef4.element;
            fetchResult = (FetchResult) t42;
            if (!(fetchResult instanceof SourceFetchResult)) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
        c0710xca2023e9 = new C0710xca2023e9(engineInterceptor, continuation);
        C0710xca2023e9 c0710xca2023e922 = c0710xca2023e9;
        Object obj52 = c0710xca2023e922.f4583x3db60231;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        objectRef = c0710xca2023e922.f4585x1db10c9d;
        SourceFetchResult sourceFetchResult22 = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    @Override // coil3.intercept.Interceptor
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object intercept(@NotNull Interceptor.Chain chain, @NotNull Continuation<? super ImageResult> continuation) {
        C0198x3271d0aa c0198x3271d0aa;
        int i;
        MemoryCache.Value value;
        Interceptor.Chain chain2 = chain;
        MemoryCacheService memoryCacheService = this.f628x9738a56c;
        if (continuation instanceof C0198x3271d0aa) {
            c0198x3271d0aa = (C0198x3271d0aa) continuation;
            int i2 = c0198x3271d0aa.f651x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0198x3271d0aa.f651x75d576dc = i2 - Integer.MIN_VALUE;
                C0198x3271d0aa c0198x3271d0aa2 = c0198x3271d0aa;
                Object obj = c0198x3271d0aa2.f649x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0198x3271d0aa2.f651x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        Interceptor.Chain chain3 = c0198x3271d0aa2.f648xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (Throwable th) {
                            th = th;
                            chain2 = chain3;
                            if (th instanceof CancellationException) {
                                return UtilsKt.ErrorResult(chain2.getRequest(), th);
                            }
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    try {
                        ImageRequest request = chain.getRequest();
                        Object data = request.getData();
                        Size size = chain.getSize();
                        EventListener eventListener = UtilsKt.getEventListener(chain);
                        Options options = this.f626x1378447b.options(request, size);
                        Scale scale = options.getScale();
                        eventListener.mapStart(request, data);
                        Object map = this.f624xfbe0c504.getComponents().map(data, options);
                        eventListener.mapEnd(request, map);
                        MemoryCache.Key newCacheKey = memoryCacheService.newCacheKey(request, map, options, eventListener);
                        if (newCacheKey != null) {
                            value = memoryCacheService.getCacheValue(request, newCacheKey, size, scale);
                        } else {
                            value = null;
                        }
                        if (value != null) {
                            return memoryCacheService.newResult(chain2, request, newCacheKey, value);
                        }
                        CoroutineContext fetcherCoroutineContext = request.getFetcherCoroutineContext();
                        C0199x1378447b c0199x1378447b = new C0199x1378447b(this, request, map, options, eventListener, newCacheKey, chain, null);
                        c0198x3271d0aa2.f648xfbe0c504 = chain2;
                        c0198x3271d0aa2.f651x75d576dc = 1;
                        obj = BuildersKt.withContext(fetcherCoroutineContext, c0199x1378447b, c0198x3271d0aa2);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (th instanceof CancellationException) {
                        }
                    }
                }
                return obj;
            }
        }
        c0198x3271d0aa = new C0198x3271d0aa(this, continuation);
        C0198x3271d0aa c0198x3271d0aa22 = c0198x3271d0aa;
        Object obj2 = c0198x3271d0aa22.f649x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0198x3271d0aa22.f651x75d576dc;
        if (i == 0) {
        }
        return obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0090 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0085 -> B:10:0x0089). Please report as a decompilation issue!!! */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m941xfbe0c504(ComponentRegistry componentRegistry, ImageRequest imageRequest, Object obj, Options options, EventListener eventListener, Continuation continuation) {
        C0711x2558050f c0711x2558050f;
        int i;
        int i2;
        EngineInterceptor engineInterceptor;
        Pair<Fetcher, Integer> newFetcher;
        SourceFetchResult sourceFetchResult;
        ImageSource source;
        if (continuation instanceof C0711x2558050f) {
            c0711x2558050f = (C0711x2558050f) continuation;
            int i3 = c0711x2558050f.f4596x1db10c9d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c0711x2558050f.f4596x1db10c9d = i3 - Integer.MIN_VALUE;
                Object obj2 = c0711x2558050f.f4594x3db60231;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0711x2558050f.f4596x1db10c9d;
                if (i == 0) {
                    if (i == 1) {
                        int i4 = c0711x2558050f.f4593x95f25580;
                        Fetcher fetcher = c0711x2558050f.f4592x34271fae;
                        EventListener eventListener2 = c0711x2558050f.f4591x9e171bf9;
                        options = c0711x2558050f.f4590x9738a56c;
                        Object obj3 = c0711x2558050f.f4589x75d576dc;
                        ImageRequest imageRequest2 = c0711x2558050f.f4588x1378447b;
                        ComponentRegistry componentRegistry2 = c0711x2558050f.f4587x3271d0aa;
                        engineInterceptor = c0711x2558050f.f4586xfbe0c504;
                        ResultKt.throwOnFailure(obj2);
                        C0711x2558050f c0711x2558050f2 = c0711x2558050f;
                        int i5 = i4;
                        componentRegistry = componentRegistry2;
                        C0711x2558050f c0711x2558050f3 = c0711x2558050f2;
                        Fetcher first = fetcher;
                        imageRequest = imageRequest2;
                        eventListener = eventListener2;
                        obj = obj3;
                        FetchResult fetchResult = (FetchResult) obj2;
                        try {
                            eventListener.fetchEnd(imageRequest, first, options, fetchResult);
                            if (fetchResult == null) {
                                return fetchResult;
                            }
                            i2 = i5;
                            c0711x2558050f = c0711x2558050f3;
                            newFetcher = componentRegistry.newFetcher(obj, options, engineInterceptor.f624xfbe0c504, i2);
                            if (newFetcher == null) {
                                first = newFetcher.getFirst();
                                int intValue = newFetcher.getSecond().intValue() + 1;
                                eventListener.fetchStart(imageRequest, first, options);
                                c0711x2558050f.f4586xfbe0c504 = engineInterceptor;
                                c0711x2558050f.f4587x3271d0aa = componentRegistry;
                                c0711x2558050f.f4588x1378447b = imageRequest;
                                c0711x2558050f.f4589x75d576dc = obj;
                                c0711x2558050f.f4590x9738a56c = options;
                                c0711x2558050f.f4591x9e171bf9 = eventListener;
                                c0711x2558050f.f4592x34271fae = first;
                                c0711x2558050f.f4593x95f25580 = intValue;
                                c0711x2558050f.f4596x1db10c9d = 1;
                                Object fetch = first.fetch(c0711x2558050f);
                                if (fetch == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                C0711x2558050f c0711x2558050f4 = c0711x2558050f;
                                i5 = intValue;
                                obj2 = fetch;
                                c0711x2558050f3 = c0711x2558050f4;
                                FetchResult fetchResult2 = (FetchResult) obj2;
                                eventListener.fetchEnd(imageRequest, first, options, fetchResult2);
                                if (fetchResult2 == null) {
                                }
                            } else {
                                throw new IllegalStateException(("Unable to create a fetcher that supports: " + obj).toString());
                            }
                        } catch (Throwable th) {
                            if (fetchResult2 instanceof SourceFetchResult) {
                                sourceFetchResult = (SourceFetchResult) fetchResult2;
                            } else {
                                sourceFetchResult = null;
                            }
                            if (sourceFetchResult != null && (source = sourceFetchResult.getSource()) != null) {
                                UtilsKt.closeQuietly(source);
                            }
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    i2 = 0;
                    engineInterceptor = this;
                    newFetcher = componentRegistry.newFetcher(obj, options, engineInterceptor.f624xfbe0c504, i2);
                    if (newFetcher == null) {
                    }
                }
            }
        }
        c0711x2558050f = new C0711x2558050f(this, continuation);
        Object obj22 = c0711x2558050f.f4594x3db60231;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0711x2558050f.f4596x1db10c9d;
        if (i == 0) {
        }
    }
}
