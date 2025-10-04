.class public final Lcom/google/zxing/oned/EAN8Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "SourceFile"


# static fields
.field private static final CODE_WIDTH:I = 0x43


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x7

    .line 8
    if-eq v2, v3, :cond_2

    .line 9
    .line 10
    const/16 v4, 0x8

    .line 11
    .line 12
    if-ne v2, v4, :cond_1

    .line 13
    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_0

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
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    fill-array-data v0, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/16 v3, 0x9

    .line 72
    .line 73
    new-array v3, v3, [J

    .line 74
    .line 75
    fill-array-data v3, :array_2

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    .line 90
    .line 91
    .line 92
    move-result v2
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    :goto_0
    invoke-static {p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->checkNumeric(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/16 v2, 0x43

    .line 112
    .line 113
    new-array v2, v2, [Z

    .line 114
    .line 115
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 116
    .line 117
    const/4 v5, 0x0

    .line 118
    invoke-static {v2, v5, v4, v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    const/4 v6, 0x0

    .line 123
    :goto_1
    const/16 v7, 0xa

    .line 124
    .line 125
    if-gt v6, v0, :cond_3

    .line 126
    .line 127
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 136
    .line 137
    aget-object v7, v8, v7

    .line 138
    .line 139
    invoke-static {v2, v4, v7, v5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    add-int/2addr v4, v7

    .line 144
    add-int/2addr v6, v1

    .line 145
    goto :goto_1

    .line 146
    :cond_3
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    .line 147
    .line 148
    invoke-static {v2, v4, v0, v5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    add-int/2addr v0, v4

    .line 153
    const/4 v4, 0x4

    .line 154
    :goto_2
    if-gt v4, v3, :cond_4

    .line 155
    .line 156
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 165
    .line 166
    aget-object v5, v6, v5

    .line 167
    .line 168
    invoke-static {v2, v0, v5, v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    add-int/2addr v0, v5

    .line 173
    add-int/2addr v4, v1

    .line 174
    goto :goto_2

    .line 175
    :cond_4
    sget-object p1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 176
    .line 177
    invoke-static {v2, v0, p1, v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 178
    .line 179
    .line 180
    return-object v2

    .line 181
    :catch_1
    move-exception p1

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 183
    .line 184
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    throw v0

    .line 188
    nop

    .line 189
    :array_0
    .array-data 8
        0x7143df8671fd21d7L    # 4.044019139617546E237
        0x43e0811fba1dad45L    # 9.514133286598355E18
        0x5a16b763c9fd1329L    # 9.610745346736284E125
        0x728298be71af5c77L    # 3.968088648055585E243
        -0x31f8471417d2d049L    # -7.994416018718596E67
    .end array-data

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
    :array_1
    .array-data 8
        -0x68ff02c22396b276L    # -7.102421296704117E-198
        -0x637f68d7afa22befL    # -2.1464999101402327E-171
        0x680ed81637a14940L    # 1.759054056362234E193
    .end array-data

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
    :array_2
    .array-data 8
        0x42839e9e9b9d1a54L    # 2.696498344867291E12
        -0x49e06035f253b786L    # -5.409534966056913E-48
        -0x728729ab7aeaea21L    # -9.093825794375812E-244
        -0x49189be6ae9a089cL    # -3.2777788243743446E-44
        -0x14f4ae70ab9500acL    # -4.385361124781467E207
        0x6b3abcc1098357cbL    # 3.4336411021307556E208
        0x5a31eab9d0ec656eL    # 3.032082496492037E126
        0x71dea14024e516c5L    # 3.1912580521068758E240
        0x233cfad2768819eL
    .end array-data
.end method

.method public getSupportedWriteFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
