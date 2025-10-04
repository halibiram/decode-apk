.class final Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v2ray/ang/service/V2RayVpnService;->sendFd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.v2ray.ang.service.V2RayVpnService$sendFd$1"
    f = "V2RayVpnService.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $fd:Ljava/io/FileDescriptor;

.field final synthetic $path:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileDescriptor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;->$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;->$fd:Ljava/io/FileDescriptor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;

    iget-object v0, p0, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;->$path:Ljava/lang/String;

    iget-object v1, p0, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;->$fd:Ljava/io/FileDescriptor;

    invoke-direct {p1, v0, v1, p2}, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget v3, p0, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;->label:I

    .line 8
    .line 9
    if-nez v3, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    :goto_0
    const-wide/16 v3, 0x32

    .line 16
    .line 17
    shl-long/2addr v3, p1

    .line 18
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v4, v1, [J

    .line 24
    .line 25
    fill-array-data v4, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    new-instance v3, Landroid/net/LocalSocket;

    .line 35
    .line 36
    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;->$path:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v5, p0, Lcom/v2ray/ang/service/V2RayVpnService$sendFd$1;->$fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    :try_start_1
    new-instance v6, Landroid/net/LocalSocketAddress;

    .line 44
    .line 45
    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    .line 46
    .line 47
    invoke-direct {v6, v4, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 51
    .line 52
    .line 53
    new-array v4, v0, [Ljava/io/FileDescriptor;

    .line 54
    .line 55
    aput-object v5, v4, v2

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/16 v5, 0x2a

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    :try_start_2
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catch_0
    nop

    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception v4

    .line 77
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :catchall_1
    move-exception v5

    .line 79
    :try_start_4
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    :goto_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v4, v1, [J

    .line 86
    .line 87
    fill-array-data v4, :array_1

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    const/4 v3, 0x5

    .line 97
    if-gt p1, v3, :cond_0

    .line 98
    .line 99
    add-int/2addr p1, v0

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    const/4 v1, 0x7

    .line 109
    new-array v1, v1, [J

    .line 110
    .line 111
    fill-array-data v1, :array_2

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :array_0
    .array-data 8
        0x292efc8144ee29faL
        0x3107088195e68f73L    # 1.62954308395756E-72
        0x7f599a7a95abe285L    # 2.809272199774323E305
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
    :array_1
    .array-data 8
        0x2f57462be9af46d8L    # 1.2268012440697171E-80
        0xcf6056c05340472L    # 3.14951827510841E-246
        0x71677a5fa2288f75L    # 1.9110325669781276E238
    .end array-data

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
    .line 154
    .line 155
    .line 156
    .line 157
    :array_2
    .array-data 8
        -0x63abf128fc99f49eL    # -3.243914734744425E-172
        0x39acc4d5c7603068L    # 7.092078201746503E-31
        0x7bd3c7e9ef221dacL    # 3.012050180523362E288
        -0x64a26bb9a0bffdacL
        0x401369564564d9cdL    # 4.852868160515254
        -0x757971293243d809L    # -5.868588332974494E-258
        -0x354f12a54e0565d4L    # -6.33320437278661E51
    .end array-data
.end method
