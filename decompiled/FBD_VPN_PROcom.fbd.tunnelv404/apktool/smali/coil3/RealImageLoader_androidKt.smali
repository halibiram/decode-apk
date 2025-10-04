.class public final Lcoil3/RealImageLoader_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a%\u0010\t\u001a\u00020\u00082\u0006\u0010\u0001\u001a\u00020\u00002\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001a8\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\u0008\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a\u001b\u0010\u0018\u001a\u00020\u0015*\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0016H\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcoil3/request/ImageRequest;",
        "request",
        "",
        "needsExecuteOnMainDispatcher",
        "(Lcoil3/request/ImageRequest;)Z",
        "Lkotlinx/coroutines/Deferred;",
        "Lcoil3/request/ImageResult;",
        "job",
        "Lcoil3/request/Disposable;",
        "getDisposable",
        "(Lcoil3/request/ImageRequest;Lkotlinx/coroutines/Deferred;)Lcoil3/request/Disposable;",
        "result",
        "Lcoil3/target/Target;",
        "target",
        "Lcoil3/EventListener;",
        "eventListener",
        "Lkotlin/Function0;",
        "",
        "setDrawable",
        "transition",
        "(Lcoil3/request/ImageResult;Lcoil3/target/Target;Lcoil3/EventListener;Lkotlin/jvm/functions/Function0;)V",
        "Lcoil3/ComponentRegistry$Builder;",
        "Lcoil3/RealImageLoader$Options;",
        "options",
        "addAndroidComponents",
        "(Lcoil3/ComponentRegistry$Builder;Lcoil3/RealImageLoader$Options;)Lcoil3/ComponentRegistry$Builder;",
        "coil-core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRealImageLoader.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealImageLoader.android.kt\ncoil3/RealImageLoader_androidKt\n+ 2 ComponentRegistry.kt\ncoil3/ComponentRegistry$Builder\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n149#2:116\n149#2:117\n157#2:118\n165#2:119\n165#2:120\n165#2:121\n165#2:122\n165#2:123\n1#3:124\n*S KotlinDebug\n*F\n+ 1 RealImageLoader.android.kt\ncoil3/RealImageLoader_androidKt\n*L\n77#1:116\n78#1:117\n81#1:118\n84#1:119\n85#1:120\n86#1:121\n87#1:122\n88#1:123\n*E\n"
    }
.end annotation


# direct methods
.method public static final addAndroidComponents(Lcoil3/ComponentRegistry$Builder;Lcoil3/RealImageLoader$Options;)Lcoil3/ComponentRegistry$Builder;
    .locals 4
    .param p0    # Lcoil3/ComponentRegistry$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcoil3/RealImageLoader$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcoil3/map/AndroidUriMapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcoil3/map/AndroidUriMapper;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Landroid/net/Uri;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v0, v1}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/map/Mapper;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcoil3/map/ResourceIntMapper;

    .line 16
    .line 17
    invoke-direct {v0}, Lcoil3/map/ResourceIntMapper;-><init>()V

    .line 18
    .line 19
    .line 20
    const-class v1, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v0, v1}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/map/Mapper;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcoil3/key/AndroidResourceUriKeyer;

    .line 30
    .line 31
    invoke-direct {v0}, Lcoil3/key/AndroidResourceUriKeyer;-><init>()V

    .line 32
    .line 33
    .line 34
    const-class v1, Lcoil3/Uri;

    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0, v0, v2}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/key/Keyer;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcoil3/fetch/AssetUriFetcher$Factory;

    .line 44
    .line 45
    invoke-direct {v0}, Lcoil3/fetch/AssetUriFetcher$Factory;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p0, v0, v2}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcoil3/fetch/ContentUriFetcher$Factory;

    .line 56
    .line 57
    invoke-direct {v0}, Lcoil3/fetch/ContentUriFetcher$Factory;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p0, v0, v2}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcoil3/fetch/ResourceUriFetcher$Factory;

    .line 68
    .line 69
    invoke-direct {v0}, Lcoil3/fetch/ResourceUriFetcher$Factory;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p0, v0, v1}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcoil3/fetch/DrawableFetcher$Factory;

    .line 80
    .line 81
    invoke-direct {v0}, Lcoil3/fetch/DrawableFetcher$Factory;-><init>()V

    .line 82
    .line 83
    .line 84
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p0, v0, v1}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 91
    .line 92
    .line 93
    new-instance v0, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 94
    .line 95
    invoke-direct {v0}, Lcoil3/fetch/BitmapFetcher$Factory;-><init>()V

    .line 96
    .line 97
    .line 98
    const-class v1, Landroid/graphics/Bitmap;

    .line 99
    .line 100
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p0, v0, v1}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lcoil3/ImageLoaders_androidKt;->getBitmapFactoryMaxParallelism(Lcoil3/RealImageLoader$Options;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/4 v1, 0x2

    .line 112
    const/4 v2, 0x0

    .line 113
    const/4 v3, 0x0

    .line 114
    invoke-static {v0, v3, v1, v2}, Lkotlinx/coroutines/sync/SemaphoreKt;->Semaphore$default(IIILjava/lang/Object;)Lkotlinx/coroutines/sync/Semaphore;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    .line 120
    const/16 v2, 0x1d

    .line 121
    .line 122
    if-lt v1, v2, :cond_1

    .line 123
    .line 124
    invoke-static {p1}, Lcoil3/ImageLoaders_androidKt;->getImageDecoderEnabled(Lcoil3/RealImageLoader$Options;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_1

    .line 129
    .line 130
    invoke-static {p1}, Lcoil3/ImageLoaders_androidKt;->getBitmapFactoryExifOrientationStrategy(Lcoil3/RealImageLoader$Options;)Lcoil3/decode/ExifOrientationStrategy;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    sget-object v2, Lcoil3/decode/ExifOrientationStrategy;->RESPECT_PERFORMANCE:Lcoil3/decode/ExifOrientationStrategy;

    .line 135
    .line 136
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_0

    .line 141
    .line 142
    sget-object v2, Lcoil3/decode/ExifOrientationStrategy;->RESPECT_ALL:Lcoil3/decode/ExifOrientationStrategy;

    .line 143
    .line 144
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_1

    .line 149
    .line 150
    :cond_0
    new-instance v1, Lcoil3/decode/StaticImageDecoder$Factory;

    .line 151
    .line 152
    invoke-direct {v1, v0}, Lcoil3/decode/StaticImageDecoder$Factory;-><init>(Lkotlinx/coroutines/sync/Semaphore;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v1}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/decode/Decoder$Factory;)Lcoil3/ComponentRegistry$Builder;

    .line 156
    .line 157
    .line 158
    :cond_1
    new-instance v1, Lcoil3/decode/BitmapFactoryDecoder$Factory;

    .line 159
    .line 160
    invoke-static {p1}, Lcoil3/ImageLoaders_androidKt;->getBitmapFactoryExifOrientationStrategy(Lcoil3/RealImageLoader$Options;)Lcoil3/decode/ExifOrientationStrategy;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {v1, v0, p1}, Lcoil3/decode/BitmapFactoryDecoder$Factory;-><init>(Lkotlinx/coroutines/sync/Semaphore;Lcoil3/decode/ExifOrientationStrategy;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v1}, Lcoil3/ComponentRegistry$Builder;->add(Lcoil3/decode/Decoder$Factory;)Lcoil3/ComponentRegistry$Builder;

    .line 168
    .line 169
    .line 170
    return-object p0
.end method

.method public static final getDisposable(Lcoil3/request/ImageRequest;Lkotlinx/coroutines/Deferred;)Lcoil3/request/Disposable;
    .locals 1
    .param p0    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/Deferred;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/request/ImageRequest;",
            "Lkotlinx/coroutines/Deferred<",
            "+",
            "Lcoil3/request/ImageResult;",
            ">;)",
            "Lcoil3/request/Disposable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcoil3/request/ImageRequest;->getTarget()Lcoil3/target/Target;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcoil3/target/ViewTarget;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcoil3/request/ImageRequest;->getTarget()Lcoil3/target/Target;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcoil3/target/ViewTarget;

    .line 14
    .line 15
    invoke-interface {p0}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcoil3/request/ViewTargetRequestManagerKt;->getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Lcoil3/request/ViewTargetRequestManager;->getDisposable(Lkotlinx/coroutines/Deferred;)Lcoil3/request/ViewTargetDisposable;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance p0, Lcoil3/request/OneShotDisposable;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcoil3/request/OneShotDisposable;-><init>(Lkotlinx/coroutines/Deferred;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public static final needsExecuteOnMainDispatcher(Lcoil3/request/ImageRequest;)Z
    .locals 1
    .param p0    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcoil3/request/ImageRequest;->getTarget()Lcoil3/target/Target;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcoil3/target/ViewTarget;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcoil3/request/ImageRequest;->getSizeResolver()Lcoil3/size/SizeResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Lcoil3/size/ViewSizeResolver;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Lcoil3/request/ImageRequests_androidKt;->getLifecycle(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    :goto_1
    return p0
.end method

.method public static final transition(Lcoil3/request/ImageResult;Lcoil3/target/Target;Lcoil3/EventListener;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0    # Lcoil3/request/ImageResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcoil3/target/Target;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcoil3/EventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/request/ImageResult;",
            "Lcoil3/target/Target;",
            "Lcoil3/EventListener;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcoil3/transition/TransitionTarget;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-interface {p0}, Lcoil3/request/ImageResult;->getRequest()Lcoil3/request/ImageRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcoil3/request/ImageRequests_androidKt;->getTransitionFactory(Lcoil3/request/ImageRequest;)Lcoil3/transition/Transition$Factory;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast p1, Lcoil3/transition/TransitionTarget;

    .line 18
    .line 19
    invoke-interface {v0, p1, p0}, Lcoil3/transition/Transition$Factory;->create(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;)Lcoil3/transition/Transition;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    instance-of v0, p1, Lcoil3/transition/NoneTransition;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-interface {p0}, Lcoil3/request/ImageResult;->getRequest()Lcoil3/request/ImageRequest;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p2, p3, p1}, Lcoil3/EventListener;->transitionStart(Lcoil3/request/ImageRequest;Lcoil3/transition/Transition;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Lcoil3/transition/Transition;->transition()V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Lcoil3/request/ImageResult;->getRequest()Lcoil3/request/ImageRequest;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p2, p0, p1}, Lcoil3/EventListener;->transitionEnd(Lcoil3/request/ImageRequest;Lcoil3/transition/Transition;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
