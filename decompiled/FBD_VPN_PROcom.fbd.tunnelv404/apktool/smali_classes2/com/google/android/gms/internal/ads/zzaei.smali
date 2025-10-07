.class public final Lcom/google/android/gms/internal/ads/zzaei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzadb;

.field private static final zzb:[I

.field private static final zzc:[I

.field private static final zzd:[B

.field private static final zze:[B

.field private static final zzf:I


# instance fields
.field private final zzg:[B

.field private zzh:Z

.field private zzi:J

.field private zzj:I

.field private zzk:I

.field private zzl:Z

.field private zzm:I

.field private zzn:I

.field private zzo:J

.field private zzp:Lcom/google/android/gms/internal/ads/zzacx;

.field private zzq:Lcom/google/android/gms/internal/ads/zzaea;

.field private zzr:Lcom/google/android/gms/internal/ads/zzadu;

.field private zzs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaeh;->zza:Lcom/google/android/gms/internal/ads/zzaeh;

    .line 2
    .line 3
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    sput-object v1, Lcom/google/android/gms/internal/ads/zzaei;->zzb:[I

    .line 13
    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    fill-array-data v0, :array_1

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaei;->zzc:[I

    .line 20
    .line 21
    sget v1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_2

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sput-object v1, Lcom/google/android/gms/internal/ads/zzaei;->zzd:[B

    .line 45
    .line 46
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v3, 0x3

    .line 49
    new-array v3, v3, [J

    .line 50
    .line 51
    fill-array-data v3, :array_3

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sput-object v1, Lcom/google/android/gms/internal/ads/zzaei;->zze:[B

    .line 66
    .line 67
    const/16 v1, 0x8

    .line 68
    .line 69
    aget v0, v0, v1

    .line 70
    .line 71
    sput v0, Lcom/google/android/gms/internal/ads/zzaei;->zzf:I

    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 8
        0x530372f6acb11542L    # 7.92369368920096E91
        0x51d2018218eb44f5L    # 1.3991794022631478E86
    .end array-data

    :array_3
    .array-data 8
        0x5c688bc87c925a8cL
        -0x163a99b9d1d8eb37L    # -3.2760529497247296E201
        -0x488d41b00eb2ac08L    # -1.344773524665509E-41
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaei;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzg:[B

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzm:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzacv;)I
    .locals 13
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzk:I

    .line 4
    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzg:[B

    .line 15
    .line 16
    move-object v6, p1

    .line 17
    check-cast v6, Lcom/google/android/gms/internal/ads/zzack;

    .line 18
    .line 19
    invoke-virtual {v6, v2, v5, v4, v5}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzg:[B

    .line 23
    .line 24
    aget-byte v2, v2, v5

    .line 25
    .line 26
    and-int/lit16 v6, v2, 0x83

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    if-gtz v6, :cond_a

    .line 30
    .line 31
    shr-int/2addr v2, v1

    .line 32
    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzh:Z

    .line 33
    .line 34
    and-int/lit8 v2, v2, 0xf

    .line 35
    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    const/16 v8, 0xa

    .line 39
    .line 40
    if-lt v2, v8, :cond_2

    .line 41
    .line 42
    const/16 v8, 0xd

    .line 43
    .line 44
    if-le v2, v8, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    if-nez v6, :cond_8

    .line 48
    .line 49
    const/16 v8, 0xc

    .line 50
    .line 51
    if-lt v2, v8, :cond_2

    .line 52
    .line 53
    const/16 v8, 0xe

    .line 54
    .line 55
    if-gt v2, v8, :cond_2

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 59
    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaei;->zzc:[I

    .line 61
    .line 62
    aget v0, v0, v2

    .line 63
    .line 64
    :goto_1
    move v2, v0

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaei;->zzb:[I

    .line 67
    .line 68
    aget v0, v0, v2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :goto_2
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzj:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzk:I

    .line 74
    .line 75
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzm:I

    .line 76
    .line 77
    if-ne v0, v3, :cond_4

    .line 78
    .line 79
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzm:I

    .line 80
    .line 81
    move v0, v2

    .line 82
    :cond_4
    if-ne v0, v2, :cond_5

    .line 83
    .line 84
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzn:I

    .line 85
    .line 86
    add-int/2addr v0, v4

    .line 87
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzn:I

    .line 88
    .line 89
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzq:Lcom/google/android/gms/internal/ads/zzaea;

    .line 90
    .line 91
    invoke-static {v0, p1, v2, v4}, Lcom/google/android/gms/internal/ads/zzady;->zza(Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzu;IZ)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-ne p1, v3, :cond_6

    .line 96
    .line 97
    return v3

    .line 98
    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzk:I

    .line 99
    .line 100
    sub-int/2addr v0, p1

    .line 101
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzk:I

    .line 102
    .line 103
    if-lez v0, :cond_7

    .line 104
    .line 105
    return v5

    .line 106
    :cond_7
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzq:Lcom/google/android/gms/internal/ads/zzaea;

    .line 107
    .line 108
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzi:J

    .line 109
    .line 110
    iget v10, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzj:I

    .line 111
    .line 112
    const/4 v11, 0x0

    .line 113
    const/4 v12, 0x0

    .line 114
    const/4 v9, 0x1

    .line 115
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzaea;->zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 116
    .line 117
    .line 118
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzi:J

    .line 119
    .line 120
    const-wide/16 v2, 0x4e20

    .line 121
    .line 122
    add-long/2addr v0, v2

    .line 123
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzi:J

    .line 124
    .line 125
    return v5

    .line 126
    :cond_8
    :goto_4
    :try_start_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v5, v0, [J

    .line 129
    .line 130
    fill-array-data v5, :array_0

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v0, v0, [J

    .line 143
    .line 144
    fill-array-data v0, :array_1

    .line 145
    .line 146
    .line 147
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eq v4, v6, :cond_9

    .line 155
    .line 156
    move-object p1, v0

    .line 157
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v5, v1, [J

    .line 165
    .line 166
    fill-array-data v5, :array_2

    .line 167
    .line 168
    .line 169
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    new-array v1, v1, [J

    .line 185
    .line 186
    fill-array-data v1, :array_3

    .line 187
    .line 188
    .line 189
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {p1, v7}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    throw p1

    .line 211
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 217
    .line 218
    const/4 v1, 0x6

    .line 219
    new-array v1, v1, [J

    .line 220
    .line 221
    fill-array-data v1, :array_4

    .line 222
    .line 223
    .line 224
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {p1, v7}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    throw p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    :catch_0
    return v3

    .line 247
    :array_0
    .array-data 8
        0x677384d3801ad069L    # 2.174160260491564E190
        0x447ce70c42b27491L    # 8.530521429129226E21
    .end array-data

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
    :array_1
    .array-data 8
        -0x37e171b8ca84a413L    # -2.5993977802119476E39
        0x2be055dc310c709fL    # 2.389906696588823E-97
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
    :array_2
    .array-data 8
        -0xf2f28c36b5e5L
        0x20b483a4bedad9d7L    # 3.916854689935089E-151
        -0x67c88d693aaede34L
    .end array-data

    .line 272
    .line 273
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
    :array_3
    .array-data 8
        -0x49d9a207ac02a337L    # -7.65208531572769E-48
        -0x68c6dff86daef6e3L    # -8.402933215243603E-197
        -0x2634fcdb845839e4L    # -3.5713251816259204E124
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
    .line 300
    .line 301
    .line 302
    .line 303
    :array_4
    .array-data 8
        0x6d5d515ae48d7171L    # 6.468270088524306E218
        -0x4516898c6c66212eL    # -6.581953955869964E-25
        -0x67367781e47616adL    # -2.865349121459508E-189
        0x7c13515e1e919781L    # 4.706461004832189E289
        -0x1e30aad7e6953acbL    # -1.4096286033649185E163
        0x5646192ab2b01629L    # 4.05459506285443E107
    .end array-data
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzacv;[B)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzack;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzacv;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaei;->zzd:[B

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaei;->zzf(Lcom/google/android/gms/internal/ads/zzacv;[B)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzh:Z

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/zzack;

    .line 15
    .line 16
    invoke-virtual {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 17
    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaei;->zze:[B

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaei;->zzf(Lcom/google/android/gms/internal/ads/zzacv;[B)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzh:Z

    .line 29
    .line 30
    array-length v0, v0

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/ads/zzack;

    .line 32
    .line 33
    invoke-virtual {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    return v3
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzadr;)I
    .locals 6

    .line 1
    const/4 p2, 0x3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzq:Lcom/google/android/gms/internal/ads/zzaea;

    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaei;->zzg(Lcom/google/android/gms/internal/ads/zzacv;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 p2, 0x5

    .line 29
    new-array p2, p2, [J

    .line 30
    .line 31
    fill-array-data p2, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    throw p1

    .line 47
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzs:Z

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzs:Z

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzh:Z

    .line 55
    .line 56
    if-eq v1, v0, :cond_2

    .line 57
    .line 58
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array p2, p2, [J

    .line 61
    .line 62
    fill-array-data p2, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v4, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array p2, p2, [J

    .line 76
    .line 77
    fill-array-data p2, :array_2

    .line 78
    .line 79
    .line 80
    invoke-direct {v4, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    :goto_1
    if-eq v1, v0, :cond_3

    .line 88
    .line 89
    const/16 v0, 0x1f40

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    const/16 v0, 0x3e80

    .line 93
    .line 94
    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzq:Lcom/google/android/gms/internal/ads/zzaea;

    .line 95
    .line 96
    new-instance v5, Lcom/google/android/gms/internal/ads/zzak;

    .line 97
    .line 98
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 102
    .line 103
    .line 104
    sget p2, Lcom/google/android/gms/internal/ads/zzaei;->zzf:I

    .line 105
    .line 106
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzO(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzX(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-interface {v4, p2}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaei;->zza(Lcom/google/android/gms/internal/ads/zzacv;)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzl:Z

    .line 127
    .line 128
    if-eqz p2, :cond_5

    .line 129
    .line 130
    return p1

    .line 131
    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzadt;

    .line 132
    .line 133
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    invoke-direct {p2, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzadt;-><init>(JJ)V

    .line 139
    .line 140
    .line 141
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzr:Lcom/google/android/gms/internal/ads/zzadu;

    .line 142
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzp:Lcom/google/android/gms/internal/ads/zzacx;

    .line 144
    .line 145
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzacx;->zzO(Lcom/google/android/gms/internal/ads/zzadu;)V

    .line 146
    .line 147
    .line 148
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzl:Z

    .line 149
    .line 150
    return p1

    .line 151
    :array_0
    .array-data 8
        -0xd77ab92127b488aL
        -0x6e0514b7be0fb3ffL
        0x488cc15be9c4311bL    # 3.131175845546319E41
        -0x719d180436c2c1c9L
        -0x5e2b508c8addfcdaL
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
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
    :array_1
    .array-data 8
        0x7d111e1799a65c1fL    # 2.733111321696127E294
        0x39114058e82babdL
        0x5c6b65575d0c84f3L    # 1.5929900053307193E137
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
    :array_2
    .array-data 8
        0x6bda8f4838786b0dL    # 3.492690228549733E211
        0x4aa117ace0360dc0L    # 3.1975283049054744E51
        0x20737d52b222fdeaL    # 2.32575444878832E-152
    .end array-data
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzacx;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzp:Lcom/google/android/gms/internal/ads/zzacx;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzw(II)Lcom/google/android/gms/internal/ads/zzaea;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzq:Lcom/google/android/gms/internal/ads/zzaea;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacx;->zzD()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zzd(JJ)V
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzi:J

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzj:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzk:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzo:J

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacv;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaei;->zzg(Lcom/google/android/gms/internal/ads/zzacv;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
