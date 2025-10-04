.class public final Lcom/google/common/net/PercentEscaper;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/net/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final PLUS_SIGN:[C

.field private static final UPPER_HEX_DIGITS:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/16 v1, 0x2b

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-char v1, v0, v2

    .line 8
    .line 9
    sput-object v0, Lcom/google/common/net/PercentEscaper;->PLUS_SIGN:[C

    .line 10
    .line 11
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 8
        0x77c16ed91bba6b18L    # 7.19512400393441E268
        0x7c3c93f9293c0724L    # 2.785017850219136E290
        -0x48a5bde3ef9ba6daL    # -4.709840947353157E-42
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    new-array v1, v1, [J

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/16 v1, 0x9

    .line 31
    .line 32
    new-array v1, v1, [J

    .line 33
    .line 34
    fill-array-data v1, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    new-array v1, v1, [J

    .line 54
    .line 55
    fill-array-data v1, :array_2

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
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/16 v0, 0xa

    .line 77
    .line 78
    new-array v0, v0, [J

    .line 79
    .line 80
    fill-array-data v0, :array_3

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/google/common/net/PercentEscaper;->plusForSpace:Z

    .line 95
    .line 96
    invoke-static {p1}, Lcom/google/common/net/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    const/16 v0, 0xb

    .line 108
    .line 109
    new-array v0, v0, [J

    .line 110
    .line 111
    fill-array-data v0, :array_4

    .line 112
    .line 113
    .line 114
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :array_0
    .array-data 8
        -0x42748d97c5252200L    # -3.1203515984646953E-12
        -0x2660aa90557bccafL    # -5.178338159557934E123
        -0x34470ebb940286b0L    # -6.1158710142505165E56
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_1
    .array-data 8
        -0x6d51b047f95b5cb9L
        -0x7b0aaa3bc51009dcL    # -8.967208679656211E-285
        0x1c2327920e5c611aL    # 3.872264039336024E-173
        0x365e9beb6eaec1baL    # 8.377427812815799E-47
        0x731f5f233afe678bL    # 3.4273114595472598E246
        -0x6e0fb0736aedb32aL
        -0x379e4d321bc656abL    # -4.817977496575575E40
        0x2824c84f37855bdL
        0x46c80547195cd6d9L    # 9.743919507949503E32
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
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
    :array_2
    .array-data 8
        0x721ec371f86cc78bL    # 5.128279515466133E241
        -0x27f1c8f484f83192L    # -1.4881654538735717E116
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
    :array_3
    .array-data 8
        -0x6d845d18a07161aL    # -4.107464782121423E275
        -0x45762b1d41268badL    # -1.0433294037711372E-26
        -0x7ed3430f797c144eL
        0x2afd312d653556dfL
        0x2c729bf6d8213e9fL    # 1.3939586697111067E-94
        0xbebed9ba61267e7L
        0x3f280ceeedcc00a3L    # 1.8349091160275053E-4
        0x142acc08d4912bc9L
        0x48055892d8d07d57L    # 9.079580302286062E38
        0x626d1c4f6214806dL    # 1.3410920266645615E166
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
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
    :array_4
    .array-data 8
        -0x105ec19385781fcdL    # -5.228784737154936E229
        -0x6c321a6c8fd23e2eL
        0x7d8549a4df8d9200L
        0x243cc04325a5004L    # 9.45959063573158E-298
        0x75fc435c02364e90L    # 2.1727833009469996E260
        0x483e3b15a35fef20L    # 1.028700781124694E40
        -0x72f87639d2a33c4L    # -8.910449877885299E273
        0x1d0f6f01fa430456L
        -0x7475e893eaa7940eL
        -0xe85a815c6b56bc9L    # -4.28853246040387E238
        -0x48e6d823b072b545L    # -2.820052110513695E-43
    .end array-data
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, -0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v0, :cond_0

    .line 10
    .line 11
    aget-char v4, p0, v3

    .line 12
    .line 13
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    add-int/2addr v1, v0

    .line 22
    new-array v1, v1, [Z

    .line 23
    .line 24
    array-length v3, p0

    .line 25
    :goto_1
    if-ge v2, v3, :cond_1

    .line 26
    .line 27
    aget-char v4, p0, v2

    .line 28
    .line 29
    aput-boolean v0, v1, v4

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    return-object v1
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-boolean v2, v3, v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public escape(I)[C
    .locals 14
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/16 v0, 0xc

    const/4 v1, 0x5

    const/16 v2, 0xa

    const/4 v3, 0x6

    const/4 v4, 0x4

    .line 6
    iget-object v5, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v6, v5

    if-ge p1, v6, :cond_0

    aget-boolean v5, v5, p1

    if-eqz v5, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v5, 0x20

    if-ne p1, v5, :cond_1

    .line 7
    iget-boolean v5, p0, Lcom/google/common/net/PercentEscaper;->plusForSpace:Z

    if-eqz v5, :cond_1

    .line 8
    sget-object p1, Lcom/google/common/net/PercentEscaper;->PLUS_SIGN:[C

    return-object p1

    :cond_1
    const/16 v5, 0x7f

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x25

    const/4 v10, 0x3

    if-gt p1, v5, :cond_2

    .line 9
    new-array v0, v10, [C

    .line 10
    aput-char v9, v0, v8

    .line 11
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v2, v1, v2

    aput-char v2, v0, v7

    ushr-int/2addr p1, v4

    .line 12
    aget-char p1, v1, p1

    aput-char p1, v0, v6

    return-object v0

    :cond_2
    const/16 v5, 0x7ff

    const/16 v11, 0x8

    if-gt p1, v5, :cond_3

    .line 13
    new-array v5, v3, [C

    .line 14
    aput-char v9, v5, v8

    .line 15
    aput-char v9, v5, v10

    .line 16
    sget-object v8, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v9, p1, 0xf

    aget-char v9, v8, v9

    aput-char v9, v5, v1

    ushr-int/lit8 v1, p1, 0x4

    and-int/2addr v1, v10

    or-int/2addr v1, v11

    .line 17
    aget-char v1, v8, v1

    aput-char v1, v5, v4

    ushr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0xf

    .line 18
    aget-char v1, v8, v1

    aput-char v1, v5, v7

    ushr-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 19
    aget-char p1, v8, p1

    aput-char p1, v5, v6

    return-object v5

    :cond_3
    const v5, 0xffff

    const/16 v12, 0x9

    const/4 v13, 0x7

    if-gt p1, v5, :cond_4

    .line 20
    new-array v5, v12, [C

    .line 21
    aput-char v9, v5, v8

    const/16 v8, 0x45

    .line 22
    aput-char v8, v5, v6

    .line 23
    aput-char v9, v5, v10

    .line 24
    aput-char v9, v5, v3

    .line 25
    sget-object v6, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v8, p1, 0xf

    aget-char v8, v6, v8

    aput-char v8, v5, v11

    ushr-int/lit8 v8, p1, 0x4

    and-int/2addr v8, v10

    or-int/2addr v8, v11

    .line 26
    aget-char v8, v6, v8

    aput-char v8, v5, v13

    ushr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0xf

    .line 27
    aget-char v3, v6, v3

    aput-char v3, v5, v1

    ushr-int/lit8 v1, p1, 0xa

    and-int/2addr v1, v10

    or-int/2addr v1, v11

    .line 28
    aget-char v1, v6, v1

    aput-char v1, v5, v4

    ushr-int/2addr p1, v0

    .line 29
    aget-char p1, v6, p1

    aput-char p1, v5, v7

    return-object v5

    :cond_4
    const v5, 0x10ffff

    if-gt p1, v5, :cond_5

    .line 30
    new-array v5, v0, [C

    .line 31
    aput-char v9, v5, v8

    const/16 v8, 0x46

    .line 32
    aput-char v8, v5, v6

    .line 33
    aput-char v9, v5, v10

    .line 34
    aput-char v9, v5, v3

    .line 35
    aput-char v9, v5, v12

    .line 36
    sget-object v6, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v8, p1, 0xf

    aget-char v8, v6, v8

    const/16 v9, 0xb

    aput-char v8, v5, v9

    ushr-int/lit8 v8, p1, 0x4

    and-int/2addr v8, v10

    or-int/2addr v8, v11

    .line 37
    aget-char v8, v6, v8

    aput-char v8, v5, v2

    ushr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0xf

    .line 38
    aget-char v3, v6, v3

    aput-char v3, v5, v11

    ushr-int/lit8 v2, p1, 0xa

    and-int/2addr v2, v10

    or-int/2addr v2, v11

    .line 39
    aget-char v2, v6, v2

    aput-char v2, v5, v13

    ushr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0xf

    .line 40
    aget-char v0, v6, v0

    aput-char v0, v5, v1

    ushr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v10

    or-int/2addr v0, v11

    .line 41
    aget-char v0, v6, v0

    aput-char v0, v5, v4

    ushr-int/lit8 p1, p1, 0x12

    and-int/2addr p1, v13

    .line 42
    aget-char p1, v6, p1

    aput-char p1, v5, v7

    return-object v5

    .line 43
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    invoke-static {v3, v2, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 8
        0x5a7cb4f10f3d27ffL    # 7.772898775367596E127
        0x3bb0b1a3aa967dccL    # 3.535071591966197E-21
        0x714afbedb20c32eaL    # 5.491038194446945E237
        0x1ee82b7ed048436L
        -0x32c862993abce076L    # -9.714585578777676E63
    .end array-data
.end method

.method public nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    :goto_0
    if-ge p2, p3, :cond_1

    .line 5
    .line 6
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-ge v0, v2, :cond_1

    .line 14
    .line 15
    aget-boolean v0, v1, v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return p2
.end method
