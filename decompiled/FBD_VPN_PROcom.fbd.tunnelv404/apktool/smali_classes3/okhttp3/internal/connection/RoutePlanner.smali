.class public interface abstract Lokhttp3/internal/connection/RoutePlanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/RoutePlanner$ConnectResult;,
        Lokhttp3/internal/connection/RoutePlanner$Plan;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0002\u0014\u0015J\u0014\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH&J\u0008\u0010\u000f\u001a\u00020\u000cH&J\u0008\u0010\u0010\u001a\u00020\u0008H&J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0013H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0016\u00c0\u0006\u0001"
    }
    d2 = {
        "Lokhttp3/internal/connection/RoutePlanner;",
        "",
        "address",
        "Lokhttp3/Address;",
        "getAddress",
        "()Lokhttp3/Address;",
        "deferredPlans",
        "Lkotlin/collections/ArrayDeque;",
        "Lokhttp3/internal/connection/RoutePlanner$Plan;",
        "getDeferredPlans",
        "()Lkotlin/collections/ArrayDeque;",
        "hasNext",
        "",
        "failedConnection",
        "Lokhttp3/internal/connection/RealConnection;",
        "isCanceled",
        "plan",
        "sameHostAndPort",
        "url",
        "Lokhttp3/HttpUrl;",
        "ConnectResult",
        "Plan",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getAddress()Lokhttp3/Address;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getDeferredPlans()Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/ArrayDeque<",
            "Lokhttp3/internal/connection/RoutePlanner$Plan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract hasNext(Lokhttp3/internal/connection/RealConnection;)Z
    .param p1    # Lokhttp3/internal/connection/RealConnection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract plan()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract sameHostAndPort(Lokhttp3/HttpUrl;)Z
    .param p1    # Lokhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
