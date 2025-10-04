.class public final Lcoil3/SingletonImageLoaders_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a<\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0019\u0008\u0002\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0086\u0008\u001a\r\u0010\u000f\u001a\u00020\r*\u00020\u0007H\u0086\u0008\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u0011*\u00020\u00078\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "imageLoader",
        "Lcoil3/ImageLoader;",
        "Landroid/content/Context;",
        "getImageLoader",
        "(Landroid/content/Context;)Lcoil3/ImageLoader;",
        "load",
        "Lcoil3/request/Disposable;",
        "Landroid/widget/ImageView;",
        "data",
        "",
        "builder",
        "Lkotlin/Function1;",
        "Lcoil3/request/ImageRequest$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "dispose",
        "result",
        "Lcoil3/request/ImageResult;",
        "getResult",
        "(Landroid/widget/ImageView;)Lcoil3/request/ImageResult;",
        "coil_release"
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
        "SMAP\nsingletonImageLoaders.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 singletonImageLoaders.android.kt\ncoil3/SingletonImageLoaders_androidKt\n*L\n1#1,60:1\n17#1:61\n*S KotlinDebug\n*F\n+ 1 singletonImageLoaders.android.kt\ncoil3/SingletonImageLoaders_androidKt\n*L\n37#1:61\n*E\n"
    }
.end annotation


# direct methods
.method public static final dispose(Landroid/widget/ImageView;)V
    .locals 0
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcoil3/util/CoilUtils;->dispose(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final getImageLoader(Landroid/content/Context;)Lcoil3/ImageLoader;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcoil3/SingletonImageLoader;->get(Landroid/content/Context;)Lcoil3/ImageLoader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final getResult(Landroid/widget/ImageView;)Lcoil3/request/ImageResult;
    .locals 0
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcoil3/util/CoilUtils;->result(Landroid/view/View;)Lcoil3/request/ImageResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final load(Landroid/widget/ImageView;Ljava/lang/Object;Lcoil3/ImageLoader;Lkotlin/jvm/functions/Function1;)Lcoil3/request/Disposable;
    .locals 2
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcoil3/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Object;",
            "Lcoil3/ImageLoader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil3/request/ImageRequest$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcoil3/request/Disposable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcoil3/request/ImageRequest$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcoil3/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil3/request/ImageRequest$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, p0}, Lcoil3/request/ImageRequests_androidKt;->target(Lcoil3/request/ImageRequest$Builder;Landroid/widget/ImageView;)Lcoil3/request/ImageRequest$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p2, p0}, Lcoil3/ImageLoader;->enqueue(Lcoil3/request/ImageRequest;)Lcoil3/request/Disposable;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic load$default(Landroid/widget/ImageView;Ljava/lang/Object;Lcoil3/ImageLoader;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcoil3/request/Disposable;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p2}, Lcoil3/SingletonImageLoader;->get(Landroid/content/Context;)Lcoil3/ImageLoader;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_1

    .line 16
    .line 17
    sget-object p3, Lcoil3/SingletonImageLoaders_androidKt$load$1;->INSTANCE:Lcoil3/SingletonImageLoaders_androidKt$load$1;

    .line 18
    .line 19
    :cond_1
    new-instance p4, Lcoil3/request/ImageRequest$Builder;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p5

    .line 25
    invoke-direct {p4, p5}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, p1}, Lcoil3/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil3/request/ImageRequest$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1, p0}, Lcoil3/request/ImageRequests_androidKt;->target(Lcoil3/request/ImageRequest$Builder;Landroid/widget/ImageView;)Lcoil3/request/ImageRequest$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p2, p0}, Lcoil3/ImageLoader;->enqueue(Lcoil3/request/ImageRequest;)Lcoil3/request/Disposable;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method
