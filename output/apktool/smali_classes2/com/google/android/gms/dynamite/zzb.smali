.class public final Lcom/google/android/gms/dynamite/zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Ljava/lang/ClassLoader;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "DynamiteLoaderV2ClassLoader.class"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static zzb:Ljava/lang/Thread;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "DynamiteLoaderV2ClassLoader.class"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static declared-synchronized zza()Ljava/lang/ClassLoader;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const-class v2, Lcom/google/android/gms/dynamite/zzb;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    sget-object v3, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    if-nez v3, :cond_8

    .line 9
    .line 10
    sget-object v3, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_7

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    move-object v3, v4

    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    :cond_0
    const-class v5, Ljava/lang/Void;

    .line 33
    .line 34
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    new-array v7, v6, [Ljava/lang/ThreadGroup;

    .line 40
    .line 41
    invoke-virtual {v3, v7}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;)I

    .line 42
    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v9, 0x0

    .line 46
    :goto_0
    if-ge v9, v6, :cond_2

    .line 47
    .line 48
    aget-object v10, v7, v9

    .line 49
    .line 50
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v12, v1, [J

    .line 53
    .line 54
    fill-array-data v12, :array_0

    .line 55
    .line 56
    .line 57
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-virtual {v10}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    if-eqz v11, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto/16 :goto_8

    .line 80
    .line 81
    :catch_0
    move-exception v1

    .line 82
    goto :goto_4

    .line 83
    :cond_2
    move-object v10, v4

    .line 84
    :goto_1
    if-nez v10, :cond_3

    .line 85
    .line 86
    new-instance v10, Ljava/lang/ThreadGroup;

    .line 87
    .line 88
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v7, v1, [J

    .line 91
    .line 92
    fill-array-data v7, :array_1

    .line 93
    .line 94
    .line 95
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-direct {v10, v3, v6}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-virtual {v10}, Ljava/lang/ThreadGroup;->activeCount()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    new-array v6, v3, [Ljava/lang/Thread;

    .line 110
    .line 111
    invoke-virtual {v10, v6}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    .line 112
    .line 113
    .line 114
    :goto_2
    if-ge v8, v3, :cond_5

    .line 115
    .line 116
    aget-object v7, v6, v8

    .line 117
    .line 118
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v11, v1, [J

    .line 121
    .line 122
    fill-array-data v11, :array_2

    .line 123
    .line 124
    .line 125
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v9
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    if-eqz v9, :cond_4

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    move-object v7, v4

    .line 147
    :goto_3
    if-nez v7, :cond_6

    .line 148
    .line 149
    :try_start_2
    new-instance v3, Lcom/google/android/gms/dynamite/zza;

    .line 150
    .line 151
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    new-array v1, v1, [J

    .line 154
    .line 155
    fill-array-data v1, :array_3

    .line 156
    .line 157
    .line 158
    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-direct {v3, v10, v1}, Lcom/google/android/gms/dynamite/zza;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .line 167
    .line 168
    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    .line 173
    .line 174
    move-object v7, v3

    .line 175
    goto :goto_6

    .line 176
    :catch_1
    move-exception v1

    .line 177
    move-object v7, v3

    .line 178
    goto :goto_5

    .line 179
    :catch_2
    move-exception v1

    .line 180
    goto :goto_5

    .line 181
    :goto_4
    move-object v7, v4

    .line 182
    :goto_5
    :try_start_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    new-array v6, v0, [J

    .line 185
    .line 186
    fill-array-data v6, :array_4

    .line 187
    .line 188
    .line 189
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 199
    .line 200
    const/4 v3, 0x6

    .line 201
    new-array v3, v3, [J

    .line 202
    .line 203
    fill-array-data v3, :array_5

    .line 204
    .line 205
    .line 206
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    :cond_6
    :goto_6
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 213
    move-object v3, v7

    .line 214
    :goto_7
    :try_start_5
    sput-object v3, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 215
    .line 216
    if-nez v3, :cond_7

    .line 217
    .line 218
    goto :goto_a

    .line 219
    :catchall_1
    move-exception v0

    .line 220
    goto :goto_d

    .line 221
    :goto_8
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 222
    :try_start_7
    throw v0

    .line 223
    :cond_7
    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 224
    :try_start_8
    sget-object v1, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 227
    .line 228
    .line 229
    move-result-object v4
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 230
    goto :goto_9

    .line 231
    :catchall_2
    move-exception v0

    .line 232
    goto :goto_b

    .line 233
    :catch_3
    move-exception v1

    .line 234
    :try_start_9
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 235
    .line 236
    new-array v0, v0, [J

    .line 237
    .line 238
    fill-array-data v0, :array_6

    .line 239
    .line 240
    .line 241
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 251
    .line 252
    const/4 v1, 0x7

    .line 253
    new-array v1, v1, [J

    .line 254
    .line 255
    fill-array-data v1, :array_7

    .line 256
    .line 257
    .line 258
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    :goto_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 265
    :goto_a
    :try_start_a
    sput-object v4, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 266
    .line 267
    goto :goto_c

    .line 268
    :goto_b
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 269
    :try_start_c
    throw v0

    .line 270
    :cond_8
    :goto_c
    sget-object v0, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 271
    .line 272
    monitor-exit v2

    .line 273
    return-object v0

    .line 274
    :goto_d
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 275
    throw v0

    .line 276
    nop

    .line 277
    :array_0
    .array-data 8
        0x753d8a88f79bc9c8L    # 5.544517479754499E256
        0x31b1d7c44cf966a8L    # 2.5852643902183814E-69
        -0x60fd1ee5da8ac20bL
    .end array-data

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
    :array_1
    .array-data 8
        -0x656674c6442bbc3fL
        0x529389ebfa5b2606L    # 6.218929830786254E89
        0x4e81ca8e590ff0deL    # 1.534882351321417E70
    .end array-data

    :array_2
    .array-data 8
        0x307bc262a5cefb14L
        0x66e43f44756e6f5L    # 1.0670901009190004E-277
        0x6b07fdb73209edadL    # 3.851206155176161E207
    .end array-data

    :array_3
    .array-data 8
        -0x75c16153dc326c6L    # -1.346600842597277E273
        -0x40d3a2404778e60aL    # -2.1641698209702549E-4
        0x954d86f55868d67L
    .end array-data

    :array_4
    .array-data 8
        -0x589d8835ae127c1dL    # -5.721500793672178E-119
        -0x1e70712fd937b044L    # -8.873506753446257E161
        0x1e6b3df233bf82b8L    # 3.784521415261081E-162
        0x11604149ab06a6c2L    # 5.489351387804144E-225
    .end array-data

    :array_5
    .array-data 8
        0x56817e9f37a9cce7L    # 5.135856614026228E108
        -0x7b3dc279a6696e4dL    # -9.583118202336979E-286
        -0x524950a1c0f0ce4eL    # -1.7818070646447703E-88
        -0x67d7d7c34967b057L
        -0x13f5ac7b311fbc7eL    # -2.769592554895504E212
        -0x2b4240621191e699L    # -1.6266859010387357E100
    .end array-data

    :array_6
    .array-data 8
        -0x3f4725ad7f87a9d5L    # -6362.32227279762
        0x6c0e79584755f908L    # 3.2059479738550417E212
        0x5a0ce97a90bed05aL    # 6.115989649419703E125
        0x5b3bfc65481ef0b8L    # 3.103828538247031E131
    .end array-data

    :array_7
    .array-data 8
        0x32d2d10a47853beaL    # 7.146957986656132E-64
        -0x1d102217336c3f59L    # -3.7582572550679695E168
        0x2e880c7d432fe15aL    # 1.547406408879793E-84
        0x3f498079edab8010L    # 7.782550195223354E-4
        0x822024f7999cc2eL
        -0x17de070c9d5b326dL    # -4.099914934093035E193
        -0xa588f8895ac1775L    # -5.631075371943364E258
    .end array-data
.end method
