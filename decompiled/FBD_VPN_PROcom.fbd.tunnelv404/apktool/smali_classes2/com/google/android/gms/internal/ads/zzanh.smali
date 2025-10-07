.class public final Lcom/google/android/gms/internal/ads/zzanh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzanz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzann;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzann;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzann;

.field private zze:J

.field private final zzf:[Z

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/ads/zzaea;

.field private zzi:Lcom/google/android/gms/internal/ads/zzang;

.field private zzj:Z

.field private zzk:J

.field private zzl:Z

.field private final zzm:Lcom/google/android/gms/internal/ads/zzfp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanz;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanh;->zza:Lcom/google/android/gms/internal/ads/zzanz;

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    new-array p1, p1, [Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzf:[Z

    .line 10
    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzann;

    .line 12
    .line 13
    const/4 p2, 0x7

    .line 14
    const/16 p3, 0x80

    .line 15
    .line 16
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzann;-><init>(II)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzb:Lcom/google/android/gms/internal/ads/zzann;

    .line 20
    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/zzann;

    .line 22
    .line 23
    const/16 p2, 0x8

    .line 24
    .line 25
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzann;-><init>(II)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzc:Lcom/google/android/gms/internal/ads/zzann;

    .line 29
    .line 30
    new-instance p1, Lcom/google/android/gms/internal/ads/zzann;

    .line 31
    .line 32
    const/4 p2, 0x6

    .line 33
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzann;-><init>(II)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzd:Lcom/google/android/gms/internal/ads/zzann;

    .line 37
    .line 38
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzk:J

    .line 44
    .line 45
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfp;

    .line 46
    .line 47
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzm:Lcom/google/android/gms/internal/ads/zzfp;

    .line 51
    .line 52
    return-void
.end method

.method private final zzf([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzj:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzb:Lcom/google/android/gms/internal/ads/zzann;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzann;->zza([BII)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzc:Lcom/google/android/gms/internal/ads/zzann;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzann;->zza([BII)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzd:Lcom/google/android/gms/internal/ads/zzann;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzann;->zza([BII)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfp;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzh:Lcom/google/android/gms/internal/ads/zzaea;

    .line 5
    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    sget v2, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzanh;->zze:J

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    int-to-long v7, v7

    .line 30
    add-long/2addr v5, v7

    .line 31
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzanh;->zze:J

    .line 32
    .line 33
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzh:Lcom/google/android/gms/internal/ads/zzaea;

    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    move-object/from16 v7, p1

    .line 40
    .line 41
    invoke-interface {v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzaea;->zzr(Lcom/google/android/gms/internal/ads/zzfp;I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzf:[Z

    .line 45
    .line 46
    invoke-static {v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzgm;->zza([BII[Z)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eq v5, v3, :cond_a

    .line 51
    .line 52
    add-int/lit8 v6, v5, 0x3

    .line 53
    .line 54
    aget-byte v7, v4, v6

    .line 55
    .line 56
    and-int/lit8 v11, v7, 0x1f

    .line 57
    .line 58
    sub-int v7, v5, v2

    .line 59
    .line 60
    if-lez v7, :cond_0

    .line 61
    .line 62
    invoke-direct {v0, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzanh;->zzf([BII)V

    .line 63
    .line 64
    .line 65
    :cond_0
    sub-int v2, v3, v5

    .line 66
    .line 67
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzanh;->zze:J

    .line 68
    .line 69
    int-to-long v12, v2

    .line 70
    sub-long v9, v8, v12

    .line 71
    .line 72
    if-gez v7, :cond_1

    .line 73
    .line 74
    neg-int v7, v7

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const/4 v7, 0x0

    .line 77
    :goto_1
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzk:J

    .line 78
    .line 79
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzj:Z

    .line 80
    .line 81
    const/4 v14, 0x4

    .line 82
    if-eqz v8, :cond_3

    .line 83
    .line 84
    :cond_2
    move/from16 v18, v3

    .line 85
    .line 86
    move-object/from16 v19, v4

    .line 87
    .line 88
    move/from16 v17, v6

    .line 89
    .line 90
    move/from16 v16, v11

    .line 91
    .line 92
    const/4 v4, 0x3

    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :cond_3
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzb:Lcom/google/android/gms/internal/ads/zzann;

    .line 96
    .line 97
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzann;->zzd(I)Z

    .line 98
    .line 99
    .line 100
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzc:Lcom/google/android/gms/internal/ads/zzann;

    .line 101
    .line 102
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzann;->zzd(I)Z

    .line 103
    .line 104
    .line 105
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzj:Z

    .line 106
    .line 107
    if-nez v8, :cond_4

    .line 108
    .line 109
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzb:Lcom/google/android/gms/internal/ads/zzann;

    .line 110
    .line 111
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzann;->zze()Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_2

    .line 116
    .line 117
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzc:Lcom/google/android/gms/internal/ads/zzann;

    .line 118
    .line 119
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzann;->zze()Z

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-eqz v8, :cond_2

    .line 124
    .line 125
    new-instance v8, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzb:Lcom/google/android/gms/internal/ads/zzann;

    .line 131
    .line 132
    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zzann;->zza:[B

    .line 133
    .line 134
    iget v15, v15, Lcom/google/android/gms/internal/ads/zzann;->zzb:I

    .line 135
    .line 136
    invoke-static {v5, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzc:Lcom/google/android/gms/internal/ads/zzann;

    .line 144
    .line 145
    iget-object v15, v5, Lcom/google/android/gms/internal/ads/zzann;->zza:[B

    .line 146
    .line 147
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzann;->zzb:I

    .line 148
    .line 149
    invoke-static {v15, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzb:Lcom/google/android/gms/internal/ads/zzann;

    .line 157
    .line 158
    iget-object v15, v5, Lcom/google/android/gms/internal/ads/zzann;->zza:[B

    .line 159
    .line 160
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzann;->zzb:I

    .line 161
    .line 162
    invoke-static {v15, v14, v5}, Lcom/google/android/gms/internal/ads/zzgm;->zze([BII)Lcom/google/android/gms/internal/ads/zzgl;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzc:Lcom/google/android/gms/internal/ads/zzann;

    .line 167
    .line 168
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzann;->zza:[B

    .line 169
    .line 170
    iget v15, v15, Lcom/google/android/gms/internal/ads/zzann;->zzb:I

    .line 171
    .line 172
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/ads/zzgm;->zzd([BII)Lcom/google/android/gms/internal/ads/zzgk;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iget v15, v5, Lcom/google/android/gms/internal/ads/zzgl;->zza:I

    .line 177
    .line 178
    iget v14, v5, Lcom/google/android/gms/internal/ads/zzgl;->zzb:I

    .line 179
    .line 180
    move/from16 v17, v6

    .line 181
    .line 182
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzgl;->zzc:I

    .line 183
    .line 184
    invoke-static {v15, v14, v6}, Lcom/google/android/gms/internal/ads/zzem;->zza(III)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzh:Lcom/google/android/gms/internal/ads/zzaea;

    .line 189
    .line 190
    new-instance v15, Lcom/google/android/gms/internal/ads/zzak;

    .line 191
    .line 192
    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 193
    .line 194
    .line 195
    move/from16 v18, v3

    .line 196
    .line 197
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzg:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 200
    .line 201
    .line 202
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    move-object/from16 v19, v4

    .line 205
    .line 206
    move/from16 v16, v11

    .line 207
    .line 208
    const/4 v4, 0x3

    .line 209
    new-array v11, v4, [J

    .line 210
    .line 211
    fill-array-data v11, :array_0

    .line 212
    .line 213
    .line 214
    invoke-direct {v3, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 225
    .line 226
    .line 227
    iget v3, v5, Lcom/google/android/gms/internal/ads/zzgl;->zze:I

    .line 228
    .line 229
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzab(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 230
    .line 231
    .line 232
    iget v3, v5, Lcom/google/android/gms/internal/ads/zzgl;->zzf:I

    .line 233
    .line 234
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzI(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 235
    .line 236
    .line 237
    new-instance v3, Lcom/google/android/gms/internal/ads/zzr;

    .line 238
    .line 239
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzr;-><init>()V

    .line 240
    .line 241
    .line 242
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzgl;->zzj:I

    .line 243
    .line 244
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzr;->zzc(I)Lcom/google/android/gms/internal/ads/zzr;

    .line 245
    .line 246
    .line 247
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzgl;->zzk:I

    .line 248
    .line 249
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzr;->zzb(I)Lcom/google/android/gms/internal/ads/zzr;

    .line 250
    .line 251
    .line 252
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzgl;->zzl:I

    .line 253
    .line 254
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzr;->zzd(I)Lcom/google/android/gms/internal/ads/zzr;

    .line 255
    .line 256
    .line 257
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzgl;->zzh:I

    .line 258
    .line 259
    add-int/lit8 v6, v6, 0x8

    .line 260
    .line 261
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzr;->zzf(I)Lcom/google/android/gms/internal/ads/zzr;

    .line 262
    .line 263
    .line 264
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzgl;->zzi:I

    .line 265
    .line 266
    add-int/lit8 v6, v6, 0x8

    .line 267
    .line 268
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzr;->zza(I)Lcom/google/android/gms/internal/ads/zzr;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzr;->zzg()Lcom/google/android/gms/internal/ads/zzt;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzA(Lcom/google/android/gms/internal/ads/zzt;)Lcom/google/android/gms/internal/ads/zzak;

    .line 276
    .line 277
    .line 278
    iget v3, v5, Lcom/google/android/gms/internal/ads/zzgl;->zzg:F

    .line 279
    .line 280
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzS(F)Lcom/google/android/gms/internal/ads/zzak;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzak;->zzL(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-interface {v14, v3}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 291
    .line 292
    .line 293
    const/4 v3, 0x1

    .line 294
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzj:Z

    .line 295
    .line 296
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzi:Lcom/google/android/gms/internal/ads/zzang;

    .line 297
    .line 298
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzang;->zzc(Lcom/google/android/gms/internal/ads/zzgl;)V

    .line 299
    .line 300
    .line 301
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzi:Lcom/google/android/gms/internal/ads/zzang;

    .line 302
    .line 303
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzang;->zzb(Lcom/google/android/gms/internal/ads/zzgk;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzb:Lcom/google/android/gms/internal/ads/zzann;

    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzann;->zzb()V

    .line 309
    .line 310
    .line 311
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzc:Lcom/google/android/gms/internal/ads/zzann;

    .line 312
    .line 313
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzann;->zzb()V

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_4
    move/from16 v18, v3

    .line 318
    .line 319
    move-object/from16 v19, v4

    .line 320
    .line 321
    move/from16 v17, v6

    .line 322
    .line 323
    move/from16 v16, v11

    .line 324
    .line 325
    const/4 v4, 0x3

    .line 326
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzb:Lcom/google/android/gms/internal/ads/zzann;

    .line 327
    .line 328
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzann;->zze()Z

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    if-eqz v3, :cond_5

    .line 333
    .line 334
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzann;->zza:[B

    .line 335
    .line 336
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzann;->zzb:I

    .line 337
    .line 338
    const/4 v5, 0x4

    .line 339
    invoke-static {v3, v5, v1}, Lcom/google/android/gms/internal/ads/zzgm;->zze([BII)Lcom/google/android/gms/internal/ads/zzgl;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzi:Lcom/google/android/gms/internal/ads/zzang;

    .line 344
    .line 345
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzang;->zzc(Lcom/google/android/gms/internal/ads/zzgl;)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzb:Lcom/google/android/gms/internal/ads/zzann;

    .line 349
    .line 350
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzann;->zzb()V

    .line 351
    .line 352
    .line 353
    goto :goto_2

    .line 354
    :cond_5
    const/4 v5, 0x4

    .line 355
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzc:Lcom/google/android/gms/internal/ads/zzann;

    .line 356
    .line 357
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzann;->zze()Z

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-eqz v3, :cond_6

    .line 362
    .line 363
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzann;->zza:[B

    .line 364
    .line 365
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzann;->zzb:I

    .line 366
    .line 367
    invoke-static {v3, v5, v1}, Lcom/google/android/gms/internal/ads/zzgm;->zzd([BII)Lcom/google/android/gms/internal/ads/zzgk;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzi:Lcom/google/android/gms/internal/ads/zzang;

    .line 372
    .line 373
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzang;->zzb(Lcom/google/android/gms/internal/ads/zzgk;)V

    .line 374
    .line 375
    .line 376
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzc:Lcom/google/android/gms/internal/ads/zzann;

    .line 377
    .line 378
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzann;->zzb()V

    .line 379
    .line 380
    .line 381
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzd:Lcom/google/android/gms/internal/ads/zzann;

    .line 382
    .line 383
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzann;->zzd(I)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-eqz v1, :cond_7

    .line 388
    .line 389
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzd:Lcom/google/android/gms/internal/ads/zzann;

    .line 390
    .line 391
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzann;->zza:[B

    .line 392
    .line 393
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzann;->zzb:I

    .line 394
    .line 395
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzgm;->zzb([BI)I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzm:Lcom/google/android/gms/internal/ads/zzfp;

    .line 400
    .line 401
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzd:Lcom/google/android/gms/internal/ads/zzann;

    .line 402
    .line 403
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzann;->zza:[B

    .line 404
    .line 405
    invoke-virtual {v3, v5, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzI([BI)V

    .line 406
    .line 407
    .line 408
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzm:Lcom/google/android/gms/internal/ads/zzfp;

    .line 409
    .line 410
    const/4 v3, 0x4

    .line 411
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 412
    .line 413
    .line 414
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zza:Lcom/google/android/gms/internal/ads/zzanz;

    .line 415
    .line 416
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzm:Lcom/google/android/gms/internal/ads/zzfp;

    .line 417
    .line 418
    invoke-virtual {v1, v12, v13, v3}, Lcom/google/android/gms/internal/ads/zzanz;->zza(JLcom/google/android/gms/internal/ads/zzfp;)V

    .line 419
    .line 420
    .line 421
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzi:Lcom/google/android/gms/internal/ads/zzang;

    .line 422
    .line 423
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzj:Z

    .line 424
    .line 425
    invoke-virtual {v1, v9, v10, v2, v3}, Lcom/google/android/gms/internal/ads/zzang;->zzf(JIZ)Z

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    if-eqz v1, :cond_8

    .line 430
    .line 431
    const/4 v1, 0x0

    .line 432
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzl:Z

    .line 433
    .line 434
    :cond_8
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzk:J

    .line 435
    .line 436
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzj:Z

    .line 437
    .line 438
    if-nez v1, :cond_9

    .line 439
    .line 440
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzb:Lcom/google/android/gms/internal/ads/zzann;

    .line 441
    .line 442
    move/from16 v2, v16

    .line 443
    .line 444
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzann;->zzc(I)V

    .line 445
    .line 446
    .line 447
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzc:Lcom/google/android/gms/internal/ads/zzann;

    .line 448
    .line 449
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzann;->zzc(I)V

    .line 450
    .line 451
    .line 452
    goto :goto_3

    .line 453
    :cond_9
    move/from16 v2, v16

    .line 454
    .line 455
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzd:Lcom/google/android/gms/internal/ads/zzann;

    .line 456
    .line 457
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzann;->zzc(I)V

    .line 458
    .line 459
    .line 460
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzi:Lcom/google/android/gms/internal/ads/zzang;

    .line 461
    .line 462
    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzanh;->zzl:Z

    .line 463
    .line 464
    move v11, v2

    .line 465
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzang;->zze(JIJZ)V

    .line 466
    .line 467
    .line 468
    move/from16 v2, v17

    .line 469
    .line 470
    move/from16 v3, v18

    .line 471
    .line 472
    move-object/from16 v4, v19

    .line 473
    .line 474
    const/4 v1, 0x3

    .line 475
    goto/16 :goto_0

    .line 476
    .line 477
    :cond_a
    move v1, v3

    .line 478
    move-object v3, v4

    .line 479
    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzanh;->zzf([BII)V

    .line 480
    .line 481
    .line 482
    return-void

    .line 483
    :array_0
    .array-data 8
        0x2499d67d2825e239L
        -0x6e70527ae0f5c0c3L    # -4.279060463736993E-224
        0x790ce7058b813a4aL    # 1.2508360571815403E275
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaok;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzb()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzg:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zza()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzw(II)Lcom/google/android/gms/internal/ads/zzaea;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzh:Lcom/google/android/gms/internal/ads/zzaea;

    .line 20
    .line 21
    new-instance v1, Lcom/google/android/gms/internal/ads/zzang;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzang;-><init>(Lcom/google/android/gms/internal/ads/zzaea;ZZ)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzi:Lcom/google/android/gms/internal/ads/zzang;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zza:Lcom/google/android/gms/internal/ads/zzanz;

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzanz;->zzb(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaok;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final zzc(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzh:Lcom/google/android/gms/internal/ads/zzaea;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzi:Lcom/google/android/gms/internal/ads/zzang;

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zze:J

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzang;->zza(J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzk:J

    and-int/lit8 p1, p3, 0x2

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzl:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzl:Z

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zze:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzl:Z

    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzk:J

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzf:[Z

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgm;->zzf([Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzb:Lcom/google/android/gms/internal/ads/zzann;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzann;->zzb()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzc:Lcom/google/android/gms/internal/ads/zzann;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzann;->zzb()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzd:Lcom/google/android/gms/internal/ads/zzann;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzann;->zzb()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanh;->zzi:Lcom/google/android/gms/internal/ads/zzang;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzang;->zzd()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
