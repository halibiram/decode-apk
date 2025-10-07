.class public final Lcom/google/android/gms/internal/ads/zzawx;
.super Lcom/google/android/gms/internal/ads/zzaxx;
.source "SourceFile"


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/ads/zzaxy;


# instance fields
.field private final zzj:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxy;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxy;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzawx;->zzi:Lcom/google/android/gms/internal/ads/zzaxy;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;IILandroid/content/Context;Lcom/google/android/gms/internal/ads/zzarz;)V
    .locals 7

    .line 1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 p3, 0x9

    .line 4
    .line 5
    new-array p3, p3, [J

    .line 6
    .line 7
    fill-array-data p3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 p3, 0x7

    .line 20
    new-array p3, p3, [J

    .line 21
    .line 22
    fill-array-data p3, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/16 v6, 0x1b

    .line 33
    .line 34
    move-object v0, p0

    .line 35
    move-object v1, p1

    .line 36
    move-object v4, p4

    .line 37
    move v5, p5

    .line 38
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaxx;-><init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;II)V

    .line 39
    .line 40
    .line 41
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzj:Landroid/content/Context;

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x3f7ede3b13f7925dL    # 0.00753615453092901
        0x5b51d219226d7ab9L    # 7.905744606034226E131
        0xe1c64da2b7ce896L    # 1.064558058996087E-240
        -0x3e8ff9a5b5c7e21dL    # -1.6803236638700377E7
        0x3f662f0406a20869L    # 0.00270796572027714
        0x2c46b4b0f20b8191L    # 2.126026477879686E-95
        -0xbd13db4eecabb2L
        0x3cfe0cee85564edL
        -0x560a3c741b40cd2cL
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
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
    .line 82
    .line 83
    .line 84
    .line 85
    :array_1
    .array-data 8
        0x5a3b9d1303aeb4b7L    # 4.6730537432704554E126
        -0x2563941f301b8ecdL    # -3.0782481241049234E128
        -0x61cd37922f5ad9f3L    # -3.261711899736724E-163
        0x298f06d102f12c47L
        0x2411e6a4520d3d50L    # 6.157124075020159E-135
        0x75411a1673048020L    # 6.419641997977372E256
        0x79f09abc1436dea0L    # 2.354724089703543E279
    .end array-data
.end method

.method private final zzc()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawj;->zzl()Ljava/util/concurrent/Future;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawj;->zzl()Ljava/util/concurrent/Future;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawj;->zzc()Lcom/google/android/gms/internal/ads/zzatd;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatd;->zzaj()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatd;->zzh()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object v0

    .line 37
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 38
    return-object v0
.end method


# virtual methods
.method public final zza()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    sget-object v4, Lcom/google/android/gms/internal/ads/zzawx;->zzi:Lcom/google/android/gms/internal/ads/zzaxy;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzj:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzaxy;->zza(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    monitor-enter v4

    .line 18
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Lcom/google/android/gms/internal/ads/zzatu;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzatu;->zza:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzawm;->zzd(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzatu;->zza:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v8, v3, [J

    .line 39
    .line 40
    fill-array-data v8, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-nez v6, :cond_0

    .line 55
    .line 56
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzatu;->zza:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/16 v7, 0x9

    .line 61
    .line 62
    new-array v7, v7, [J

    .line 63
    .line 64
    fill-array-data v7, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_9

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 85
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzawm;->zzd(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-nez v6, :cond_1

    .line 90
    .line 91
    const/4 v6, 0x5

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzawm;->zzd(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    const/4 v6, 0x3

    .line 97
    :goto_1
    if-ne v6, v2, :cond_2

    .line 98
    .line 99
    const/4 v7, 0x1

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const/4 v7, 0x0

    .line 102
    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbgc;->zzcm:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 107
    .line 108
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Ljava/lang/Boolean;

    .line 117
    .line 118
    sget-object v9, Lcom/google/android/gms/internal/ads/zzbgc;->zzcl:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 119
    .line 120
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    check-cast v9, Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_3

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzawx;->zzb()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    goto :goto_3

    .line 141
    :cond_3
    move-object v9, v5

    .line 142
    :goto_3
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-eqz v8, :cond_4

    .line 147
    .line 148
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    .line 149
    .line 150
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzawj;->zzp()Z

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-eqz v8, :cond_4

    .line 155
    .line 156
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzawm;->zzd(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-eqz v8, :cond_4

    .line 161
    .line 162
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawx;->zzc()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    :cond_4
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzf:Ljava/lang/reflect/Method;

    .line 167
    .line 168
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzj:Landroid/content/Context;

    .line 169
    .line 170
    new-array v11, v2, [Ljava/lang/Object;

    .line 171
    .line 172
    aput-object v10, v11, v0

    .line 173
    .line 174
    aput-object v7, v11, v1

    .line 175
    .line 176
    aput-object v9, v11, v3

    .line 177
    .line 178
    invoke-virtual {v8, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Ljava/lang/String;

    .line 183
    .line 184
    new-instance v1, Lcom/google/android/gms/internal/ads/zzatu;

    .line 185
    .line 186
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzatu;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzatu;->zza:Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawm;->zzd(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_5

    .line 196
    .line 197
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzatu;->zza:Ljava/lang/String;

    .line 198
    .line 199
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    new-array v3, v3, [J

    .line 202
    .line 203
    fill-array-data v3, :array_2

    .line 204
    .line 205
    .line 206
    invoke-direct {v7, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_8

    .line 218
    .line 219
    :cond_5
    add-int/lit8 v6, v6, -0x1

    .line 220
    .line 221
    if-eq v6, v2, :cond_7

    .line 222
    .line 223
    const/4 v0, 0x4

    .line 224
    if-eq v6, v0, :cond_6

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_6
    throw v5

    .line 228
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawx;->zzc()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawm;->zzd(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-nez v2, :cond_8

    .line 237
    .line 238
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzatu;->zza:Ljava/lang/String;

    .line 239
    .line 240
    :cond_8
    :goto_4
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_9
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Lcom/google/android/gms/internal/ads/zzatu;

    .line 248
    .line 249
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 251
    .line 252
    monitor-enter v1

    .line 253
    if-eqz v0, :cond_a

    .line 254
    .line 255
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 256
    .line 257
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzatu;->zza:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzasg;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasg;

    .line 260
    .line 261
    .line 262
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 263
    .line 264
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzatu;->zzb:J

    .line 265
    .line 266
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzasg;->zzX(J)Lcom/google/android/gms/internal/ads/zzasg;

    .line 267
    .line 268
    .line 269
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 270
    .line 271
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzatu;->zzc:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzasg;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasg;

    .line 274
    .line 275
    .line 276
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 277
    .line 278
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzatu;->zzd:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzasg;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasg;

    .line 281
    .line 282
    .line 283
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 284
    .line 285
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatu;->zze:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzasg;->zzw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasg;

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :catchall_1
    move-exception v0

    .line 292
    goto :goto_6

    .line 293
    :cond_a
    :goto_5
    monitor-exit v1

    .line 294
    return-void

    .line 295
    :goto_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 296
    throw v0

    .line 297
    :goto_7
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    throw v0

    .line 299
    :array_0
    .array-data 8
        -0x8bfc46daa597ac6L    # -2.617079925875027E266
        0x62172a1fde780a77L    # 3.334889858002996E164
    .end array-data

    .line 300
    .line 301
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
    :array_1
    .array-data 8
        0x310efde7261e740L    # 6.629799902602141E-294
        -0x13bd8d5d1ba43f21L    # -3.1052135919577846E213
        -0x50e242687e219483L    # -9.797850595975857E-82
        0xe56d1dc7eed7317L
        -0x2e35034d8e34faccL    # -1.0485399095782162E86
        0x11f24411dbba7682L    # 3.158233419610432E-222
        0x4cbb5233dda40b9cL    # 4.39033212826271E61
        0x34ddc52ce9291766L    # 4.856493174092302E-54
        0x7e4f1dd4f8a29404L    # 2.6048149000452926E300
    .end array-data

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
    .line 350
    .line 351
    :array_2
    .array-data 8
        0x6db9801bcd58da75L    # 3.6006776984936447E220
        0x353e87dae2331c36L    # 3.187552102768529E-52
    .end array-data
.end method

.method public final zzb()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    new-array v3, v0, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzcn:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzawm;->zzf(Ljava/lang/String;)[B

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 43
    .line 44
    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v6, v0, [J

    .line 59
    .line 60
    fill-array-data v6, :array_1

    .line 61
    .line 62
    .line 63
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_0

    .line 75
    .line 76
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzco:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 77
    .line 78
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzawm;->zzf(Ljava/lang/String;)[B

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 93
    .line 94
    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzj:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzawj;->zzk()Ljava/util/concurrent/ExecutorService;

    .line 113
    .line 114
    .line 115
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 116
    .line 117
    const/16 v6, 0x1e

    .line 118
    .line 119
    if-gt v5, v6, :cond_1

    .line 120
    .line 121
    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 122
    .line 123
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v0, v0, [J

    .line 126
    .line 127
    fill-array-data v0, :array_2

    .line 128
    .line 129
    .line 130
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfg;->zze()Lcom/google/android/gms/internal/ads/zzgfg;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaxz;

    .line 153
    .line 154
    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/zzaxz;-><init>(Lcom/google/android/gms/internal/ads/zzgfg;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v2, v3, v4, v5}, L딨뒘딨뒾될돶뒹뎽땟땯돼뒀뎹뎻돸땪뒨딤뒾듽돴돸딄됩딐뒾딐땔됫뒤딄도돼딜디뎹땝땠땩뒾땄땰돛땭딌땦둬딜돰드뒻땀땭땰드땍땍땡뒨딻땵듼듔됐뎬땠땦딽뎹돼땝됴디땅뎠들됩땩돶돰뎹도되딁딨된땠땻둣뎬될됐뒤뒙땀땬뎡뒷땫됨뒀딅돶듸듨딐땮됐땅둘둬뒵딨뒘듔뒐뒵뎸딟딎듌딀땳둡땀뒨땅딎땳땫;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzaxz;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdb;->get()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    move-object v1, v0

    .line 167
    :catch_0
    :goto_0
    return-object v1

    .line 168
    nop

    .line 169
    :array_0
    .array-data 8
        -0x248cc935035fe1eL
        0x32049b565507cd96L    # 9.554352206480495E-68
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_1
    .array-data 8
        -0x494286a4f51821a7L    # -5.162741828287098E-45
        0x2dfb453494c2d30cL    # 3.4271389784069725E-87
    .end array-data

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
    .line 192
    .line 193
    :array_2
    .array-data 8
        0x2d5001ddb808fed4L
        0x58e8f5e067130a40L
    .end array-data
.end method
