.class public final Lcom/google/android/gms/internal/ads/zzaig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzadb;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzago;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzado;

.field private final zze:Lcom/google/android/gms/internal/ads/zzadk;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzadm;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzaea;

.field private zzh:Lcom/google/android/gms/internal/ads/zzacx;

.field private zzi:Lcom/google/android/gms/internal/ads/zzaea;

.field private zzj:Lcom/google/android/gms/internal/ads/zzaea;

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/ads/zzby;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:I

.field private zzq:Lcom/google/android/gms/internal/ads/zzaii;

.field private zzr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaie;->zza:Lcom/google/android/gms/internal/ads/zzaie;

    .line 2
    .line 3
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaig;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaif;->zza:Lcom/google/android/gms/internal/ads/zzaif;

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Lcom/google/android/gms/internal/ads/zzago;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaig;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfp;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzado;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzado;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zze:Lcom/google/android/gms/internal/ads/zzadk;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzm:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadm;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzf:Lcom/google/android/gms/internal/ads/zzadm;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzact;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzact;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzg:Lcom/google/android/gms/internal/ads/zzaea;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzj:Lcom/google/android/gms/internal/ads/zzaea;

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzacv;)I
    .locals 16
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzk:I

    .line 7
    .line 8
    const/4 v4, -0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzaig;->zzk(Lcom/google/android/gms/internal/ads/zzacv;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    return v4

    .line 17
    :cond_0
    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzq:Lcom/google/android/gms/internal/ads/zzaii;

    .line 18
    .line 19
    if-nez v3, :cond_13

    .line 20
    .line 21
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 22
    .line 23
    new-instance v14, Lcom/google/android/gms/internal/ads/zzfp;

    .line 24
    .line 25
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzado;->zzc:I

    .line 26
    .line 27
    invoke-direct {v14, v3}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 35
    .line 36
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzado;->zzc:I

    .line 37
    .line 38
    move-object v10, v1

    .line 39
    check-cast v10, Lcom/google/android/gms/internal/ads/zzack;

    .line 40
    .line 41
    invoke-virtual {v10, v3, v5, v9, v5}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 42
    .line 43
    .line 44
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 45
    .line 46
    iget v9, v3, Lcom/google/android/gms/internal/ads/zzado;->zza:I

    .line 47
    .line 48
    and-int/2addr v9, v2

    .line 49
    const/16 v10, 0x15

    .line 50
    .line 51
    const/16 v11, 0x24

    .line 52
    .line 53
    if-eqz v9, :cond_1

    .line 54
    .line 55
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzado;->zze:I

    .line 56
    .line 57
    if-eq v3, v2, :cond_3

    .line 58
    .line 59
    const/16 v10, 0x24

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzado;->zze:I

    .line 63
    .line 64
    if-eq v3, v2, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/16 v10, 0xd

    .line 68
    .line 69
    :cond_3
    :goto_1
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    add-int/lit8 v9, v10, 0x4

    .line 74
    .line 75
    const v12, 0x58696e67

    .line 76
    .line 77
    .line 78
    const v13, 0x56425249

    .line 79
    .line 80
    .line 81
    const v15, 0x496e666f

    .line 82
    .line 83
    .line 84
    if-lt v3, v9, :cond_4

    .line 85
    .line 86
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eq v3, v12, :cond_6

    .line 94
    .line 95
    if-ne v3, v15, :cond_4

    .line 96
    .line 97
    const v3, 0x496e666f

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    const/16 v9, 0x28

    .line 106
    .line 107
    if-lt v3, v9, :cond_5

    .line 108
    .line 109
    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-ne v3, v13, :cond_5

    .line 117
    .line 118
    const v3, 0x56425249

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    const/4 v3, 0x0

    .line 123
    :cond_6
    :goto_2
    if-eq v3, v15, :cond_8

    .line 124
    .line 125
    if-eq v3, v13, :cond_7

    .line 126
    .line 127
    if-eq v3, v12, :cond_8

    .line 128
    .line 129
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 130
    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    goto :goto_3

    .line 134
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzd()J

    .line 135
    .line 136
    .line 137
    move-result-wide v9

    .line 138
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 139
    .line 140
    .line 141
    move-result-wide v11

    .line 142
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 143
    .line 144
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzaij;->zzb(JJLcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaij;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 149
    .line 150
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzado;->zzc:I

    .line 151
    .line 152
    move-object v10, v1

    .line 153
    check-cast v10, Lcom/google/android/gms/internal/ads/zzack;

    .line 154
    .line 155
    invoke-virtual {v10, v9, v5}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_8
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 160
    .line 161
    invoke-static {v9, v14}, Lcom/google/android/gms/internal/ads/zzaik;->zza(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaik;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaig;->zze:Lcom/google/android/gms/internal/ads/zzadk;

    .line 166
    .line 167
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzadk;->zza()Z

    .line 168
    .line 169
    .line 170
    move-result v11

    .line 171
    if-nez v11, :cond_9

    .line 172
    .line 173
    iget v11, v9, Lcom/google/android/gms/internal/ads/zzaik;->zzd:I

    .line 174
    .line 175
    if-eq v11, v4, :cond_9

    .line 176
    .line 177
    iget v12, v9, Lcom/google/android/gms/internal/ads/zzaik;->zze:I

    .line 178
    .line 179
    if-eq v12, v4, :cond_9

    .line 180
    .line 181
    iput v11, v10, Lcom/google/android/gms/internal/ads/zzadk;->zza:I

    .line 182
    .line 183
    iput v12, v10, Lcom/google/android/gms/internal/ads/zzadk;->zzb:I

    .line 184
    .line 185
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzd()J

    .line 186
    .line 187
    .line 188
    move-result-wide v10

    .line 189
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 190
    .line 191
    .line 192
    move-result-wide v12

    .line 193
    invoke-static {v10, v11, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzail;->zzb(JLcom/google/android/gms/internal/ads/zzaik;J)Lcom/google/android/gms/internal/ads/zzail;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 198
    .line 199
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzado;->zzc:I

    .line 200
    .line 201
    move-object v11, v1

    .line 202
    check-cast v11, Lcom/google/android/gms/internal/ads/zzack;

    .line 203
    .line 204
    invoke-virtual {v11, v10, v5}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 205
    .line 206
    .line 207
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzadu;->zzh()Z

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    if-nez v10, :cond_a

    .line 212
    .line 213
    if-ne v3, v15, :cond_a

    .line 214
    .line 215
    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzaig;->zzh(Lcom/google/android/gms/internal/ads/zzacv;Z)Lcom/google/android/gms/internal/ads/zzaii;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    goto :goto_3

    .line 220
    :cond_a
    move-object v3, v9

    .line 221
    :goto_3
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzl:Lcom/google/android/gms/internal/ads/zzby;

    .line 222
    .line 223
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 224
    .line 225
    .line 226
    move-result-wide v10

    .line 227
    if-eqz v9, :cond_e

    .line 228
    .line 229
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzby;->zza()I

    .line 230
    .line 231
    .line 232
    move-result v12

    .line 233
    const/4 v13, 0x0

    .line 234
    :goto_4
    if-ge v13, v12, :cond_e

    .line 235
    .line 236
    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzby;->zzb(I)Lcom/google/android/gms/internal/ads/zzbx;

    .line 237
    .line 238
    .line 239
    move-result-object v14

    .line 240
    instance-of v15, v14, Lcom/google/android/gms/internal/ads/zzagv;

    .line 241
    .line 242
    if-eqz v15, :cond_d

    .line 243
    .line 244
    check-cast v14, Lcom/google/android/gms/internal/ads/zzagv;

    .line 245
    .line 246
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzby;->zza()I

    .line 247
    .line 248
    .line 249
    move-result v12

    .line 250
    const/4 v13, 0x0

    .line 251
    :goto_5
    if-ge v13, v12, :cond_c

    .line 252
    .line 253
    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzby;->zzb(I)Lcom/google/android/gms/internal/ads/zzbx;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    instance-of v8, v15, Lcom/google/android/gms/internal/ads/zzagz;

    .line 258
    .line 259
    if-eqz v8, :cond_b

    .line 260
    .line 261
    check-cast v15, Lcom/google/android/gms/internal/ads/zzagz;

    .line 262
    .line 263
    iget-object v8, v15, Lcom/google/android/gms/internal/ads/zzagr;->zzf:Ljava/lang/String;

    .line 264
    .line 265
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 266
    .line 267
    const/4 v7, 0x2

    .line 268
    new-array v7, v7, [J

    .line 269
    .line 270
    fill-array-data v7, :array_0

    .line 271
    .line 272
    .line 273
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    if-eqz v6, :cond_b

    .line 285
    .line 286
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzagz;->zzc:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 287
    .line 288
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    check-cast v6, Ljava/lang/String;

    .line 293
    .line 294
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 295
    .line 296
    .line 297
    move-result-wide v6

    .line 298
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 299
    .line 300
    .line 301
    move-result-wide v6

    .line 302
    goto :goto_6

    .line 303
    :cond_b
    add-int/2addr v13, v2

    .line 304
    goto :goto_5

    .line 305
    :cond_c
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    :goto_6
    invoke-static {v10, v11, v14, v6, v7}, Lcom/google/android/gms/internal/ads/zzaid;->zzb(JLcom/google/android/gms/internal/ads/zzagv;J)Lcom/google/android/gms/internal/ads/zzaid;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    goto :goto_7

    .line 315
    :cond_d
    add-int/2addr v13, v2

    .line 316
    goto :goto_4

    .line 317
    :cond_e
    const/4 v6, 0x0

    .line 318
    :goto_7
    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzr:Z

    .line 319
    .line 320
    if-eqz v7, :cond_f

    .line 321
    .line 322
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaih;

    .line 323
    .line 324
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzaih;-><init>()V

    .line 325
    .line 326
    .line 327
    goto :goto_9

    .line 328
    :cond_f
    if-eqz v6, :cond_10

    .line 329
    .line 330
    move-object v3, v6

    .line 331
    goto :goto_8

    .line 332
    :cond_10
    if-nez v3, :cond_11

    .line 333
    .line 334
    const/4 v3, 0x0

    .line 335
    :cond_11
    :goto_8
    if-eqz v3, :cond_12

    .line 336
    .line 337
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzadu;->zzh()Z

    .line 338
    .line 339
    .line 340
    goto :goto_9

    .line 341
    :cond_12
    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzaig;->zzh(Lcom/google/android/gms/internal/ads/zzacv;Z)Lcom/google/android/gms/internal/ads/zzaii;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    :goto_9
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzq:Lcom/google/android/gms/internal/ads/zzaii;

    .line 346
    .line 347
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzh:Lcom/google/android/gms/internal/ads/zzacx;

    .line 348
    .line 349
    invoke-interface {v6, v3}, Lcom/google/android/gms/internal/ads/zzacx;->zzO(Lcom/google/android/gms/internal/ads/zzadu;)V

    .line 350
    .line 351
    .line 352
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzj:Lcom/google/android/gms/internal/ads/zzaea;

    .line 353
    .line 354
    new-instance v6, Lcom/google/android/gms/internal/ads/zzak;

    .line 355
    .line 356
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 357
    .line 358
    .line 359
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 360
    .line 361
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzado;->zzb:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 364
    .line 365
    .line 366
    const/16 v7, 0x1000

    .line 367
    .line 368
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzO(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 369
    .line 370
    .line 371
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 372
    .line 373
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzado;->zze:I

    .line 374
    .line 375
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 376
    .line 377
    .line 378
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 379
    .line 380
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzado;->zzd:I

    .line 381
    .line 382
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzX(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 383
    .line 384
    .line 385
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaig;->zze:Lcom/google/android/gms/internal/ads/zzadk;

    .line 386
    .line 387
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzadk;->zza:I

    .line 388
    .line 389
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzF(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 390
    .line 391
    .line 392
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaig;->zze:Lcom/google/android/gms/internal/ads/zzadk;

    .line 393
    .line 394
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzadk;->zzb:I

    .line 395
    .line 396
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzG(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 397
    .line 398
    .line 399
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzl:Lcom/google/android/gms/internal/ads/zzby;

    .line 400
    .line 401
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzP(Lcom/google/android/gms/internal/ads/zzby;)Lcom/google/android/gms/internal/ads/zzak;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    invoke-interface {v3, v6}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 409
    .line 410
    .line 411
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 412
    .line 413
    .line 414
    move-result-wide v6

    .line 415
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzo:J

    .line 416
    .line 417
    goto :goto_a

    .line 418
    :cond_13
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzo:J

    .line 419
    .line 420
    const-wide/16 v8, 0x0

    .line 421
    .line 422
    cmp-long v3, v6, v8

    .line 423
    .line 424
    if-eqz v3, :cond_14

    .line 425
    .line 426
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 427
    .line 428
    .line 429
    move-result-wide v8

    .line 430
    cmp-long v3, v8, v6

    .line 431
    .line 432
    if-gez v3, :cond_14

    .line 433
    .line 434
    sub-long/2addr v6, v8

    .line 435
    move-object v3, v1

    .line 436
    check-cast v3, Lcom/google/android/gms/internal/ads/zzack;

    .line 437
    .line 438
    long-to-int v7, v6

    .line 439
    invoke-virtual {v3, v7, v5}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 440
    .line 441
    .line 442
    :cond_14
    :goto_a
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzp:I

    .line 443
    .line 444
    if-nez v3, :cond_1a

    .line 445
    .line 446
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 447
    .line 448
    .line 449
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaig;->zzj(Lcom/google/android/gms/internal/ads/zzacv;)Z

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    if-eqz v3, :cond_15

    .line 454
    .line 455
    goto :goto_e

    .line 456
    :cond_15
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 457
    .line 458
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 459
    .line 460
    .line 461
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 462
    .line 463
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 464
    .line 465
    .line 466
    move-result v3

    .line 467
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzk:I

    .line 468
    .line 469
    int-to-long v6, v6

    .line 470
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzaig;->zzi(IJ)Z

    .line 471
    .line 472
    .line 473
    move-result v6

    .line 474
    if-eqz v6, :cond_19

    .line 475
    .line 476
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzadp;->zzb(I)I

    .line 477
    .line 478
    .line 479
    move-result v6

    .line 480
    if-ne v6, v4, :cond_16

    .line 481
    .line 482
    goto :goto_b

    .line 483
    :cond_16
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 484
    .line 485
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzado;->zza(I)Z

    .line 486
    .line 487
    .line 488
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzm:J

    .line 489
    .line 490
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    cmp-long v3, v6, v8

    .line 496
    .line 497
    if-nez v3, :cond_17

    .line 498
    .line 499
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzq:Lcom/google/android/gms/internal/ads/zzaii;

    .line 500
    .line 501
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 502
    .line 503
    .line 504
    move-result-wide v6

    .line 505
    invoke-interface {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzaii;->zzd(J)J

    .line 506
    .line 507
    .line 508
    move-result-wide v6

    .line 509
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzm:J

    .line 510
    .line 511
    :cond_17
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 512
    .line 513
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzado;->zzc:I

    .line 514
    .line 515
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzp:I

    .line 516
    .line 517
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzq:Lcom/google/android/gms/internal/ads/zzaii;

    .line 518
    .line 519
    instance-of v7, v7, Lcom/google/android/gms/internal/ads/zzaic;

    .line 520
    .line 521
    if-nez v7, :cond_18

    .line 522
    .line 523
    move v3, v6

    .line 524
    goto :goto_d

    .line 525
    :cond_18
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzn:J

    .line 526
    .line 527
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzado;->zzg:I

    .line 528
    .line 529
    int-to-long v3, v3

    .line 530
    add-long/2addr v1, v3

    .line 531
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaig;->zzg(J)J

    .line 532
    .line 533
    .line 534
    const/4 v1, 0x0

    .line 535
    throw v1

    .line 536
    :cond_19
    :goto_b
    check-cast v1, Lcom/google/android/gms/internal/ads/zzack;

    .line 537
    .line 538
    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 539
    .line 540
    .line 541
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzk:I

    .line 542
    .line 543
    :goto_c
    const/4 v4, 0x0

    .line 544
    goto :goto_e

    .line 545
    :cond_1a
    :goto_d
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzj:Lcom/google/android/gms/internal/ads/zzaea;

    .line 546
    .line 547
    invoke-interface {v6, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaea;->zzf(Lcom/google/android/gms/internal/ads/zzu;IZ)I

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    if-ne v1, v4, :cond_1b

    .line 552
    .line 553
    goto :goto_e

    .line 554
    :cond_1b
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzp:I

    .line 555
    .line 556
    sub-int/2addr v2, v1

    .line 557
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzp:I

    .line 558
    .line 559
    if-lez v2, :cond_1c

    .line 560
    .line 561
    goto :goto_c

    .line 562
    :goto_e
    return v4

    .line 563
    :cond_1c
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzj:Lcom/google/android/gms/internal/ads/zzaea;

    .line 564
    .line 565
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzn:J

    .line 566
    .line 567
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaig;->zzg(J)J

    .line 568
    .line 569
    .line 570
    move-result-wide v7

    .line 571
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 572
    .line 573
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzado;->zzc:I

    .line 574
    .line 575
    const/4 v11, 0x0

    .line 576
    const/4 v12, 0x0

    .line 577
    const/4 v9, 0x1

    .line 578
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzaea;->zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 579
    .line 580
    .line 581
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzn:J

    .line 582
    .line 583
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 584
    .line 585
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzado;->zzg:I

    .line 586
    .line 587
    int-to-long v3, v3

    .line 588
    add-long/2addr v1, v3

    .line 589
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzn:J

    .line 590
    .line 591
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzp:I

    .line 592
    .line 593
    return v5

    .line 594
    nop

    .line 595
    :array_0
    .array-data 8
        -0x352f24ae33bc00cbL    # -2.5227386194442676E52
        0x7bb2f2719eb739a8L    # 7.212691985946547E287
    .end array-data
.end method

.method private final zzg(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzm:J

    .line 4
    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzado;->zzd:I

    .line 6
    .line 7
    int-to-long v3, v0

    .line 8
    const-wide/32 v5, 0xf4240

    .line 9
    .line 10
    .line 11
    mul-long p1, p1, v5

    .line 12
    .line 13
    div-long/2addr p1, v3

    .line 14
    add-long/2addr p1, v1

    .line 15
    return-wide p1
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzacv;Z)Lcom/google/android/gms/internal/ads/zzaii;
    .locals 8

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/zzack;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, p2, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 16
    .line 17
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzado;->zza(I)Z

    .line 29
    .line 30
    .line 31
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaib;

    .line 32
    .line 33
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzd()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    move-object v1, p2

    .line 45
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaib;-><init>(JJLcom/google/android/gms/internal/ads/zzado;Z)V

    .line 46
    .line 47
    .line 48
    return-object p2
.end method

.method private static zzi(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzacv;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzq:Lcom/google/android/gms/internal/ads/zzaii;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaii;->zzc()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, -0x1

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zze()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-wide/16 v6, -0x4

    .line 21
    .line 22
    add-long/2addr v2, v6

    .line 23
    cmp-long v0, v4, v2

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v1

    .line 29
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x4

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzacv;->zzm([BIIZ)Z

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    return v3

    .line 45
    :catch_0
    return v1
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzacv;Z)Z
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    cmp-long v8, v2, v4

    .line 15
    .line 16
    if-nez v8, :cond_2

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzf:Lcom/google/android/gms/internal/ads/zzadm;

    .line 19
    .line 20
    invoke-virtual {v2, p1, v6}, Lcom/google/android/gms/internal/ads/zzadm;->zza(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzago;)Lcom/google/android/gms/internal/ads/zzby;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzl:Lcom/google/android/gms/internal/ads/zzby;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaig;->zze:Lcom/google/android/gms/internal/ads/zzadk;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzadk;->zzb(Lcom/google/android/gms/internal/ads/zzby;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zze()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    long-to-int v3, v2

    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    move-object v2, p1

    .line 41
    check-cast v2, Lcom/google/android/gms/internal/ads/zzack;

    .line 42
    .line 43
    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 v2, 0x0

    .line 47
    :goto_0
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 v2, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    goto :goto_0

    .line 53
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaig;->zzj(Lcom/google/android/gms/internal/ads/zzacv;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_4

    .line 58
    .line 59
    if-lez v4, :cond_3

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_4
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 69
    .line 70
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 71
    .line 72
    .line 73
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 74
    .line 75
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    int-to-long v9, v2

    .line 82
    invoke-static {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzaig;->zzi(IJ)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eqz v9, :cond_6

    .line 87
    .line 88
    :cond_5
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzadp;->zzb(I)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    const/4 v10, -0x1

    .line 93
    if-ne v9, v10, :cond_b

    .line 94
    .line 95
    :cond_6
    if-eq v1, p2, :cond_7

    .line 96
    .line 97
    const/high16 v2, 0x20000

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_7
    const v2, 0x8000

    .line 101
    .line 102
    .line 103
    :goto_2
    add-int/lit8 v4, v5, 0x1

    .line 104
    .line 105
    if-ne v5, v2, :cond_9

    .line 106
    .line 107
    if-eqz p2, :cond_8

    .line 108
    .line 109
    return v7

    .line 110
    :cond_8
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array p2, v0, [J

    .line 113
    .line 114
    fill-array-data p2, :array_0

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    throw p1

    .line 129
    :cond_9
    if-eqz p2, :cond_a

    .line 130
    .line 131
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 132
    .line 133
    .line 134
    add-int v2, v3, v4

    .line 135
    .line 136
    move-object v5, p1

    .line 137
    check-cast v5, Lcom/google/android/gms/internal/ads/zzack;

    .line 138
    .line 139
    invoke-virtual {v5, v2, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzl(IZ)Z

    .line 140
    .line 141
    .line 142
    :goto_3
    move v5, v4

    .line 143
    const/4 v2, 0x0

    .line 144
    const/4 v4, 0x0

    .line 145
    goto :goto_1

    .line 146
    :cond_a
    move-object v2, p1

    .line 147
    check-cast v2, Lcom/google/android/gms/internal/ads/zzack;

    .line 148
    .line 149
    invoke-virtual {v2, v1, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_b
    add-int/2addr v4, v1

    .line 154
    if-ne v4, v1, :cond_c

    .line 155
    .line 156
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:Lcom/google/android/gms/internal/ads/zzado;

    .line 157
    .line 158
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzado;->zza(I)Z

    .line 159
    .line 160
    .line 161
    move v2, v8

    .line 162
    goto :goto_6

    .line 163
    :cond_c
    if-ne v4, v0, :cond_e

    .line 164
    .line 165
    :goto_4
    if-eqz p2, :cond_d

    .line 166
    .line 167
    add-int/2addr v3, v5

    .line 168
    check-cast p1, Lcom/google/android/gms/internal/ads/zzack;

    .line 169
    .line 170
    invoke-virtual {p1, v3, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 171
    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 175
    .line 176
    .line 177
    :goto_5
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzk:I

    .line 178
    .line 179
    return v1

    .line 180
    :cond_e
    :goto_6
    add-int/lit8 v9, v9, -0x4

    .line 181
    .line 182
    move-object v8, p1

    .line 183
    check-cast v8, Lcom/google/android/gms/internal/ads/zzack;

    .line 184
    .line 185
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzl(IZ)Z

    .line 186
    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    nop

    .line 191
    :array_0
    .array-data 8
        -0x52a9672fb994aca6L    # -2.7732607926371194E-90
        -0x4bd508d7f79e8b28L    # -2.147922380250332E-57
        -0x7cad50fb6b9e2ca5L
        -0x5e8f83e146e80dccL
    .end array-data
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzr:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzadr;)I
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzi:Lcom/google/android/gms/internal/ads/zzaea;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget p2, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaig;->zzf(Lcom/google/android/gms/internal/ads/zzacv;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p2, -0x1

    .line 13
    if-ne p1, p2, :cond_1

    .line 14
    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzq:Lcom/google/android/gms/internal/ads/zzaii;

    .line 16
    .line 17
    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzaic;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzn:J

    .line 22
    .line 23
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaig;->zzg(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzq:Lcom/google/android/gms/internal/ads/zzaii;

    .line 28
    .line 29
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzadu;->zza()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    cmp-long p2, v2, v0

    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzq:Lcom/google/android/gms/internal/ads/zzaii;

    .line 39
    .line 40
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaic;

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    throw p1

    .line 44
    :cond_1
    :goto_0
    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzacx;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzh:Lcom/google/android/gms/internal/ads/zzacx;

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
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzi:Lcom/google/android/gms/internal/ads/zzaea;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzj:Lcom/google/android/gms/internal/ads/zzaea;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzh:Lcom/google/android/gms/internal/ads/zzacx;

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacx;->zzD()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zzd(JJ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzk:I

    .line 3
    .line 4
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzm:J

    .line 10
    .line 11
    const-wide/16 p2, 0x0

    .line 12
    .line 13
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzn:J

    .line 14
    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzp:I

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzq:Lcom/google/android/gms/internal/ads/zzaii;

    .line 18
    .line 19
    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzaic;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    throw p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacv;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaig;->zzk(Lcom/google/android/gms/internal/ads/zzacv;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method
