.class public final Lcom/google/zxing/oned/ITFWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "SourceFile"


# static fields
.field private static final END_PATTERN:[I

.field private static final N:I = 0x1

.field private static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    filled-new-array {v0, v0, v0, v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sput-object v1, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    filled-new-array {v1, v0, v0}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sput-object v2, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    .line 14
    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    new-array v2, v2, [[I

    .line 18
    .line 19
    filled-new-array {v0, v0, v1, v1, v0}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v3, v2, v4

    .line 25
    .line 26
    filled-new-array {v1, v0, v0, v0, v1}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    aput-object v3, v2, v0

    .line 31
    .line 32
    filled-new-array {v0, v1, v0, v0, v1}, [I

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x2

    .line 37
    aput-object v3, v2, v4

    .line 38
    .line 39
    filled-new-array {v1, v1, v0, v0, v0}, [I

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    aput-object v3, v2, v1

    .line 44
    .line 45
    filled-new-array {v0, v0, v1, v0, v1}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x4

    .line 50
    aput-object v3, v2, v4

    .line 51
    .line 52
    filled-new-array {v1, v0, v1, v0, v0}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/4 v4, 0x5

    .line 57
    aput-object v3, v2, v4

    .line 58
    .line 59
    filled-new-array {v0, v1, v1, v0, v0}, [I

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x6

    .line 64
    aput-object v3, v2, v4

    .line 65
    .line 66
    filled-new-array {v0, v0, v0, v1, v1}, [I

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const/4 v4, 0x7

    .line 71
    aput-object v3, v2, v4

    .line 72
    .line 73
    filled-new-array {v1, v0, v0, v1, v0}, [I

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const/16 v4, 0x8

    .line 78
    .line 79
    aput-object v3, v2, v4

    .line 80
    .line 81
    filled-new-array {v0, v1, v0, v1, v0}, [I

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/16 v1, 0x9

    .line 86
    .line 87
    aput-object v0, v2, v1

    .line 88
    .line 89
    sput-object v2, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    .line 90
    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x9

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    rem-int/lit8 v3, v2, 0x2

    .line 9
    .line 10
    if-nez v3, :cond_3

    .line 11
    .line 12
    const/16 v3, 0x50

    .line 13
    .line 14
    if-gt v2, v3, :cond_2

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->checkNumeric(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    mul-int/lit8 v3, v2, 0x9

    .line 20
    .line 21
    add-int/2addr v3, v1

    .line 22
    new-array v1, v3, [Z

    .line 23
    .line 24
    sget-object v3, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static {v1, v4, v3, v0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v5, 0x0

    .line 32
    :goto_0
    if-ge v5, v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const/16 v7, 0xa

    .line 39
    .line 40
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    add-int/lit8 v8, v5, 0x1

    .line 45
    .line 46
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    new-array v7, v7, [I

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    :goto_1
    const/4 v10, 0x5

    .line 58
    if-ge v9, v10, :cond_0

    .line 59
    .line 60
    mul-int/lit8 v10, v9, 0x2

    .line 61
    .line 62
    sget-object v11, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    .line 63
    .line 64
    aget-object v12, v11, v6

    .line 65
    .line 66
    aget v12, v12, v9

    .line 67
    .line 68
    aput v12, v7, v10

    .line 69
    .line 70
    add-int/2addr v10, v0

    .line 71
    aget-object v11, v11, v8

    .line 72
    .line 73
    aget v11, v11, v9

    .line 74
    .line 75
    aput v11, v7, v10

    .line 76
    .line 77
    add-int/2addr v9, v0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    invoke-static {v1, v3, v7, v0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    add-int/2addr v3, v6

    .line 84
    add-int/lit8 v5, v5, 0x2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    sget-object p1, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    .line 88
    .line 89
    invoke-static {v1, v3, p1, v0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v1, v1, [J

    .line 103
    .line 104
    fill-array-data v1, :array_0

    .line 105
    .line 106
    .line 107
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-static {v3, v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 119
    .line 120
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    const/4 v1, 0x6

    .line 123
    new-array v1, v1, [J

    .line 124
    .line 125
    fill-array-data v1, :array_1

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :array_0
    .array-data 8
        0x477b197dbeaa5dd7L    # 2.2513446071833332E36
        -0x5be96aa5d8a698ecL
        -0x21dcbedf0f860d83L    # -3.005371148037452E145
        -0x7b58d0ab5924343fL
        -0x7eb41914aab19ba9L
        0x303b198912dc9221L    # 2.340379900461059E-76
        -0x777f93d70c6eef6dL    # -9.947481278801684E-268
        -0x13dbba0476db9f8cL    # -8.531254249838924E212
        -0x46b6a7fc8864aa3dL    # -9.762077784065E-33
    .end array-data

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
    :array_1
    .array-data 8
        0x26aecbfb89e8d522L    # 2.329364560648368E-122
        0x5d0fc4da6f1a50dcL    # 1.8916072597691067E140
        0xb7a45c2e45e3cdeL
        0x51b8558ee8704c18L    # 4.7273316382625465E85
        -0x5682eedbf3d004e3L
        0x59f7414eb15f9690L
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
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

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
