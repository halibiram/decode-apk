.class public final Lcom/v2ray/ang/service/ProcessService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u0006\u0010\r\u001a\u00020\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/v2ray/ang/service/ProcessService;",
        "",
        "<init>",
        "()V",
        "process",
        "Ljava/lang/Process;",
        "runProcess",
        "",
        "context",
        "Landroid/content/Context;",
        "cmd",
        "",
        "",
        "stopProcess",
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


# instance fields
.field private process:Ljava/lang/Process;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


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

.method public static final synthetic access$getProcess$p(Lcom/v2ray/ang/service/ProcessService;)Ljava/lang/Process;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/v2ray/ang/service/ProcessService;->process:Ljava/lang/Process;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final runProcess(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    new-array v2, v1, [J

    .line 40
    .line 41
    fill-array-data v2, :array_2

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    .line 54
    .line 55
    invoke-direct {v0, p2}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    const/4 p2, 0x1

    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/v2ray/ang/service/ProcessService;->process:Ljava/lang/Process;

    .line 75
    .line 76
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v5, Lcom/v2ray/ang/service/ProcessService$runProcess$1;

    .line 85
    .line 86
    const/4 p1, 0x0

    .line 87
    invoke-direct {v5, p0, p1}, Lcom/v2ray/ang/service/ProcessService$runProcess$1;-><init>(Lcom/v2ray/ang/service/ProcessService;Lkotlin/coroutines/Continuation;)V

    .line 88
    .line 89
    .line 90
    const/4 v6, 0x3

    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v3, 0x0

    .line 93
    const/4 v4, 0x0

    .line 94
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 95
    .line 96
    .line 97
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array p2, v1, [J

    .line 100
    .line 101
    fill-array-data p2, :array_3

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/v2ray/ang/service/ProcessService;->process:Ljava/lang/Process;

    .line 111
    .line 112
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception p1

    .line 117
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v0, v1, [J

    .line 120
    .line 121
    fill-array-data v0, :array_4

    .line 122
    .line 123
    .line 124
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    :goto_0
    return-void

    .line 134
    nop

    .line 135
    :array_0
    .array-data 8
        -0x58767ccf4e8ad949L    # -3.16157929912806E-118
        -0x24cafb28bd99651bL    # -2.3311397457719905E131
    .end array-data

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
    :array_1
    .array-data 8
        -0x45cc2cf655014d8fL    # -2.502186803540123E-28
        -0x69084ad191f3b3e8L
    .end array-data

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
    :array_2
    .array-data 8
        -0x443b5cc115d04b63L    # -8.740396929539082E-21
        0x782dea8b3f45dcebL    # 7.902279056463909E270
        0xa46f723b24534b0L
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_3
    .array-data 8
        0x68f53a817e295564L    # 3.967137622643845E197
        0x17fd8f35417edac1L    # 4.049286452009662E-193
        -0xc3b931b7ab6f86aL    # -4.5699998307673984E249
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_4
    .array-data 8
        -0x2c85b9f750a67cd2L    # -1.3701173084541224E94
        0x2d5eb49c24a30dcaL    # 3.768405162151022E-90
        -0x2a269529289e5764L    # -3.64341473501549E105
    .end array-data
.end method

.method public final stopProcess()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    new-array v2, v0, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    new-array v2, v2, [J

    .line 19
    .line 20
    fill-array-data v2, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/v2ray/ang/service/ProcessService;->process:Ljava/lang/Process;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v0, v0, [J

    .line 40
    .line 41
    fill-array-data v0, :array_2

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 v1, 0x5

    .line 53
    new-array v1, v1, [J

    .line 54
    .line 55
    fill-array-data v1, :array_3

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    :cond_0
    :goto_0
    return-void

    .line 65
    :array_0
    .array-data 8
        -0x62a2b1c925cb8fdcL    # -3.106074855211828E-167
        0x751ae2ef660cd921L    # 1.2615661981700554E256
        0x2b32343f69ee9c03L
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
    .line 78
    .line 79
    .line 80
    .line 81
    :array_1
    .array-data 8
        -0xc4d3ab1515f72d3L    # -2.099895256889374E249
        -0x312b476971345d3cL    # -5.720456508358367E71
        -0x4aa82069977bff29L    # -9.969992357741069E-52
        -0x178f096e08675c64L    # -1.23829491209897E195
    .end array-data

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
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_2
    .array-data 8
        0x1a2e0d13c40cbc3bL    # 1.414466826836223E-182
        -0x56fd406efa562567L    # -3.897926592870566E-111
        -0x3d9d8ce970b97474L    # -6.339221571083608E11
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_3
    .array-data 8
        -0x6cb4da81237cb643L    # -9.843429464403729E-216
        0x762cb124e5247f9dL    # 1.7646013792541764E261
        -0x79aa767330bd28beL    # -3.796779449020633E-278
        0x4e49cf1a409c5e73L    # 1.391618221318717E69
        -0xe81cc1b0d1073cfL    # -4.9167998312611744E238
    .end array-data
.end method
