.class public final Lcom/v2ray/ang/receiver/TaskerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/v2ray/ang/receiver/TaskerReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    const/4 v1, 0x0

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v4, 0x7

    .line 26
    new-array v4, v4, [J

    .line 27
    .line 28
    fill-array-data v4, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object p2, v1

    .line 44
    :goto_0
    if-eqz p2, :cond_1

    .line 45
    .line 46
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v4, 0x5

    .line 49
    new-array v4, v4, [J

    .line 50
    .line 51
    fill-array-data v4, :array_2

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move-object v3, v1

    .line 71
    :goto_1
    if-eqz p2, :cond_2

    .line 72
    .line 73
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v4, 0x4

    .line 76
    new-array v4, v4, [J

    .line 77
    .line 78
    fill-array-data v4, :array_3

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :cond_2
    if-nez v1, :cond_3

    .line 93
    .line 94
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    new-array v1, v1, [J

    .line 98
    .line 99
    const-wide v4, 0x36ec2a6975f47259L    # 3.9468512504805065E-44

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    aput-wide v4, v1, v0

    .line 105
    .line 106
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    :cond_3
    if-eqz v3, :cond_7

    .line 114
    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-eqz p2, :cond_4

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_6

    .line 127
    .line 128
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v0, v2, [J

    .line 131
    .line 132
    fill-array-data v0, :array_4

    .line 133
    .line 134
    .line 135
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_5

    .line 147
    .line 148
    sget-object p2, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Lcom/v2ray/ang/service/V2RayServiceManager;->startVServiceFromToggle(Landroid/content/Context;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    invoke-static {p1, v1}, Lcom/v2ray/ang/service/V2RayServiceManager;->startVService(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_6
    invoke-static {p1}, Lcom/v2ray/ang/service/V2RayServiceManager;->stopVService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    const/4 p2, 0x3

    .line 165
    new-array p2, p2, [J

    .line 166
    .line 167
    fill-array-data p2, :array_5

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    const/4 p2, 0x6

    .line 179
    new-array p2, p2, [J

    .line 180
    .line 181
    fill-array-data p2, :array_6

    .line 182
    .line 183
    .line 184
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    :cond_7
    :goto_2
    return-void

    .line 191
    :array_0
    .array-data 8
        -0x51bd0ff944bdc3a5L    # -7.615812545151368E-86
        -0x1fcce6ddd4cc7938L    # -2.5606469739217037E155
    .end array-data

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
    .line 202
    .line 203
    :array_1
    .array-data 8
        -0x7ce8bc1219ddcc9bL    # -9.106967958908414E-294
        0x171421a10f7c1736L
        -0x6cf8836d652fc27fL
        0x6d4933ec39e97bb4L    # 2.7802001847816015E218
        -0xb37d3cf26f01e27L
        -0x50655e2302f69b67L    # -2.246101993254354E-79
        -0x1b803f98749961fbL    # -1.2565009631926102E176
    .end array-data

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
    :array_2
    .array-data 8
        -0x7bdcce24a72f4215L    # -9.84819637220568E-289
        0x6da6871054f3e9b6L    # 1.5904559239693352E220
        -0x58ca69e9ff314343L    # -8.359482722673841E-120
        -0x394049845c57d69dL    # -6.432124877960355E32
        0x2ce061c3ff0aebfbL    # 1.570708263623557E-92
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
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
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_3
    .array-data 8
        -0x6ff7fa68585681cbL
        0x7d1198fad53b6bd8L    # 2.809756347106291E294
        -0x308db36bf0fe78cL    # -9.238224232657503E293
        -0x494ff284e2ebb60aL    # -2.8118209432657353E-45
    .end array-data

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
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_4
    .array-data 8
        -0x51aaf5a208e79968L    # -1.6922994748690385E-85
        -0x28b47359f2906cdcL    # -3.3126891316575366E112
    .end array-data

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
    :array_5
    .array-data 8
        0x7878bb80670d2618L    # 2.090561034122744E272
        -0x31a7447dc96583b7L    # -2.667142740784496E69
        0x19e511b0c7d17c3dL    # 6.198101997479155E-184
    .end array-data

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
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :array_6
    .array-data 8
        -0x3dccee0003d02ef4L    # -8.190636753581659E10
        -0x401183c6a8f4e374L    # -0.9526640605989924
        -0x6caab30f3e8b5365L
        -0x37ea0486cefc97ceL    # -1.8700487985774016E39
        0x4046cbd3361b4d4dL    # 45.592383158999475
        0x59e5c9d2466ef6beL
    .end array-data
.end method
