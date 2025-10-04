.class public final Landroidx/camera/camera2/interop/Camera2CameraControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/camera/camera2/interop/ExperimentalCamera2Interop;
.end annotation


# instance fields
.field private mBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final mExecutor:Ljava/util/concurrent/Executor;

.field private mIsActive:Z

.field final mLock:Ljava/lang/Object;

.field private mPendingUpdate:Z


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Landroidx/camera/camera2/internal/Camera2CameraControlImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mIsActive:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mPendingUpdate:Z

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v0, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 17
    .line 18
    invoke-direct {v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 24
    .line 25
    iput-object p2, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    return-void
.end method

.method private addCaptureRequestOptionsInternal(Landroidx/camera/camera2/interop/CaptureRequestOptions;)V
    .locals 2
    .param p1    # Landroidx/camera/camera2/interop/CaptureRequestOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method private clearCaptureRequestOptionsInternal()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 5
    .line 6
    invoke-direct {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method private completeInFlightUpdate()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private failInFlightUpdate(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 9
    .line 10
    const-string v1, "Camera2CameraControl failed with unknown error."

    .line 11
    .line 12
    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public static from(Landroidx/camera/core/CameraControl;)Landroidx/camera/camera2/interop/Camera2CameraControl;
    .locals 2
    .param p0    # Landroidx/camera/core/CameraControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p0, Landroidx/camera/core/impl/CameraControlInternal;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraControlInternal;->getImplementation()Landroidx/camera/core/impl/CameraControlInternal;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 8
    .line 9
    const-string v1, "CameraControl doesn\'t contain Camera2 implementation."

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    check-cast p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getCamera2CameraControl()Landroidx/camera/camera2/interop/Camera2CameraControl;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private synthetic lambda$addCaptureRequestOptions$2(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->updateConfig(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$addCaptureRequestOptions$3(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L돴듬딜둥듸딃딻둬뒐뎡듰듽땪둑둠땱돰땜땀뎬뎽듌땟딀따땍돸땐땋뒛땣땥돠뎡둔돷든둘득땥됨딌뎬땁된땠딐딠뎡땻돼땜뒤땜뎻둠뒐땣딨딄뒹둥된된땝뎻땻됩딞땣뒝돰뎽땋듔듬땠듼둥두돷디드둘딎뎨뒾돳둘땪둡딤따뒵딨들딸딠돳딀뒀든딁듼돠땩됐땥땬땫딽되뒾땰듻드땯듰땳딀땰땝땤땥뒀드딹딌뎡돴;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, p1, v2}, L돴듬딜둥듸딃딻둬뒐뎡듰듽땪둑둠땱돰땜땀뎬뎽듌땟딀따땍돸땐땋뒛땣땥돠뎡둔돷든둘득땥됨딌뎬땁된땠딐딠뎡땻돼땜뒤땜뎻둠뒐땣딨딄뒹둥된된땝뎻땻됩딞땣뒝돰뎽땋듔듬땠듼둥두돷디드둘딎뎨뒾돳둘땪둡딤따뒵딨들딸딠돳딀뒀든딁듼돠땩됐땥땬땫딽되뒾땰듻드땯듰땳딀땰땝땤땥뒀드딹딌뎡돴;-><init>(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "addCaptureRequestOptions"

    .line 13
    .line 14
    return-object p1
.end method

.method private synthetic lambda$clearCaptureRequestOptions$4(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->updateConfig(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$clearCaptureRequestOptions$5(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L돴듬딜둥듸딃딻둬뒐뎡듰듽땪둑둠땱돰땜땀뎬뎽듌땟딀따땍돸땐땋뒛땣땥돠뎡둔돷든둘득땥됨딌뎬땁된땠딐딠뎡땻돼땜뒤땜뎻둠뒐땣딨딄뒹둥된된땝뎻땻됩딞땣뒝돰뎽땋듔듬땠듼둥두돷디드둘딎뎨뒾돳둘땪둡딤따뒵딨들딸딠돳딀뒀든딁듼돠땩됐땥땬땫딽되뒾땰듻드땯듰땳딀땰땝땤땥뒀드딹딌뎡돴;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, L돴듬딜둥듸딃딻둬뒐뎡듰듽땪둑둠땱돰땜땀뎬뎽듌땟딀따땍돸땐땋뒛땣땥돠뎡둔돷든둘득땥됨딌뎬땁된땠딐딠뎡땻돼땜뒤땜뎻둠뒐땣딨딄뒹둥된된땝뎻땻됩딞땣뒝돰뎽땋듔듬땠듼둥두돷디드둘딎뎨뒾돳둘땪둡딤따뒵딨들딸딠돳딀뒀든딁듼돠땩됐땥땬땫딽되뒾땰듻드땯듰땳딀땰땝땤땥뒀드딹딌뎡돴;-><init>(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "clearCaptureRequestOptions"

    .line 13
    .line 14
    return-object p1
.end method

.method private synthetic lambda$setActive$6(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->setActiveInternal(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setCaptureRequestOptions$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->updateConfig(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setCaptureRequestOptions$1(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L돴듬딜둥듸딃딻둬뒐뎡듰듽땪둑둠땱돰땜땀뎬뎽듌땟딀따땍돸땐땋뒛땣땥돠뎡둔돷든둘득땥됨딌뎬땁된땠딐딠뎡땻돼땜뒤땜뎻둠뒐땣딨딄뒹둥된된땝뎻땻됩딞땣뒝돰뎽땋듔듬땠듼둥두돷디드둘딎뎨뒾돳둘땪둡딤따뒵딨들딸딠돳딀뒀든딁듼돠땩됐땥땬땫딽되뒾땰듻드땯듰땳딀땰땝땤땥뒀드딹딌뎡돴;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, L돴듬딜둥듸딃딻둬뒐뎡듰듽땪둑둠땱돰땜땀뎬뎽듌땟딀따땍돸땐땋뒛땣땥돠뎡둔돷든둘득땥됨딌뎬땁된땠딐딠뎡땻돼땜뒤땜뎻둠뒐땣딨딄뒹둥된된땝뎻땻됩딞땣뒝돰뎽땋듔듬땠듼둥두돷디드둘딎뎨뒾돳둘땪둡딤따뒵딨들딸딠돳딀뒀든딁듼돠땩됐땥땬땫딽되뒾땰듻드땯듰땳딀땰땝땤땥뒀드딹딌뎡돴;-><init>(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "setCaptureRequestOptions"

    .line 13
    .line 14
    return-object p1
.end method

.method private setActiveInternal(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mIsActive:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mIsActive:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mPendingUpdate:Z

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->updateSession()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    .line 19
    .line 20
    const-string v0, "The camera control has became inactive."

    .line 21
    .line 22
    invoke-direct {p1, v0}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->failInFlightUpdate(Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_0
    return-void
.end method

.method private updateConfig(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 2
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mPendingUpdate:Z

    .line 3
    .line 4
    new-instance v0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    .line 5
    .line 6
    const-string v1, "Camera2CameraControl was updated with new options."

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->failInFlightUpdate(Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 15
    .line 16
    iget-boolean p1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mIsActive:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->updateSession()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private updateSession()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->updateSessionConfigAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, v2}, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mPendingUpdate:Z

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->lambda$addCaptureRequestOptions$3(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->lambda$clearCaptureRequestOptions$5(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->lambda$clearCaptureRequestOptions$4(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/camera2/interop/Camera2CameraControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->completeInFlightUpdate()V

    return-void
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/camera2/interop/Camera2CameraControl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->lambda$setActive$6(Z)V

    return-void
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->lambda$setCaptureRequestOptions$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->lambda$setCaptureRequestOptions$1(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->lambda$addCaptureRequestOptions$2(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method


# virtual methods
.method public addCaptureRequestOptions(Landroidx/camera/camera2/interop/CaptureRequestOptions;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1    # Landroidx/camera/camera2/interop/CaptureRequestOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/interop/CaptureRequestOptions;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->addCaptureRequestOptionsInternal(Landroidx/camera/camera2/interop/CaptureRequestOptions;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, L돴듼둔뒛딟돨듼땅땻돛듐땸뒘됫딀딐돳돠뎬딟딝뒉둬듐땠땐된땫땩딅땟뎬뒝딻땹돸듌듬딽뎡둬뒾땳뒛뒝딐딄뒋뒝땰듸따딀둣딻둑딎듰돵땸땁돼땜딨돛듸뎰딄뒀뒻뒬딸뒨뎡뎽딠뒀뒤딜땅돛듔땲뒻뎡땧둣둘뎽듸땭뎡듸두땃땩둣뎨딜둠딁뒝뎬땃딟뒾디땃든땱됐따되땸땲듸딐돵디듸듼돝뎹듰딟딃딀딄땄딅;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, p0, v0}, L돴듼둔뒛딟돨듼땅땻돛듐땸뒘됫딀딐돳돠뎬딟딝뒉둬듐땠땐된땫땩딅땟뎬뒝딻땹돸듌듬딽뎡둬뒾땳뒛뒝딐딄뒋뒝땰듸따딀둣딻둑딎듰돵땸땁돼땜딨돛듸뎰딄뒀뒻뒬딸뒨뎡뎽딠뒀뒤딜땅돛듔땲뒻뎡땧둣둘뎽듸땭뎡듸두땃땩둣뎨딜둠딁뒝뎬땃딟뒾디땃든땱됐따되땸땲듸딐돵디듸듼돝뎹듰딟딃딀딄땄딅;-><init>(Landroidx/camera/camera2/interop/Camera2CameraControl;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public applyOptionsToBuilder(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V
    .locals 3
    .param p1    # Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Landroidx/camera/core/impl/Config$OptionPriority;->ALWAYS_OVERRIDE:Landroidx/camera/core/impl/Config$OptionPriority;

    .line 11
    .line 12
    invoke-virtual {p1, v1, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config$OptionPriority;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method public clearCaptureRequestOptions()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->clearCaptureRequestOptionsInternal()V

    .line 2
    .line 3
    .line 4
    new-instance v0, L돴듼둔뒛딟돨듼땅땻돛듐땸뒘됫딀딐돳돠뎬딟딝뒉둬듐땠땐된땫땩딅땟뎬뒝딻땹돸듌듬딽뎡둬뒾땳뒛뒝딐딄뒋뒝땰듸따딀둣딻둑딎듰돵땸땁돼땜딨돛듸뎰딄뒀뒻뒬딸뒨뎡뎽딠뒀뒤딜땅돛듔땲뒻뎡땧둣둘뎽듸땭뎡듸두땃땩둣뎨딜둠딁뒝뎬땃딟뒾디땃든땱됐따되땸땲듸딐돵디듸듼돝뎹듰딟딃딀딄땄딅;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p0, v1}, L돴듼둔뒛딟돨듼땅땻돛듐땸뒘됫딀딐돳돠뎬딟딝뒉둬듐땠땐된땫땩딅땟뎬뒝딻땹돸듌듬딽뎡둬뒾땳뒛뒝딐딄뒋뒝땰듸따딀둣딻둑딎듰돵땸땁돼땜딨돛듸뎰딄뒀뒻뒬딸뒨뎡뎽딠뒀뒤딜땅돛듔땲뒻뎡땧둣둘뎽듸땭뎡듸두땃땩둣뎨딜둠딁뒝뎬땃딟뒾디땃든땱됐따되땸땲듸딐돵디듸듼돝뎹듰딟딃딀딄땄딅;-><init>(Landroidx/camera/camera2/interop/Camera2CameraControl;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getCamera2ImplConfig()Landroidx/camera/camera2/impl/Camera2ImplConfig;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    monitor-exit v0

    .line 11
    return-object v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public getCaptureRequestOptions()Landroidx/camera/camera2/interop/CaptureRequestOptions;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mBuilder:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->build()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1
.end method

.method public setActive(Z)V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L뎻땐듨따뎠돝땯뒙듻땲딄딨듸득돤듰땪뒝딸둥듐뒵될땮뒝딹뎠뎰딎돛뒐돼땍돸돳땹듸된될둔땦딄듻딄돸뎻땩땣딄땝딐땍딐딟땁됴땡딎됫됐뒉돸뒀뒻뒐땬돷둥디돨둔딐땹뒵땃딟딄딞둣뒘딻뒀뎠듐둑뒹딁뒉된딜딸땐땃땳돤돤뎽뒾딐둔듌뎽딨된뒷뎻됨도도딟뎨뎬뎹딞땥드됴됐딹될땫땱땜뎸듸뒘땩둡돷땮;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2, p0, p1}, L뎻땐듨따뎠돝땯뒙듻땲딄딨듸득돤듰땪뒝딸둥듐뒵될땮뒝딹뎠뎰딎돛뒐돼땍돸돳땹듸된될둔땦딄듻딄돸뎻땩땣딄땝딐땍딐딟땁됴땡딎됫됐뒉돸뒀뒻뒐땬돷둥디돨둔딐땹뒵땃딟딄딞둣뒘딻뒀뎠듐둑뒹딁뒉된딜딸땐땃땳돤돤뎽뒾딐둔듌뎽딨된뒷뎻됨도도딟뎨뎬뎹딞땥드됴됐딹될땫땱땜뎸듸뒘땩둡돷땮;-><init>(ILjava/lang/Object;Z)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setCaptureRequestOptions(Landroidx/camera/camera2/interop/CaptureRequestOptions;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1    # Landroidx/camera/camera2/interop/CaptureRequestOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/interop/CaptureRequestOptions;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->clearCaptureRequestOptionsInternal()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->addCaptureRequestOptionsInternal(Landroidx/camera/camera2/interop/CaptureRequestOptions;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, L돴듼둔뒛딟돨듼땅땻돛듐땸뒘됫딀딐돳돠뎬딟딝뒉둬듐땠땐된땫땩딅땟뎬뒝딻땹돸듌듬딽뎡둬뒾땳뒛뒝딐딄뒋뒝땰듸따딀둣딻둑딎듰돵땸땁돼땜딨돛듸뎰딄뒀뒻뒬딸뒨뎡뎽딠뒀뒤딜땅돛듔땲뒻뎡땧둣둘뎽듸땭뎡듸두땃땩둣뎨딜둠딁뒝뎬땃딟뒾디땃든땱됐따되땸땲듸딐돵디듸듼돝뎹듰딟딃딀딄땄딅;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p1, p0, v0}, L돴듼둔뒛딟돨듼땅땻돛듐땸뒘됫딀딐돳돠뎬딟딝뒉둬듐땠땐된땫땩딅땟뎬뒝딻땹돸듌듬딽뎡둬뒾땳뒛뒝딐딄뒋뒝땰듸따딀둣딻둑딎듰돵땸땁돼땜딨돛듸뎰딄뒀뒻뒬딸뒨뎡뎽딠뒀뒤딜땅돛듔땲뒻뎡땧둣둘뎽듸땭뎡듸두땃땩둣뎨딜둠딁뒝뎬땃딟뒾디땃든땱됐따되땸땲듸딐돵디듸듼돝뎹듰딟딃딀딄땄딅;-><init>(Landroidx/camera/camera2/interop/Camera2CameraControl;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
