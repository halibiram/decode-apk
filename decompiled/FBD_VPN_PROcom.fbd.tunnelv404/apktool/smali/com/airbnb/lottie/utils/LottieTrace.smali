.class public Lcom/airbnb/lottie/utils/LottieTrace;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_DEPTH:I = 0x5


# instance fields
.field private depthPastMaxDepth:I

.field private final sections:[Ljava/lang/String;

.field private final startTimeNs:[J

.field private traceDepth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->sections:[Ljava/lang/String;

    .line 8
    .line 9
    new-array v0, v0, [J

    .line 10
    .line 11
    iput-object v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->startTimeNs:[J

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    .line 15
    .line 16
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->depthPastMaxDepth:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public beginSection(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->depthPastMaxDepth:I

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->depthPastMaxDepth:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->sections:[Ljava/lang/String;

    .line 14
    .line 15
    aput-object p1, v1, v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->startTimeNs:[J

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    aput-wide v2, v1, v0

    .line 24
    .line 25
    invoke-static {p1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    .line 33
    .line 34
    return-void
.end method

.method public endSection(Ljava/lang/String;)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->depthPastMaxDepth:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->depthPastMaxDepth:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->sections:[Ljava/lang/String;

    .line 21
    .line 22
    aget-object v0, v1, v0

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iget-object p1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->startTimeNs:[J

    .line 38
    .line 39
    iget v2, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    .line 40
    .line 41
    aget-wide v2, p1, v2

    .line 42
    .line 43
    sub-long/2addr v0, v2

    .line 44
    long-to-float p1, v0

    .line 45
    const v0, 0x49742400    # 1000000.0f

    .line 46
    .line 47
    .line 48
    div-float/2addr p1, v0

    .line 49
    return p1

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v3, 0x4

    .line 60
    new-array v3, v3, [J

    .line 61
    .line 62
    fill-array-data v3, :array_0

    .line 63
    .line 64
    .line 65
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/4 v2, 0x3

    .line 81
    new-array v2, v2, [J

    .line 82
    .line 83
    fill-array-data v2, :array_1

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/airbnb/lottie/utils/LottieTrace;->sections:[Ljava/lang/String;

    .line 97
    .line 98
    iget v2, p0, Lcom/airbnb/lottie/utils/LottieTrace;->traceDepth:I

    .line 99
    .line 100
    aget-object p1, p1, v2

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    const/4 v2, 0x2

    .line 108
    new-array v2, v2, [J

    .line 109
    .line 110
    fill-array-data v2, :array_2

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 125
    .line 126
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    const/4 v1, 0x6

    .line 129
    new-array v1, v1, [J

    .line 130
    .line 131
    fill-array-data v1, :array_3

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p1

    .line 145
    :array_0
    .array-data 8
        0x20c2b6f301c0009bL    # 7.146506379695034E-151
        -0x788a02f51aa8e375L
        0x4704420f4f749fd8L    # 1.314822365216016E34
        0x17921ab1c57ce7c5L
    .end array-data

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
    :array_1
    .array-data 8
        -0x2def4f4ed4892bdL    # -5.442460999536185E294
        0xb80111d657ba247L
        0x7d394d61d3922802L    # 1.61597754555338E295
    .end array-data

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
        -0x4280f3bfdf89527bL    # -1.764866141086285E-12
        0x1c2531c3b1239f40L    # 4.28463143753235E-173
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
        0x6d51bc1a49c96e16L    # 3.912754323121337E218
        0x66ffae8978e8d544L    # 1.3785005899117626E188
        -0x61638ebaadbdd298L
        -0x6385000a1594d38aL
        0x487e8fda781e7adcL    # 1.6639495948871325E41
        -0x16cb659286a6196cL    # -6.160451293990941E198
    .end array-data
.end method
