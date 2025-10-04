.class public final Lcom/google/android/gms/internal/ads/zzatc;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzatc;


# instance fields
.field private zzd:I

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:J

.field private zzl:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatc;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatc;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzatc;->zzb:Lcom/google/android/gms/internal/ads/zzatc;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzatc;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaU(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgzu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzu;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zze:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzf:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzg:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzh:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzi:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzj:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzk:J

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzl:J

    .line 21
    .line 22
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzatb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatc;->zzb:Lcom/google/android/gms/internal/ads/zzatc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaA()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzatb;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/ads/zzatc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzatc;->zzb:Lcom/google/android/gms/internal/ads/zzatc;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzatc;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzatc;->zze:J

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zzatc;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzg:J

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzatc;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzh:J

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzatc;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzi:J

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/ads/zzatc;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzatc;->zzj:J

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x2

    .line 6
    add-int/lit8 v5, p1, -0x1

    .line 7
    .line 8
    if-eqz v5, :cond_4

    .line 9
    .line 10
    if-eq v5, v4, :cond_3

    .line 11
    .line 12
    if-eq v5, v3, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eq v5, v2, :cond_1

    .line 16
    .line 17
    if-eq v5, v1, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatc;->zzb:Lcom/google/android/gms/internal/ads/zzatc;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzatb;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzatb;-><init>(Lcom/google/android/gms/internal/ads/zzasf;)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatc;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatc;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_3
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v6, v4, [J

    .line 38
    .line 39
    fill-array-data v6, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v7, v4, [J

    .line 52
    .line 53
    fill-array-data v7, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v8, v4, [J

    .line 66
    .line 67
    fill-array-data v8, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v9, v4, [J

    .line 80
    .line 81
    fill-array-data v9, :array_3

    .line 82
    .line 83
    .line 84
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v10, v4, [J

    .line 94
    .line 95
    fill-array-data v10, :array_4

    .line 96
    .line 97
    .line 98
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array v11, v4, [J

    .line 108
    .line 109
    fill-array-data v11, :array_5

    .line 110
    .line 111
    .line 112
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v12, v4, [J

    .line 122
    .line 123
    fill-array-data v12, :array_6

    .line 124
    .line 125
    .line 126
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    new-array v13, v4, [J

    .line 136
    .line 137
    fill-array-data v13, :array_7

    .line 138
    .line 139
    .line 140
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array v14, v4, [J

    .line 150
    .line 151
    fill-array-data v14, :array_8

    .line 152
    .line 153
    .line 154
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    const/16 v14, 0x9

    .line 162
    .line 163
    new-array v14, v14, [Ljava/lang/Object;

    .line 164
    .line 165
    const/4 v15, 0x0

    .line 166
    aput-object v5, v14, v15

    .line 167
    .line 168
    aput-object v6, v14, v0

    .line 169
    .line 170
    aput-object v7, v14, v4

    .line 171
    .line 172
    aput-object v8, v14, v3

    .line 173
    .line 174
    aput-object v9, v14, v2

    .line 175
    .line 176
    aput-object v10, v14, v1

    .line 177
    .line 178
    const/4 v0, 0x6

    .line 179
    aput-object v11, v14, v0

    .line 180
    .line 181
    const/4 v0, 0x7

    .line 182
    aput-object v12, v14, v0

    .line 183
    .line 184
    const/16 v0, 0x8

    .line 185
    .line 186
    aput-object v13, v14, v0

    .line 187
    .line 188
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatc;->zzb:Lcom/google/android/gms/internal/ads/zzatc;

    .line 189
    .line 190
    const-string v1, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u1002\u0006\u0008\u1002\u0007"

    .line 191
    .line 192
    invoke-static {v0, v1, v14}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    return-object v0

    .line 197
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    return-object v0

    .line 202
    nop

    .line 203
    :array_0
    .array-data 8
        -0x6740e2cc84c8e575L
        0x25e2dbe89d51bbf3L
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
    :array_1
    .array-data 8
        0x576db88b5728d453L    # 1.4295192222731167E113
        -0x3be2fd2a8d25ab5aL    # -1.337899434444352E20
    .end array-data

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
    :array_2
    .array-data 8
        -0x35640af22bd4173bL    # -2.6150115417100777E51
        0x659aa0cc5e8a1f1fL    # 2.7623447996711175E181
    .end array-data

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
    :array_3
    .array-data 8
        0x791c37a7ca5b1cd1L    # 2.442379301917897E275
        -0x26a9b5160cccfc6bL    # -2.302605880901372E122
    .end array-data

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
    :array_4
    .array-data 8
        -0x270619941631cab7L    # -4.18003056735247E120
        0x495ea0b5abc9714fL    # 2.7320885646294006E45
    .end array-data

    .line 252
    .line 253
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
    :array_5
    .array-data 8
        0x33bf9221d6120d5eL
        -0x739d1723622ccc8aL    # -5.282217893401557E-249
    .end array-data

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
    :array_6
    .array-data 8
        0x268e94d4d98e41dfL
        -0x3384443cacfb0575L    # -2.785370909830057E60
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
    :array_7
    .array-data 8
        0x17ac3fe9fa301cc3L
        -0x1cd5c848ebf8285fL    # -4.947218902327247E169
    .end array-data

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
    :array_8
    .array-data 8
        0x60370a7ce493254dL    # 3.089288763327256E155
        -0x1735accc6ecdb9b2L    # -6.149441270811167E196
    .end array-data
.end method
