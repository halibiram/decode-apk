.class public final Lcom/panda912/muddy/ObfuscatedString;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/panda912/muddy/ObfuscatedString$Codec;
    }
.end annotation


# static fields
.field private static final charset:Ljava/nio/charset/Charset;


# instance fields
.field private final obfuscated:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [C

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/panda912/muddy/ObfuscatedString;->charset:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    return-void

    .line 19
    :array_0
    .array-data 2
        0x55s
        0x54s
        0x46s
        0x38s
    .end array-data
.end method

.method public constructor <init>([J)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [J

    .line 9
    .line 10
    iput-object v0, p0, Lcom/panda912/muddy/ObfuscatedString;->obfuscated:[J

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget-wide v2, p1, v1

    .line 14
    .line 15
    aput-wide v2, v0, v1

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$100()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    sget-object v0, Lcom/panda912/muddy/ObfuscatedString;->charset:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$200(Lcom/panda912/muddy/ObfuscatedString;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/panda912/muddy/ObfuscatedString;->obfuscated:[J

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(J[BI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/panda912/muddy/ObfuscatedString;->encode(J[BI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static appendHexLiteral(Ljava/lang/StringBuilder;J)V
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x78

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 p1, 0x4c

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static array(Ljava/lang/String;)[J
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, -0x1

    .line 7
    if-ne v2, v1, :cond_1

    .line 8
    .line 9
    sget-object v1, Lcom/panda912/muddy/ObfuscatedString;->charset:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    array-length v1, p0

    .line 16
    add-int/lit8 v2, v1, 0x7

    .line 17
    .line 18
    div-int/lit8 v2, v2, 0x8

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    new-array v2, v2, [J

    .line 23
    .line 24
    invoke-static {}, Lcom/panda912/muddy/ObfuscatedString;->key()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    new-instance v5, Ljava/util/Random;

    .line 29
    .line 30
    invoke-direct {v5, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 31
    .line 32
    .line 33
    aput-wide v3, v2, v0

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    if-ge v0, v1, :cond_0

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    invoke-static {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;->decode([BI)J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    .line 45
    .line 46
    .line 47
    move-result-wide v8

    .line 48
    xor-long/2addr v6, v8

    .line 49
    aput-wide v6, v2, v3

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x8

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-object v2

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v1, 0x5

    .line 60
    new-array v1, v1, [J

    .line 61
    .line 62
    fill-array-data v1, :array_0

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/panda912/muddy/ObfuscatedString;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        -0x580da649ac25717aL    # -2.910771575978911E-116
        -0x729a19cf5965b90aL
        -0x5a5ae1dd02f8d43aL
        0x6a4f0888c1eac3a9L    # 1.2162295639724757E204
        0x40e3bde2c1df0edeL    # 40431.08616593269
    .end array-data
.end method

.method private static decode([BI)J
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v1, p1, 0x8

    .line 3
    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    if-lt v0, p1, :cond_0

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    shl-long/2addr v1, v3

    .line 17
    aget-byte v3, p0, v0

    .line 18
    .line 19
    and-int/lit16 v3, v3, 0xff

    .line 20
    .line 21
    int-to-long v3, v3

    .line 22
    or-long/2addr v1, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-wide v1
.end method

.method private static encode(J[BI)V
    .locals 2

    .line 1
    array-length v0, p2

    .line 2
    add-int/lit8 v1, p3, 0x8

    .line 3
    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    :goto_0
    if-ge p3, v0, :cond_0

    .line 9
    .line 10
    long-to-int v1, p0

    .line 11
    int-to-byte v1, v1

    .line 12
    aput-byte v1, p2, p3

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    shr-long/2addr p0, v1

    .line 17
    add-int/lit8 p3, p3, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public static java([J)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/16 v3, 0xb

    .line 7
    .line 8
    new-array v3, v3, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aget-wide v2, p0, v2

    .line 25
    .line 26
    invoke-static {v1, v2, v3}, Lcom/panda912/muddy/ObfuscatedString;->appendHexLiteral(Ljava/lang/StringBuilder;J)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x1

    .line 31
    :goto_0
    array-length v4, p0

    .line 32
    if-ge v3, v4, :cond_0

    .line 33
    .line 34
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v5, v0, [J

    .line 37
    .line 38
    fill-array-data v5, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    aget-wide v4, p0, v3

    .line 52
    .line 53
    invoke-static {v1, v4, v5}, Lcom/panda912/muddy/ObfuscatedString;->appendHexLiteral(Ljava/lang/StringBuilder;J)V

    .line 54
    .line 55
    .line 56
    add-int/2addr v3, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v3, 0x4

    .line 61
    new-array v3, v3, [J

    .line 62
    .line 63
    fill-array-data v3, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    invoke-direct {v2, p0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p0}, Lcom/panda912/muddy/ObfuscatedString;->literal(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v3, v0, [J

    .line 92
    .line 93
    fill-array-data v3, :array_3

    .line 94
    .line 95
    .line 96
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v4, v0, [J

    .line 106
    .line 107
    fill-array-data v4, :array_4

    .line 108
    .line 109
    .line 110
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 125
    .line 126
    new-array v0, v0, [J

    .line 127
    .line 128
    fill-array-data v0, :array_5

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-static {p0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :array_0
    .array-data 8
        0x534f79c74b7925e1L    # 2.051748085552969E93
        0x23f287e48678e9d0L
        -0x1c8052c1341f35caL    # -1.91274919062161E171
        0x117ff91f25e618ffL
        0xfa3fc02cb59a4fcL
        0x764951564a7ca20L
        -0x426c6c143da0db86L    # -4.451480015378106E-12
        -0x6ad46fc381a74ca8L
        -0x10117491ee47026aL    # -1.4819099708444626E231
        0x2074c712230a17aeL    # 2.47946517196918E-152
        -0x686d9e016ed7f9deL    # -3.934723864587216E-195
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
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_1
    .array-data 8
        0x2ede2caa19b5e9d8L    # 6.212992990697591E-83
        0x443455e3c033da1eL    # 3.751238831160635E20
    .end array-data

    :array_2
    .array-data 8
        -0x618d2eb588ede17fL    # -5.228357153782915E-162
        0x157ff9b0509df6dbL
        0xcde98489eaab1d0L
        -0x4526437550e411c4L    # -3.326363517905225E-25
    .end array-data

    :array_3
    .array-data 8
        -0x4a0da467ab625ee0L    # -7.850569861041564E-49
        -0x32c6c6b98b7c7a99L    # -1.037644120581072E64
    .end array-data

    :array_4
    .array-data 8
        -0x5b62d6e02f0f83f8L
        -0x42ff5fffa4b6c605L    # -7.382985530078676E-15
    .end array-data

    :array_5
    .array-data 8
        -0x6dc61ca244916563L    # -7.161833012704607E-221
        0x6529c20e726fc3b4L    # 2.0875656000951483E179
    .end array-data
.end method

.method private static key()J
    .locals 6

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v5, v3, v1

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    return-wide v1
.end method

.method public static literal(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v3, v2, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v1, v2, [J

    .line 30
    .line 31
    fill-array-data v1, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x7ba1b532dd7462aeL
        0x3ed9b0de5ce2a92dL    # 6.125186201947399E-6
    .end array-data

    .line 44
    :array_1
    .array-data 8
        0x66f49e7f884f531bL    # 8.971554960166003E187
        -0x3a7c6a7bbe747975L    # -7.576212118995145E26
    .end array-data
.end method

.method public static obfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/panda912/muddy/ObfuscatedString;->array(Ljava/lang/String;)[J

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/panda912/muddy/ObfuscatedString;->java([J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public finalize()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/panda912/muddy/ObfuscatedString;->obfuscated:[J

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public toCharArray()[C
    .locals 1

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/panda912/muddy/ObfuscatedString$1;-><init>(Lcom/panda912/muddy/ObfuscatedString;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString$Codec;->call()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, [C

    .line 11
    .line 12
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/panda912/muddy/ObfuscatedString$2;-><init>(Lcom/panda912/muddy/ObfuscatedString;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString$Codec;->call()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method public toStringIntern()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
