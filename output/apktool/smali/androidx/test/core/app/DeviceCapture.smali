.class public final Landroidx/test/core/app/DeviceCapture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0007\u001a\u0011\u0010\u0002\u001a\u00020\u0003H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u001a\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0008\u0010\u0007\u001a\u00020\u0006H\u0007\u001a!\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0001H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "canTakeScreenshot",
        "",
        "forceRedrawGlobalWindowViews",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "takeScreenshot",
        "Landroid/graphics/Bitmap;",
        "takeScreenshotNoSync",
        "takeScreenshotOnNextFrame",
        "uiAutomation",
        "Landroid/app/UiAutomation;",
        "hardwareDrawingEnabled",
        "(Landroid/app/UiAutomation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "core_java_androidx_test_core-core_internal_kt"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "DeviceCapture"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeviceCapture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceCapture.kt\nandroidx/test/core/app/DeviceCapture\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,160:1\n314#2,11:161\n*S KotlinDebug\n*F\n+ 1 DeviceCapture.kt\nandroidx/test/core/app/DeviceCapture\n*L\n138#1:161,11\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic access$forceRedrawGlobalWindowViews(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/test/core/app/DeviceCapture;->forceRedrawGlobalWindowViews(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$takeScreenshotOnNextFrame(Landroid/app/UiAutomation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/test/core/app/DeviceCapture;->takeScreenshotOnNextFrame(Landroid/app/UiAutomation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final canTakeScreenshot()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method private static final forceRedrawGlobalWindowViews(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Ljava/util/Iterator;

    .line 41
    .line 42
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroidx/test/platform/view/inspector/WindowInspectorCompat;->getGlobalWindowViews()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    move-object v2, p0

    .line 69
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Landroid/view/View;

    .line 80
    .line 81
    const-string v4, "view"

    .line 82
    .line 83
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput-object v2, v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    iput v3, v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->label:I

    .line 89
    .line 90
    invoke-static {p0, v0}, Landroidx/test/core/view/ViewCapture;->forceRedraw(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    if-ne p0, v1, :cond_3

    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p0
.end method

.method public static final takeScreenshot()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/test/core/app/DeviceCapture;->takeScreenshotNoSync()Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static final takeScreenshotNoSync()Landroid/graphics/Bitmap;
    .locals 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/core/app/DeviceCapture;->canTakeScreenshot()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkState(Z)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    .line 15
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroidx/test/core/internal/os/HandlerExecutor;

    .line 19
    .line 20
    new-instance v1, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroidx/test/core/internal/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-static {}, Landroidx/test/platform/graphics/HardwareRendererCompat;->isDrawingEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-static {v1}, Landroidx/test/platform/graphics/HardwareRendererCompat;->setDrawingEnabled(Z)V

    .line 52
    .line 53
    .line 54
    new-instance v7, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    move-object v1, v7

    .line 58
    invoke-direct/range {v1 .. v6}, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/UiAutomation;ZLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v7}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/graphics/Bitmap;

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 69
    .line 70
    const-string v1, "uiautomation is null"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method private static final takeScreenshotOnNextFrame(Landroid/app/UiAutomation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/UiAutomation;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;

    .line 19
    .line 20
    invoke-direct {v2, p0, p1, v0}, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;-><init>(Landroid/app/UiAutomation;ZLkotlinx/coroutines/CancellableContinuation;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-ne p0, p1, :cond_0

    .line 35
    .line 36
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-object p0
.end method
