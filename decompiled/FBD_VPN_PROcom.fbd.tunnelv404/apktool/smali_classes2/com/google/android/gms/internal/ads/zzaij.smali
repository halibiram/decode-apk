.class final Lcom/google/android/gms/internal/ads/zzaij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaii;


# instance fields
.field private final zza:[J

.field private final zzb:[J

.field private final zzc:J

.field private final zzd:J


# direct methods
.method private constructor <init>([J[JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaij;->zza:[J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzb:[J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzd:J

    return-void
.end method

.method public static zzb(JJLcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaij;
    .locals 27
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    const/4 v6, 0x2

    .line 8
    const/16 v7, 0xa

    .line 9
    .line 10
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    if-gtz v7, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iget v8, v2, Lcom/google/android/gms/internal/ads/zzado;->zzd:I

    .line 21
    .line 22
    const/16 v9, 0x7d00

    .line 23
    .line 24
    if-lt v8, v9, :cond_1

    .line 25
    .line 26
    const/16 v9, 0x480

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 v9, 0x240

    .line 30
    .line 31
    :goto_0
    int-to-long v9, v9

    .line 32
    const-wide/32 v11, 0xf4240

    .line 33
    .line 34
    .line 35
    mul-long v15, v9, v11

    .line 36
    .line 37
    int-to-long v8, v8

    .line 38
    int-to-long v13, v7

    .line 39
    sget-object v19, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 40
    .line 41
    move-wide/from16 v17, v8

    .line 42
    .line 43
    invoke-static/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzfy;->zzs(JJJLjava/math/RoundingMode;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v23

    .line 47
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 60
    .line 61
    .line 62
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzado;->zzc:I

    .line 63
    .line 64
    int-to-long v10, v2

    .line 65
    add-long v10, p2, v10

    .line 66
    .line 67
    new-array v2, v7, [J

    .line 68
    .line 69
    new-array v12, v7, [J

    .line 70
    .line 71
    const/4 v13, 0x0

    .line 72
    move-wide/from16 v14, p2

    .line 73
    .line 74
    :goto_1
    if-ge v13, v7, :cond_6

    .line 75
    .line 76
    int-to-long v4, v13

    .line 77
    mul-long v4, v4, v23

    .line 78
    .line 79
    int-to-long v0, v7

    .line 80
    div-long/2addr v4, v0

    .line 81
    aput-wide v4, v2, v13

    .line 82
    .line 83
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    aput-wide v0, v12, v13

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    if-eq v9, v0, :cond_5

    .line 91
    .line 92
    if-eq v9, v6, :cond_4

    .line 93
    .line 94
    const/4 v0, 0x3

    .line 95
    if-eq v9, v0, :cond_3

    .line 96
    .line 97
    const/4 v0, 0x4

    .line 98
    if-eq v9, v0, :cond_2

    .line 99
    .line 100
    :goto_2
    const/4 v0, 0x0

    .line 101
    return-object v0

    .line 102
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzfp;->zzp()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    goto :goto_3

    .line 107
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzfp;->zzo()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    :goto_3
    int-to-long v4, v8

    .line 122
    int-to-long v0, v0

    .line 123
    mul-long v0, v0, v4

    .line 124
    .line 125
    add-long/2addr v14, v0

    .line 126
    const/4 v0, 0x1

    .line 127
    add-int/2addr v13, v0

    .line 128
    move-wide/from16 v0, p0

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    const-wide/16 v0, -0x1

    .line 132
    .line 133
    move-wide/from16 v3, p0

    .line 134
    .line 135
    cmp-long v5, v3, v0

    .line 136
    .line 137
    if-eqz v5, :cond_7

    .line 138
    .line 139
    cmp-long v0, v3, v14

    .line 140
    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    const/4 v5, 0x5

    .line 151
    new-array v5, v5, [J

    .line 152
    .line 153
    fill-array-data v5, :array_0

    .line 154
    .line 155
    .line 156
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 170
    .line 171
    new-array v3, v6, [J

    .line 172
    .line 173
    fill-array-data v3, :array_1

    .line 174
    .line 175
    .line 176
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v0, v14, v15}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;J)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 184
    .line 185
    const/4 v3, 0x3

    .line 186
    new-array v3, v3, [J

    .line 187
    .line 188
    fill-array-data v3, :array_2

    .line 189
    .line 190
    .line 191
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaij;

    .line 202
    .line 203
    move-object/from16 v20, v0

    .line 204
    .line 205
    move-object/from16 v21, v2

    .line 206
    .line 207
    move-object/from16 v22, v12

    .line 208
    .line 209
    move-wide/from16 v25, v14

    .line 210
    .line 211
    invoke-direct/range {v20 .. v26}, Lcom/google/android/gms/internal/ads/zzaij;-><init>([J[JJJ)V

    .line 212
    .line 213
    .line 214
    return-object v0

    .line 215
    :array_0
    .array-data 8
        -0x275a84c9f6e7e93L
        -0x6e7e22322fb5860bL    # -2.413408399050598E-224
        0x4b866eae0f097730L    # 6.875493254171782E55
        0x367551ba032a95fbL    # 2.3339550532346505E-46
        -0x7456113e514e6762L
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
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    :array_1
    .array-data 8
        0x40ef3cad811938a1L    # 63973.42200909672
        0x21c20deb2f6aa716L    # 4.518293594289411E-146
    .end array-data

    :array_2
    .array-data 8
        0x22947ece030e1c35L    # 4.201815624761244E-142
        0x7531afc31df5758L
        -0x7761431c1bbcd445L
    .end array-data
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzc:J

    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzd:J

    return-wide v0
.end method

.method public final zzd(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzb:[J

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaij;->zza:[J

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, p1, p2, v2, v2}, Lcom/google/android/gms/internal/ads/zzfy;->zzc([JJZZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget-wide p1, v1, p1

    .line 11
    .line 12
    return-wide p1
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzads;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaij;->zza:[J

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzc([JJZZ)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    new-instance v3, Lcom/google/android/gms/internal/ads/zzadv;

    .line 9
    .line 10
    aget-wide v4, v0, v2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzb:[J

    .line 13
    .line 14
    aget-wide v6, v0, v2

    .line 15
    .line 16
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzadv;-><init>(JJ)V

    .line 17
    .line 18
    .line 19
    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzadv;->zzb:J

    .line 20
    .line 21
    cmp-long v0, v4, p1

    .line 22
    .line 23
    if-gez v0, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaij;->zza:[J

    .line 26
    .line 27
    array-length p2, p1

    .line 28
    add-int/lit8 p2, p2, -0x1

    .line 29
    .line 30
    if-ne v2, p2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    add-int/2addr v2, v1

    .line 34
    new-instance p2, Lcom/google/android/gms/internal/ads/zzadv;

    .line 35
    .line 36
    aget-wide v0, p1, v2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzb:[J

    .line 39
    .line 40
    aget-wide v4, p1, v2

    .line 41
    .line 42
    invoke-direct {p2, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzadv;-><init>(JJ)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lcom/google/android/gms/internal/ads/zzads;

    .line 46
    .line 47
    invoke-direct {p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzads;-><init>(Lcom/google/android/gms/internal/ads/zzadv;Lcom/google/android/gms/internal/ads/zzadv;)V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzads;

    .line 52
    .line 53
    invoke-direct {p1, v3, v3}, Lcom/google/android/gms/internal/ads/zzads;-><init>(Lcom/google/android/gms/internal/ads/zzadv;Lcom/google/android/gms/internal/ads/zzadv;)V

    .line 54
    .line 55
    .line 56
    return-object p1
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
