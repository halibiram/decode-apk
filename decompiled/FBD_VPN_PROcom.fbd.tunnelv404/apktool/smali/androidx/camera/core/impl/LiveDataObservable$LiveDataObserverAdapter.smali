.class final Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/LiveDataObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveDataObserverAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Landroidx/camera/core/impl/LiveDataObservable$Result<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mObserver:Landroidx/camera/core/impl/Observable$Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Observable$Observer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/Observable$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/camera/core/impl/Observable$Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;->mObserver:Landroidx/camera/core/impl/Observable$Observer;

    .line 15
    .line 16
    return-void
.end method

.method private synthetic lambda$onChanged$0(Landroidx/camera/core/impl/LiveDataObservable$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/impl/LiveDataObservable$Result;->completedSuccessfully()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;->mObserver:Landroidx/camera/core/impl/Observable$Observer;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/camera/core/impl/LiveDataObservable$Result;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Landroidx/camera/core/impl/Observable$Observer;->onNewData(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/impl/LiveDataObservable$Result;->getError()Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;->mObserver:Landroidx/camera/core/impl/Observable$Observer;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/camera/core/impl/LiveDataObservable$Result;->getError()Ljava/lang/Throwable;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {v0, p1}, Landroidx/camera/core/impl/Observable$Observer;->onError(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;Landroidx/camera/core/impl/LiveDataObservable$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;->lambda$onChanged$0(Landroidx/camera/core/impl/LiveDataObservable$Result;)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onChanged(Landroidx/camera/core/impl/LiveDataObservable$Result;)V
    .locals 2
    .param p1    # Landroidx/camera/core/impl/LiveDataObservable$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/LiveDataObservable$Result<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/impl/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/impl/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;Landroidx/camera/core/impl/LiveDataObservable$Result;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroidx/camera/core/impl/LiveDataObservable$Result;

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/LiveDataObservable$LiveDataObserverAdapter;->onChanged(Landroidx/camera/core/impl/LiveDataObservable$Result;)V

    return-void
.end method
