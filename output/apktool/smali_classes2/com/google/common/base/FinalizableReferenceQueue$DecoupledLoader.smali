.class Lcom/google/common/base/FinalizableReferenceQueue$DecoupledLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/FinalizableReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoupledLoader"
.end annotation


# static fields
.field private static final LOADING_ERROR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x26

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/FinalizableReferenceQueue$DecoupledLoader;->LOADING_ERROR:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x5947d27842e744beL
        -0x928265aff9de4d4L    # -3.004054183146919E264
        0x67c2d00ec3b5134eL    # 6.705620467394745E191
        -0x127c0b5df245028bL    # -3.522180411150692E219
        -0x15227cfe7b6fa766L    # -5.9217747932101186E206
        0x3b51106aba6a8630L    # 5.646046520322049E-23
        -0x67ce4afb3ff27d1dL    # -3.881059550452251E-192
        -0x15707a84be51cffL
        -0x2d84301b51e33050L    # -2.2130552311065672E89
        -0x515bbbf94751bf0fL    # -5.2159499855227585E-84
        -0x1db30ee1d98dee62L    # -3.3332982159442207E165
        0x2132db32e31869a1L    # 9.216740674898284E-149
        0x798a9ea94c65ec35L    # 2.949241493873183E277
        -0x1a6c900300a92bdfL    # -2.0164004689233423E181
        -0x6a2f8e2c7c7ec814L
        -0x55a2ae9f9112a288L
        0x308c7cfacb4c3268L    # 7.872925206519169E-75
        -0x48a6ac8ff0b45993L    # -4.542615669673144E-42
        0x5b3c6899857d80c8L    # 3.1507057447918725E131
        -0x1c31ebb40d3440cbL    # -5.8121260611694746E172
        0x6a52d867a45cca60L    # 1.4771372757472478E204
        0x13dfabd4fa0e5ddL
        -0x3a33d6f0797711bL
        -0x6b2dab5a79a60e66L    # -2.230287709822988E-208
        -0x40b0113c3b03ab64L    # -9.745078950539501E-4
        0xdef69cc06f57110L    # 1.472199378744439E-241
        -0x642808717c8b233fL
        -0x96acea51c64437eL
        -0x224ce02fc6368a86L
        -0x102ef850d3d5f601L    # -4.131157655171909E230
        -0x1aa987f8974c55a1L    # -1.4567952664112036E180
        0xa3eab910fa25a2fL
        -0x5f749cf9f28d0d39L    # -6.536325400234281E-152
        -0x3274ccf6b69a73bL
        0x74da0f47d4fa99dfL    # 7.64232655727491E254
        0x56b7cbe8e4bab203L    # 5.588714623091503E109
        0x4ed3de4bb67a7393L    # 5.485050489529303E71
        0x28e984c3a7a80834L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/net/URL;
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v1, 0x2e

    .line 17
    .line 18
    const/16 v2, 0x2f

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    new-array v2, v2, [J

    .line 32
    .line 33
    fill-array-data v2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    new-instance v0, Ljava/io/IOException;

    .line 72
    .line 73
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v3, 0x4

    .line 76
    new-array v3, v3, [J

    .line 77
    .line 78
    fill-array-data v3, :array_2

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_0

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 100
    .line 101
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    move-object v1, v2

    .line 105
    :goto_0
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    sub-int/2addr v3, v0

    .line 118
    const/4 v0, 0x0

    .line 119
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-instance v2, Ljava/net/URL;

    .line 124
    .line 125
    invoke-direct {v2, v1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object v2

    .line 129
    :cond_2
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 130
    .line 131
    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v1

    .line 135
    :array_0
    .array-data 8
        0x60144729374c5286L    # 6.797079064633337E154
        -0x7537fe03053752d6L
        -0x1d3b8f30fb86756cL    # -6.026740498895365E167
        0x28477486de5b6aeL
        -0x3c5ee0bfe1d5c637L    # -6.1688766061221594E17
        -0x4b8f5637dd7dfe1fL    # -4.2473640267966455E-56
        -0x695c76db98d62f82L
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
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
    :array_1
    .array-data 8
        0xce86945d5e1c7e0L
        -0x6ad9383ba384c412L    # -8.869378503224268E-207
    .end array-data

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
    :array_2
    .array-data 8
        0x6a10bb50b7c28aacL    # 8.196664787821628E202
        -0x552e91eb5fe99573L
        -0x3cce6760a03b88ebL    # -4.952884878014229E15
        -0x210ca295d1480e56L    # -2.476128382131328E149
    .end array-data
.end method

.method public loadFinalizer()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/base/FinalizableReferenceQueue$DecoupledLoader;->getBaseUrl()Ljava/net/URL;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/common/base/FinalizableReferenceQueue$DecoupledLoader;->newLoader(Ljava/net/URL;)Ljava/net/URLClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x7

    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-static {}, Lcom/google/common/base/FinalizableReferenceQueue;->access$000()Ljava/util/logging/Logger;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 35
    .line 36
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/16 v4, 0x26

    .line 39
    .line 40
    new-array v4, v4, [J

    .line 41
    .line 42
    fill-array-data v4, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    return-object v0

    .line 57
    :array_0
    .array-data 8
        -0x642e97194d015f78L
        -0x402af00dbd86a8ceL    # -0.32909828654861706
        -0x55a503e3f56c9136L
        0x70b0d8318bbcbd5L
        0x59656373a65a7379L    # 4.4184326975759275E122
        0x6b2976df83753f0fL    # 1.6350821699644661E208
        0x6f12316fe433ad66L    # 1.0774665063596626E227
    .end array-data

    .line 58
    .line 59
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
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        0x7fc7f97a9706b73eL    # 3.3670970533837555E307
        -0x14532fc3014f772bL    # -4.736330041064525E210
        -0x7567eae5e8cd004eL
        0xd74c05388065960L
        -0xedb586f65523490L    # -1.0507571340407492E237
        -0x497f5f13e206e246L    # -3.6408805707255754E-46
        -0x3a7a28d38848dc7cL    # -8.449142812437149E26
        -0x6c3ee2cbf675ef49L
        0x545f5971d03cc4d9L    # 2.678475873169592E98
        -0x290ee42ef58bffL    # -6.44412055396357E307
        0x4427267b8132e91cL    # 2.1352403287327782E20
        -0x6d41744853bc92efL    # -2.163287563215068E-218
        0x76191d0cbe1bf807L    # 7.722591901651093E260
        -0x1dcec744052b18bL    # -3.992280165469052E299
        -0x6a32aaa9ab5dcc06L    # -1.169484814281941E-203
        -0x211d84cfa6300c81L    # -1.1815665598021518E149
        -0x457857ef99097f00L    # -9.554784370391843E-27
        -0x52f18656787ef7f4L    # -1.168795441946309E-91
        -0x3d191a2c5f661370L    # -2.014108307167725E14
        0x122f69e71ffe4a91L    # 4.3452228199914056E-221
        -0x7c9e724905aa2598L    # -2.198769759647252E-292
        0x5a0a4952753f48e7L    # 5.560573176427528E125
        -0x636eb404dbf863bfL    # -4.475775109071591E-171
        0x510c5c5394329d5bL    # 2.6902027893505382E82
        0x61217e9f7aad3c4bL    # 7.686210113796741E159
        -0x43b724c7de421674L    # -2.6949281839697244E-18
        -0x23ac1cc06580c454L    # -5.782057077082638E136
        0xc4ed54f3401aad2L
        -0x68f6c6e4c8657c4aL
        -0x4cfd451c6ef421baL    # -5.691274085878399E-63
        -0x346400a2b191754eL    # -1.7162428284895134E56
        -0x22772c1287180d6aL    # -3.7844863610809707E142
        -0x5b5b2c6713d7e48aL    # -3.667661872743331E-132
        0x7453e7491493f886L    # 2.2800529846806748E252
        -0x36e4e9d7ae135ae6L    # -1.510125777104252E44
        0x6192cc01332df61cL    # 1.0570700325486084E162
        0x732a0176c7662a94L    # 5.682184435917903E246
        -0x78ea99a775d174b0L
    .end array-data
.end method

.method public newLoader(Ljava/net/URL;)Ljava/net/URLClassLoader;
    .locals 3

    .line 1
    new-instance v0, Ljava/net/URLClassLoader;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/net/URL;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {v0, v1, p1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
