.class public final Lcom/v2ray/ang/service/SubscriptionUpdater$UpdateTask;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/service/SubscriptionUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateTask"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\r\u001a\u00020\u000eH\u0097@\u00a2\u0006\u0002\u0010\u000fR\u0013\u0010\u0008\u001a\u00070\t\u00a2\u0006\u0002\u0008\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u00070\u000c\u00a2\u0006\u0002\u0008\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/v2ray/ang/service/SubscriptionUpdater$UpdateTask;",
        "Landroidx/work/CoroutineWorker;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "notificationManager",
        "Landroidx/core/app/NotificationManagerCompat;",
        "Lorg/jspecify/annotations/NonNull;",
        "notification",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
        "SMAP\nSubscriptionUpdater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionUpdater.kt\ncom/v2ray/ang/service/SubscriptionUpdater$UpdateTask\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n774#2:68\n865#2,2:69\n*S KotlinDebug\n*F\n+ 1 SubscriptionUpdater.kt\ncom/v2ray/ang/service/SubscriptionUpdater$UpdateTask\n*L\n43#1:68\n43#1:69,2\n*E\n"
    }
.end annotation


# instance fields
.field private final notification:Landroidx/core/app/NotificationCompat$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationManager:Landroidx/core/app/NotificationManagerCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    new-array v2, v1, [J

    .line 22
    .line 23
    fill-array-data v2, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    new-array v3, v2, [J

    .line 51
    .line 52
    fill-array-data v3, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Lcom/v2ray/ang/service/SubscriptionUpdater$UpdateTask;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 66
    .line 67
    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v4, 0x5

    .line 76
    new-array v4, v4, [J

    .line 77
    .line 78
    fill-array-data v4, :array_3

    .line 79
    .line 80
    .line 81
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-direct {p2, v0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v3, 0x0

    .line 92
    .line 93
    invoke-virtual {p2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v3, v1, [J

    .line 100
    .line 101
    fill-array-data v3, :array_4

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    const v0, 0x7f1302c2

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const p2, 0x7f080169

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    new-array v0, v1, [J

    .line 136
    .line 137
    fill-array-data v0, :array_5

    .line 138
    .line 139
    .line 140
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const/4 p2, 0x0

    .line 152
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v0, v2, [J

    .line 159
    .line 160
    fill-array-data v0, :array_6

    .line 161
    .line 162
    .line 163
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iput-object p1, p0, Lcom/v2ray/ang/service/SubscriptionUpdater$UpdateTask;->notification:Landroidx/core/app/NotificationCompat$Builder;

    .line 174
    .line 175
    return-void

    .line 176
    nop

    .line 177
    :array_0
    .array-data 8
        -0x5a12acbbd7f3c164L    # -5.415189737169088E-126
        -0x78899b55047ffdddL
    .end array-data

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
    :array_1
    .array-data 8
        -0xf0c3da40d1f7ddfL    # -1.2565110617869043E236
        -0x5271cde331c9b322L    # -2.964675380120545E-89
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_2
    .array-data 8
        0x52afad5f02851710L    # 2.0164893483569908E90
        0x141323662628e396L    # 5.684940281006911E-212
        -0x19b400055ebdfc32L    # -5.948728110753024E184
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :array_3
    .array-data 8
        0x4704f2633e6fefe0L    # 1.3595267900782915E34
        0x1e30143986d0f45fL    # 2.792167509923532E-163
        0x405ca9992fac454bL    # 114.64997474501904
        0x5576075773d8242dL    # 4.933861610728007E103
        -0x7de15d0168661660L
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_4
    .array-data 8
        0x53659e83764ae5c6L    # 5.6370015796956255E93
        -0x2943b1501dc5721L    # -1.418826498254084E296
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_5
    .array-data 8
        -0x539fa04fe3b5de2fL    # -6.132539461226039E-95
        0x68382ad9f916190L
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_6
    .array-data 8
        -0x766ea8da5ba8a5bL    # -8.481037920674586E272
        -0x4fe715d4aa7f320eL    # -5.379193839669679E-77
        0x501b4d0665abfb57L    # 7.903064503859596E77
    .end array-data
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x5

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    new-array v2, v1, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x6

    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubscriptions()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Iterable;

    .line 37
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    move-object v4, v3

    .line 58
    check-cast v4, Lkotlin/Pair;

    .line 59
    .line 60
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/SubscriptionItem;->getAutoUpdate()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_0

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lkotlin/Pair;

    .line 91
    .line 92
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 97
    .line 98
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    const/16 v5, 0x1a

    .line 101
    .line 102
    if-lt v4, v5, :cond_2

    .line 103
    .line 104
    iget-object v4, p0, Lcom/v2ray/ang/service/SubscriptionUpdater$UpdateTask;->notification:Landroidx/core/app/NotificationCompat$Builder;

    .line 105
    .line 106
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v6, p1, [J

    .line 109
    .line 110
    fill-array-data v6, :array_2

    .line 111
    .line 112
    .line 113
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 121
    .line 122
    .line 123
    invoke-static {}, L땸뒵돵딃땀된될땐땫돰땠땦돨됩딃디따땝뒐뒐땨땻뎠돠돨됩땻됩득뒷땹딸딹땋땹땹된뒬딹뎡딄뒋뒐뎽뎸돳땄땃따뎨듌뒬뒛땅딜뒀듼됩땅딞뎰땥뒀뒨뎬딃됩땬딸뒀돶돠뎠돤돴돳땃든뒙듰뒹땳드뒈땰딐땁둔된둘땋든듌딝땵뎹땵땳딸둡딐땭듻땮뒻딟딞됴도돴딻뎸돰듸돴땬땵땜딸돶듨돠돶땨땣땮따땱땻뒋;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()V

    .line 124
    .line 125
    .line 126
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v5, p1, [J

    .line 129
    .line 130
    fill-array-data v5, :array_3

    .line 131
    .line 132
    .line 133
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v6, p1, [J

    .line 143
    .line 144
    fill-array-data v6, :array_4

    .line 145
    .line 146
    .line 147
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-static {v4, v5}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    iget-object v5, p0, Lcom/v2ray/ang/service/SubscriptionUpdater$UpdateTask;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 159
    .line 160
    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 161
    .line 162
    .line 163
    :cond_2
    iget-object v4, p0, Lcom/v2ray/ang/service/SubscriptionUpdater$UpdateTask;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 164
    .line 165
    iget-object v5, p0, Lcom/v2ray/ang/service/SubscriptionUpdater$UpdateTask;->notification:Landroidx/core/app/NotificationCompat$Builder;

    .line 166
    .line 167
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v4, v1, v5}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 172
    .line 173
    .line 174
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array v5, v1, [J

    .line 177
    .line 178
    fill-array-data v5, :array_5

    .line 179
    .line 180
    .line 181
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/SubscriptionItem;->getRemarks()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    sget-object v4, Lcom/v2ray/ang/handler/AngConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/AngConfigManager;

    .line 191
    .line 192
    new-instance v5, Lkotlin/Pair;

    .line 193
    .line 194
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-direct {v5, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v5}, Lcom/v2ray/ang/handler/AngConfigManager;->updateConfigViaSub(Lkotlin/Pair;)I

    .line 202
    .line 203
    .line 204
    iget-object v2, p0, Lcom/v2ray/ang/service/SubscriptionUpdater$UpdateTask;->notification:Landroidx/core/app/NotificationCompat$Builder;

    .line 205
    .line 206
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/SubscriptionItem;->getRemarks()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v5, "Updating "

    .line 213
    .line 214
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 225
    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_3
    iget-object p1, p0, Lcom/v2ray/ang/service/SubscriptionUpdater$UpdateTask;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 232
    .line 233
    .line 234
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 239
    .line 240
    new-array v1, v1, [J

    .line 241
    .line 242
    fill-array-data v1, :array_6

    .line 243
    .line 244
    .line 245
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    return-object p1

    .line 256
    nop

    .line 257
    :array_0
    .array-data 8
        0x1d517002f2c75d46L    # 1.84819487058299E-167
        0x5f578c0d7726bceeL    # 1.9269698010382944E151
        0x7df87551077ab0f1L    # 6.398253005884965E298
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_1
    .array-data 8
        0x17caa7399daaaad4L    # 4.563967432066343E-194
        -0x5b9b7bf4d99a4eefL    # -2.258084986345808E-133
        -0x3e8bd525e352a640L    # -2.114704179232192E7
        -0xd193712d56ce07L
        0x6bea7304897efc7eL    # 6.956342463846484E211
        -0x7624414131dfa8e2L
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_2
    .array-data 8
        0x11ee2777776120ebL
        -0x7e3644dc2cf5d9daL    # -4.802764105484642E-300
        -0x40bafa655cf92d6aL    # -6.415371954547496E-4
        -0x40bbd9324ab8b49cL    # -6.149773058104877E-4
        -0x43a363fb92df831eL    # -6.203683951012493E-18
    .end array-data

    .line 302
    .line 303
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
    :array_3
    .array-data 8
        0x71064d817903c144L
        0x58fe77ae80f2255fL    # 4.9171696784400105E120
        -0x26117c591bdbb2b2L    # -1.613730977170957E125
        -0x2591f1749c9a4ee0L    # -4.069219647373229E127
        0x367c84e66ee0f6c0L    # 3.1221741148324616E-46
    .end array-data

    .line 326
    .line 327
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
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :array_4
    .array-data 8
        -0x10c7cc0ec7208e57L    # -5.73355703313929E227
        0x62714d63ec5dc997L    # 1.594195618913837E166
        -0x53f1927e36af82b9L    # -1.780661652046522E-96
        0x2299c93c46cb101aL
        0x576c2b55de78c4b1L    # 1.3548902661112409E113
    .end array-data

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
    .line 372
    .line 373
    :array_5
    .array-data 8
        -0x7f093b25348e4429L    # -5.187852857665537E-304
        0x57072bcbe2afea41L    # 1.7413845628562597E111
        -0x42488002d5f85074L    # -2.137308613675247E-11
    .end array-data

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
    .line 388
    .line 389
    :array_6
    .array-data 8
        -0x693abe57270691b6L    # -5.553979566044715E-199
        0x72a23614c3401187L    # 1.5543412045306564E244
        0x382a3a4b4fec4e43L    # 3.8538158633208883E-38
    .end array-data
.end method
