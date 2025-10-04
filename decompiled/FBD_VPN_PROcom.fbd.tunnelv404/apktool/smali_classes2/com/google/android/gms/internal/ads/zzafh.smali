.class final Lcom/google/android/gms/internal/ads/zzafh;
.super Lcom/google/android/gms/internal/ads/zzafg;
.source "SourceFile"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfp;

.field private zzd:I

.field private zze:Z

.field private zzf:Z

.field private zzg:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaea;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafg;-><init>(Lcom/google/android/gms/internal/ads/zzaea;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfp;

    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgm;->zza:[B

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfp;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 12
    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfp;

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfp;)Z
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    shr-int/lit8 v1, p1, 0x4

    .line 7
    .line 8
    and-int/lit8 p1, p1, 0xf

    .line 9
    .line 10
    const/4 v2, 0x7

    .line 11
    if-ne p1, v2, :cond_1

    .line 12
    .line 13
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafh;->zzg:I

    .line 14
    .line 15
    if-eq v1, v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaff;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v0, v0, [J

    .line 31
    .line 32
    fill-array-data v0, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v2, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaff;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x613adb96f276fdb1L
        -0x6a288720ec992e09L
        0x4164bf75c8cb3c7bL    # 1.0877870274809113E7
        0x440fd56f01b49027L    # 7.340357242656423E19
        0x494f4e077032803dL    # 1.3962407811388928E45
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfp;J)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzh()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    int-to-long v4, v4

    .line 15
    const/4 v6, 0x1

    .line 16
    const/4 v7, 0x0

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzafh;->zze:Z

    .line 20
    .line 21
    if-nez v2, :cond_4

    .line 22
    .line 23
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfp;

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    new-array v3, v3, [B

    .line 30
    .line 31
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzfp;-><init>([B)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual {v1, v3, v7, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzabz;->zza(Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzabz;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzabz;->zzb:I

    .line 50
    .line 51
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzd:I

    .line 52
    .line 53
    new-instance v2, Lcom/google/android/gms/internal/ads/zzak;

    .line 54
    .line 55
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v4, 0x3

    .line 61
    new-array v4, v4, [J

    .line 62
    .line 63
    fill-array-data v4, :array_0

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 74
    .line 75
    .line 76
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzabz;->zzk:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 79
    .line 80
    .line 81
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzabz;->zzc:I

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzab(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 84
    .line 85
    .line 86
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzabz;->zzd:I

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzI(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 89
    .line 90
    .line 91
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzabz;->zzj:F

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzS(F)Lcom/google/android/gms/internal/ads/zzak;

    .line 94
    .line 95
    .line 96
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzabz;->zza:Ljava/util/List;

    .line 97
    .line 98
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzL(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafg;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    .line 106
    .line 107
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 108
    .line 109
    .line 110
    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzafh;->zze:Z

    .line 111
    .line 112
    return v7

    .line 113
    :cond_0
    if-ne v3, v6, :cond_4

    .line 114
    .line 115
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzafh;->zze:Z

    .line 116
    .line 117
    if-eqz v3, :cond_4

    .line 118
    .line 119
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzg:I

    .line 120
    .line 121
    if-ne v3, v6, :cond_1

    .line 122
    .line 123
    const/4 v3, 0x1

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    const/4 v3, 0x0

    .line 126
    :goto_0
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzf:Z

    .line 127
    .line 128
    if-nez v8, :cond_2

    .line 129
    .line 130
    if-eqz v3, :cond_4

    .line 131
    .line 132
    const/4 v12, 0x1

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    move v12, v3

    .line 135
    :goto_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    aput-byte v7, v3, v7

    .line 142
    .line 143
    aput-byte v7, v3, v6

    .line 144
    .line 145
    const/4 v8, 0x2

    .line 146
    aput-byte v7, v3, v8

    .line 147
    .line 148
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzd:I

    .line 149
    .line 150
    rsub-int/lit8 v3, v3, 0x4

    .line 151
    .line 152
    const/4 v13, 0x0

    .line 153
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-lez v8, :cond_3

    .line 158
    .line 159
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 160
    .line 161
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzd:I

    .line 166
    .line 167
    invoke-virtual {v1, v8, v3, v9}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 168
    .line 169
    .line 170
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 171
    .line 172
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 173
    .line 174
    .line 175
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 176
    .line 177
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 178
    .line 179
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfp;->zzp()I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 184
    .line 185
    .line 186
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafg;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    .line 187
    .line 188
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 189
    .line 190
    invoke-interface {v9, v10, v2}, Lcom/google/android/gms/internal/ads/zzaea;->zzr(Lcom/google/android/gms/internal/ads/zzfp;I)V

    .line 191
    .line 192
    .line 193
    add-int/2addr v13, v2

    .line 194
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafg;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    .line 195
    .line 196
    invoke-interface {v9, v1, v8}, Lcom/google/android/gms/internal/ads/zzaea;->zzr(Lcom/google/android/gms/internal/ads/zzfp;I)V

    .line 197
    .line 198
    .line 199
    add-int/2addr v13, v8

    .line 200
    goto :goto_2

    .line 201
    :cond_3
    const-wide/16 v1, 0x3e8

    .line 202
    .line 203
    mul-long v4, v4, v1

    .line 204
    .line 205
    add-long v10, v4, p2

    .line 206
    .line 207
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafg;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    .line 208
    .line 209
    const/4 v14, 0x0

    .line 210
    const/4 v15, 0x0

    .line 211
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzaea;->zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 212
    .line 213
    .line 214
    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzf:Z

    .line 215
    .line 216
    return v6

    .line 217
    :cond_4
    return v7

    .line 218
    nop

    .line 219
    :array_0
    .array-data 8
        -0x706421d3b06ceb41L    # -1.7529399954095737E-233
        -0x4c950dab9f69616eL    # -5.240284483055064E-61
        0x2b66afe0c19cf214L
    .end array-data
.end method
