.class Lcom/google/android/gms/internal/ads/zzfuc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Ljava/lang/String;


# instance fields
.field final zzb:Lcom/google/android/gms/internal/ads/zzfud;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/UUID;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfuc;->zza:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfud;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfud;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfud;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzc:Ljava/lang/String;

    .line 11
    .line 12
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    new-array v1, v0, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzd:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zze:Ljava/lang/String;

    .line 34
    .line 35
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array p2, v0, [J

    .line 38
    .line 39
    fill-array-data p2, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzf:Ljava/lang/String;

    .line 54
    .line 55
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzg:Ljava/lang/String;

    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        -0x67f0363b1380271aL
        0x36405062679707cL
    .end array-data

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
    :array_1
    .array-data 8
        0x544a2d1e5e28c219L    # 1.1182423834045327E98
        0x6d183f33114f7ad2L    # 3.343432995635736E217
    .end array-data
.end method

.method private final zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1, p2, p3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzg:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/16 v3, 0xc

    .line 37
    .line 38
    new-array v3, v3, [J

    .line 39
    .line 40
    fill-array-data v3, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v2, v0, [J

    .line 58
    .line 59
    fill-array-data v2, :array_1

    .line 60
    .line 61
    .line 62
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v2, v0, [J

    .line 73
    .line 74
    fill-array-data v2, :array_2

    .line 75
    .line 76
    .line 77
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    const/4 v2, 0x3

    .line 90
    new-array v2, v2, [J

    .line 91
    .line 92
    fill-array-data v2, :array_3

    .line 93
    .line 94
    .line 95
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    if-nez p3, :cond_3

    .line 106
    .line 107
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array p3, v0, [J

    .line 110
    .line 111
    fill-array-data p3, :array_4

    .line 112
    .line 113
    .line 114
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array p3, v0, [J

    .line 125
    .line 126
    fill-array-data p3, :array_5

    .line 127
    .line 128
    .line 129
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v1

    .line 147
    :array_0
    .array-data 8
        0x1f6cb28480179bceL    # 2.612725796504175E-157
        0x3e09f14e13453566L    # 7.55028961696342E-10
        0x265832cb1d31537fL    # 5.719639513486188E-124
        -0x7328a5ce271930e5L    # -8.349753514203722E-247
        0xfc28951faed7ef3L    # 9.327793455102193E-233
        -0x5496180cf1547395L    # -1.4805145688498398E-99
        -0x466f8e4cbe1dfd1eL    # -2.0268969295943295E-31
        -0x63684fcb15c8c9efL    # -6.129661641602645E-171
        -0x34a9a05fceedcf06L    # -8.571836835674741E54
        0x5d657992ac802bdaL    # 8.183498559103817E141
        -0x639bf39032e6263bL    # -6.484793080396819E-172
        -0xef3589e119e9d44L    # -3.6442605161465236E236
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
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
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_1
    .array-data 8
        -0x19d1bb7c1744142cL
        -0x6344920f5a44f75bL
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_2
    .array-data 8
        -0x214242a44f5492a6L    # -2.376698981311028E148
        -0x7699cead476aeb08L
    .end array-data

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
    :array_3
    .array-data 8
        -0x5126a9a1c54f8d58L    # -5.217023945916906E-83
        0x6fcb0cc35ca709faL    # 3.2808899072651068E230
        0x32e2ec7c25903d82L    # 1.437535469333951E-63
    .end array-data

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
    .line 236
    .line 237
    .line 238
    .line 239
    :array_4
    .array-data 8
        0x30915c680a221913L    # 9.59566070941052E-75
        -0x4a319e2b1532d0dfL    # -1.6240870398131287E-49
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
    :array_5
    .array-data 8
        -0x370a3975bbf7babbL    # -3.035068319879461E43
        -0x43cafc5f5d22c9c6L    # -1.139180430960546E-18
    .end array-data
.end method


# virtual methods
.method public final zza(Z)J
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzf:Ljava/lang/String;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zze:Ljava/lang/String;

    .line 7
    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfud;

    .line 9
    .line 10
    const-wide/16 v1, -0x1

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfud;->zza(Ljava/lang/String;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/ads/zzfub;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfuc;->zza:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfuc;->zze(Z)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfud;

    .line 21
    .line 22
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v4, 0x3

    .line 25
    new-array v4, v4, [J

    .line 26
    .line 27
    fill-array-data v4, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfud;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzfuc;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfuc;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfub;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :catch_0
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfub;

    .line 63
    .line 64
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfub;-><init>()V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    const/4 v0, 0x0

    .line 72
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v1

    .line 76
    const-wide/16 v3, 0x0

    .line 77
    .line 78
    cmp-long v5, v1, v3

    .line 79
    .line 80
    if-ltz v5, :cond_9

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfuc;->zza(Z)J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    const-wide/16 v5, -0x1

    .line 87
    .line 88
    cmp-long v7, v3, v5

    .line 89
    .line 90
    if-nez v7, :cond_4

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    cmp-long v5, v1, v3

    .line 94
    .line 95
    if-gez v5, :cond_6

    .line 96
    .line 97
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfud;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzf:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zze:Ljava/lang/String;

    .line 105
    .line 106
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p3, p4, v1}, Lcom/google/android/gms/internal/ads/zzfud;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_6
    add-long/2addr v3, p3

    .line 115
    cmp-long p3, v1, v3

    .line 116
    .line 117
    if-ltz p3, :cond_7

    .line 118
    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfuc;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfub;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1

    .line 124
    :cond_7
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfuc;->zze(Z)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    if-nez p3, :cond_8

    .line 129
    .line 130
    if-nez p5, :cond_8

    .line 131
    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfuc;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfub;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    return-object p1

    .line 137
    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfub;

    .line 138
    .line 139
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfuc;->zza(Z)J

    .line 140
    .line 141
    .line 142
    move-result-wide p4

    .line 143
    invoke-direct {p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzfub;-><init>(Ljava/lang/String;J)V

    .line 144
    .line 145
    .line 146
    return-object p1

    .line 147
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzg:Ljava/lang/String;

    .line 148
    .line 149
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    const/16 p3, 0x9

    .line 152
    .line 153
    new-array p3, p3, [J

    .line 154
    .line 155
    fill-array-data p3, :array_1

    .line 156
    .line 157
    .line 158
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p3

    .line 175
    :array_0
    .array-data 8
        -0x52e229541e296844L    # -2.2887543900021614E-91
        0x79d8ab90eb2b0c88L    # 8.746379576653201E278
        -0x431124ef99c935aL    # -2.354748228431149E288
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
    :array_1
    .array-data 8
        0x14bf21b9fbf88d8aL    # 9.469487397981239E-209
        0xf388ce0c30c585fL
        -0x42246ef9dfa0b546L
        -0x6a829cace74ba00fL    # -3.661447408488765E-205
        0x3c183ad3d2b8caL
        0x5c220aade597e174L    # 6.55670890453931E135
        0x7aa6c85862bd3d9bL    # 6.616818246998052E282
        -0x23f3f8edd44ddbc6L    # -2.546445037737103E135
        0x32c72bb0abd80dd1L    # 4.40037229699584E-64
    .end array-data
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfub;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfuc;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzfub;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfud;

    .line 26
    .line 27
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    new-array v3, v3, [J

    .line 31
    .line 32
    fill-array-data v3, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfud;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfuc;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 p2, 0x1

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfuc;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzfub;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :array_0
    .array-data 8
        0x5fd9ddafb303ee0aL    # 5.4188414564239546E153
        0x148d92184cb7f55cL
        0x3760049c92aca61eL    # 5.746180756192938E-42
    .end array-data
.end method

.method public final zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzfub;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-ltz v4, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfud;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzf:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zze:Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfud;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfud;

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzd:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzc:Ljava/lang/String;

    .line 35
    .line 36
    :goto_1
    invoke-virtual {v2, p2, p1}, Lcom/google/android/gms/internal/ads/zzfud;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfub;

    .line 40
    .line 41
    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfub;-><init>(Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    return-object p2

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzg:Ljava/lang/String;

    .line 46
    .line 47
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    new-array v1, v1, [J

    .line 54
    .line 55
    fill-array-data v1, :array_0

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p2

    .line 73
    :array_0
    .array-data 8
        0x7f94e6e77193abfbL    # 3.6694654556889764E306
        -0x3c512db9b496c76aL    # -1.11045742797444173E18
        -0x6117380be79bb751L    # -8.813173838876128E-160
        -0x46a6709d1a931315L    # -1.9690786934987044E-32
        -0x27dc9c6d5266de74L    # -3.819818995727605E116
        -0x4f53de06bf466b48L
        -0x7883f698c98fc782L
        0x584e26c97d236b6eL    # 2.3760601233730268E117
        -0x134e0192a19bdc7eL    # -3.876869312946891E215
    .end array-data
.end method

.method public final zze(Z)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzd:Ljava/lang/String;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzc:Ljava/lang/String;

    .line 7
    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfud;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfud;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final zzf(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzf:Ljava/lang/String;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zze:Ljava/lang/String;

    .line 7
    .line 8
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfud;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfud;->zze(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfud;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzd:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzc:Ljava/lang/String;

    .line 21
    .line 22
    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfud;->zze(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final zzg(Z)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfud;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzc:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfud;->zzg(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
