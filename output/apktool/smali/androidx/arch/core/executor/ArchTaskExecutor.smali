.class public Landroidx/arch/core/executor/ArchTaskExecutor;
.super Landroidx/arch/core/executor/TaskExecutor;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sIOThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static volatile sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final mDefaultTaskExecutor:Landroidx/arch/core/executor/TaskExecutor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mDelegate:Landroidx/arch/core/executor/TaskExecutor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, L뎻듟땨뒝땄딃됩따땣땮돷뒛둬든뒨뎻땯딄돰뒉땡돠딤딨땠돸땋돳땋뎨땠딎됨둔땸딻딄땡돠듐둑딨뒼드딅된둬뒋딄듨뒀됩돳뎠듌뒬땝뎠딽땦돸돸땵땜땋땧둬돷돼돛딻돤뒙뒷돰딤듻뒷돳땬뒀땸땠둡돵돛듟땰듻뒾땮딄땦뒼뒼땲딟듨돷돛땅딤뒛땄돝뒋됴뒉땋드뒐돨뒋딎땧드듨둔땀땁땟됴돛둡땁딀뒐돳땧땅;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, L뎻듟땨뒝땄딃됩따땣땮돷뒛둬든뒨뎻땯딄돰뒉땡돠딤딨땠돸땋돳땋뎨땠딎됨둔땸딻딄땡돠듐둑딨뒼드딅된둬뒋딄듨뒀됩돳뎠듌뒬땝뎠딽땦돸돸땵땜땋땧둬돷돼돛딻돤뒙뒷돰딤듻뒷돳땬뒀땸땠둡돵돛듟땰듻뒾땮딄땦뒼뒼땲딟듨돷돛땅딤뒛땄돝뒋됴뒉땋드뒐돨뒋딎땧드듨둔땀땁땟됴돛둡땁딀뒐돳땧땅;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v0, L뎻듟땨뒝땄딃됩따땣땮돷뒛둬든뒨뎻땯딄돰뒉땡돠딤딨땠돸땋돳땋뎨땠딎됨둔땸딻딄땡돠듐둑딨뒼드딅된둬뒋딄듨뒀됩돳뎠듌뒬땝뎠딽땦돸돸땵땜땋땧둬돷돼돛딻돤뒙뒷돰딤듻뒷돳땬뒀땸땠둡돵돛듟땰듻뒾땮딄땦뒼뒼땲딟듨돷돛땅딤뒛땄돝뒋됴뒉땋드뒐돨뒋딎땧드듨둔땀땁땟됴돛둡땁딀뒐돳땧땅;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, L뎻듟땨뒝땄딃됩따땣땮돷뒛둬든뒨뎻땯딄돰뒉땡돠딤딨땠돸땋돳땋뎨땠딎됨둔땸딻딄땡돠듐둑딨뒼드딅된둬뒋딄듨뒀됩돳뎠듌뒬땝뎠딽땦돸돸땵땜땋땧둬돷돼돛딻돤뒙뒷돰딤듻뒷돳땬뒀땸땠둡돵돛듟땰듻뒾땮딄땦뒼뒼땲딟듨돷돛땅딤뒛땄돝뒋됴뒉땋드뒐돨뒋딎땧드듨둔땀땁땟됴돛둡땁딀뒐돳땧땅;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sIOThreadExecutor:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/arch/core/executor/TaskExecutor;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/arch/core/executor/DefaultTaskExecutor;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/arch/core/executor/DefaultTaskExecutor;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Landroidx/arch/core/executor/TaskExecutor;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    .line 12
    .line 13
    return-void
.end method

.method public static getIOThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sIOThreadExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-class v0, Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 16
    .line 17
    invoke-direct {v1}, Landroidx/arch/core/executor/ArchTaskExecutor;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v1, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 27
    .line 28
    return-object v0

    .line 29
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v1
.end method

.method public static getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroidx/arch/core/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$static$1(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroidx/arch/core/executor/ArchTaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/arch/core/executor/ArchTaskExecutor;->lambda$static$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/arch/core/executor/ArchTaskExecutor;->lambda$static$1(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/arch/core/executor/TaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isMainThread()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/arch/core/executor/TaskExecutor;->isMainThread()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/arch/core/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDelegate(Landroidx/arch/core/executor/TaskExecutor;)V
    .locals 0
    .param p1    # Landroidx/arch/core/executor/TaskExecutor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Landroidx/arch/core/executor/TaskExecutor;

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    .line 6
    .line 7
    return-void
.end method
