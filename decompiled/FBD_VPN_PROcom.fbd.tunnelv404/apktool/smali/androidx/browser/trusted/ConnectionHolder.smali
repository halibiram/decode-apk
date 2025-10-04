.class Landroidx/browser/trusted/ConnectionHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;
    }
.end annotation


# static fields
.field private static final STATE_AWAITING_CONNECTION:I = 0x0

.field private static final STATE_CANCELLED:I = 0x3

.field private static final STATE_CONNECTED:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x2


# instance fields
.field private mCancellationException:Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCloseRunnable:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mCompleters:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/browser/trusted/TrustedWebActivityServiceConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field private mService:Landroidx/browser/trusted/TrustedWebActivityServiceConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mState:I

.field private final mWrapperFactory:Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    new-instance v0, Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;

    invoke-direct {v0}, Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/browser/trusted/ConnectionHolder;-><init>(Ljava/lang/Runnable;Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mState:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mCompleters:Ljava/util/List;

    .line 5
    iput-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mCloseRunnable:Ljava/lang/Runnable;

    .line 6
    iput-object p2, p0, Landroidx/browser/trusted/ConnectionHolder;->mWrapperFactory:Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;

    return-void
.end method

.method private synthetic lambda$getServiceWrapper$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mState:I

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    if-eq v0, p1, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    if-eq v0, p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "Connection state is invalid"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_0
    iget-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mCancellationException:Ljava/lang/Exception;

    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "Service has been disconnected."

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_2
    iget-object v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mService:Landroidx/browser/trusted/TrustedWebActivityServiceConnection;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v0, "ConnectionHolder state is incorrect."

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_4
    iget-object v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mCompleters:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v0, "ConnectionHolder, state = "

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mState:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/browser/trusted/ConnectionHolder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/browser/trusted/ConnectionHolder;->lambda$getServiceWrapper$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancel(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mCompleters:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mCompleters:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mCloseRunnable:Ljava/lang/Runnable;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    iput v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mState:I

    .line 35
    .line 36
    iput-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mCancellationException:Ljava/lang/Exception;

    .line 37
    .line 38
    return-void
.end method

.method public getServiceWrapper()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/browser/trusted/TrustedWebActivityServiceConnection;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/browser/trusted/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/browser/trusted/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Landroidx/browser/trusted/ConnectionHolder;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mWrapperFactory:Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/browser/trusted/ConnectionHolder$WrapperFactory;->create(Landroid/content/ComponentName;Landroid/os/IBinder;)Landroidx/browser/trusted/TrustedWebActivityServiceConnection;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mService:Landroidx/browser/trusted/TrustedWebActivityServiceConnection;

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mCompleters:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/browser/trusted/ConnectionHolder;->mService:Landroidx/browser/trusted/TrustedWebActivityServiceConnection;

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mCompleters:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mState:I

    .line 40
    .line 41
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mService:Landroidx/browser/trusted/TrustedWebActivityServiceConnection;

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mCloseRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    iput p1, p0, Landroidx/browser/trusted/ConnectionHolder;->mState:I

    .line 11
    .line 12
    return-void
.end method
