.class public final Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$Companion;",
        "",
        "Lokhttp3/internal/platform/Platform;",
        "buildIfSupported",
        "()Lokhttp3/internal/platform/Platform;",
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


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final buildIfSupported()Lokhttp3/internal/platform/Platform;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-class v2, Ljavax/net/ssl/SSLSocket;

    .line 4
    .line 5
    const-string v3, "java.specification.version"

    .line 6
    .line 7
    const-string v4, "unknown"

    .line 8
    .line 9
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    :try_start_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    const/16 v5, 0x9

    .line 22
    .line 23
    if-lt v3, v5, :cond_0

    .line 24
    .line 25
    return-object v4

    .line 26
    :catch_0
    :cond_0
    const-string v3, "org.eclipse.jetty.alpn.ALPN"

    .line 27
    .line 28
    :try_start_1
    invoke-static {v3, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v5, "org.eclipse.jetty.alpn.ALPN$Provider"

    .line 33
    .line 34
    invoke-static {v5, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const-string v6, "org.eclipse.jetty.alpn.ALPN$ClientProvider"

    .line 39
    .line 40
    invoke-static {v6, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    const-string v6, "org.eclipse.jetty.alpn.ALPN$ServerProvider"

    .line 45
    .line 46
    invoke-static {v6, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    const-string v6, "put"

    .line 51
    .line 52
    const/4 v7, 0x2

    .line 53
    new-array v7, v7, [Ljava/lang/Class;

    .line 54
    .line 55
    aput-object v2, v7, v0

    .line 56
    .line 57
    aput-object v5, v7, v1

    .line 58
    .line 59
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const-string v5, "get"

    .line 64
    .line 65
    new-array v6, v1, [Ljava/lang/Class;

    .line 66
    .line 67
    aput-object v2, v6, v0

    .line 68
    .line 69
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    const-string v5, "remove"

    .line 74
    .line 75
    new-array v1, v1, [Ljava/lang/Class;

    .line 76
    .line 77
    aput-object v2, v1, v0

    .line 78
    .line 79
    invoke-virtual {v3, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    new-instance v0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;

    .line 84
    .line 85
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    move-object v7, v0

    .line 101
    invoke-direct/range {v7 .. v12}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :catch_1
    return-object v4
.end method
