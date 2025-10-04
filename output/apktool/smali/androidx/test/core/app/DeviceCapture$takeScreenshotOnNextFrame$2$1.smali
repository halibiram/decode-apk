.class final Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/core/app/DeviceCapture;->takeScreenshotOnNextFrame(Landroid/app/UiAutomation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "doFrame"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hardwareDrawingEnabled:Z

.field final synthetic $uiAutomation:Landroid/app/UiAutomation;


# direct methods
.method public constructor <init>(Landroid/app/UiAutomation;ZLkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/UiAutomation;",
            "Z",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$uiAutomation:Landroid/app/UiAutomation;

    iput-boolean p2, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$hardwareDrawingEnabled:Z

    iput-object p3, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p2, 0x1

    .line 3
    const/4 v0, 0x1

    .line 4
    :goto_0
    const/4 v1, 0x4

    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$uiAutomation:Landroid/app/UiAutomation;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/UiAutomation;->takeScreenshot()Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    add-int/2addr v0, p2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    iget-boolean p2, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$hardwareDrawingEnabled:Z

    .line 19
    .line 20
    invoke-static {p2}, Landroidx/test/platform/graphics/HardwareRendererCompat;->setDrawingEnabled(Z)V

    .line 21
    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 26
    .line 27
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 28
    .line 29
    new-instance p2, Ljava/lang/RuntimeException;

    .line 30
    .line 31
    const-string v0, "uiAutomation.takeScreenshot returned null"

    .line 32
    .line 33
    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget-object p2, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 49
    .line 50
    sget-object v0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1$1;->INSTANCE:Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1$1;

    .line 51
    .line 52
    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    return-void
.end method
