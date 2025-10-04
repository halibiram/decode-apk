.class public final Landroidx/camera/video/impl/VideoCaptureConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfig;
.implements Landroidx/camera/core/impl/ImageOutputConfig;
.implements Landroidx/camera/core/internal/ThreadConfig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/camera/video/VideoOutput;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/UseCaseConfig<",
        "Landroidx/camera/video/VideoCapture<",
        "TT;>;>;",
        "Landroidx/camera/core/impl/ImageOutputConfig;",
        "Landroidx/camera/core/internal/ThreadConfig;"
    }
.end annotation


# static fields
.field public static final OPTION_FORCE_ENABLE_SURFACE_PROCESSING:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_VIDEO_ENCODER_INFO_FINDER:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final OPTION_VIDEO_OUTPUT:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/camera/video/VideoOutput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfig:Landroidx/camera/core/impl/OptionsBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "camerax.video.VideoCapture.videoOutput"

    .line 2
    .line 3
    const-class v1, Landroidx/camera/video/VideoOutput;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/camera/video/impl/VideoCaptureConfig;->OPTION_VIDEO_OUTPUT:Landroidx/camera/core/impl/Config$Option;

    .line 10
    .line 11
    const-string v0, "camerax.video.VideoCapture.videoEncoderInfoFinder"

    .line 12
    .line 13
    const-class v1, Landroidx/arch/core/util/Function;

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroidx/camera/video/impl/VideoCaptureConfig;->OPTION_VIDEO_ENCODER_INFO_FINDER:Landroidx/camera/core/impl/Config$Option;

    .line 20
    .line 21
    const-string v0, "camerax.video.VideoCapture.forceEnableSurfaceProcessing"

    .line 22
    .line 23
    const-class v1, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Landroidx/camera/video/impl/VideoCaptureConfig;->OPTION_FORCE_ENABLE_SURFACE_PROCESSING:Landroidx/camera/core/impl/Config$Option;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/OptionsBundle;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/OptionsBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/camera/video/impl/VideoCaptureConfig;->OPTION_VIDEO_OUTPUT:Landroidx/camera/core/impl/Config$Option;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/OptionsBundle;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/camera/video/impl/VideoCaptureConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final synthetic containsOption(Landroidx/camera/core/impl/Config$Option;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Z

    move-result p1

    return p1
.end method

.method public final synthetic findOptions(Ljava/lang/String;Landroidx/camera/core/impl/Config$OptionMatcher;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/ReadableConfig;Ljava/lang/String;Landroidx/camera/core/impl/Config$OptionMatcher;)V

    return-void
.end method

.method public final synthetic getAppTargetRotation(I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/impl/ImageOutputConfig;I)I

    move-result p1

    return p1
.end method

.method public final synthetic getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    invoke-static {p0}, L땪딎딀딽둥뒤땨둔땧땀뎬돠딠듐땠뎬둠땯된뒾따땅딁땨딃딅뒛뒀듽땋됐땋땁따뒉뒐뎰둑딀돛둣땰땯돶땭딐딜땹뎠듟땩듰도듟도땥둠딀뒤돵듐뒝돠딌돝드땮뎡땰돝땯땜딝뒵돸뎸뒷뎠둡딐득뒻된땹딎딀땍득뒤뎻듼땵듽딤땤딜딝뒻땐둣땃둣뒐땠땟됐뒼딎뎡뒘땳땋땵땥둑땝뎻듌듸듼땯뎽돴땋든두땧딄딄든;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/internal/ThreadConfig;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getBackgroundExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L땪딎딀딽둥뒤땨둔땧땀뎬돠딠듐땠뎬둠땯된뒾따땅딁땨딃딅뒛뒀듽땋됐땋땁따뒉뒐뎰둑딀돛둣땰땯돶땭딐딜땹뎠듟땩듰도듟도땥둠딀뒤돵듐뒝돠딌돝드땮뎡땰돝땯땜딝뒵돸뎸뒷뎠둡딐득뒻된땹딎딀땍득뒤뎻듼땵듽딤땤딜딝뒻땐둣땃둣뒐땠땟됐뒼딎뎡뒘땳땋땵땥둑땝뎻듌듸듼땯뎽돴땋든두땧딄딄든;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/internal/ThreadConfig;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getCaptureOptionUnpacker()Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;
    .locals 1

    .line 1
    invoke-static {p0}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getCaptureOptionUnpacker(Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;)Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;)Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;
    .locals 1

    .line 1
    invoke-static {p0}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Landroidx/camera/core/impl/Config;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/impl/VideoCaptureConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final synthetic getCustomOrderedResolutions()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/ImageOutputConfig;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getCustomOrderedResolutions(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/impl/ImageOutputConfig;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getDefaultCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;
    .locals 1

    .line 1
    invoke-static {p0}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultCaptureConfig(Landroidx/camera/core/impl/CaptureConfig;)Landroidx/camera/core/impl/CaptureConfig;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig;)Landroidx/camera/core/impl/CaptureConfig;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getDefaultResolution()Landroid/util/Size;
    .locals 1

    .line 1
    invoke-static {p0}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/core/impl/ImageOutputConfig;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultResolution(Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/core/impl/ImageOutputConfig;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getDefaultSessionConfig()Landroidx/camera/core/impl/SessionConfig;
    .locals 1

    .line 1
    invoke-static {p0}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultSessionConfig(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/impl/SessionConfig;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getDynamicRange()Landroidx/camera/core/DynamicRange;
    .locals 1

    .line 1
    invoke-static {p0}, L듼뒨딹뎬딽뒐딌뒝듰뒷땜딜뎹뒵듰딸됫땐둥딸든딄돴딄땧딤땅뒤뒬돤둬땍됨두돨됐땹땰딜뒐둥땲딨뒝든뎨딝땦딄딎땋돳듟딻땜뒉땡땪듼뒀땤둔딤뒼듟뎬딞딁뒷뎨뒋듰둘땟땻딎딜된땻둔딻뒤딻듰뒐돵돝땰둡땲돰듔돷따뒝둥땃둬됨땮됩돴딹땔듼뒨돝돶뎸뒷둬득땍땮뒤딄땭뒷딅돵뎨돳땔듼땐듟땻돶둥뒉;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/impl/ImageInputConfig;)Landroidx/camera/core/DynamicRange;

    move-result-object v0

    return-object v0
.end method

.method public getInputFormat()I
    .locals 1

    const/16 v0, 0x22

    return v0
.end method

.method public final synthetic getMaxResolution()Landroid/util/Size;
    .locals 1

    .line 1
    invoke-static {p0}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/core/impl/ImageOutputConfig;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getMaxResolution(Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/core/impl/ImageOutputConfig;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getMirrorMode(I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/camera/core/impl/ImageOutputConfig;I)I

    move-result p1

    return p1
.end method

.method public final synthetic getOptionPriority(Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getPreviewStabilizationMode()I
    .locals 1

    .line 1
    invoke-static {p0}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/camera/core/impl/UseCaseConfig;)I

    move-result v0

    return v0
.end method

.method public final synthetic getPriorities(Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getResolutionSelector()Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .locals 1

    .line 1
    invoke-static {p0}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Landroidx/camera/core/impl/ImageOutputConfig;)Landroidx/camera/core/resolutionselector/ResolutionSelector;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Landroidx/camera/core/impl/ImageOutputConfig;Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/resolutionselector/ResolutionSelector;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getSessionOptionUnpacker()Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;
    .locals 1

    .line 1
    invoke-static {p0}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getSessionOptionUnpacker(Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;)Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;)Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getSupportedResolutions()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Landroidx/camera/core/impl/ImageOutputConfig;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getSupportedResolutions(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroidx/camera/core/impl/ImageOutputConfig;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getSurfaceOccupancyPriority()I
    .locals 1

    .line 1
    invoke-static {p0}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Landroidx/camera/core/impl/UseCaseConfig;)I

    move-result v0

    return v0
.end method

.method public final synthetic getSurfaceOccupancyPriority(I)I
    .locals 0

    .line 2
    invoke-static {p0, p1}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroidx/camera/core/impl/UseCaseConfig;I)I

    move-result p1

    return p1
.end method

.method public final synthetic getTargetAspectRatio()I
    .locals 1

    .line 1
    invoke-static {p0}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroidx/camera/core/impl/ImageOutputConfig;)I

    move-result v0

    return v0
.end method

.method public final synthetic getTargetClass()Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-static {p0}, L땩땔돰뒻땮뎸땦땸딅땋땬땐될딹딞딨딝디딠두땔둬들득땅디땣땸든딤둡드딟뒘돤땡뎰땋딻딄땄땵둥뒤뎬뒵딸돶딨될뎰뎸돷뒬땟딠득땩뒈땜뒛뎸땰땫됩듰땫뒨땯땨듨딀따돰딎됩됩듬땀땲땧땜뒋뒛듨땫뎻됨뒼뒻땋땦뎨둡땫두득딻돶땅뒹뎨딤딄따뎬땵둠뒷뒈둑뒻뒤돵뎹뒾땵될돳뎸딃두땲돵딜딁딃돛땋땋;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/internal/TargetConfig;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getTargetClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L땩땔돰뒻땮뎸땦땸딅땋땬땐될딹딞딨딝디딠두땔둬들득땅디땣땸든딤둡드딟뒘돤땡뎰땋딻딄땄땵둥뒤뎬뒵딸돶딨될뎰뎸돷뒬땟딠득땩뒈땜뒛뎸땰땫됩듰땫뒨땯땨듨딀따돰딎됩됩듬땀땲땧땜뒋뒛듨땫뎻됨뒼뒻땋땦뎨둡땫두득딻돶땅뒹뎨딤딄따뎬땵둠뒷뒈둑뒻뒤돵뎹뒾땵될돳뎸딃두땲돵딜딁딃돛땋땋;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/internal/TargetConfig;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getTargetFrameRate()Landroid/util/Range;
    .locals 1

    .line 1
    invoke-static {p0}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroidx/camera/core/impl/UseCaseConfig;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getTargetFrameRate(Landroid/util/Range;)Landroid/util/Range;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getTargetName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, L땩땔돰뒻땮뎸땦땸딅땋땬땐될딹딞딨딝디딠두땔둬들득땅디땣땸든딤둡드딟뒘돤땡뎰땋딻딄땄땵둥뒤뎬뒵딸돶딨될뎰뎸돷뒬땟딠득땩뒈땜뒛뎸땰땫됩듰땫뒨땯땨듨딀따돰딎됩됩듬땀땲땧땜뒋뒛듨땫뎻됨뒼뒻땋땦뎨둡땫두득딻돶땅뒹뎨딤딄따뎬땵둠뒷뒈둑뒻뒤돵뎹뒾땵될돳뎸딃두땲돵딜딁딃돛땋땋;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/internal/TargetConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getTargetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L땩땔돰뒻땮뎸땦땸딅땋땬땐될딹딞딨딝디딠두땔둬들득땅디땣땸든딤둡드딟뒘돤땡뎰땋딻딄땄땵둥뒤뎬뒵딸돶딨될뎰뎸돷뒬땟딠득땩뒈땜뒛뎸땰땫됩듰땫뒨땯땨듨딀따돰딎됩됩듬땀땲땧땜뒋뒛듨땫뎻됨뒼뒻땋땦뎨둡땫두득딻돶땅뒹뎨딤딄따뎬땵둠뒷뒈둑뒻뒤돵뎹뒾땵될돳뎸딃두땲돵딜딁딃돛땋땋;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/core/internal/TargetConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getTargetResolution()Landroid/util/Size;
    .locals 1

    .line 1
    invoke-static {p0}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroidx/camera/core/impl/ImageOutputConfig;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getTargetResolution(Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 2
    invoke-static {p0, p1}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroidx/camera/core/impl/ImageOutputConfig;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getTargetRotation()I
    .locals 1

    .line 1
    invoke-static {p0}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroidx/camera/core/impl/ImageOutputConfig;)I

    move-result v0

    return v0
.end method

.method public final synthetic getTargetRotation(I)I
    .locals 0

    .line 2
    invoke-static {p0, p1}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroidx/camera/core/impl/ImageOutputConfig;I)I

    move-result p1

    return p1
.end method

.method public getVideoEncoderInfoFinder()Landroidx/arch/core/util/Function;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/video/impl/VideoCaptureConfig;->OPTION_VIDEO_ENCODER_INFO_FINDER:Landroidx/camera/core/impl/Config$Option;

    .line 2
    .line 3
    invoke-static {p0, v0}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/arch/core/util/Function;

    .line 8
    .line 9
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/arch/core/util/Function;

    .line 13
    .line 14
    return-object v0
.end method

.method public getVideoOutput()Landroidx/camera/video/VideoOutput;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/video/impl/VideoCaptureConfig;->OPTION_VIDEO_OUTPUT:Landroidx/camera/core/impl/Config$Option;

    .line 2
    .line 3
    invoke-static {p0, v0}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/video/VideoOutput;

    .line 8
    .line 9
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/camera/video/VideoOutput;

    .line 13
    .line 14
    return-object v0
.end method

.method public final synthetic getVideoStabilizationMode()I
    .locals 1

    .line 1
    invoke-static {p0}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroidx/camera/core/impl/UseCaseConfig;)I

    move-result v0

    return v0
.end method

.method public final synthetic hasDynamicRange()Z
    .locals 1

    .line 1
    invoke-static {p0}, L듼뒨딹뎬딽뒐딌뒝듰뒷땜딜뎹뒵듰딸됫땐둥딸든딄돴딄땧딤땅뒤뒬돤둬땍됨두돨됐땹땰딜뒐둥땲딨뒝든뎨딝땦딄딎땋돳듟딻땜뒉땡땪듼뒀땤둔딤뒼듟뎬딞딁뒷뎨뒋듰둘땟땻딎딜된땻둔딻뒤딻듰뒐돵돝땰둡땲돰듔돷따뒝둥땃둬됨땮됩돴딹땔듼뒨돝돶뎸뒷둬득땍땮뒤딄땭뒷딅돵뎨돳땔듼땐듟땻돶둥뒉;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/impl/ImageInputConfig;)Z

    move-result v0

    return v0
.end method

.method public final synthetic hasTargetAspectRatio()Z
    .locals 1

    .line 1
    invoke-static {p0}, L듼땠딠뒼땋딀뒨땮뒷뎰땔딄뒀듟듽뎰둥듰돶땦땔돛둡땀됫땧땔딨뒨뒵돼땯들됩땹땐뒾뎰땮딤뎰뎻돼돛땬둔땟땜둬땄뒐뒀땳돷뒷땵듨딐땯딌된둥땍땅땟듻뎹뎠둣뒝땍뎹땰딌뒤딤딝땜뒵땦돼뎠딁땵딟땬땠뎡딎딟땨땜돸뒘뒙둬둔듻뒷둥뒵드딌딜땦땀뒝듔둡땨돠딤듟도둣땰따딎땳드뒾땻땮돴딠땣뒹땃뒨됴;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Landroidx/camera/core/impl/ImageOutputConfig;)Z

    move-result v0

    return v0
.end method

.method public final synthetic isHighResolutionDisabled(Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroidx/camera/core/impl/UseCaseConfig;Z)Z

    move-result p1

    return p1
.end method

.method public isSurfaceProcessingForceEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/camera/video/impl/VideoCaptureConfig;->OPTION_FORCE_ENABLE_SURFACE_PROCESSING:Landroidx/camera/core/impl/Config$Option;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final synthetic isZslDisabled(Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroidx/camera/core/impl/UseCaseConfig;Z)Z

    move-result p1

    return p1
.end method

.method public final synthetic listOptions()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-static {p0}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/core/impl/ReadableConfig;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic retrieveOptionWithPriority(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, L땁돴듔두땜돷땠딎뎻듽땲둑딎땦땄도뎬돴뒛둘뎽듽됨된둣뎡땬딃딀땳뒐딄땀돳든땹딁뎬뎡됩됴됨됐땔둑뎻딌딄땱됩뒛듼땲돠두딤딀딀둥뎹딟딃딠딐땡딄뒈뒹돵뒛땃돤딅뎡따됴돛뒋뒛땟둬듌디두듰땩뒈뒻둘땥땍땫둘땪뎰땬둡땥뒝둔땜땐딃땠딁딌땻땵듰듸뒋딸됫뒾돴땃딟뎰딽됩된땮됨땭뒙돨뎻땪뒵듼;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
