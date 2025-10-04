.class public final Landroidx/camera/camera2/internal/VideoUsageControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0008J\u0006\u0010\u000c\u001a\u00020\u0008J\u0006\u0010\r\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/camera/camera2/internal/VideoUsageControl;",
        "",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "(Ljava/util/concurrent/Executor;)V",
        "mVideoUsage",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "decrementUsage",
        "",
        "getUsage",
        "",
        "incrementUsage",
        "reset",
        "resetDirectly",
        "camera-camera2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mVideoUsage:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "executor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/camera/camera2/internal/VideoUsageControl;->executor:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/camera/camera2/internal/VideoUsageControl;->mVideoUsage:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    return-void
.end method

.method private static final decrementUsage$lambda$1(Landroidx/camera/camera2/internal/VideoUsageControl;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/camera/camera2/internal/VideoUsageControl;->mVideoUsage:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const-string v0, "decrementUsage: mVideoUsage = "

    .line 13
    .line 14
    const-string v1, "VideoUsageControl"

    .line 15
    .line 16
    if-gez p0, :cond_0

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, ", which is less than 0!"

    .line 27
    .line 28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v1, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v1, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private static final incrementUsage$lambda$0(Landroidx/camera/camera2/internal/VideoUsageControl;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/camera/camera2/internal/VideoUsageControl;->mVideoUsage:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "incrementUsage: mVideoUsage = "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "VideoUsageControl"

    .line 27
    .line 28
    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static final reset$lambda$2(Landroidx/camera/camera2/internal/VideoUsageControl;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/VideoUsageControl;->resetDirectly()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/camera2/internal/VideoUsageControl;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/camera2/internal/VideoUsageControl;->decrementUsage$lambda$1(Landroidx/camera/camera2/internal/VideoUsageControl;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/camera2/internal/VideoUsageControl;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/camera2/internal/VideoUsageControl;->reset$lambda$2(Landroidx/camera/camera2/internal/VideoUsageControl;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/camera2/internal/VideoUsageControl;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/camera2/internal/VideoUsageControl;->incrementUsage$lambda$0(Landroidx/camera/camera2/internal/VideoUsageControl;)V

    return-void
.end method


# virtual methods
.method public final decrementUsage()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/VideoUsageControl;->executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L땰따땠뒼뒨됴땱듼땸땪돤땀됴돸땳땬둡둥뒛듰딤땋듰뎻땻뒙디듔뎬듸땟딻땐돝뎽뒹뒉들땋디뎻뒙듻땭듻되됨됩뎽땧듌땹됨들드뒐땪뒝딁뎽딽듌뒤듨땳땧둡땹둔듔둣땤뒈디딁땡둑땬듰땥땄딀뒬됐뒐뒤둘땩돛돼땐땧딀뒘땩뒨딨땐땮뒋둣딻땡뒤뒨뒘땹땭딐땣뎻둣듐된뒐뎨딀땩땃되땥뎬돤돵돨뎰뒋될뒋뒀;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, L땰따땠뒼뒨됴땱듼땸땪돤땀됴돸땳땬둡둥뒛듰딤땋듰뎻땻뒙디듔뎬듸땟딻땐돝뎽뒹뒉들땋디뎻뒙듻땭듻되됨됩뎽땧듌땹됨들드뒐땪뒝딁뎽딽듌뒤듨땳땧둡땹둔듔둣땤뒈디딁땡둑땬듰땥땄딀뒬됐뒐뒤둘땩돛돼땐땧딀뒘땩뒨딨땐땮뒋둣딻땡뒤뒨뒘땹땭딐땣뎻둣듐된뒐뎨딀땩땃되땥뎬돤돵돨뎰뒋될뒋뒀;-><init>(Landroidx/camera/camera2/internal/VideoUsageControl;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final getUsage()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/VideoUsageControl;->mVideoUsage:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final incrementUsage()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/VideoUsageControl;->executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L땰따땠뒼뒨됴땱듼땸땪돤땀됴돸땳땬둡둥뒛듰딤땋듰뎻땻뒙디듔뎬듸땟딻땐돝뎽뒹뒉들땋디뎻뒙듻땭듻되됨됩뎽땧듌땹됨들드뒐땪뒝딁뎽딽듌뒤듨땳땧둡땹둔듔둣땤뒈디딁땡둑땬듰땥땄딀뒬됐뒐뒤둘땩돛돼땐땧딀뒘땩뒨딨땐땮뒋둣딻땡뒤뒨뒘땹땭딐땣뎻둣듐된뒐뎨딀땩땃되땥뎬돤돵돨뎰뒋될뒋뒀;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, v2}, L땰따땠뒼뒨됴땱듼땸땪돤땀됴돸땳땬둡둥뒛듰딤땋듰뎻땻뒙디듔뎬듸땟딻땐돝뎽뒹뒉들땋디뎻뒙듻땭듻되됨됩뎽땧듌땹됨들드뒐땪뒝딁뎽딽듌뒤듨땳땧둡땹둔듔둣땤뒈디딁땡둑땬듰땥땄딀뒬됐뒐뒤둘땩돛돼땐땧딀뒘땩뒨딨땐땮뒋둣딻땡뒤뒨뒘땹땭딐땣뎻둣듐된뒐뎨딀땩땃되땥뎬돤돵돨뎰뒋될뒋뒀;-><init>(Landroidx/camera/camera2/internal/VideoUsageControl;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/VideoUsageControl;->executor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L땰따땠뒼뒨됴땱듼땸땪돤땀됴돸땳땬둡둥뒛듰딤땋듰뎻땻뒙디듔뎬듸땟딻땐돝뎽뒹뒉들땋디뎻뒙듻땭듻되됨됩뎽땧듌땹됨들드뒐땪뒝딁뎽딽듌뒤듨땳땧둡땹둔듔둣땤뒈디딁땡둑땬듰땥땄딀뒬됐뒐뒤둘땩돛돼땐땧딀뒘땩뒨딨땐땮뒋둣딻땡뒤뒨뒘땹땭딐땣뎻둣듐된뒐뎨딀땩땃되땥뎬돤돵돨뎰뒋될뒋뒀;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, L땰따땠뒼뒨됴땱듼땸땪돤땀됴돸땳땬둡둥뒛듰딤땋듰뎻땻뒙디듔뎬듸땟딻땐돝뎽뒹뒉들땋디뎻뒙듻땭듻되됨됩뎽땧듌땹됨들드뒐땪뒝딁뎽딽듌뒤듨땳땧둡땹둔듔둣땤뒈디딁땡둑땬듰땥땄딀뒬됐뒐뒤둘땩돛돼땐땧딀뒘땩뒨딨땐땮뒋둣딻땡뒤뒨뒘땹땭딐땣뎻둣듐된뒐뎨딀땩땃되땥뎬돤돵돨뎰뒋될뒋뒀;-><init>(Landroidx/camera/camera2/internal/VideoUsageControl;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final resetDirectly()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/VideoUsageControl;->mVideoUsage:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    .line 6
    .line 7
    const-string v0, "VideoUsageControl"

    .line 8
    .line 9
    const-string v1, "resetDirectly: mVideoUsage reset!"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
