.class final Lcom/google/android/gms/internal/ads/zzhde;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcz;->zzA()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcz;->zzB()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/google/android/gms/internal/ads/zzgxw;->zza:I

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhdc;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhdc;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/zzhde;->zza:Lcom/google/android/gms/internal/ads/zzhdb;

    .line 21
    .line 22
    return-void
.end method

.method public static bridge synthetic zza(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhde;->zzk(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic zzb(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhde;->zzl(III)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic zzc([BII)I
    .locals 3

    .line 1
    sub-int/2addr p2, p1

    .line 2
    add-int/lit8 v0, p1, -0x1

    .line 3
    .line 4
    aget-byte v0, p0, v0

    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p2, v1, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne p2, v2, :cond_0

    .line 13
    .line 14
    aget-byte p2, p0, p1

    .line 15
    .line 16
    add-int/2addr p1, v1

    .line 17
    aget-byte p0, p0, p1

    .line 18
    .line 19
    invoke-static {v0, p2, p0}, Lcom/google/android/gms/internal/ads/zzhde;->zzl(III)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    aget-byte p0, p0, p1

    .line 31
    .line 32
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhde;->zzk(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/16 p0, -0xc

    .line 38
    .line 39
    if-le v0, p0, :cond_3

    .line 40
    .line 41
    const/4 v0, -0x1

    .line 42
    :cond_3
    :goto_0
    return v0
.end method

.method public static zzd(Ljava/lang/String;[BII)I
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    add-int v3, p2, p3

    .line 8
    .line 9
    const/16 v4, 0x80

    .line 10
    .line 11
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    add-int v5, v2, p2

    .line 14
    .line 15
    if-ge v5, v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-ge v6, v4, :cond_0

    .line 22
    .line 23
    int-to-byte v3, v6

    .line 24
    aput-byte v3, p1, v5

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-ne v2, v1, :cond_1

    .line 30
    .line 31
    add-int/2addr p2, v1

    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_1
    add-int/2addr p2, v2

    .line 35
    :goto_1
    if-ge v2, v1, :cond_b

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-ge p3, v4, :cond_2

    .line 42
    .line 43
    if-ge p2, v3, :cond_2

    .line 44
    .line 45
    add-int/lit8 v5, p2, 0x1

    .line 46
    .line 47
    int-to-byte p3, p3

    .line 48
    aput-byte p3, p1, p2

    .line 49
    .line 50
    move p2, v5

    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_2
    const/16 v5, 0x800

    .line 54
    .line 55
    if-ge p3, v5, :cond_3

    .line 56
    .line 57
    add-int/lit8 v5, v3, -0x2

    .line 58
    .line 59
    if-gt p2, v5, :cond_3

    .line 60
    .line 61
    add-int/lit8 v5, p2, 0x1

    .line 62
    .line 63
    add-int/lit8 v6, p2, 0x2

    .line 64
    .line 65
    ushr-int/lit8 v7, p3, 0x6

    .line 66
    .line 67
    or-int/lit16 v7, v7, 0x3c0

    .line 68
    .line 69
    int-to-byte v7, v7

    .line 70
    aput-byte v7, p1, p2

    .line 71
    .line 72
    and-int/lit8 p2, p3, 0x3f

    .line 73
    .line 74
    or-int/2addr p2, v4

    .line 75
    int-to-byte p2, p2

    .line 76
    aput-byte p2, p1, v5

    .line 77
    .line 78
    move p2, v6

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    const v5, 0xdfff

    .line 81
    .line 82
    .line 83
    const v6, 0xd800

    .line 84
    .line 85
    .line 86
    if-lt p3, v6, :cond_4

    .line 87
    .line 88
    if-le p3, v5, :cond_5

    .line 89
    .line 90
    :cond_4
    add-int/lit8 v7, v3, -0x3

    .line 91
    .line 92
    if-gt p2, v7, :cond_5

    .line 93
    .line 94
    add-int/lit8 v5, p2, 0x1

    .line 95
    .line 96
    add-int/lit8 v6, p2, 0x2

    .line 97
    .line 98
    add-int/lit8 v7, p2, 0x3

    .line 99
    .line 100
    ushr-int/lit8 v8, p3, 0xc

    .line 101
    .line 102
    or-int/lit16 v8, v8, 0x1e0

    .line 103
    .line 104
    int-to-byte v8, v8

    .line 105
    aput-byte v8, p1, p2

    .line 106
    .line 107
    ushr-int/lit8 p2, p3, 0x6

    .line 108
    .line 109
    and-int/lit8 p2, p2, 0x3f

    .line 110
    .line 111
    or-int/2addr p2, v4

    .line 112
    int-to-byte p2, p2

    .line 113
    aput-byte p2, p1, v5

    .line 114
    .line 115
    and-int/lit8 p2, p3, 0x3f

    .line 116
    .line 117
    or-int/2addr p2, v4

    .line 118
    int-to-byte p2, p2

    .line 119
    aput-byte p2, p1, v6

    .line 120
    .line 121
    move p2, v7

    .line 122
    goto :goto_2

    .line 123
    :cond_5
    add-int/lit8 v7, v3, -0x4

    .line 124
    .line 125
    if-gt p2, v7, :cond_8

    .line 126
    .line 127
    add-int/lit8 v5, v2, 0x1

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eq v5, v6, :cond_7

    .line 134
    .line 135
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-static {p3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-eqz v6, :cond_6

    .line 144
    .line 145
    add-int/lit8 v6, p2, 0x1

    .line 146
    .line 147
    add-int/lit8 v7, p2, 0x2

    .line 148
    .line 149
    add-int/lit8 v8, p2, 0x3

    .line 150
    .line 151
    invoke-static {p3, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 152
    .line 153
    .line 154
    move-result p3

    .line 155
    ushr-int/lit8 v2, p3, 0x12

    .line 156
    .line 157
    or-int/lit16 v2, v2, 0xf0

    .line 158
    .line 159
    int-to-byte v2, v2

    .line 160
    aput-byte v2, p1, p2

    .line 161
    .line 162
    ushr-int/lit8 v2, p3, 0xc

    .line 163
    .line 164
    and-int/lit8 v2, v2, 0x3f

    .line 165
    .line 166
    or-int/2addr v2, v4

    .line 167
    int-to-byte v2, v2

    .line 168
    aput-byte v2, p1, v6

    .line 169
    .line 170
    ushr-int/lit8 v2, p3, 0x6

    .line 171
    .line 172
    and-int/lit8 v2, v2, 0x3f

    .line 173
    .line 174
    or-int/2addr v2, v4

    .line 175
    int-to-byte v2, v2

    .line 176
    aput-byte v2, p1, v7

    .line 177
    .line 178
    add-int/lit8 p2, p2, 0x4

    .line 179
    .line 180
    and-int/lit8 p3, p3, 0x3f

    .line 181
    .line 182
    or-int/2addr p3, v4

    .line 183
    int-to-byte p3, p3

    .line 184
    aput-byte p3, p1, v8

    .line 185
    .line 186
    move v2, v5

    .line 187
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :cond_6
    move v2, v5

    .line 192
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhdd;

    .line 193
    .line 194
    add-int/lit8 v2, v2, -0x1

    .line 195
    .line 196
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhdd;-><init>(II)V

    .line 197
    .line 198
    .line 199
    throw p0

    .line 200
    :cond_8
    if-lt p3, v6, :cond_a

    .line 201
    .line 202
    if-gt p3, v5, :cond_a

    .line 203
    .line 204
    add-int/lit8 p1, v2, 0x1

    .line 205
    .line 206
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eq p1, v3, :cond_9

    .line 211
    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    invoke-static {p3, p0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    if-nez p0, :cond_a

    .line 221
    .line 222
    :cond_9
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhdd;

    .line 223
    .line 224
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhdd;-><init>(II)V

    .line 225
    .line 226
    .line 227
    throw p0

    .line 228
    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 229
    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 236
    .line 237
    new-array v2, v0, [J

    .line 238
    .line 239
    fill-array-data v2, :array_0

    .line 240
    .line 241
    .line 242
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array v0, v0, [J

    .line 258
    .line 259
    fill-array-data v0, :array_1

    .line 260
    .line 261
    .line 262
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-static {p3, p1, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw p0

    .line 273
    :cond_b
    :goto_3
    return p2

    .line 274
    nop

    .line 275
    :array_0
    .array-data 8
        0x4fc495d3df07c420L    # 1.8621958931364908E76
        0x1efb128f0a6cec93L
        -0x5e767d4025a410d6L
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
    .line 291
    :array_1
    .array-data 8
        0xb479ad99fe38539L
        0x70559e533d4a4dfeL    # 1.3425218640946288E233
        -0x64fefe7ce2154592L    # -1.311451934261508E-178
    .end array-data
.end method

.method public static zze(Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x80

    .line 14
    .line 15
    if-ge v3, v4, :cond_0

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v0

    .line 21
    :goto_1
    if-ge v2, v0, :cond_6

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/16 v5, 0x800

    .line 28
    .line 29
    if-ge v4, v5, :cond_1

    .line 30
    .line 31
    rsub-int/lit8 v4, v4, 0x7f

    .line 32
    .line 33
    ushr-int/lit8 v4, v4, 0x1f

    .line 34
    .line 35
    add-int/2addr v3, v4

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    :goto_2
    if-ge v2, v4, :cond_5

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-ge v6, v5, :cond_2

    .line 50
    .line 51
    rsub-int/lit8 v6, v6, 0x7f

    .line 52
    .line 53
    ushr-int/lit8 v6, v6, 0x1f

    .line 54
    .line 55
    add-int/2addr v1, v6

    .line 56
    goto :goto_3

    .line 57
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 58
    .line 59
    const v7, 0xd800

    .line 60
    .line 61
    .line 62
    if-lt v6, v7, :cond_4

    .line 63
    .line 64
    const v7, 0xdfff

    .line 65
    .line 66
    .line 67
    if-gt v6, v7, :cond_4

    .line 68
    .line 69
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    const/high16 v7, 0x10000

    .line 74
    .line 75
    if-lt v6, v7, :cond_3

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhdd;

    .line 81
    .line 82
    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/internal/ads/zzhdd;-><init>(II)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    add-int/2addr v3, v1

    .line 90
    :cond_6
    if-lt v3, v0, :cond_7

    .line 91
    .line 92
    return v3

    .line 93
    :cond_7
    int-to-long v0, v3

    .line 94
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    const/4 v4, 0x6

    .line 104
    new-array v4, v4, [J

    .line 105
    .line 106
    fill-array-data v4, :array_0

    .line 107
    .line 108
    .line 109
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-wide v3, 0x100000000L

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    add-long/2addr v0, v3

    .line 125
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    nop

    .line 137
    :array_0
    .array-data 8
        -0x26b0b245859eb733L    # -1.6166757235199717E122
        0x24f0368f4574c349L    # 9.136683591179737E-131
        -0x690983b2b1e2c0ecL    # -4.7000931503358266E-198
        -0x7386ba8d70fdc84eL    # -1.411857344701304E-248
        0x6899c7f4e0fb3707L    # 7.527977468624513E195
        -0x173b9754073af042L    # -4.767450934579837E196
    .end array-data
.end method

.method public static zzf(I[BII)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhde;->zza:Lcom/google/android/gms/internal/ads/zzhdb;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhdb;->zza(I[BII)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static zzg(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhde;->zza:Lcom/google/android/gms/internal/ads/zzhdb;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    add-int/2addr v1, p1

    .line 18
    invoke-virtual {v0, p0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhdb;->zzb([BII)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhdb;->zzd(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhdb;->zzd(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    return-object p0
.end method

.method public static zzh([BII)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhde;->zza:Lcom/google/android/gms/internal/ads/zzhdb;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhdb;->zzb([BII)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static zzi([B)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhde;->zza:Lcom/google/android/gms/internal/ads/zzhdb;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhdb;->zzc([BII)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static zzj([BII)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhde;->zza:Lcom/google/android/gms/internal/ads/zzhdb;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhdb;->zzc([BII)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static zzk(II)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static zzl(III)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-gt p1, v0, :cond_1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    shl-int/lit8 p2, p2, 0x10

    xor-int/2addr p0, p1

    xor-int/2addr p0, p2

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method
