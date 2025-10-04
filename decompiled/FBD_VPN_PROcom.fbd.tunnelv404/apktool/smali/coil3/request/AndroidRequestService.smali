.class public final Lcoil3/request/AndroidRequestService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/request/RequestService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcoil3/request/AndroidRequestService;",
        "Lcoil3/request/RequestService;",
        "Lcoil3/ImageLoader;",
        "imageLoader",
        "Lcoil3/util/SystemCallbacks;",
        "systemCallbacks",
        "Lcoil3/util/Logger;",
        "logger",
        "<init>",
        "(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/util/Logger;)V",
        "Lcoil3/request/ImageRequest;",
        "request",
        "Lkotlinx/coroutines/Job;",
        "job",
        "",
        "findLifecycle",
        "Lcoil3/request/RequestDelegate;",
        "requestDelegate",
        "(Lcoil3/request/ImageRequest;Lkotlinx/coroutines/Job;Z)Lcoil3/request/RequestDelegate;",
        "updateRequest",
        "(Lcoil3/request/ImageRequest;)Lcoil3/request/ImageRequest;",
        "Lcoil3/size/Size;",
        "size",
        "Lcoil3/request/Options;",
        "options",
        "(Lcoil3/request/ImageRequest;Lcoil3/size/Size;)Lcoil3/request/Options;",
        "updateOptions",
        "(Lcoil3/request/Options;)Lcoil3/request/Options;",
        "Lcoil3/memory/MemoryCache$Value;",
        "cacheValue",
        "isCacheValueValidForHardware",
        "(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Value;)Z",
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
        "SMAP\nRequestService.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestService.android.kt\ncoil3/request/AndroidRequestService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,258:1\n1#2:259\n*E\n"
    }
.end annotation


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/ImageLoader;

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/util/SystemCallbacks;

.field public final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lcoil3/util/Logger;

.field public final 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lcoil3/util/HardwareBitmapService;


# direct methods
.method public constructor <init>(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/util/Logger;)V
    .locals 0
    .param p1    # Lcoil3/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/util/SystemCallbacks;
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
    iput-object p1, p0, Lcoil3/request/AndroidRequestService;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/ImageLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/request/AndroidRequestService;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/util/SystemCallbacks;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/request/AndroidRequestService;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lcoil3/util/Logger;

    .line 9
    .line 10
    invoke-static {p3}, Lcoil3/util/HardwareBitmapsKt;->HardwareBitmapService(Lcoil3/util/Logger;)Lcoil3/util/HardwareBitmapService;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcoil3/request/AndroidRequestService;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lcoil3/util/HardwareBitmapService;

    .line 15
    .line 16
    return-void
.end method

.method public static 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcoil3/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {p0}, Lcoil3/request/ImageRequests_androidKt;->getAllowHardware(Lcoil3/request/ImageRequest;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcoil3/request/ImageRequest;->getTarget()Lcoil3/target/Target;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    instance-of p1, p0, Lcoil3/target/ViewTarget;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    check-cast p0, Lcoil3/target/ViewTarget;

    .line 26
    .line 27
    invoke-interface {p0}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    return v0
.end method


# virtual methods
.method public isCacheValueValidForHardware(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Value;)Z
    .locals 1
    .param p1    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/memory/MemoryCache$Value;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcoil3/memory/MemoryCache$Value;->getImage()Lcoil3/Image;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of v0, p2, Lcoil3/BitmapImage;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Lcoil3/BitmapImage;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_1
    invoke-virtual {p2}, Lcoil3/BitmapImage;->getBitmap()Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p2}, Lcoil3/util/BitmapsKt;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p1, p2}, Lcoil3/request/AndroidRequestService;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcoil3/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public options(Lcoil3/request/ImageRequest;Lcoil3/size/Size;)Lcoil3/request/Options;
    .locals 17
    .param p1    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/size/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v11, Lcoil3/request/Options;

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getScale()Lcoil3/size/Scale;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getPrecision()Lcoil3/size/Precision;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getDiskCacheKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getFileSystem()Lokio/FileSystem;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getMemoryCachePolicy()Lcoil3/request/CachePolicy;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getDiskCachePolicy()Lcoil3/request/CachePolicy;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getNetworkCachePolicy()Lcoil3/request/CachePolicy;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    invoke-static/range {p1 .. p1}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/ImageRequest;)Landroid/graphics/Bitmap$Config;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static/range {p1 .. p1}, Lcoil3/request/ImageRequests_androidKt;->getAllowRgb565(Lcoil3/request/ImageRequest;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static/range {p1 .. p1}, Lcoil3/request/ImageRequestsKt;->getTransformations(Lcoil3/request/ImageRequest;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-nez v10, :cond_1

    .line 52
    .line 53
    invoke-static {}, Lcoil3/util/Utils_androidKt;->getVALID_TRANSFORMATION_CONFIGS()[Landroid/graphics/Bitmap$Config;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-static/range {p1 .. p1}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/ImageRequest;)Landroid/graphics/Bitmap$Config;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    invoke-static {v10, v14}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-eqz v10, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v10, 0x0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    const/4 v10, 0x1

    .line 71
    :goto_1
    invoke-static/range {p1 .. p1}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/ImageRequest;)Landroid/graphics/Bitmap$Config;

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    invoke-static {v14}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 76
    .line 77
    .line 78
    move-result v14

    .line 79
    if-eqz v14, :cond_4

    .line 80
    .line 81
    invoke-static/range {p1 .. p1}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/ImageRequest;)Landroid/graphics/Bitmap$Config;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    move-object/from16 v15, p1

    .line 86
    .line 87
    invoke-static {v15, v14}, Lcoil3/request/AndroidRequestService;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcoil3/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    if-eqz v14, :cond_2

    .line 92
    .line 93
    move-object/from16 v14, p0

    .line 94
    .line 95
    iget-object v12, v14, Lcoil3/request/AndroidRequestService;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lcoil3/util/HardwareBitmapService;

    .line 96
    .line 97
    move-object/from16 v13, p2

    .line 98
    .line 99
    invoke-interface {v12, v13}, Lcoil3/util/HardwareBitmapService;->allowHardwareMainThread(Lcoil3/size/Size;)Z

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    if-eqz v12, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    move-object/from16 v14, p0

    .line 107
    .line 108
    move-object/from16 v13, p2

    .line 109
    .line 110
    :cond_3
    const/4 v12, 0x0

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    move-object/from16 v14, p0

    .line 113
    .line 114
    move-object/from16 v15, p1

    .line 115
    .line 116
    move-object/from16 v13, p2

    .line 117
    .line 118
    :goto_2
    const/4 v12, 0x1

    .line 119
    :goto_3
    if-eqz v10, :cond_5

    .line 120
    .line 121
    if-eqz v12, :cond_5

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 125
    .line 126
    :goto_4
    if-eqz v2, :cond_6

    .line 127
    .line 128
    invoke-static/range {p1 .. p1}, Lcoil3/request/ImageRequestsKt;->getTransformations(Lcoil3/request/ImageRequest;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_6

    .line 137
    .line 138
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 139
    .line 140
    if-eq v0, v2, :cond_6

    .line 141
    .line 142
    const/4 v12, 0x1

    .line 143
    goto :goto_5

    .line 144
    :cond_6
    const/4 v12, 0x0

    .line 145
    :goto_5
    new-instance v2, Lcoil3/Extras$Builder;

    .line 146
    .line 147
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getDefaults()Lcoil3/request/ImageRequest$Defaults;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    invoke-virtual {v10}, Lcoil3/request/ImageRequest$Defaults;->getExtras()Lcoil3/Extras;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    invoke-virtual {v10}, Lcoil3/Extras;->asMap()Ljava/util/Map;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/ImageRequest;->getExtras()Lcoil3/Extras;

    .line 160
    .line 161
    .line 162
    move-result-object v16

    .line 163
    invoke-virtual/range {v16 .. v16}, Lcoil3/Extras;->asMap()Ljava/util/Map;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    invoke-static {v10, v13}, L디듰듟드딄되뒝딌땄딻땰딜둡딟돼뎻뒻됫땁딐뒹둘땔땤돷땐땲땤뒛뒼뒙뎰도땝둠땳들뒷땟딤땨뒤돳딟둔둘땡됨땵돳땤땠땳땋땮뎬뒷됩뎬돤땐됩땬뒉땟뎬딌된둡땃땰뒹딠땹뒉됩딃뎸둡땪뒹둠땭딻뒷뒹듻뎸돛땳땯땫땜땻돵뒻뎠될듸딠땸딄듌됩뎸따둑땲뎬땄돼땥듽돼땲뎠딎든듰돵뒐들둘둣딹돷땄땪딀든;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    invoke-direct {v2, v10}, Lcoil3/Extras$Builder;-><init>(Ljava/util/Map;)V

    .line 172
    .line 173
    .line 174
    invoke-static/range {p1 .. p1}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/ImageRequest;)Landroid/graphics/Bitmap$Config;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    if-eq v0, v10, :cond_7

    .line 179
    .line 180
    sget-object v10, Lcoil3/Extras$Key;->Companion:Lcoil3/Extras$Key$Companion;

    .line 181
    .line 182
    invoke-static {v10}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    invoke-virtual {v2, v10, v0}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    :cond_7
    invoke-static/range {p1 .. p1}, Lcoil3/request/ImageRequests_androidKt;->getAllowRgb565(Lcoil3/request/ImageRequest;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eq v12, v0, :cond_8

    .line 195
    .line 196
    sget-object v0, Lcoil3/Extras$Key;->Companion:Lcoil3/Extras$Key$Companion;

    .line 197
    .line 198
    invoke-static {v0}, Lcoil3/request/ImageRequests_androidKt;->getAllowRgb565(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    invoke-virtual {v2, v0, v10}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    :cond_8
    invoke-virtual {v2}, Lcoil3/Extras$Builder;->build()Lcoil3/Extras;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    move-object v0, v11

    .line 215
    move-object/from16 v2, p2

    .line 216
    .line 217
    invoke-direct/range {v0 .. v10}, Lcoil3/request/Options;-><init>(Landroid/content/Context;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Precision;Ljava/lang/String;Lokio/FileSystem;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/Extras;)V

    .line 218
    .line 219
    .line 220
    return-object v11
.end method

.method public requestDelegate(Lcoil3/request/ImageRequest;Lkotlinx/coroutines/Job;Z)Lcoil3/request/RequestDelegate;
    .locals 7
    .param p1    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getTarget()Lcoil3/target/Target;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcoil3/target/ViewTarget;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-static {p1}, Lcoil3/request/ImageRequests_androidKt;->getLifecycle(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    if-nez p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getTarget()Lcoil3/target/Target;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    instance-of v1, p3, Lcoil3/target/ViewTarget;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast p3, Lcoil3/target/ViewTarget;

    .line 24
    .line 25
    invoke-interface {p3}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    :goto_0
    invoke-static {p3}, Lcoil3/util/ContextsKt;->getLifecycle(Landroid/content/Context;)Landroidx/lifecycle/Lifecycle;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    :cond_1
    move-object v5, p3

    .line 43
    new-instance p3, Lcoil3/request/ViewTargetRequestDelegate;

    .line 44
    .line 45
    iget-object v2, p0, Lcoil3/request/AndroidRequestService;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/ImageLoader;

    .line 46
    .line 47
    move-object v4, v0

    .line 48
    check-cast v4, Lcoil3/target/ViewTarget;

    .line 49
    .line 50
    move-object v1, p3

    .line 51
    move-object v3, p1

    .line 52
    move-object v6, p2

    .line 53
    invoke-direct/range {v1 .. v6}, Lcoil3/request/ViewTargetRequestDelegate;-><init>(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lcoil3/target/ViewTarget;Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V

    .line 54
    .line 55
    .line 56
    return-object p3

    .line 57
    :cond_2
    invoke-static {p1}, Lcoil3/request/ImageRequests_androidKt;->getLifecycle(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    if-eqz p3, :cond_4

    .line 64
    .line 65
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getTarget()Lcoil3/target/Target;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    instance-of v0, p3, Lcoil3/target/ViewTarget;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    check-cast p3, Lcoil3/target/ViewTarget;

    .line 74
    .line 75
    invoke-interface {p3}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_1
    invoke-static {p1}, Lcoil3/util/ContextsKt;->getLifecycle(Landroid/content/Context;)Landroidx/lifecycle/Lifecycle;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    const/4 v0, 0x0

    .line 94
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 95
    .line 96
    new-instance p1, Lcoil3/request/LifecycleRequestDelegate;

    .line 97
    .line 98
    invoke-direct {p1, v0, p2}, Lcoil3/request/LifecycleRequestDelegate;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V

    .line 99
    .line 100
    .line 101
    return-object p1

    .line 102
    :cond_6
    invoke-static {p2}, Lcoil3/request/BaseRequestDelegate;->constructor-impl(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Lcoil3/request/BaseRequestDelegate;->box-impl(Lkotlinx/coroutines/Job;)Lcoil3/request/BaseRequestDelegate;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    return-object p1
.end method

.method public updateOptions(Lcoil3/request/Options;)Lcoil3/request/Options;
    .locals 16
    .param p1    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcoil3/request/Options;->getExtras()Lcoil3/Extras;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static/range {p1 .. p1}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object/from16 v1, p0

    .line 16
    .line 17
    iget-object v2, v1, Lcoil3/request/AndroidRequestService;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lcoil3/util/HardwareBitmapService;

    .line 18
    .line 19
    invoke-interface {v2}, Lcoil3/util/HardwareBitmapService;->allowHardwareWorkerThread()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcoil3/Extras;->newBuilder()Lcoil3/Extras$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v2, Lcoil3/Extras$Key;->Companion:Lcoil3/Extras$Key$Companion;

    .line 31
    .line 32
    invoke-static {v2}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/Extras$Key$Companion;)Lcoil3/Extras$Key;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3}, Lcoil3/Extras$Builder;->set(Lcoil3/Extras$Key;Ljava/lang/Object;)Lcoil3/Extras$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcoil3/Extras$Builder;->build()Lcoil3/Extras;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v2, 0x1

    .line 47
    :goto_0
    move-object v13, v0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    move-object/from16 v1, p0

    .line 50
    .line 51
    :goto_1
    const/4 v2, 0x0

    .line 52
    goto :goto_0

    .line 53
    :goto_2
    if-eqz v2, :cond_2

    .line 54
    .line 55
    const/4 v11, 0x0

    .line 56
    const/4 v12, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v10, 0x0

    .line 64
    const/16 v14, 0x1ff

    .line 65
    .line 66
    const/4 v15, 0x0

    .line 67
    move-object/from16 v3, p1

    .line 68
    .line 69
    invoke-static/range {v3 .. v15}, Lcoil3/request/Options;->copy$default(Lcoil3/request/Options;Landroid/content/Context;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Precision;Ljava/lang/String;Lokio/FileSystem;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/request/CachePolicy;Lcoil3/Extras;ILjava/lang/Object;)Lcoil3/request/Options;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :cond_2
    return-object p1
.end method

.method public updateRequest(Lcoil3/request/ImageRequest;)Lcoil3/request/ImageRequest;
    .locals 5
    .param p1    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, v0, v1}, Lcoil3/request/ImageRequest;->newBuilder$default(Lcoil3/request/ImageRequest;Landroid/content/Context;ILjava/lang/Object;)Lcoil3/request/ImageRequest$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v2, p0, Lcoil3/request/AndroidRequestService;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/ImageLoader;

    .line 8
    .line 9
    invoke-interface {v2}, Lcoil3/ImageLoader;->getDefaults()Lcoil3/request/ImageRequest$Defaults;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Lcoil3/request/ImageRequest$Builder;->defaults(Lcoil3/request/ImageRequest$Defaults;)Lcoil3/request/ImageRequest$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getDefined()Lcoil3/request/ImageRequest$Defined;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcoil3/request/ImageRequest$Defined;->getSizeResolver()Lcoil3/size/SizeResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getTarget()Lcoil3/target/Target;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    instance-of v2, v2, Lcoil3/target/ViewTarget;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getTarget()Lcoil3/target/Target;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcoil3/target/ViewTarget;

    .line 40
    .line 41
    invoke-interface {v2}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    instance-of v3, v2, Landroid/widget/ImageView;

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    move-object v3, v2

    .line 50
    check-cast v3, Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 57
    .line 58
    if-eq v3, v4, :cond_0

    .line 59
    .line 60
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 61
    .line 62
    if-ne v3, v4, :cond_1

    .line 63
    .line 64
    :cond_0
    sget-object v2, Lcoil3/size/SizeResolver;->ORIGINAL:Lcoil3/size/SizeResolver;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v3, 0x2

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-static {v2, v4, v3, v1}, Lcoil3/size/ViewSizeResolverKt;->ViewSizeResolver$default(Landroid/view/View;ZILjava/lang/Object;)Lcoil3/size/ViewSizeResolver;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    sget-object v2, Lcoil3/size/SizeResolver;->ORIGINAL:Lcoil3/size/SizeResolver;

    .line 75
    .line 76
    :goto_0
    invoke-virtual {v0, v2}, Lcoil3/request/ImageRequest$Builder;->size(Lcoil3/size/SizeResolver;)Lcoil3/request/ImageRequest$Builder;

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getDefined()Lcoil3/request/ImageRequest$Defined;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcoil3/request/ImageRequest$Defined;->getScale()Lcoil3/size/Scale;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-nez v3, :cond_8

    .line 88
    .line 89
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getTarget()Lcoil3/target/Target;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    instance-of v4, v3, Lcoil3/target/ViewTarget;

    .line 94
    .line 95
    if-eqz v4, :cond_4

    .line 96
    .line 97
    check-cast v3, Lcoil3/target/ViewTarget;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    move-object v3, v1

    .line 101
    :goto_1
    if-eqz v3, :cond_5

    .line 102
    .line 103
    invoke-interface {v3}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    move-object v3, v1

    .line 109
    :goto_2
    instance-of v4, v3, Landroid/widget/ImageView;

    .line 110
    .line 111
    if-eqz v4, :cond_6

    .line 112
    .line 113
    move-object v1, v3

    .line 114
    check-cast v1, Landroid/widget/ImageView;

    .line 115
    .line 116
    :cond_6
    if-eqz v1, :cond_7

    .line 117
    .line 118
    invoke-static {v1}, Lcoil3/util/Utils_androidKt;->getScale(Landroid/widget/ImageView;)Lcoil3/size/Scale;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    goto :goto_3

    .line 123
    :cond_7
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getScale()Lcoil3/size/Scale;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :goto_3
    invoke-virtual {v0, v1}, Lcoil3/request/ImageRequest$Builder;->scale(Lcoil3/size/Scale;)Lcoil3/request/ImageRequest$Builder;

    .line 128
    .line 129
    .line 130
    :cond_8
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getDefined()Lcoil3/request/ImageRequest$Defined;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcoil3/request/ImageRequest$Defined;->getPrecision()Lcoil3/size/Precision;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-nez v1, :cond_b

    .line 139
    .line 140
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getDefined()Lcoil3/request/ImageRequest$Defined;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lcoil3/request/ImageRequest$Defined;->getSizeResolver()Lcoil3/size/SizeResolver;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-nez v1, :cond_9

    .line 149
    .line 150
    sget-object v1, Lcoil3/size/SizeResolver;->ORIGINAL:Lcoil3/size/SizeResolver;

    .line 151
    .line 152
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_9

    .line 157
    .line 158
    sget-object p1, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_9
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getTarget()Lcoil3/target/Target;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    instance-of v1, v1, Lcoil3/target/ViewTarget;

    .line 166
    .line 167
    if-eqz v1, :cond_a

    .line 168
    .line 169
    instance-of v1, v2, Lcoil3/size/ViewSizeResolver;

    .line 170
    .line 171
    if-eqz v1, :cond_a

    .line 172
    .line 173
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getTarget()Lcoil3/target/Target;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Lcoil3/target/ViewTarget;

    .line 178
    .line 179
    invoke-interface {v1}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    instance-of v1, v1, Landroid/widget/ImageView;

    .line 184
    .line 185
    if-eqz v1, :cond_a

    .line 186
    .line 187
    invoke-virtual {p1}, Lcoil3/request/ImageRequest;->getTarget()Lcoil3/target/Target;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Lcoil3/target/ViewTarget;

    .line 192
    .line 193
    invoke-interface {p1}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast v2, Lcoil3/size/ViewSizeResolver;

    .line 198
    .line 199
    invoke-interface {v2}, Lcoil3/size/ViewSizeResolver;->getView()Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    if-ne p1, v1, :cond_a

    .line 204
    .line 205
    sget-object p1, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_a
    sget-object p1, Lcoil3/size/Precision;->EXACT:Lcoil3/size/Precision;

    .line 209
    .line 210
    :goto_4
    invoke-virtual {v0, p1}, Lcoil3/request/ImageRequest$Builder;->precision(Lcoil3/size/Precision;)Lcoil3/request/ImageRequest$Builder;

    .line 211
    .line 212
    .line 213
    :cond_b
    invoke-virtual {v0}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    return-object p1
.end method
