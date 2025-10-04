.class public final Lcoil3/memory/MemoryCacheService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/memory/MemoryCacheService$Companion;,
        Lcoil3/memory/MemoryCacheService$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 *2\u00020\u0001:\u0001*B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ/\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J/\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ7\u0010 \u001a\u00020\u001d2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\'\u0010#\u001a\u00020\u001d2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J-\u0010(\u001a\u00020\'2\u0006\u0010&\u001a\u00020%2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0019\u00a2\u0006\u0004\u0008(\u0010)\u00a8\u0006+"
    }
    d2 = {
        "Lcoil3/memory/MemoryCacheService;",
        "",
        "Lcoil3/ImageLoader;",
        "imageLoader",
        "Lcoil3/request/RequestService;",
        "requestService",
        "Lcoil3/util/Logger;",
        "logger",
        "<init>",
        "(Lcoil3/ImageLoader;Lcoil3/request/RequestService;Lcoil3/util/Logger;)V",
        "Lcoil3/request/ImageRequest;",
        "request",
        "mappedData",
        "Lcoil3/request/Options;",
        "options",
        "Lcoil3/EventListener;",
        "eventListener",
        "Lcoil3/memory/MemoryCache$Key;",
        "newCacheKey",
        "(Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;)Lcoil3/memory/MemoryCache$Key;",
        "cacheKey",
        "Lcoil3/size/Size;",
        "size",
        "Lcoil3/size/Scale;",
        "scale",
        "Lcoil3/memory/MemoryCache$Value;",
        "getCacheValue",
        "(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/size/Size;Lcoil3/size/Scale;)Lcoil3/memory/MemoryCache$Value;",
        "cacheValue",
        "",
        "isCacheValueValid$coil_core_release",
        "(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/MemoryCache$Value;Lcoil3/size/Size;Lcoil3/size/Scale;)Z",
        "isCacheValueValid",
        "Lcoil3/intercept/EngineInterceptor$ExecuteResult;",
        "result",
        "setCacheValue",
        "(Lcoil3/memory/MemoryCache$Key;Lcoil3/request/ImageRequest;Lcoil3/intercept/EngineInterceptor$ExecuteResult;)Z",
        "Lcoil3/intercept/Interceptor$Chain;",
        "chain",
        "Lcoil3/request/SuccessResult;",
        "newResult",
        "(Lcoil3/intercept/Interceptor$Chain;Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/MemoryCache$Value;)Lcoil3/request/SuccessResult;",
        "Companion",
        "coil-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMemoryCacheService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryCacheService.kt\ncoil3/memory/MemoryCacheService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 logging.kt\ncoil3/util/LoggingKt\n+ 4 Dimension.kt\ncoil3/size/DimensionKt\n*L\n1#1,249:1\n1#2:250\n68#3,4:251\n68#3,4:255\n68#3,4:263\n68#3,4:267\n43#4:259\n43#4:260\n43#4:261\n43#4:262\n*S KotlinDebug\n*F\n+ 1 MemoryCacheService.kt\ncoil3/memory/MemoryCacheService\n*L\n86#1:251,4\n111#1:255,4\n177#1:263,4\n187#1:267,4\n133#1:259\n134#1:260\n137#1:261\n138#1:262\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcoil3/memory/MemoryCacheService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_DISK_CACHE_KEY:Ljava/lang/String; = "coil#disk_cache_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_IS_SAMPLED:Ljava/lang/String; = "coil#is_sampled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_SIZE:Ljava/lang/String; = "coil#size"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/ImageLoader;

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/request/RequestService;

.field public final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lcoil3/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil3/memory/MemoryCacheService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/memory/MemoryCacheService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil3/memory/MemoryCacheService;->Companion:Lcoil3/memory/MemoryCacheService$Companion;

    return-void
.end method

.method public constructor <init>(Lcoil3/ImageLoader;Lcoil3/request/RequestService;Lcoil3/util/Logger;)V
    .locals 0
    .param p1    # Lcoil3/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/request/RequestService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil3/util/Logger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/memory/MemoryCacheService;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/ImageLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/memory/MemoryCacheService;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/request/RequestService;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/memory/MemoryCacheService;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lcoil3/util/Logger;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getCacheValue(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/size/Size;Lcoil3/size/Scale;)Lcoil3/memory/MemoryCache$Value;
    .locals 8
    .param p1    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil3/size/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil3/size/Scale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getMemoryCachePolicy()Lcoil3/request/CachePolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcoil3/request/CachePolicy;->getReadEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcoil3/memory/MemoryCacheService;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/ImageLoader;

    .line 14
    .line 15
    invoke-interface {v0}, Lcoil3/ImageLoader;->getMemoryCache()Lcoil3/memory/MemoryCache;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p2}, Lcoil3/memory/MemoryCache;->get(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v0, v1

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    .line 29
    move-object v2, p0

    .line 30
    move-object v3, p1

    .line 31
    move-object v4, p2

    .line 32
    move-object v5, v0

    .line 33
    move-object v6, p3

    .line 34
    move-object v7, p4

    .line 35
    invoke-virtual/range {v2 .. v7}, Lcoil3/memory/MemoryCacheService;->isCacheValueValid$coil_core_release(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/MemoryCache$Value;Lcoil3/size/Size;Lcoil3/size/Scale;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    move-object v1, v0

    .line 42
    :cond_2
    return-object v1
.end method

.method public final isCacheValueValid$coil_core_release(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/MemoryCache$Value;Lcoil3/size/Size;Lcoil3/size/Scale;)Z
    .locals 19
    .param p1    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil3/memory/MemoryCache$Value;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil3/size/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcoil3/size/Scale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcoil3/memory/MemoryCacheService;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/request/RequestService;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-interface {v1, v2, v3}, Lcoil3/request/RequestService;->isCacheValueValidForHardware(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Value;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const-string v6, "MemoryCacheService"

    .line 16
    .line 17
    iget-object v7, v0, Lcoil3/memory/MemoryCacheService;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lcoil3/util/Logger;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    if-eqz v7, :cond_0

    .line 22
    .line 23
    sget-object v1, Lcoil3/util/Logger$Level;->Debug:Lcoil3/util/Logger$Level;

    .line 24
    .line 25
    invoke-interface {v7}, Lcoil3/util/Logger;->getMinLevel()Lcoil3/util/Logger$Level;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-gtz v3, :cond_0

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getData()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ": Cached bitmap is hardware-backed, which is incompatible with the request."

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-interface {v7, v6, v1, v2, v5}, Lcoil3/util/Logger;->log(Ljava/lang/String;Lcoil3/util/Logger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return v4

    .line 60
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcoil3/memory/MemoryCache$Key;->getExtras()Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v8, "coil#size"

    .line 65
    .line 66
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/String;

    .line 71
    .line 72
    const-string v8, ") does not exactly match the target size ("

    .line 73
    .line 74
    const-string v9, ")."

    .line 75
    .line 76
    const-string v10, ": Memory cached image\'s size ("

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-virtual/range {p4 .. p4}, Lcoil3/size/Size;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 91
    goto/16 :goto_d

    .line 92
    .line 93
    :cond_3
    if-eqz v7, :cond_18

    .line 94
    .line 95
    sget-object v3, Lcoil3/util/Logger$Level;->Debug:Lcoil3/util/Logger$Level;

    .line 96
    .line 97
    invoke-interface {v7}, Lcoil3/util/Logger;->getMinLevel()Lcoil3/util/Logger$Level;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    invoke-virtual {v11, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    if-gtz v11, :cond_18

    .line 106
    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getData()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    move-object/from16 v1, p4

    .line 129
    .line 130
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v7, v6, v3, v1, v5}, Lcoil3/util/Logger;->log(Ljava/lang/String;Lcoil3/util/Logger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_d

    .line 144
    .line 145
    :cond_4
    move-object/from16 v1, p4

    .line 146
    .line 147
    invoke-virtual/range {p3 .. p3}, Lcoil3/memory/MemoryCache$Value;->getExtras()Ljava/util/Map;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    const-string v13, "coil#is_sampled"

    .line 152
    .line 153
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    instance-of v13, v12, Ljava/lang/Boolean;

    .line 158
    .line 159
    if-eqz v13, :cond_5

    .line 160
    .line 161
    check-cast v12, Ljava/lang/Boolean;

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_5
    move-object v12, v5

    .line 165
    :goto_1
    if-eqz v12, :cond_6

    .line 166
    .line 167
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    goto :goto_2

    .line 172
    :cond_6
    const/4 v12, 0x0

    .line 173
    :goto_2
    if-nez v12, :cond_7

    .line 174
    .line 175
    invoke-static/range {p4 .. p4}, Lcoil3/size/SizeKt;->isOriginal(Lcoil3/size/Size;)Z

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    if-nez v12, :cond_2

    .line 180
    .line 181
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getPrecision()Lcoil3/size/Precision;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    sget-object v13, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 186
    .line 187
    if-ne v12, v13, :cond_7

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcoil3/memory/MemoryCache$Value;->getImage()Lcoil3/Image;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    invoke-interface {v12}, Lcoil3/Image;->getWidth()I

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    invoke-virtual/range {p3 .. p3}, Lcoil3/memory/MemoryCache$Value;->getImage()Lcoil3/Image;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    invoke-interface {v13}, Lcoil3/Image;->getHeight()I

    .line 203
    .line 204
    .line 205
    move-result v13

    .line 206
    invoke-virtual/range {p3 .. p3}, Lcoil3/memory/MemoryCache$Value;->getImage()Lcoil3/Image;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    instance-of v3, v3, Lcoil3/BitmapImage;

    .line 211
    .line 212
    if-eqz v3, :cond_8

    .line 213
    .line 214
    invoke-static/range {p1 .. p1}, Lcoil3/request/ImageRequestsKt;->getMaxBitmapSize(Lcoil3/request/ImageRequest;)Lcoil3/size/Size;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    goto :goto_3

    .line 219
    :cond_8
    sget-object v3, Lcoil3/size/Size;->ORIGINAL:Lcoil3/size/Size;

    .line 220
    .line 221
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcoil3/size/Size;->getWidth()Lcoil3/size/Dimension;

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    instance-of v15, v14, Lcoil3/size/Dimension$Pixels;

    .line 226
    .line 227
    if-eqz v15, :cond_9

    .line 228
    .line 229
    check-cast v14, Lcoil3/size/Dimension$Pixels;

    .line 230
    .line 231
    invoke-virtual {v14}, Lcoil3/size/Dimension$Pixels;->unbox-impl()I

    .line 232
    .line 233
    .line 234
    move-result v14

    .line 235
    goto :goto_4

    .line 236
    :cond_9
    const v14, 0x7fffffff

    .line 237
    .line 238
    .line 239
    :goto_4
    invoke-virtual {v3}, Lcoil3/size/Size;->getWidth()Lcoil3/size/Dimension;

    .line 240
    .line 241
    .line 242
    move-result-object v15

    .line 243
    instance-of v5, v15, Lcoil3/size/Dimension$Pixels;

    .line 244
    .line 245
    if-eqz v5, :cond_a

    .line 246
    .line 247
    check-cast v15, Lcoil3/size/Dimension$Pixels;

    .line 248
    .line 249
    invoke-virtual {v15}, Lcoil3/size/Dimension$Pixels;->unbox-impl()I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    goto :goto_5

    .line 254
    :cond_a
    const v5, 0x7fffffff

    .line 255
    .line 256
    .line 257
    :goto_5
    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    invoke-virtual/range {p4 .. p4}, Lcoil3/size/Size;->getHeight()Lcoil3/size/Dimension;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    instance-of v14, v1, Lcoil3/size/Dimension$Pixels;

    .line 266
    .line 267
    if-eqz v14, :cond_b

    .line 268
    .line 269
    check-cast v1, Lcoil3/size/Dimension$Pixels;

    .line 270
    .line 271
    invoke-virtual {v1}, Lcoil3/size/Dimension$Pixels;->unbox-impl()I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    goto :goto_6

    .line 276
    :cond_b
    const v1, 0x7fffffff

    .line 277
    .line 278
    .line 279
    :goto_6
    invoke-virtual {v3}, Lcoil3/size/Size;->getHeight()Lcoil3/size/Dimension;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    instance-of v14, v3, Lcoil3/size/Dimension$Pixels;

    .line 284
    .line 285
    if-eqz v14, :cond_c

    .line 286
    .line 287
    check-cast v3, Lcoil3/size/Dimension$Pixels;

    .line 288
    .line 289
    invoke-virtual {v3}, Lcoil3/size/Dimension$Pixels;->unbox-impl()I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    goto :goto_7

    .line 294
    :cond_c
    const v3, 0x7fffffff

    .line 295
    .line 296
    .line 297
    :goto_7
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    int-to-double v14, v5

    .line 302
    move/from16 p3, v5

    .line 303
    .line 304
    int-to-double v4, v12

    .line 305
    div-double/2addr v14, v4

    .line 306
    int-to-double v3, v1

    .line 307
    move/from16 v16, v12

    .line 308
    .line 309
    int-to-double v11, v13

    .line 310
    div-double/2addr v3, v11

    .line 311
    move/from16 v12, p3

    .line 312
    .line 313
    const v11, 0x7fffffff

    .line 314
    .line 315
    .line 316
    if-eq v12, v11, :cond_d

    .line 317
    .line 318
    if-eq v1, v11, :cond_d

    .line 319
    .line 320
    move-object/from16 v11, p5

    .line 321
    .line 322
    goto :goto_8

    .line 323
    :cond_d
    sget-object v11, Lcoil3/size/Scale;->FIT:Lcoil3/size/Scale;

    .line 324
    .line 325
    :goto_8
    sget-object v17, Lcoil3/memory/MemoryCacheService$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 326
    .line 327
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 328
    .line 329
    .line 330
    move-result v11

    .line 331
    aget v11, v17, v11

    .line 332
    .line 333
    const/4 v5, 0x2

    .line 334
    const/4 v0, 0x1

    .line 335
    if-eq v11, v0, :cond_10

    .line 336
    .line 337
    if-ne v11, v5, :cond_f

    .line 338
    .line 339
    cmpg-double v11, v14, v3

    .line 340
    .line 341
    if-gez v11, :cond_e

    .line 342
    .line 343
    sub-int v3, v12, v16

    .line 344
    .line 345
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    :goto_9
    const/4 v0, 0x1

    .line 350
    goto :goto_b

    .line 351
    :cond_e
    sub-int v11, v1, v13

    .line 352
    .line 353
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 354
    .line 355
    .line 356
    move-result v11

    .line 357
    :goto_a
    move-wide v14, v3

    .line 358
    move v3, v11

    .line 359
    goto :goto_9

    .line 360
    :cond_f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 361
    .line 362
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 363
    .line 364
    .line 365
    throw v0

    .line 366
    :cond_10
    cmpl-double v11, v14, v3

    .line 367
    .line 368
    if-lez v11, :cond_11

    .line 369
    .line 370
    sub-int v3, v12, v16

    .line 371
    .line 372
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    goto :goto_9

    .line 377
    :cond_11
    sub-int v11, v1, v13

    .line 378
    .line 379
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 380
    .line 381
    .line 382
    move-result v11

    .line 383
    goto :goto_a

    .line 384
    :goto_b
    if-gt v3, v0, :cond_12

    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getPrecision()Lcoil3/size/Precision;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    sget-object v4, Lcoil3/memory/MemoryCacheService$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 393
    .line 394
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    aget v3, v4, v3

    .line 399
    .line 400
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 401
    .line 402
    const-string v4, ", "

    .line 403
    .line 404
    if-eq v3, v0, :cond_16

    .line 405
    .line 406
    if-ne v3, v5, :cond_15

    .line 407
    .line 408
    cmpg-double v3, v14, v17

    .line 409
    .line 410
    if-gtz v3, :cond_13

    .line 411
    .line 412
    goto/16 :goto_0

    .line 413
    .line 414
    :cond_13
    if-eqz v7, :cond_14

    .line 415
    .line 416
    sget-object v0, Lcoil3/util/Logger$Level;->Debug:Lcoil3/util/Logger$Level;

    .line 417
    .line 418
    invoke-interface {v7}, Lcoil3/util/Logger;->getMinLevel()Lcoil3/util/Logger$Level;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-virtual {v3, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    if-gtz v3, :cond_14

    .line 427
    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getData()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    move/from16 v5, v16

    .line 444
    .line 445
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    const-string v2, ") is smaller than the target size ("

    .line 455
    .line 456
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-static {v3, v9, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    const/4 v2, 0x0

    .line 470
    invoke-interface {v7, v6, v0, v1, v2}, Lcoil3/util/Logger;->log(Ljava/lang/String;Lcoil3/util/Logger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    .line 472
    .line 473
    :cond_14
    :goto_c
    const/4 v4, 0x0

    .line 474
    goto :goto_d

    .line 475
    :cond_15
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 476
    .line 477
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 478
    .line 479
    .line 480
    throw v0

    .line 481
    :cond_16
    move/from16 v5, v16

    .line 482
    .line 483
    cmpg-double v3, v14, v17

    .line 484
    .line 485
    if-nez v3, :cond_17

    .line 486
    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :cond_17
    if-eqz v7, :cond_14

    .line 490
    .line 491
    sget-object v0, Lcoil3/util/Logger$Level;->Debug:Lcoil3/util/Logger$Level;

    .line 492
    .line 493
    invoke-interface {v7}, Lcoil3/util/Logger;->getMinLevel()Lcoil3/util/Logger$Level;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    invoke-virtual {v3, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    if-gtz v3, :cond_14

    .line 502
    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getData()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-static {v3, v9, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    const/4 v2, 0x0

    .line 541
    invoke-interface {v7, v6, v0, v1, v2}, Lcoil3/util/Logger;->log(Ljava/lang/String;Lcoil3/util/Logger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 542
    .line 543
    .line 544
    goto :goto_c

    .line 545
    :cond_18
    :goto_d
    return v4
.end method

.method public final newCacheKey(Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;)Lcoil3/memory/MemoryCache$Key;
    .locals 3
    .param p1    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil3/EventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getMemoryCacheKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p2, Lcoil3/memory/MemoryCache$Key;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getMemoryCacheKey()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getMemoryCacheKeyExtras()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p2, p3, p1}, Lcoil3/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    return-object p2

    .line 21
    :cond_0
    invoke-virtual {p4, p1, p2}, Lcoil3/EventListener;->keyStart(Lcoil3/request/ImageRequest;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcoil3/memory/MemoryCacheService;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/ImageLoader;

    .line 25
    .line 26
    invoke-interface {v0}, Lcoil3/ImageLoader;->getComponents()Lcoil3/ComponentRegistry;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcoil3/memory/MemoryCacheService;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lcoil3/util/Logger;

    .line 31
    .line 32
    const-string v2, "MemoryCacheService"

    .line 33
    .line 34
    invoke-static {v0, p2, p3, v1, v2}, Lcoil3/util/UtilsKt;->key(Lcoil3/ComponentRegistry;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/util/Logger;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p4, p1, p2}, Lcoil3/EventListener;->keyEnd(Lcoil3/request/ImageRequest;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    return-object p1

    .line 45
    :cond_1
    invoke-static {p1}, Lcoil3/request/ImageRequestsKt;->getTransformations(Lcoil3/request/ImageRequest;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    check-cast p4, Ljava/util/Collection;

    .line 50
    .line 51
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p4

    .line 55
    if-nez p4, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getMemoryCacheKeyExtras()Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, L디듰듟드딄되뒝딌땄딻땰딜둡딟돼뎻뒻됫땁딐뒹둘땔땤돷땐땲땤뒛뒼뒙뎰도땝둠땳들뒷땟딤땨뒤돳딟둔둘땡됨땵돳땤땠땳땋땮뎬뒷됩뎬돤땐됩땬뒉땟뎬딌된둡땃땰뒹딠땹뒉됩딃뎸둡땪뒹둠땭딻뒷뒹듻뎸돛땳땯땫땜땻돵뒻뎠될듸딠땸딄듌됩뎸따둑땲뎬땄돼땥듽돼땲뎠딎든듰돵뒐들둘둣딹돷땄땪딀든;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p3}, Lcoil3/request/Options;->getSize()Lcoil3/size/Size;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {p3}, Lcoil3/size/Size;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    const-string p4, "coil#size"

    .line 74
    .line 75
    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    new-instance p3, Lcoil3/memory/MemoryCache$Key;

    .line 79
    .line 80
    invoke-direct {p3, p2, p1}, Lcoil3/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    return-object p3

    .line 84
    :cond_2
    new-instance p3, Lcoil3/memory/MemoryCache$Key;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getMemoryCacheKeyExtras()Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p3, p2, p1}, Lcoil3/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 91
    .line 92
    .line 93
    return-object p3
.end method

.method public final newResult(Lcoil3/intercept/Interceptor$Chain;Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/MemoryCache$Value;)Lcoil3/request/SuccessResult;
    .locals 9
    .param p1    # Lcoil3/intercept/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil3/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil3/memory/MemoryCache$Value;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Lcoil3/request/SuccessResult;

    .line 2
    .line 3
    invoke-virtual {p4}, Lcoil3/memory/MemoryCache$Value;->getImage()Lcoil3/Image;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v3, Lcoil3/decode/DataSource;->MEMORY_CACHE:Lcoil3/decode/DataSource;

    .line 8
    .line 9
    invoke-virtual {p4}, Lcoil3/memory/MemoryCache$Value;->getExtras()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "coil#disk_cache_key"

    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v2, v0, Ljava/lang/String;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    move-object v5, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v5, v4

    .line 29
    :goto_0
    invoke-virtual {p4}, Lcoil3/memory/MemoryCache$Value;->getExtras()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    const-string v0, "coil#is_sampled"

    .line 34
    .line 35
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    instance-of v0, p4, Ljava/lang/Boolean;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    move-object v4, p4

    .line 44
    check-cast v4, Ljava/lang/Boolean;

    .line 45
    .line 46
    :cond_1
    if-eqz v4, :cond_2

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result p4

    .line 52
    move v6, p4

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 p4, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    :goto_1
    invoke-static {p1}, Lcoil3/util/UtilsKt;->isPlaceholderCached(Lcoil3/intercept/Interceptor$Chain;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    move-object v0, v8

    .line 61
    move-object v2, p2

    .line 62
    move-object v4, p3

    .line 63
    invoke-direct/range {v0 .. v7}, Lcoil3/request/SuccessResult;-><init>(Lcoil3/Image;Lcoil3/request/ImageRequest;Lcoil3/decode/DataSource;Lcoil3/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V

    .line 64
    .line 65
    .line 66
    return-object v8
.end method

.method public final setCacheValue(Lcoil3/memory/MemoryCache$Key;Lcoil3/request/ImageRequest;Lcoil3/intercept/EngineInterceptor$ExecuteResult;)Z
    .locals 3
    .param p1    # Lcoil3/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil3/intercept/EngineInterceptor$ExecuteResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p2}, Lcoil3/request/ImageRequest;->getMemoryCachePolicy()Lcoil3/request/CachePolicy;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcoil3/request/CachePolicy;->getWriteEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p3}, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->getImage()Lcoil3/Image;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-interface {p2}, Lcoil3/Image;->getShareable()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p2, p0, Lcoil3/memory/MemoryCacheService;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/ImageLoader;

    .line 26
    .line 27
    invoke-interface {p2}, Lcoil3/ImageLoader;->getMemoryCache()Lcoil3/memory/MemoryCache;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    return v0

    .line 34
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->isSampled()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "coil#is_sampled"

    .line 48
    .line 49
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->getDiskCacheKey()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    const-string v2, "coil#disk_cache_key"

    .line 59
    .line 60
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_2
    new-instance v1, Lcoil3/memory/MemoryCache$Value;

    .line 64
    .line 65
    invoke-virtual {p3}, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->getImage()Lcoil3/Image;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-direct {v1, p3, v0}, Lcoil3/memory/MemoryCache$Value;-><init>(Lcoil3/Image;Ljava/util/Map;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p2, p1, v1}, Lcoil3/memory/MemoryCache;->set(Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/MemoryCache$Value;)V

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    return p1

    .line 77
    :cond_3
    :goto_0
    return v0
.end method
