.class Landroidx/camera/core/SurfaceRequest$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/SurfaceRequest;-><init>(Landroid/util/Size;Landroidx/camera/core/impl/CameraInternal;ZLandroidx/camera/core/DynamicRange;Landroid/util/Range;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/SurfaceRequest;

.field final synthetic val$sessionStatusCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field final synthetic val$surfaceRequestString:Ljava/lang/String;

.field final synthetic val$terminationFuture:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroidx/camera/core/SurfaceRequest;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/core/SurfaceRequest$3;->this$0:Landroidx/camera/core/SurfaceRequest;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/core/SurfaceRequest$3;->val$terminationFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/camera/core/SurfaceRequest$3;->val$sessionStatusCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/camera/core/SurfaceRequest$3;->val$surfaceRequestString:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest$3;->val$sessionStatusCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 6
    .line 7
    new-instance v1, Landroidx/camera/core/SurfaceRequest$RequestCancelledException;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Landroidx/camera/core/SurfaceRequest$3;->val$surfaceRequestString:Ljava/lang/String;

    .line 15
    .line 16
    const-string v4, " cancelled."

    .line 17
    .line 18
    invoke-static {v2, v3, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2, p1}, Landroidx/camera/core/SurfaceRequest$RequestCancelledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Landroidx/camera/core/SurfaceRequest$3;->val$sessionStatusCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public onSuccess(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Landroidx/camera/core/SurfaceRequest$3;->val$terminationFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest$3;->val$sessionStatusCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {p1, v0}, Landroidx/camera/core/impl/utils/futures/Futures;->propagate(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/view/Surface;

    invoke-virtual {p0, p1}, Landroidx/camera/core/SurfaceRequest$3;->onSuccess(Landroid/view/Surface;)V

    return-void
.end method
