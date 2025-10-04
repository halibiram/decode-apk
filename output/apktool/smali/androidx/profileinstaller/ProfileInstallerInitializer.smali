.class public Landroidx/profileinstaller/ProfileInstallerInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/startup/Initializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/profileinstaller/ProfileInstallerInitializer$Result;,
        Landroidx/profileinstaller/ProfileInstallerInitializer$Handler28Impl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/startup/Initializer<",
        "Landroidx/profileinstaller/ProfileInstallerInitializer$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAY_MS:I = 0x1388


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$create$0(Landroid/content/Context;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/profileinstaller/ProfileInstallerInitializer;->installAfterDelay(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$installAfterDelay$1(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstallerInitializer;->writeInBackground(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$writeInBackground$2(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstaller;->writeProfile(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static writeInBackground(Landroid/content/Context;)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move-object v0, v7

    .line 15
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, L뎽뒛듔듬돵들듽뎸뒬땜됨뎡돶땋딟둑뒷둬돼땪둑딎된딹득뎹돼들딞땠땟땹듽돷딽땳들뎰땤돸땀듸딄뒷뒐뎹뒙땳됐땥땵딁된돤돷둔들들돳뒻땜땜됩딁됴돠땰땝땣땸땸뎨딝땜땰딨듨뒹뎸두땩땵딌땋딠뎬뒋땸땤땣듌드돨들땨땐뒨딤뒨돰뎠둑될뒾뎻땹땯뒀뎡듌땪땱딄도땪땋땹땨돠땰뒉뒵딟둬딽듌둣둣뎽뒛;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-direct {v0, p0, v1}, L뎽뒛듔듬돵들듽뎸뒬땜됨뎡돶땋딟둑뒷둬돼땪둑딎된딹득뎹돼들딞땠땟땹듽돷딽땳들뎰땤돸땀듸딄뒷뒐뎹뒙땳됐땥땵딁된돤돷둔들들돳뒻땜땜됩딁됴돠땰땝땣땸땸뎨딝땜땰딨듨뒹뎸두땩땵딌땋딠뎬뒋땸땤땣듌드돨들땨땐뒨딤뒨돰뎠둑될뒾뎻땹땯뒀뎡듌땪땱딄도땪땋땹땨돠땰뒉뒵딟둬딽듌둣둣뎽뒛;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstallerInitializer;->lambda$writeInBackground$2(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstallerInitializer;->lambda$installAfterDelay$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/profileinstaller/ProfileInstallerInitializer;->lambda$create$0(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Landroidx/profileinstaller/ProfileInstallerInitializer$Result;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 3
    new-instance p1, Landroidx/profileinstaller/ProfileInstallerInitializer$Result;

    invoke-direct {p1}, Landroidx/profileinstaller/ProfileInstallerInitializer$Result;-><init>()V

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, L딻뒙땟딜땝뒘땋땮땜둘땍돷돛들득땔땦딄뒻뒛땱땳뎹뒈디뎬뒈뒈됴뎽뎰듼딸땲듻될땨뒙땅뒹뒼딃드돸땬듔딹딄딠디땍뒬딄듻뎡뒉뎰돤뎽땭땦뒷돼딄듔땣득둑들듰뎡딀딅땐뎻딟뎽뒋딁돶돤뒻딞든땧뒝땅뎠돤뒻뒨뒻딽땦뒷땔뎻둑땲딠땄드돠돝됴땧땥뒙딀딝뎹땔땫딜드뒼땱듬듐뒷돸땳땰돤뎽땭땫뒋뎽땮;

    invoke-direct {v1, p0, p1}, L딻뒙땟딜땝뒘땋땮땜둘땍돷돛들득땔땦딄뒻뒛땱땳뎹뒈디뎬뒈뒈됴뎽뎰듼딸땲듻될땨뒙땅뒹뒼딃드돸땬듔딹딄딠디땍뒬딄듻뎡뒉뎰돤뎽땭땦뒷돼딄듔땣득둑들듰뎡딀딅땐뎻딟뎽뒋딁돶돤뒻딞든땧뒝땅뎠돤뒻뒨뒻딽땦뒷땔뎻둑땲딠땄드돠돝됴땧땥뒙딀딝뎹땔땫딜드뒼땱듬듐뒷돸땳땰돤뎽땭땫뒋뎽땮;-><init>(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 6
    new-instance p1, Landroidx/profileinstaller/ProfileInstallerInitializer$Result;

    invoke-direct {p1}, Landroidx/profileinstaller/ProfileInstallerInitializer$Result;-><init>()V

    return-object p1
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/profileinstaller/ProfileInstallerInitializer;->create(Landroid/content/Context;)Landroidx/profileinstaller/ProfileInstallerInitializer$Result;

    move-result-object p1

    return-object p1
.end method

.method public dependencies()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public installAfterDelay(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroidx/profileinstaller/ProfileInstallerInitializer$Handler28Impl;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    new-instance v1, Ljava/util/Random;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 28
    .line 29
    .line 30
    const/16 v2, 0x3e8

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    new-instance v2, L뎽뒛듔듬돵들듽뎸뒬땜됨뎡돶땋딟둑뒷둬돼땪둑딎된딹득뎹돼들딞땠땟땹듽돷딽땳들뎰땤돸땀듸딄뒷뒐뎹뒙땳됐땥땵딁된돤돷둔들들돳뒻땜땜됩딁됴돠땰땝땣땸땸뎨딝땜땰딨듨뒹뎸두땩땵딌땋딠뎬뒋땸땤땣듌드돨들땨땐뒨딤뒨돰뎠둑될뒾뎻땹땯뒀뎡듌땪땱딄도땪땋땹땨돠땰뒉뒵딟둬딽듌둣둣뎽뒛;

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    invoke-direct {v2, p1, v3}, L뎽뒛듔듬돵들듽뎸뒬땜됨뎡돶땋딟둑뒷둬돼땪둑딎된딹득뎹돼들딞땠땟땹듽돷딽땳들뎰땤돸땀듸딄뒷뒐뎹뒙땳됐땥땵딁된돤돷둔들들돳뒻땜땜됩딁됴돠땰땝땣땸땸뎨딝땜땰딨듨뒹뎸두땩땵딌땋딠뎬뒋땸땤땣듌드돨들땨땐뒨딤뒨돰뎠둑될뒾뎻땹땯뒀뎡듌땪땱딄도땪땋땹땨돠땰뒉뒵딟둬딽듌둣둣뎽뒛;-><init>(Landroid/content/Context;I)V

    .line 45
    .line 46
    .line 47
    add-int/lit16 v1, v1, 0x1388

    .line 48
    .line 49
    int-to-long v3, v1

    .line 50
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method
