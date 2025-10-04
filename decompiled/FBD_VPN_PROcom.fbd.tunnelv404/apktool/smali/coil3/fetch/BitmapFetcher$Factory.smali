.class public final Lcoil3/fetch/BitmapFetcher$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/fetch/Fetcher$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/fetch/BitmapFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil3/fetch/Fetcher$Factory<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcoil3/fetch/BitmapFetcher$Factory;",
        "Lcoil3/fetch/Fetcher$Factory;",
        "Landroid/graphics/Bitmap;",
        "<init>",
        "()V",
        "create",
        "Lcoil3/fetch/Fetcher;",
        "data",
        "options",
        "Lcoil3/request/Options;",
        "imageLoader",
        "Lcoil3/ImageLoader;",
        "coil-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create(Landroid/graphics/Bitmap;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/fetch/Fetcher;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/request/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil3/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p3, Lcoil3/fetch/BitmapFetcher;

    invoke-direct {p3, p1, p2}, Lcoil3/fetch/BitmapFetcher;-><init>(Landroid/graphics/Bitmap;Lcoil3/request/Options;)V

    return-object p3
.end method

.method public bridge synthetic create(Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/fetch/Fetcher;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcoil3/fetch/BitmapFetcher$Factory;->create(Landroid/graphics/Bitmap;Lcoil3/request/Options;Lcoil3/ImageLoader;)Lcoil3/fetch/Fetcher;

    move-result-object p1

    return-object p1
.end method
