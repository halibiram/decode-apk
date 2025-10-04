.class Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/InstrumentationActivityInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityResultWaiter"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "androidx.test.core.app.InstrumentationActivityInvoker$ActivityResultWaiter"


# instance fields
.field private activityResult:Landroid/app/Instrumentation$ActivityResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    new-instance v0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;-><init>(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Landroid/content/IntentFilter;

    .line 18
    .line 19
    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_RECEIVED"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.CANCEL_ACTIVITY_RESULT_WAITER"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0, v1}, Landroidx/test/core/app/InstrumentationActivityInvoker;->access$000(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static synthetic access$202(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;Landroid/app/Instrumentation$ActivityResult;)Landroid/app/Instrumentation$ActivityResult;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->activityResult:Landroid/app/Instrumentation$ActivityResult;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$300(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getActivityResult()Landroid/app/Instrumentation$ActivityResult;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-static {}, Landroidx/test/internal/platform/app/ActivityLifecycleTimeout;->getMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->activityResult:Landroid/app/Instrumentation$ActivityResult;

    .line 13
    .line 14
    invoke-static {}, Landroidx/test/internal/platform/app/ActivityLifecycleTimeout;->getMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v1, v2, v3

    .line 27
    .line 28
    const-string v1, "onActivityResult never be called after %d milliseconds"

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->activityResult:Landroid/app/Instrumentation$ActivityResult;

    .line 34
    .line 35
    return-object v0
.end method
