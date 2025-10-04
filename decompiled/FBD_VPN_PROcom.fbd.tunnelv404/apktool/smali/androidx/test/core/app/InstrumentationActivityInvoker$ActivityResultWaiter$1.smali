.class Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;


# direct methods
.method public constructor <init>(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_RECEIVED"

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const-string p1, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_CODE_KEY"

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const-string v0, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_DATA_KEY"

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/content/Intent;

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    new-instance v0, Landroid/content/Intent;

    .line 34
    .line 35
    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    move-object p2, v0

    .line 39
    :cond_0
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    .line 40
    .line 41
    new-instance v1, Landroid/app/Instrumentation$ActivityResult;

    .line 42
    .line 43
    invoke-direct {v1, p1, p2}, Landroid/app/Instrumentation$ActivityResult;-><init>(ILandroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->access$202(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;Landroid/app/Instrumentation$ActivityResult;)Landroid/app/Instrumentation$ActivityResult;

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    .line 50
    .line 51
    invoke-static {p1}, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->access$300(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;)Ljava/util/concurrent/CountDownLatch;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method
