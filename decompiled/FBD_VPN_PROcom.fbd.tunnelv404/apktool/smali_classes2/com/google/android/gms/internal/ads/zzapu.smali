.class public final Lcom/google/android/gms/internal/ads/zzapu;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/BlockingQueue;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzapt;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzapk;

.field private volatile zzd:Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzapr;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzapt;Lcom/google/android/gms/internal/ads/zzapk;Lcom/google/android/gms/internal/ads/zzapr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapu;->zzd:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapu;->zza:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapu;->zzb:Lcom/google/android/gms/internal/ads/zzapt;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzapu;->zzc:Lcom/google/android/gms/internal/ads/zzapk;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzapu;->zze:Lcom/google/android/gms/internal/ads/zzapr;

    .line 14
    .line 15
    return-void
.end method

.method private zzb()V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapu;->zza:Ljava/util/concurrent/BlockingQueue;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/zzaqa;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqa;->zzt(I)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v4, v0, [J

    .line 20
    .line 21
    fill-array-data v4, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaqa;->zzm(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzw()Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzc()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapu;->zzb:Lcom/google/android/gms/internal/ads/zzapt;

    .line 45
    .line 46
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzapt;->zza(Lcom/google/android/gms/internal/ads/zzaqa;)Lcom/google/android/gms/internal/ads/zzapw;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v5, v0, [J

    .line 53
    .line 54
    fill-array-data v5, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzaqa;->zzm(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/zzapw;->zze:Z

    .line 68
    .line 69
    if-eqz v4, :cond_0

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzv()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_0

    .line 76
    .line 77
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v2, v2, [J

    .line 80
    .line 81
    fill-array-data v2, :array_2

    .line 82
    .line 83
    .line 84
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqa;->zzp(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzr()V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :catchall_0
    move-exception v2

    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :catch_0
    move-exception v2

    .line 103
    goto :goto_0

    .line 104
    :catch_1
    move-exception v2

    .line 105
    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaqa;->zzh(Lcom/google/android/gms/internal/ads/zzapw;)Lcom/google/android/gms/internal/ads/zzaqg;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v4, v0, [J

    .line 113
    .line 114
    fill-array-data v4, :array_3

    .line 115
    .line 116
    .line 117
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaqa;->zzm(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:Lcom/google/android/gms/internal/ads/zzapj;

    .line 128
    .line 129
    if-eqz v3, :cond_1

    .line 130
    .line 131
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapu;->zzc:Lcom/google/android/gms/internal/ads/zzapk;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzj()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:Lcom/google/android/gms/internal/ads/zzapj;

    .line 138
    .line 139
    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzapk;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapj;)V

    .line 140
    .line 141
    .line 142
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v4, v0, [J

    .line 145
    .line 146
    fill-array-data v4, :array_4

    .line 147
    .line 148
    .line 149
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaqa;->zzm(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzq()V

    .line 160
    .line 161
    .line 162
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapu;->zze:Lcom/google/android/gms/internal/ads/zzapr;

    .line 163
    .line 164
    const/4 v4, 0x0

    .line 165
    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzapr;->zzb(Lcom/google/android/gms/internal/ads/zzaqa;Lcom/google/android/gms/internal/ads/zzaqg;Ljava/lang/Runnable;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqa;->zzs(Lcom/google/android/gms/internal/ads/zzaqg;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaqj; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :goto_0
    :try_start_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    new-array v4, v0, [J

    .line 175
    .line 176
    fill-array-data v4, :array_5

    .line 177
    .line 178
    .line 179
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    const/4 v5, 0x1

    .line 191
    new-array v5, v5, [Ljava/lang/Object;

    .line 192
    .line 193
    const/4 v6, 0x0

    .line 194
    aput-object v4, v5, v6

    .line 195
    .line 196
    invoke-static {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzaqm;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaqj;

    .line 200
    .line 201
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzaqj;-><init>(Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 205
    .line 206
    .line 207
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapu;->zze:Lcom/google/android/gms/internal/ads/zzapr;

    .line 208
    .line 209
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzapr;->zza(Lcom/google/android/gms/internal/ads/zzaqa;Lcom/google/android/gms/internal/ads/zzaqj;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzr()V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 217
    .line 218
    .line 219
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapu;->zze:Lcom/google/android/gms/internal/ads/zzapr;

    .line 220
    .line 221
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzapr;->zza(Lcom/google/android/gms/internal/ads/zzaqa;Lcom/google/android/gms/internal/ads/zzaqj;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzr()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    .line 226
    .line 227
    :goto_2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqa;->zzt(I)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :goto_3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqa;->zzt(I)V

    .line 232
    .line 233
    .line 234
    throw v2

    .line 235
    :array_0
    .array-data 8
        0x18f9dd4c642d5d9bL
        0x60fe5c4b612d5655L    # 1.6673508989024952E159
        -0x6a07a517373ed25L    # -4.365484830609859E276
        0x736f5a15772689f0L    # 1.0960495195529823E248
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
    :array_1
    .array-data 8
        -0x5d3b5cd60c3a3c5dL    # -3.384746587221851E-141
        0x1574c20ccf91dfa6L    # 2.586238903863983E-205
        0x723304e4bdc8d87L
        0x52f8bf57e8c953a5L    # 5.041141570177902E91
    .end array-data

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
    :array_2
    .array-data 8
        -0x260d347aa0eca10bL    # -1.9879279150648223E125
        0x26297ab708cd9328L    # 7.528010990307954E-125
        -0x566e8aa020d3cbfaL
    .end array-data

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
    :array_3
    .array-data 8
        0x7a03535f5a2264abL    # 5.481262888070802E279
        -0x3016da623d3efaadL    # -9.099426704569618E76
        -0x1b1f72b15b03f286L    # -8.384119137350806E177
        -0x58e4ae003cc6a599L
    .end array-data

    :array_4
    .array-data 8
        0x40dd6dd925b51494L    # 30135.39292647371
        -0x15f24cb4fcecfa62L    # -7.274930714932639E202
        -0x179ce93dbdba9929L    # -6.96735842057779E194
        0x4b2c5de92236150fL    # 1.3585016763450693E54
    .end array-data

    :array_5
    .array-data 8
        0x2dfcd354771f7064L    # 3.6225820399836213E-87
        0x4a2137a053310a07L    # 1.2581548846629661E49
        -0x77abe75cf70fc5b1L
        -0x151f0025fe7fcd54L    # -6.822148192695573E206
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapu;->zzb()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapu;->zzd:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/16 v1, 0xc

    .line 25
    .line 26
    new-array v1, v1, [J

    .line 27
    .line 28
    fill-array-data v1, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x0

    .line 39
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqm;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :array_0
    .array-data 8
        0xe54e32568e0dcfcL
        -0x33f0adf31a3a3b6eL    # -2.4575252910796103E58
        -0x236928f9feee00e4L    # -1.0624607670273389E138
        0x1c44b7f849a477a9L
        -0x244f03af6564550aL    # -4.822576332164252E133
        0x75049b3dfa895cf4L
        -0x54e0fc19b14a560cL    # -5.53906565848858E-101
        -0xca15234ba53dfc5L
        -0x67eb1f85b6ac079bL
        -0x6d565ad3648e0482L    # -9.081120800730077E-219
        -0x2c746d8b02a090bcL    # -2.8756661656813246E94
        -0x656310ad9bcfd645L
    .end array-data
.end method

.method public final zza()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapu;->zzd:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
