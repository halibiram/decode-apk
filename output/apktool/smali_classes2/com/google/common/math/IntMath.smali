.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_INT:I = 0xb504
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_SIGNED_POWER_OF_TWO:I = 0x40000000
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static biggestBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final factorials:[I

.field static final halfPowersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    .line 9
    .line 10
    const/16 v0, 0xa

    .line 11
    .line 12
    new-array v1, v0, [I

    .line 13
    .line 14
    fill-array-data v1, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    fill-array-data v0, :array_2

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    .line 25
    .line 26
    const/16 v0, 0xd

    .line 27
    .line 28
    new-array v0, v0, [I

    .line 29
    .line 30
    fill-array-data v0, :array_3

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    .line 34
    .line 35
    const/16 v0, 0x11

    .line 36
    .line 37
    new-array v0, v0, [I

    .line 38
    .line 39
    fill-array-data v0, :array_4

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    .line 43
    .line 44
    return-void

    .line 45
    :array_0
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    nop

    .line 67
    :array_1
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

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
    :array_2
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static binomial(II)I
    .locals 6

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x1

    .line 38
    if-gt p1, p0, :cond_0

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 43
    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v4, 0x3

    .line 46
    new-array v4, v4, [J

    .line 47
    .line 48
    fill-array-data v4, :array_2

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v2, v3, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    shr-int/lit8 v2, p0, 0x1

    .line 62
    .line 63
    if-le p1, v2, :cond_1

    .line 64
    .line 65
    sub-int p1, p0, p1

    .line 66
    .line 67
    :cond_1
    sget-object v2, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    .line 68
    .line 69
    array-length v3, v2

    .line 70
    if-ge p1, v3, :cond_6

    .line 71
    .line 72
    aget v2, v2, p1

    .line 73
    .line 74
    if-le p0, v2, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    if-eqz p1, :cond_5

    .line 78
    .line 79
    if-eq p1, v1, :cond_4

    .line 80
    .line 81
    const-wide/16 v2, 0x1

    .line 82
    .line 83
    :goto_1
    if-ge v0, p1, :cond_3

    .line 84
    .line 85
    sub-int v4, p0, v0

    .line 86
    .line 87
    int-to-long v4, v4

    .line 88
    mul-long v2, v2, v4

    .line 89
    .line 90
    add-int/2addr v0, v1

    .line 91
    int-to-long v4, v0

    .line 92
    div-long/2addr v2, v4

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    long-to-int p0, v2

    .line 95
    :cond_4
    return p0

    .line 96
    :cond_5
    return v1

    .line 97
    :cond_6
    :goto_2
    const p0, 0x7fffffff

    .line 98
    .line 99
    .line 100
    return p0

    .line 101
    :array_0
    .array-data 8
        0x211bef37ce4a7dc6L    # 3.41351810711683E-149
        -0x4dcc6d912d41792aL    # -7.259659586782584E-67
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_1
    .array-data 8
        -0x5885b53212c1dadcL
        0x11dfc17bdadca0cbL
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_2
    .array-data 8
        0x60ff636e5ee3c070L
        -0x18b7bde043a4bf56L    # -3.3775951661287327E189
        0x78812d7177f2f5c7L    # 2.9039315160462124E272
    .end array-data
.end method

.method public static ceilingPowerOfTwo(I)I
    .locals 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    const/high16 v0, 0x40000000    # 2.0f

    .line 20
    .line 21
    if-gt p0, v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    sub-int/2addr p0, v0

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    neg-int p0, p0

    .line 30
    shl-int p0, v0, p0

    .line 31
    .line 32
    return p0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const/16 v2, 0x3a

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v3, 0x4

    .line 45
    new-array v3, v3, [J

    .line 46
    .line 47
    fill-array-data v3, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 v2, 0x5

    .line 66
    new-array v2, v2, [J

    .line 67
    .line 68
    fill-array-data v2, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    nop

    .line 83
    :array_0
    .array-data 8
        0xeebd33a3df9c68fL    # 8.546145278929714E-237
        -0x595f081da6613867L
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_1
    .array-data 8
        -0x306fa851093d7a42L    # -1.8479822071162016E75
        0x20aa79a8392cf58L
        -0x6c927775590a1bb9L
        0x8a4bcd325f3bdbfL
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_2
    .array-data 8
        0x7341ec226613c0e4L    # 1.5663998054218124E247
        -0x56e38a05843dec61L
        0x3a504eea516cc8ffL    # 8.233568666701922E-28
        0x48828feafae53aaL    # 7.93329345383793E-287
        -0x1214b95ad281e0acL    # -3.0811074351989943E221
    .end array-data
.end method

.method public static checkedAdd(II)I
    .locals 6

    .line 1
    int-to-long v0, p0

    .line 2
    int-to-long v2, p1

    .line 3
    add-long/2addr v0, v2

    .line 4
    long-to-int v2, v0

    .line 5
    int-to-long v3, v2

    .line 6
    cmp-long v5, v0, v3

    .line 7
    .line 8
    if-nez v5, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x7bc34fe1aa14759bL    # 1.4703270772373852E288
        -0x303947191b1c2fb7L    # -2.0555152202540518E76
        0x19bfbef2c91f5b12L
    .end array-data
.end method

.method public static checkedMultiply(II)I
    .locals 6

    .line 1
    int-to-long v0, p0

    .line 2
    int-to-long v2, p1

    .line 3
    mul-long v0, v0, v2

    .line 4
    .line 5
    long-to-int v2, v0

    .line 6
    int-to-long v3, v2

    .line 7
    cmp-long v5, v0, v3

    .line 8
    .line 9
    if-nez v5, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    new-array v3, v3, [J

    .line 18
    .line 19
    fill-array-data v3, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :array_0
    .array-data 8
        0xb922c8bdf08bbdcL
        0x6700b2ff7850b482L    # 1.453192844564219E188
        0x25c8b4198ad6d86aL
    .end array-data
.end method

.method public static checkedPow(II)I
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    new-array v4, v3, [J

    .line 7
    .line 8
    fill-array-data v4, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    const/4 v2, -0x2

    .line 22
    const/4 v4, -0x1

    .line 23
    const/4 v5, 0x0

    .line 24
    if-eq p0, v2, :cond_d

    .line 25
    .line 26
    if-eq p0, v4, :cond_b

    .line 27
    .line 28
    if-eqz p0, :cond_9

    .line 29
    .line 30
    if-eq p0, v1, :cond_8

    .line 31
    .line 32
    if-eq p0, v3, :cond_6

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    :cond_0
    :goto_0
    if-eqz p1, :cond_5

    .line 36
    .line 37
    if-eq p1, v1, :cond_4

    .line 38
    .line 39
    and-int/lit8 v3, p1, 0x1

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    :cond_1
    shr-int/2addr p1, v1

    .line 48
    if-lez p1, :cond_0

    .line 49
    .line 50
    const v3, -0xb504

    .line 51
    .line 52
    .line 53
    if-gt v3, p0, :cond_2

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v3, 0x0

    .line 58
    :goto_1
    const v4, 0xb504

    .line 59
    .line 60
    .line 61
    if-gt p0, v4, :cond_3

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const/4 v4, 0x0

    .line 66
    :goto_2
    and-int/2addr v3, v4

    .line 67
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v6, v0, [J

    .line 70
    .line 71
    fill-array-data v6, :array_1

    .line 72
    .line 73
    .line 74
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v3, v4, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 82
    .line 83
    .line 84
    mul-int p0, p0, p0

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    return p0

    .line 92
    :cond_5
    return v2

    .line 93
    :cond_6
    const/16 v2, 0x1f

    .line 94
    .line 95
    if-ge p1, v2, :cond_7

    .line 96
    .line 97
    const/4 v5, 0x1

    .line 98
    :cond_7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v0, v0, [J

    .line 101
    .line 102
    fill-array-data v0, :array_2

    .line 103
    .line 104
    .line 105
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v5, v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 113
    .line 114
    .line 115
    shl-int p0, v1, p1

    .line 116
    .line 117
    return p0

    .line 118
    :cond_8
    return v1

    .line 119
    :cond_9
    if-nez p1, :cond_a

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_a
    const/4 v1, 0x0

    .line 123
    :goto_3
    return v1

    .line 124
    :cond_b
    and-int/lit8 p0, p1, 0x1

    .line 125
    .line 126
    if-nez p0, :cond_c

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_c
    const/4 v1, -0x1

    .line 130
    :goto_4
    return v1

    .line 131
    :cond_d
    const/16 v2, 0x20

    .line 132
    .line 133
    if-ge p1, v2, :cond_e

    .line 134
    .line 135
    const/4 v5, 0x1

    .line 136
    :cond_e
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v0, v0, [J

    .line 139
    .line 140
    fill-array-data v0, :array_3

    .line 141
    .line 142
    .line 143
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v5, v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 151
    .line 152
    .line 153
    and-int/lit8 p0, p1, 0x1

    .line 154
    .line 155
    if-nez p0, :cond_f

    .line 156
    .line 157
    shl-int p0, v1, p1

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_f
    shl-int p0, v4, p1

    .line 161
    .line 162
    :goto_5
    return p0

    .line 163
    :array_0
    .array-data 8
        0x647f252bcb9ff875L    # 1.232504751997562E176
        0x18fb78433b2270f7L    # 2.466140633207466E-188
    .end array-data

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
    :array_1
    .array-data 8
        0x758ffe26c19254e8L    # 1.9214906062392034E258
        0x7711409b9bee8f9dL    # 3.4768428985959195E265
        -0x7aae3c3dc0e899dbL    # -4.778609473594742E-283
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
    :array_2
    .array-data 8
        0x3167bf83e726b9b2L    # 1.0752761527567893E-70
        -0x66baaa7438267812L    # -6.128981822854652E-187
        0x7be5838045a2f073L    # 6.551797762798832E288
    .end array-data

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
    :array_3
    .array-data 8
        -0x6303e7c8cb7f9a6eL    # -4.652701391837382E-169
        -0x795c854a783154e5L
        -0xcc46cf39d500a5aL
    .end array-data
.end method

.method public static checkedSubtract(II)I
    .locals 6

    .line 1
    int-to-long v0, p0

    .line 2
    int-to-long v2, p1

    .line 3
    sub-long/2addr v0, v2

    .line 4
    long-to-int v2, v0

    .line 5
    int-to-long v3, v2

    .line 6
    cmp-long v5, v0, v3

    .line 7
    .line 8
    if-nez v5, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x4b53722eb54fbe3bL    # -5.8226056021185575E-55
        -0x697f326773449c28L    # -2.743990074254409E-200
        -0xd3a222249f3048aL    # -7.465330335112638E244
    .end array-data
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    div-int v1, p0, p1

    .line 8
    .line 9
    mul-int v2, p1, v1

    .line 10
    .line 11
    sub-int v2, p0, v2

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    xor-int/2addr p0, p1

    .line 17
    shr-int/lit8 p0, p0, 0x1f

    .line 18
    .line 19
    or-int/2addr p0, v0

    .line 20
    sget-object v3, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    aget v3, v3, v4

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    packed-switch v3, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    new-instance p0, Ljava/lang/AssertionError;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :pswitch_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    sub-int/2addr p1, v2

    .line 47
    sub-int/2addr v2, p1

    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 51
    .line 52
    if-eq p2, p1, :cond_4

    .line 53
    .line 54
    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 55
    .line 56
    if-ne p2, p1, :cond_1

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    :goto_0
    and-int/lit8 p2, v1, 0x1

    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v0, 0x0

    .line 67
    :goto_1
    and-int/2addr p1, v0

    .line 68
    if-eqz p1, :cond_6

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    if-lez v2, :cond_6

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_1
    if-lez p0, :cond_6

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :pswitch_2
    if-gez p0, :cond_6

    .line 78
    .line 79
    :cond_4
    :goto_2
    :pswitch_3
    add-int/2addr v1, p0

    .line 80
    goto :goto_4

    .line 81
    :pswitch_4
    if-nez v2, :cond_5

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_5
    const/4 v0, 0x0

    .line 85
    :goto_3
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_4
    :pswitch_5
    return v1

    .line 89
    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 90
    .line 91
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    const/4 p2, 0x3

    .line 94
    new-array p2, p2, [J

    .line 95
    .line 96
    fill-array-data p2, :array_0

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :array_0
    .array-data 8
        0x1d859d3f867c3c06L
        -0x69e87b52cc746bf0L    # -3.000462854422313E-202
        -0x6cd69edfc663a246L
    .end array-data
.end method

.method public static factorial(I)I
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    if-ge p0, v1, :cond_0

    .line 23
    .line 24
    aget p0, v0, p0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const p0, 0x7fffffff

    .line 28
    .line 29
    .line 30
    :goto_0
    return p0

    .line 31
    :array_0
    .array-data 8
        -0x1f26c5ba71fbe3d5L    # -3.4636506595770663E158
        0x19413094f9e1efadL    # 4.938361155880145E-187
    .end array-data
.end method

.method public static floorPowerOfTwo(I)I
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x14906ab06b673b55L    # -3.2447688244589374E209
        0x569bcd37b161e913L    # 1.632332860152334E109
    .end array-data
.end method

.method public static gcd(II)I
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    return p1

    .line 39
    :cond_0
    if-nez p1, :cond_1

    .line 40
    .line 41
    return p0

    .line 42
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    shr-int/2addr p0, v0

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    shr-int/2addr p1, v1

    .line 52
    :goto_0
    if-eq p0, p1, :cond_2

    .line 53
    .line 54
    sub-int/2addr p0, p1

    .line 55
    shr-int/lit8 v2, p0, 0x1f

    .line 56
    .line 57
    and-int/2addr v2, p0

    .line 58
    sub-int/2addr p0, v2

    .line 59
    sub-int/2addr p0, v2

    .line 60
    add-int/2addr p1, v2

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    shr-int/2addr p0, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    shl-int/2addr p0, p1

    .line 72
    return p0

    .line 73
    :array_0
    .array-data 8
        0x4b0ada4145e7c6c7L    # 3.2149551674735128E53
        -0x3596743291299d5bL    # -2.986853756678863E50
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :array_1
    .array-data 8
        0x50bc4b0800b6fcaaL    # 8.386857221115995E80
        0xed8e1dfc61e42acL
    .end array-data
.end method

.method public static isPowerOfTwo(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p0, -0x1

    and-int/2addr p0, v3

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    and-int p0, v2, v0

    return p0
.end method

.method public static isPrime(I)Z
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    int-to-long v0, p0

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPrime(J)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static lessThanBranchFree(II)I
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sub-int/2addr p0, p1

    not-int p0, p0

    not-int p0, p0

    ushr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 24
    .line 25
    aget v1, v1, v0

    .line 26
    .line 27
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    aget p1, v2, p1

    .line 34
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    new-instance p0, Ljava/lang/AssertionError;

    .line 39
    .line 40
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :pswitch_0
    sget-object p1, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    .line 45
    .line 46
    aget p1, p1, v0

    .line 47
    .line 48
    invoke-static {p1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    :goto_0
    add-int/2addr p0, v0

    .line 53
    return p0

    .line 54
    :pswitch_1
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    goto :goto_0

    .line 59
    :pswitch_2
    if-ne p0, v1, :cond_0

    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const/4 p0, 0x0

    .line 64
    :goto_1
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 65
    .line 66
    .line 67
    :pswitch_3
    return v0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

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
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_0
    .array-data 8
        0x37a3c4d0559a75e5L    # 1.1346736983787178E-40
        -0xedf24977783a315L    # -8.575679375409965E236
    .end array-data
.end method

.method private static log10Floor(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget-byte v0, v0, v1

    .line 8
    .line 9
    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 10
    .line 11
    aget v1, v1, v0

    .line 12
    .line 13
    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    sub-int/2addr v0, p0

    .line 18
    return v0
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    aget p1, v0, p1

    .line 26
    .line 27
    packed-switch p1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    new-instance p0, Ljava/lang/AssertionError;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const v0, -0x4afb0ccd

    .line 41
    .line 42
    .line 43
    ushr-int/2addr v0, p1

    .line 44
    rsub-int/lit8 p1, p1, 0x1f

    .line 45
    .line 46
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    add-int/2addr p0, p1

    .line 51
    return p0

    .line 52
    :pswitch_1
    add-int/lit8 p0, p0, -0x1

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    rsub-int/lit8 p0, p0, 0x20

    .line 59
    .line 60
    return p0

    .line 61
    :pswitch_2
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-static {p1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 66
    .line 67
    .line 68
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    rsub-int/lit8 p0, p0, 0x1f

    .line 73
    .line 74
    return p0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_0
    .array-data 8
        0x19ac6a4c2e25b7dL
        -0x5757a51e081c301cL    # -7.911884813266292E-113
    .end array-data
.end method

.method public static mean(II)I
    .locals 1

    and-int v0, p0, p1

    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public static mod(II)I
    .locals 3

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    rem-int/2addr p0, p1

    .line 4
    if-ltz p0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    add-int/2addr p0, p1

    .line 8
    :goto_0
    return p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v1, 0x1f

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    new-array v2, v2, [J

    .line 22
    .line 23
    fill-array-data v2, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    new-array v1, v1, [J

    .line 43
    .line 44
    fill-array-data v1, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x18a466f9797a648dL    # 5.72388218017039E-190
        0x4ab00e45b187a94bL    # 6.007169608842864E51
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
        -0x4b6f881c8e2ca2a0L    # -1.6790744492098702E-55
        -0x527f49a01448a960L    # -1.6408547839996555E-89
        0x283cef148c48d086L    # 7.343257382166648E-115
    .end array-data
.end method

.method public static pow(II)I
    .locals 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    const/4 v1, -0x2

    .line 21
    const/16 v3, 0x20

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-eq p0, v1, :cond_a

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    if-eq p0, v1, :cond_8

    .line 28
    .line 29
    if-eqz p0, :cond_6

    .line 30
    .line 31
    if-eq p0, v0, :cond_5

    .line 32
    .line 33
    if-eq p0, v2, :cond_3

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    :goto_0
    if-eqz p1, :cond_2

    .line 37
    .line 38
    if-eq p1, v0, :cond_1

    .line 39
    .line 40
    and-int/lit8 v2, p1, 0x1

    .line 41
    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    move v2, p0

    .line 47
    :goto_1
    mul-int v1, v1, v2

    .line 48
    .line 49
    mul-int p0, p0, p0

    .line 50
    .line 51
    shr-int/2addr p1, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    mul-int p0, p0, v1

    .line 54
    .line 55
    return p0

    .line 56
    :cond_2
    return v1

    .line 57
    :cond_3
    if-ge p1, v3, :cond_4

    .line 58
    .line 59
    shl-int v4, v0, p1

    .line 60
    .line 61
    :cond_4
    return v4

    .line 62
    :cond_5
    return v0

    .line 63
    :cond_6
    if-nez p1, :cond_7

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_7
    const/4 v0, 0x0

    .line 67
    :goto_2
    return v0

    .line 68
    :cond_8
    and-int/lit8 p0, p1, 0x1

    .line 69
    .line 70
    if-nez p0, :cond_9

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_9
    const/4 v0, -0x1

    .line 74
    :goto_3
    return v0

    .line 75
    :cond_a
    if-ge p1, v3, :cond_c

    .line 76
    .line 77
    and-int/lit8 p0, p1, 0x1

    .line 78
    .line 79
    if-nez p0, :cond_b

    .line 80
    .line 81
    shl-int p0, v0, p1

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_b
    shl-int p0, v0, p1

    .line 85
    .line 86
    neg-int p0, p0

    .line 87
    :goto_4
    return p0

    .line 88
    :cond_c
    return v4

    .line 89
    :array_0
    .array-data 8
        0x56334c04f0742498L    # 1.770301158410425E107
        -0x229adc9ee0038fcaL    # -8.055193795883674E141
    .end array-data
.end method

.method public static saturatedAdd(II)I
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 1
    int-to-long v0, p0

    .line 2
    int-to-long p0, p1

    .line 3
    add-long/2addr v0, p0

    .line 4
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static saturatedMultiply(II)I
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 1
    int-to-long v0, p0

    .line 2
    int-to-long p0, p1

    .line 3
    mul-long v0, v0, p0

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static saturatedPow(II)I
    .locals 6
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v4, v3, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    const/4 v2, -0x2

    .line 23
    const v4, 0x7fffffff

    .line 24
    .line 25
    .line 26
    const/4 v5, -0x1

    .line 27
    if-eq p0, v2, :cond_e

    .line 28
    .line 29
    if-eq p0, v5, :cond_c

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz p0, :cond_a

    .line 33
    .line 34
    if-eq p0, v1, :cond_9

    .line 35
    .line 36
    if-eq p0, v3, :cond_7

    .line 37
    .line 38
    ushr-int/lit8 v0, p0, 0x1f

    .line 39
    .line 40
    and-int/lit8 v3, p1, 0x1

    .line 41
    .line 42
    and-int/2addr v0, v3

    .line 43
    add-int/2addr v0, v4

    .line 44
    const/4 v3, 0x1

    .line 45
    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    .line 46
    .line 47
    if-eq p1, v1, :cond_5

    .line 48
    .line 49
    and-int/lit8 v4, p1, 0x1

    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-static {v3, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    :cond_1
    shr-int/2addr p1, v1

    .line 58
    if-lez p1, :cond_0

    .line 59
    .line 60
    const v4, -0xb504

    .line 61
    .line 62
    .line 63
    if-le v4, p0, :cond_2

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 v4, 0x0

    .line 68
    :goto_1
    const v5, 0xb504

    .line 69
    .line 70
    .line 71
    if-le p0, v5, :cond_3

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    const/4 v5, 0x0

    .line 76
    :goto_2
    or-int/2addr v4, v5

    .line 77
    if-eqz v4, :cond_4

    .line 78
    .line 79
    return v0

    .line 80
    :cond_4
    mul-int p0, p0, p0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    invoke-static {v3, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    return p0

    .line 88
    :cond_6
    return v3

    .line 89
    :cond_7
    if-lt p1, v0, :cond_8

    .line 90
    .line 91
    return v4

    .line 92
    :cond_8
    shl-int p0, v1, p1

    .line 93
    .line 94
    return p0

    .line 95
    :cond_9
    return v1

    .line 96
    :cond_a
    if-nez p1, :cond_b

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_b
    const/4 v1, 0x0

    .line 100
    :goto_3
    return v1

    .line 101
    :cond_c
    and-int/lit8 p0, p1, 0x1

    .line 102
    .line 103
    if-nez p0, :cond_d

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_d
    const/4 v1, -0x1

    .line 107
    :goto_4
    return v1

    .line 108
    :cond_e
    const/16 p0, 0x20

    .line 109
    .line 110
    if-lt p1, p0, :cond_f

    .line 111
    .line 112
    and-int/lit8 p0, p1, 0x1

    .line 113
    .line 114
    add-int/2addr p0, v4

    .line 115
    return p0

    .line 116
    :cond_f
    and-int/lit8 p0, p1, 0x1

    .line 117
    .line 118
    if-nez p0, :cond_10

    .line 119
    .line 120
    shl-int p0, v1, p1

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_10
    shl-int p0, v5, p1

    .line 124
    .line 125
    :goto_5
    return p0

    .line 126
    nop

    .line 127
    :array_0
    .array-data 8
        -0x4d5a5ea6526d02d4L    # -1.0269586904503634E-64
        0x54269277c632b432L    # 2.4106899323359518E97
    .end array-data
.end method

.method public static saturatedSubtract(II)I
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 1
    int-to-long v0, p0

    .line 2
    int-to-long p0, p1

    .line 3
    sub-long/2addr v0, p0

    .line 4
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sget-object v1, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    aget p1, v1, p1

    .line 30
    .line 31
    packed-switch p1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    new-instance p0, Ljava/lang/AssertionError;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :pswitch_0
    mul-int p1, v0, v0

    .line 41
    .line 42
    add-int/2addr p1, v0

    .line 43
    invoke-static {p1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    :goto_0
    add-int/2addr p0, v0

    .line 48
    return p0

    .line 49
    :pswitch_1
    mul-int p1, v0, v0

    .line 50
    .line 51
    invoke-static {p1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    goto :goto_0

    .line 56
    :pswitch_2
    mul-int p1, v0, v0

    .line 57
    .line 58
    if-ne p1, p0, :cond_0

    .line 59
    .line 60
    const/4 p0, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const/4 p0, 0x0

    .line 63
    :goto_1
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 64
    .line 65
    .line 66
    :pswitch_3
    return v0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

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
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_0
    .array-data 8
        0x63fcede854c1699L
        -0x1a31ab0eb5eca19eL    # -2.5172460896016122E182
    .end array-data
.end method

.method private static sqrtFloor(I)I
    .locals 2

    .line 1
    int-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    double-to-int p0, v0

    .line 7
    return p0
.end method
