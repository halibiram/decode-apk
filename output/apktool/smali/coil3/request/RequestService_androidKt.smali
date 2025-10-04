.class public final Lcoil3/request/RequestService_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "RequestService",
        "Lcoil3/request/RequestService;",
        "imageLoader",
        "Lcoil3/ImageLoader;",
        "systemCallbacks",
        "Lcoil3/util/SystemCallbacks;",
        "logger",
        "Lcoil3/util/Logger;",
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


# direct methods
.method public static final RequestService(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/util/Logger;)Lcoil3/request/RequestService;
    .locals 1
    .param p0    # Lcoil3/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcoil3/util/SystemCallbacks;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/util/Logger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcoil3/request/AndroidRequestService;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcoil3/request/AndroidRequestService;-><init>(Lcoil3/ImageLoader;Lcoil3/util/SystemCallbacks;Lcoil3/util/Logger;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
