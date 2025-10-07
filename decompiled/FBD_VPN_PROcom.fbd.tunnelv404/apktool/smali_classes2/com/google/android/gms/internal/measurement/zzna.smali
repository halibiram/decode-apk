.class final Lcom/google/android/gms/internal/measurement/zzna;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzmx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmv;->zzx()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmv;->zzy()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/google/android/gms/internal/measurement/zzin;->zza:I

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmy;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmy;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzna;->zza:Lcom/google/android/gms/internal/measurement/zzmx;

    .line 21
    .line 22
    return-void
.end method

.method public static bridge synthetic zza([BII)I
    .locals 6

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    aget-byte v0, p0, v0

    .line 4
    .line 5
    sub-int/2addr p2, p1

    .line 6
    const/16 v1, -0xc

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-eqz p2, :cond_5

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/16 v4, -0x41

    .line 13
    .line 14
    if-eq p2, v3, :cond_3

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    if-ne p2, v5, :cond_2

    .line 18
    .line 19
    aget-byte p2, p0, p1

    .line 20
    .line 21
    add-int/2addr p1, v3

    .line 22
    aget-byte p0, p0, p1

    .line 23
    .line 24
    if-gt v0, v1, :cond_0

    .line 25
    .line 26
    if-gt p2, v4, :cond_0

    .line 27
    .line 28
    if-le p0, v4, :cond_1

    .line 29
    .line 30
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    shl-int/lit8 p1, p2, 0x8

    .line 33
    .line 34
    xor-int/2addr p1, v0

    .line 35
    shl-int/lit8 p0, p0, 0x10

    .line 36
    .line 37
    xor-int v0, p1, p0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_3
    aget-byte p0, p0, p1

    .line 47
    .line 48
    if-gt v0, v1, :cond_0

    .line 49
    .line 50
    if-le p0, v4, :cond_4

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    shl-int/lit8 p0, p0, 0x8

    .line 54
    .line 55
    xor-int/2addr v0, p0

    .line 56
    goto :goto_1

    .line 57
    :cond_5
    if-le v0, v1, :cond_6

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_6
    :goto_1
    return v0
.end method

.method public static zzb(Ljava/lang/CharSequence;[BII)I
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    add-int/2addr p3, p2

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    const/16 v3, 0x80

    .line 9
    .line 10
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    add-int v4, v2, p2

    .line 13
    .line 14
    if-ge v4, p3, :cond_0

    .line 15
    .line 16
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-ge v5, v3, :cond_0

    .line 21
    .line 22
    int-to-byte v3, v5

    .line 23
    aput-byte v3, p1, v4

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-ne v2, v1, :cond_1

    .line 29
    .line 30
    add-int/2addr p2, v1

    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_1
    add-int/2addr p2, v2

    .line 34
    :goto_1
    if-ge v2, v1, :cond_b

    .line 35
    .line 36
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-ge v4, v3, :cond_2

    .line 41
    .line 42
    if-ge p2, p3, :cond_2

    .line 43
    .line 44
    add-int/lit8 v5, p2, 0x1

    .line 45
    .line 46
    int-to-byte v4, v4

    .line 47
    aput-byte v4, p1, p2

    .line 48
    .line 49
    move p2, v5

    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_2
    const/16 v5, 0x800

    .line 53
    .line 54
    if-ge v4, v5, :cond_3

    .line 55
    .line 56
    add-int/lit8 v5, p3, -0x2

    .line 57
    .line 58
    if-gt p2, v5, :cond_3

    .line 59
    .line 60
    add-int/lit8 v5, p2, 0x1

    .line 61
    .line 62
    ushr-int/lit8 v6, v4, 0x6

    .line 63
    .line 64
    or-int/lit16 v6, v6, 0x3c0

    .line 65
    .line 66
    int-to-byte v6, v6

    .line 67
    aput-byte v6, p1, p2

    .line 68
    .line 69
    add-int/lit8 p2, p2, 0x2

    .line 70
    .line 71
    and-int/lit8 v4, v4, 0x3f

    .line 72
    .line 73
    or-int/2addr v4, v3

    .line 74
    int-to-byte v4, v4

    .line 75
    aput-byte v4, p1, v5

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    const v5, 0xdfff

    .line 79
    .line 80
    .line 81
    const v6, 0xd800

    .line 82
    .line 83
    .line 84
    if-lt v4, v6, :cond_4

    .line 85
    .line 86
    if-le v4, v5, :cond_5

    .line 87
    .line 88
    :cond_4
    add-int/lit8 v7, p3, -0x3

    .line 89
    .line 90
    if-gt p2, v7, :cond_5

    .line 91
    .line 92
    add-int/lit8 v5, p2, 0x1

    .line 93
    .line 94
    ushr-int/lit8 v6, v4, 0xc

    .line 95
    .line 96
    or-int/lit16 v6, v6, 0x1e0

    .line 97
    .line 98
    int-to-byte v6, v6

    .line 99
    aput-byte v6, p1, p2

    .line 100
    .line 101
    add-int/lit8 v6, p2, 0x2

    .line 102
    .line 103
    ushr-int/lit8 v7, v4, 0x6

    .line 104
    .line 105
    and-int/lit8 v7, v7, 0x3f

    .line 106
    .line 107
    or-int/2addr v7, v3

    .line 108
    int-to-byte v7, v7

    .line 109
    aput-byte v7, p1, v5

    .line 110
    .line 111
    add-int/2addr p2, v0

    .line 112
    and-int/lit8 v4, v4, 0x3f

    .line 113
    .line 114
    or-int/2addr v4, v3

    .line 115
    int-to-byte v4, v4

    .line 116
    aput-byte v4, p1, v6

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    add-int/lit8 v7, p3, -0x4

    .line 120
    .line 121
    if-gt p2, v7, :cond_8

    .line 122
    .line 123
    add-int/lit8 v5, v2, 0x1

    .line 124
    .line 125
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eq v5, v6, :cond_7

    .line 130
    .line 131
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-static {v4, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_6

    .line 140
    .line 141
    invoke-static {v4, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    add-int/lit8 v4, p2, 0x1

    .line 146
    .line 147
    ushr-int/lit8 v6, v2, 0x12

    .line 148
    .line 149
    or-int/lit16 v6, v6, 0xf0

    .line 150
    .line 151
    int-to-byte v6, v6

    .line 152
    aput-byte v6, p1, p2

    .line 153
    .line 154
    add-int/lit8 v6, p2, 0x2

    .line 155
    .line 156
    ushr-int/lit8 v7, v2, 0xc

    .line 157
    .line 158
    and-int/lit8 v7, v7, 0x3f

    .line 159
    .line 160
    or-int/2addr v7, v3

    .line 161
    int-to-byte v7, v7

    .line 162
    aput-byte v7, p1, v4

    .line 163
    .line 164
    add-int/lit8 v4, p2, 0x3

    .line 165
    .line 166
    ushr-int/lit8 v7, v2, 0x6

    .line 167
    .line 168
    and-int/lit8 v7, v7, 0x3f

    .line 169
    .line 170
    or-int/2addr v7, v3

    .line 171
    int-to-byte v7, v7

    .line 172
    aput-byte v7, p1, v6

    .line 173
    .line 174
    add-int/lit8 p2, p2, 0x4

    .line 175
    .line 176
    and-int/lit8 v2, v2, 0x3f

    .line 177
    .line 178
    or-int/2addr v2, v3

    .line 179
    int-to-byte v2, v2

    .line 180
    aput-byte v2, p1, v4

    .line 181
    .line 182
    move v2, v5

    .line 183
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 184
    .line 185
    goto/16 :goto_1

    .line 186
    .line 187
    :cond_6
    move v2, v5

    .line 188
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmz;

    .line 189
    .line 190
    add-int/lit8 v2, v2, -0x1

    .line 191
    .line 192
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzmz;-><init>(II)V

    .line 193
    .line 194
    .line 195
    throw p0

    .line 196
    :cond_8
    if-lt v4, v6, :cond_a

    .line 197
    .line 198
    if-gt v4, v5, :cond_a

    .line 199
    .line 200
    add-int/lit8 p1, v2, 0x1

    .line 201
    .line 202
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 203
    .line 204
    .line 205
    move-result p3

    .line 206
    if-eq p1, p3, :cond_9

    .line 207
    .line 208
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    invoke-static {v4, p0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    if-nez p0, :cond_a

    .line 217
    .line 218
    :cond_9
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmz;

    .line 219
    .line 220
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzmz;-><init>(II)V

    .line 221
    .line 222
    .line 223
    throw p0

    .line 224
    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 225
    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 232
    .line 233
    new-array v1, v0, [J

    .line 234
    .line 235
    fill-array-data v1, :array_0

    .line 236
    .line 237
    .line 238
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p3

    .line 245
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 252
    .line 253
    new-array v0, v0, [J

    .line 254
    .line 255
    fill-array-data v0, :array_1

    .line 256
    .line 257
    .line 258
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 259
    .line 260
    .line 261
    invoke-static {p3, p1, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p0

    .line 269
    :cond_b
    :goto_3
    return p2

    .line 270
    nop

    .line 271
    :array_0
    .array-data 8
        0x43690bfaefacb0eaL    # 5.6400374468544336E16
        0x33c3f8f36ac6c8d4L    # 2.4857790033003525E-59
        -0x7f87edde412dafd8L
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
    :array_1
    .array-data 8
        0x15992a2757df07afL
        -0x40c6f355a1bc6cd9L    # -3.822246492418018E-4
        -0x5cfde59761a013d3L    # -4.750577278762052E-140
    .end array-data
.end method

.method public static zzc(Ljava/lang/CharSequence;)I
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

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
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

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
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

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
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    :goto_2
    if-ge v2, v4, :cond_5

    .line 44
    .line 45
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

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
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmz;

    .line 81
    .line 82
    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/internal/measurement/zzmz;-><init>(II)V

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
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    const/4 v2, 0x6

    .line 103
    new-array v2, v2, [J

    .line 104
    .line 105
    fill-array-data v2, :array_0

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    int-to-long v1, v3

    .line 119
    const-wide v3, 0x100000000L

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    add-long/2addr v1, v3

    .line 125
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
        -0x7c7a4f5da661e1b5L
        0x419d8dd545df3212L    # 1.2395860946796444E8
        0x4a7fba306bee0a6bL    # 7.419120460546624E50
        0x3096f85043dd3c81L    # 1.2695844712400565E-74
        0x4b16500d1d89ba7eL    # 5.342830225941499E53
        -0x52d9b2aa4ee8ab5bL    # -3.421344950092586E-91
    .end array-data
.end method

.method public static zzd([BII)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    array-length v4, p0

    .line 6
    or-int v5, p1, p2

    .line 7
    .line 8
    sub-int v6, v4, p1

    .line 9
    .line 10
    sub-int/2addr v6, p2

    .line 11
    or-int/2addr v5, v6

    .line 12
    if-ltz v5, :cond_b

    .line 13
    .line 14
    add-int v4, p1, p2

    .line 15
    .line 16
    new-array p2, p2, [C

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    if-ge p1, v4, :cond_1

    .line 20
    .line 21
    aget-byte v6, p0, p1

    .line 22
    .line 23
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzmw;->zzd(B)Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-nez v7, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    add-int/2addr p1, v3

    .line 31
    add-int/lit8 v7, v5, 0x1

    .line 32
    .line 33
    int-to-char v6, v6

    .line 34
    aput-char v6, p2, v5

    .line 35
    .line 36
    move v5, v7

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    move v11, v5

    .line 39
    :cond_2
    :goto_2
    if-ge p1, v4, :cond_a

    .line 40
    .line 41
    add-int/lit8 v5, p1, 0x1

    .line 42
    .line 43
    aget-byte v6, p0, p1

    .line 44
    .line 45
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzmw;->zzd(B)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_4

    .line 50
    .line 51
    add-int/lit8 p1, v11, 0x1

    .line 52
    .line 53
    int-to-char v6, v6

    .line 54
    aput-char v6, p2, v11

    .line 55
    .line 56
    move v11, p1

    .line 57
    move p1, v5

    .line 58
    :goto_3
    if-ge p1, v4, :cond_2

    .line 59
    .line 60
    aget-byte v5, p0, p1

    .line 61
    .line 62
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzmw;->zzd(B)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-nez v6, :cond_3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    add-int/2addr p1, v3

    .line 70
    add-int/lit8 v6, v11, 0x1

    .line 71
    .line 72
    int-to-char v5, v5

    .line 73
    aput-char v5, p2, v11

    .line 74
    .line 75
    move v11, v6

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    const/16 v7, -0x20

    .line 78
    .line 79
    if-ge v6, v7, :cond_6

    .line 80
    .line 81
    if-ge v5, v4, :cond_5

    .line 82
    .line 83
    add-int/2addr p1, v2

    .line 84
    add-int/lit8 v7, v11, 0x1

    .line 85
    .line 86
    aget-byte v5, p0, v5

    .line 87
    .line 88
    invoke-static {v6, v5, p2, v11}, Lcom/google/android/gms/internal/measurement/zzmw;->zzc(BB[CI)V

    .line 89
    .line 90
    .line 91
    move v11, v7

    .line 92
    goto :goto_2

    .line 93
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzc()Lcom/google/android/gms/internal/measurement/zzkm;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    throw p0

    .line 98
    :cond_6
    const/16 v7, -0x10

    .line 99
    .line 100
    if-ge v6, v7, :cond_8

    .line 101
    .line 102
    add-int/lit8 v7, v4, -0x1

    .line 103
    .line 104
    if-ge v5, v7, :cond_7

    .line 105
    .line 106
    add-int/lit8 v7, p1, 0x2

    .line 107
    .line 108
    add-int/2addr p1, v1

    .line 109
    add-int/lit8 v8, v11, 0x1

    .line 110
    .line 111
    aget-byte v5, p0, v5

    .line 112
    .line 113
    aget-byte v7, p0, v7

    .line 114
    .line 115
    invoke-static {v6, v5, v7, p2, v11}, Lcom/google/android/gms/internal/measurement/zzmw;->zzb(BBB[CI)V

    .line 116
    .line 117
    .line 118
    move v11, v8

    .line 119
    goto :goto_2

    .line 120
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzc()Lcom/google/android/gms/internal/measurement/zzkm;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    throw p0

    .line 125
    :cond_8
    add-int/lit8 v7, v4, -0x2

    .line 126
    .line 127
    if-ge v5, v7, :cond_9

    .line 128
    .line 129
    add-int/lit8 v7, p1, 0x2

    .line 130
    .line 131
    add-int/lit8 v8, p1, 0x3

    .line 132
    .line 133
    add-int/lit8 p1, p1, 0x4

    .line 134
    .line 135
    aget-byte v9, p0, v5

    .line 136
    .line 137
    aget-byte v7, p0, v7

    .line 138
    .line 139
    aget-byte v8, p0, v8

    .line 140
    .line 141
    move v5, v6

    .line 142
    move v6, v9

    .line 143
    move-object v9, p2

    .line 144
    move v10, v11

    .line 145
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/zzmw;->zza(BBBB[CI)V

    .line 146
    .line 147
    .line 148
    add-int/2addr v11, v2

    .line 149
    goto :goto_2

    .line 150
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzc()Lcom/google/android/gms/internal/measurement/zzkm;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    throw p0

    .line 155
    :cond_a
    new-instance p0, Ljava/lang/String;

    .line 156
    .line 157
    invoke-direct {p0, p2, v0, v11}, Ljava/lang/String;-><init>([CII)V

    .line 158
    .line 159
    .line 160
    return-object p0

    .line 161
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 162
    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    new-array v1, v1, [Ljava/lang/Object;

    .line 176
    .line 177
    aput-object v4, v1, v0

    .line 178
    .line 179
    aput-object p1, v1, v3

    .line 180
    .line 181
    aput-object p2, v1, v2

    .line 182
    .line 183
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 184
    .line 185
    const/4 p2, 0x6

    .line 186
    new-array p2, p2, [J

    .line 187
    .line 188
    fill-array-data p2, :array_0

    .line 189
    .line 190
    .line 191
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p0

    .line 206
    nop

    .line 207
    :array_0
    .array-data 8
        -0x7a77f9203c8b7fdbL
        0x3e2e32429089d3ccL
        -0x7c65d4baff1d94a3L
        0x6e142ddee9d467c8L    # 1.823561390287065E222
        0x398ab55d522b590bL    # 1.6460356373440808E-31
        0xf457a5bc9d6f35aL
    .end array-data
.end method

.method public static zze([B)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzna;->zza:Lcom/google/android/gms/internal/measurement/zzmx;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzmx;->zzb([BII)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static zzf([BII)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzna;->zza:Lcom/google/android/gms/internal/measurement/zzmx;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmx;->zzb([BII)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
