.class public final Lcom/v2ray/ang/handler/SpeedtestManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000bJ\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u0013\u001a\u00020\u0014J\"\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u001a\u001a\u00020\u000bR\"\u0010\u0004\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/v2ray/ang/handler/SpeedtestManager;",
        "",
        "<init>",
        "()V",
        "tcpTestingSockets",
        "Ljava/util/ArrayList;",
        "Ljava/net/Socket;",
        "Lkotlin/collections/ArrayList;",
        "tcping",
        "",
        "url",
        "",
        "port",
        "",
        "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "realPing",
        "config",
        "ping",
        "socketConnectTime",
        "closeAllTcpSockets",
        "",
        "testConnection",
        "Lkotlin/Pair;",
        "context",
        "Landroid/content/Context;",
        "getRemoteIPInfo",
        "getLibVersion",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSpeedtestManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpeedtestManager.kt\ncom/v2ray/ang/handler/SpeedtestManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,190:1\n1#2:191\n739#3,9:192\n1869#3,2:205\n37#4:201\n36#4,3:202\n*S KotlinDebug\n*F\n+ 1 SpeedtestManager.kt\ncom/v2ray/ang/handler/SpeedtestManager\n*L\n75#1:192,9\n122#1:205,2\n75#1:201\n75#1:202,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/v2ray/ang/handler/SpeedtestManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final tcpTestingSockets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/v2ray/ang/handler/SpeedtestManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/v2ray/ang/handler/SpeedtestManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/v2ray/ang/handler/SpeedtestManager;->INSTANCE:Lcom/v2ray/ang/handler/SpeedtestManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/v2ray/ang/handler/SpeedtestManager;->tcpTestingSockets:Ljava/util/ArrayList;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final closeAllTcpSockets()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/v2ray/ang/handler/SpeedtestManager;->tcpTestingSockets:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/net/Socket;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    sget-object v0, Lcom/v2ray/ang/handler/SpeedtestManager;->tcpTestingSockets:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit p0

    .line 36
    throw v0
.end method

.method public final getLibVersion()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Llibv2ray/Libv2ray;->checkVersionX()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        0x72e92601d519ac93L    # 3.4342979718301435E245
        0x74f38893fdb2af94L    # 2.2913772072437845E255
        0x5d412249d57352f8L    # 1.632319628634249E141
        -0x4f52a293bd80dd87L    # -3.246086558750536E-74
    .end array-data
.end method

.method public final getRemoteIPInfo()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/SettingsManager;->getHttpPort()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/v2ray/ang/util/HttpUtil;->INSTANCE:Lcom/v2ray/ang/util/HttpUtil;

    .line 8
    .line 9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v3, 0x6

    .line 12
    new-array v3, v3, [J

    .line 13
    .line 14
    fill-array-data v3, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/16 v3, 0x1388

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3, v0}, Lcom/v2ray/ang/util/HttpUtil;->getUrlContent(Ljava/lang/String;II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    sget-object v2, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 35
    .line 36
    const-class v3, Lcom/v2ray/ang/dto/IPAPIInfo;

    .line 37
    .line 38
    invoke-virtual {v2, v0, v3}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/v2ray/ang/dto/IPAPIInfo;

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/IPAPIInfo;->getIp()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/IPAPIInfo;->getClientIp()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/IPAPIInfo;->getIp_addr()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/IPAPIInfo;->getQuery()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :cond_2
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/IPAPIInfo;->getCountry_code()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/IPAPIInfo;->getCountry()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/IPAPIInfo;->getCountryCode()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :cond_3
    if-nez v2, :cond_4

    .line 86
    .line 87
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    const/4 v2, 0x2

    .line 90
    new-array v2, v2, [J

    .line 91
    .line 92
    fill-array-data v2, :array_1

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v3, "("

    .line 105
    .line 106
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, ") "

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :array_0
    .array-data 8
        0x2c426daeee1ebedaL    # 1.7255208166013594E-95
        -0x5319c814bf08843dL    # -2.130319656218839E-92
        -0x2056dc22a13b7cb1L    # -6.583468484999597E152
        -0x2a6ef267d33648bfL    # -1.5277839341735246E104
        -0x1d81ea0eb35a08b6L
        -0x3ef0bc6fcfe83cb2L    # -256114.02348282415
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_1
    .array-data 8
        -0x4e2d7210aab51820L
        -0x1fe6c79e377481bfL    # -8.453704035819716E154
    .end array-data
.end method

.method public final ping(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "/system/bin/ping -c 3 "

    .line 3
    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v4, v3, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    new-array v2, v2, [J

    .line 50
    .line 51
    fill-array-data v2, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 65
    .line 66
    new-instance v2, Ljava/io/InputStreamReader;

    .line 67
    .line 68
    invoke-direct {v2, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Ljava/io/BufferedReader;

    .line 72
    .line 73
    const/16 v1, 0x2000

    .line 74
    .line 75
    invoke-direct {p1, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    :try_start_1
    invoke-static {p1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    const/4 v2, 0x0

    .line 83
    :try_start_2
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_2

    .line 91
    .line 92
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v2, v0, [J

    .line 95
    .line 96
    fill-array-data v2, :array_2

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const/4 v8, 0x6

    .line 107
    const/4 v9, 0x0

    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v7, 0x0

    .line 110
    move-object v4, v1

    .line 111
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    add-int/lit8 p1, p1, 0x13

    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v2, v0, [J

    .line 124
    .line 125
    fill-array-data v2, :array_3

    .line 126
    .line 127
    .line 128
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v1, Lkotlin/text/Regex;

    .line 139
    .line 140
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v4, v3, [J

    .line 143
    .line 144
    fill-array-data v4, :array_4

    .line 145
    .line 146
    .line 147
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const/4 v2, 0x0

    .line 158
    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_1

    .line 167
    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eqz v4, :cond_1

    .line 181
    .line 182
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, Ljava/lang/String;

    .line 187
    .line 188
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-nez v4, :cond_0

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 196
    .line 197
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 202
    .line 203
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    goto :goto_1

    .line 208
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    :goto_1
    check-cast p1, Ljava/util/Collection;

    .line 213
    .line 214
    new-array v1, v2, [Ljava/lang/String;

    .line 215
    .line 216
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, [Ljava/lang/String;

    .line 221
    .line 222
    array-length v1, p1

    .line 223
    if-lez v1, :cond_2

    .line 224
    .line 225
    aget-object v1, p1, v2

    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    const/16 v4, 0xa

    .line 232
    .line 233
    if-ge v1, v4, :cond_2

    .line 234
    .line 235
    aget-object p1, p1, v2

    .line 236
    .line 237
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    float-to-int p1, p1

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string p1, "ms"

    .line 251
    .line 252
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 259
    return-object p1

    .line 260
    :catchall_0
    move-exception v1

    .line 261
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 262
    :catchall_1
    move-exception v2

    .line 263
    :try_start_4
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 267
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 268
    .line 269
    new-array v0, v0, [J

    .line 270
    .line 271
    fill-array-data v0, :array_5

    .line 272
    .line 273
    .line 274
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 281
    .line 282
    new-array v0, v3, [J

    .line 283
    .line 284
    fill-array-data v0, :array_6

    .line 285
    .line 286
    .line 287
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    return-object p1

    .line 295
    :array_0
    .array-data 8
        -0x72576e2aa398abbcL    # -7.1966882108521E-243
        0x6325e35759cb45baL    # 4.130234217715966E169
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :array_1
    .array-data 8
        -0x6ffc00289de8e08aL    # -1.610237292520843E-231
        -0x51d0686ab99dcffbL    # -3.1762161097501087E-86
        -0x21f615a576b6543aL    # -1.0112687457080609E145
        -0x2b698b321879a661L    # -3.069842871707929E99
    .end array-data

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :array_2
    .array-data 8
        -0xe12a301ef3dceffL    # -6.118580823145588E240
        -0x69179692dc8f24ddL    # -2.551367699834352E-198
        -0x4168500094f5ff1L    # -7.75984886620372E288
    .end array-data

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :array_3
    .array-data 8
        -0x2c0d40c01b53a8L
        0x38afd07b63f83e29L    # 1.1967240718145761E-35
        -0x665819dd74640b70L
    .end array-data

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :array_4
    .array-data 8
        -0x66af12065ea4f416L    # -9.72722911513747E-187
        0x106eab2affaa24aaL
    .end array-data

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    :array_5
    .array-data 8
        0x4eeb71b31940a07eL    # 1.5152998930015749E72
        0x564fbcb44329b8d0L    # 5.8231242884231266E107
        -0x4a7db9e56f850ef2L    # -6.10521028263521E-51
    .end array-data

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_6
    .array-data 8
        0x17a77c7c65045107L
        -0x2aee768cf93c35aL
    .end array-data
.end method

.method public final realPing(Ljava/lang/String;)J
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    sget-object v0, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {v0, v3, v1, v2}, Lcom/v2ray/ang/handler/SettingsManager;->getDelayTestUrl$default(Lcom/v2ray/ang/handler/SettingsManager;ZILjava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Llibv2ray/Libv2ray;->measureOutboundDelay(Ljava/lang/String;Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [J

    .line 37
    .line 38
    fill-array-data v0, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v0, 0x5

    .line 50
    new-array v0, v0, [J

    .line 51
    .line 52
    fill-array-data v0, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    const-wide/16 v0, -0x1

    .line 62
    .line 63
    :goto_0
    return-wide v0

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        0x118fdb338084ac26L
        0x1b000b23b09b9898L
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x178cc96d7a70425bL    # -1.402543392035836E195
        0x40c158452edc93e7L    # 8880.54049260351
        -0x6ef7d239bc14a847L
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_2
    .array-data 8
        -0x299d2e72c96b8534L    # -1.381130994917629E108
        0x5a703e1a1891f562L    # 4.39798096730187E127
        0x41777ab418448fdL
        -0x745fdcf0d3e4a255L
        0x13458e72c8e1a3daL
    .end array-data
.end method

.method public final socketConnectTime(Ljava/lang/String;I)J
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 23
    .line 24
    .line 25
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    :try_start_1
    sget-object v2, Lcom/v2ray/ang/handler/SpeedtestManager;->tcpTestingSockets:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    .line 31
    :try_start_2
    monitor-exit p0

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 37
    .line 38
    invoke-direct {v5, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    const/16 p1, 0xbb8

    .line 42
    .line 43
    invoke-virtual {v1, v5, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    sub-long/2addr p1, v3

    .line 51
    monitor-enter p0
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 52
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    .line 54
    .line 55
    :try_start_4
    monitor-exit p0

    .line 56
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 57
    .line 58
    .line 59
    return-wide p1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    monitor-exit p0

    .line 64
    throw p1

    .line 65
    :catchall_1
    move-exception p1

    .line 66
    monitor-exit p0

    .line 67
    throw p1
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 68
    :catch_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array p2, v0, [J

    .line 71
    .line 72
    fill-array-data p2, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :goto_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v0, v0, [J

    .line 85
    .line 86
    fill-array-data v0, :array_2

    .line 87
    .line 88
    .line 89
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array p2, v0, [J

    .line 102
    .line 103
    fill-array-data p2, :array_3

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    :goto_1
    const-wide/16 p1, -0x1

    .line 113
    .line 114
    return-wide p1

    .line 115
    :array_0
    .array-data 8
        0x11ed4101122403aeL
        0x7c4999bb1117c2d8L    # 4.989700305139002E290
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_1
    .array-data 8
        -0x66f72f36b0ed5db9L    # -4.45571089351971E-188
        0x32fdbf5e720e1482L    # 4.5195157227043883E-63
        -0x7bc7772957d34a2L    # -2.063878507030784E271
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_2
    .array-data 8
        0x20e5b2663dcb46eaL    # 3.314128250896665E-150
        -0x4b66fd121a21fac9L    # -2.5501137143636356E-55
        -0x1d95a51ad6101ca8L
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 8
        0x6f53428b8bf13f33L    # 1.8250371167711405E228
        -0x1e77683e482ed3b6L    # -6.915055350231466E161
        0x56ea2ce5bed649e6L
    .end array-data
.end method

.method public final tcping(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move-wide v3, v0

    .line 5
    :goto_0
    const/4 v5, 0x2

    .line 6
    if-ge v2, v5, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/handler/SpeedtestManager;->socketConnectTime(Ljava/lang/String;I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v5

    .line 12
    invoke-interface {p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    invoke-static {v7}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    if-nez v7, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    cmp-long v7, v5, v0

    .line 24
    .line 25
    if-eqz v7, :cond_2

    .line 26
    .line 27
    cmp-long v7, v3, v0

    .line 28
    .line 29
    if-eqz v7, :cond_1

    .line 30
    .line 31
    cmp-long v7, v5, v3

    .line 32
    .line 33
    if-gez v7, :cond_2

    .line 34
    .line 35
    :cond_1
    move-wide v3, v5

    .line 36
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    :goto_1
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public final testConnection(Landroid/content/Context;I)Lkotlin/Pair;
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    new-array v3, v3, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lcom/v2ray/ang/util/HttpUtil;->INSTANCE:Lcom/v2ray/ang/util/HttpUtil;

    .line 22
    .line 23
    sget-object v2, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 24
    .line 25
    const/4 v11, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v12, 0x0

    .line 28
    invoke-static {v2, v12, v11, v4}, Lcom/v2ray/ang/handler/SettingsManager;->getDelayTestUrl$default(Lcom/v2ray/ang/handler/SettingsManager;ZILjava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/16 v9, 0x10

    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    const/16 v6, 0x3a98

    .line 36
    .line 37
    const/16 v7, 0x3a98

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    move v5, p2

    .line 41
    invoke-static/range {v3 .. v10}, Lcom/v2ray/ang/util/HttpUtil;->createProxyConnection$default(Lcom/v2ray/ang/util/HttpUtil;Ljava/lang/String;IIIZILjava/lang/Object;)Ljava/net/HttpURLConnection;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-wide/16 v2, -0x1

    .line 46
    .line 47
    if-nez p2, :cond_0

    .line 48
    .line 49
    new-instance p1, Lkotlin/Pair;

    .line 50
    .line 51
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v1, v11, [J

    .line 58
    .line 59
    const-wide v2, -0x49a3d736648dc4a4L    # -7.706957163139338E-47

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    aput-wide v2, v1, v12

    .line 65
    .line 66
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_0
    const v4, 0x7f130083

    .line 78
    .line 79
    .line 80
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    sub-long/2addr v2, v5

    .line 93
    const/16 v5, 0xcc

    .line 94
    .line 95
    if-eq v7, v5, :cond_2

    .line 96
    .line 97
    const/16 v5, 0xc8

    .line 98
    .line 99
    if-ne v7, v5, :cond_1

    .line 100
    .line 101
    invoke-static {p2}, Lcom/v2ray/ang/extension/_ExtKt;->getResponseLength(Ljava/net/URLConnection;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v5

    .line 105
    const-wide/16 v8, 0x0

    .line 106
    .line 107
    cmp-long v10, v5, v8

    .line 108
    .line 109
    if-nez v10, :cond_1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :catch_0
    move-exception v5

    .line 116
    goto :goto_2

    .line 117
    :catch_1
    move-exception v5

    .line 118
    goto :goto_3

    .line 119
    :cond_1
    new-instance v5, Ljava/io/IOException;

    .line 120
    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    new-array v7, v11, [Ljava/lang/Object;

    .line 126
    .line 127
    aput-object v6, v7, v12

    .line 128
    .line 129
    const v6, 0x7f130084

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v5

    .line 140
    :cond_2
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    new-array v6, v11, [Ljava/lang/Object;

    .line 145
    .line 146
    aput-object v5, v6, v12

    .line 147
    .line 148
    const v5, 0x7f130082

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v7, v1, [J

    .line 158
    .line 159
    fill-array-data v7, :array_1

    .line 160
    .line 161
    .line 162
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .line 171
    .line 172
    :goto_1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :goto_2
    :try_start_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    new-array v7, v1, [J

    .line 179
    .line 180
    fill-array-data v7, :array_2

    .line 181
    .line 182
    .line 183
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v0, v0, [J

    .line 192
    .line 193
    fill-array-data v0, :array_3

    .line 194
    .line 195
    .line 196
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    new-array v5, v11, [Ljava/lang/Object;

    .line 207
    .line 208
    aput-object v0, v5, v12

    .line 209
    .line 210
    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 215
    .line 216
    new-array v0, v1, [J

    .line 217
    .line 218
    fill-array-data v0, :array_4

    .line 219
    .line 220
    .line 221
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :goto_3
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 233
    .line 234
    new-array v7, v1, [J

    .line 235
    .line 236
    fill-array-data v7, :array_5

    .line 237
    .line 238
    .line 239
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    new-array v0, v0, [J

    .line 248
    .line 249
    fill-array-data v0, :array_6

    .line 250
    .line 251
    .line 252
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    new-array v5, v11, [Ljava/lang/Object;

    .line 263
    .line 264
    aput-object v0, v5, v12

    .line 265
    .line 266
    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 271
    .line 272
    new-array v0, v1, [J

    .line 273
    .line 274
    fill-array-data v0, :array_7

    .line 275
    .line 276
    .line 277
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    .line 286
    .line 287
    goto :goto_1

    .line 288
    :goto_4
    new-instance p1, Lkotlin/Pair;

    .line 289
    .line 290
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    invoke-direct {p1, p2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    return-object p1

    .line 298
    :goto_5
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    nop

    .line 303
    :array_0
    .array-data 8
        0x3983c82b7a49e0cdL    # 1.219154541020109E-31
        0x28bd41d21c35e57cL
    .end array-data

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    :array_1
    .array-data 8
        -0x2d9f52be7a0cc905L    # -6.635000581869164E88
        -0x4a8b4db240bb7839L    # -3.457304480487949E-51
        -0xf1d78a9463348aL
    .end array-data

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :array_2
    .array-data 8
        0x6ce3f257d54633b7L    # 3.438087507930932E216
        -0x2607394fc19b13c7L    # -2.620545037132188E125
        0x4597c0336a8cc384L    # 1.837627947361385E27
    .end array-data

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :array_3
    .array-data 8
        0x361d26bc42bb612cL    # 4.98653394995783E-48
        -0x7d35de2920181b01L
        0x4401542d7e05a89eL    # 3.9957536511121146E19
        -0x658f88becc1fa3f6L    # -2.480084480651209E-181
        0x3f63fcc577b1b427L    # 0.0024398667133511856
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    :array_4
    .array-data 8
        0x73c59173f79b6f48L    # 4.825694637134162E249
        -0x38fc1cb3a0bc29e9L    # -1.290797476445334E34
        0x4bd6fe6a51997d92L    # 2.255226302649512E57
    .end array-data

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_5
    .array-data 8
        -0x5431a611040bdd74L    # -1.1101170072732595E-97
        0x3c0ccbbf7590a404L
        -0x63c5c0cc697a03afL
    .end array-data

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    :array_6
    .array-data 8
        -0x50db22698bcdcecbL    # -1.3748065179525593E-81
        -0x6ac357e30de96e42L
        -0x6f58aeb00941f80bL
        0x3c171a8365741df3L    # 3.1311172524748275E-19
        0x594e79bca6f615a5L    # 1.5739089232280548E122
    .end array-data

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :array_7
    .array-data 8
        -0x6bdfe797e0617389L    # -9.562097764660212E-212
        -0x3310088a211eec99L    # -4.109473094392655E62
        -0x1964dca2a1f7c3aeL    # -1.845004675328942E186
    .end array-data
.end method
