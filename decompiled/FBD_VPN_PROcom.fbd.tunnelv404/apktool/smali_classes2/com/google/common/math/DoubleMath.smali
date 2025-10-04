.class public final Lcom/google/common/math/DoubleMath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final LN_2:D

.field static final MAX_FACTORIAL:I = 0xaa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_INT_AS_DOUBLE:D = 2.147483647E9

.field private static final MAX_LONG_AS_DOUBLE_PLUS_ONE:D = 9.223372036854776E18

.field private static final MIN_INT_AS_DOUBLE:D = -2.147483648E9

.field private static final MIN_LONG_AS_DOUBLE:D = -9.223372036854776E18

.field static final everySixteenthFactorial:[D
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    .line 8
    .line 9
    const/16 v0, 0xb

    .line 10
    .line 11
    new-array v0, v0, [D

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    .line 17
    .line 18
    return-void

    .line 19
    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x42b3077775800000L    # 2.0922789888E13
        0x474956ad0aae33a4L    # 2.631308369336935E35
        0x4c9ee69a78d72cb6L    # 1.2413915592536073E61
        0x526fe478ee34844aL    # 1.2688693218588417E89
        0x589c619094edabffL    # 7.156945704626381E118
        0x5f13638dd7bd6347L    # 9.916779348709496E149
        0x65c7cac197cfe503L    # 1.974506857221074E182
        0x6cb1e5dfc140e1e5L    # 3.856204823625804E215
        0x73c8ce85fadb707eL    # 5.5502938327393044E249
        0x7b095d5f3d928edeL    # 4.7147236359920616E284
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

.method private static checkFinite(D)D
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 6
    .line 7
    .line 8
    return-wide p0
.end method

.method public static factorial(I)D
    .locals 5

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
    const/16 v0, 0xaa

    .line 20
    .line 21
    if-le p0, v0, :cond_0

    .line 22
    .line 23
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 24
    .line 25
    return-wide v0

    .line 26
    :cond_0
    and-int/lit8 v0, p0, -0x10

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 31
    .line 32
    :goto_0
    if-gt v0, p0, :cond_1

    .line 33
    .line 34
    int-to-double v3, v0

    .line 35
    mul-double v1, v1, v3

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    .line 41
    .line 42
    shr-int/lit8 p0, p0, 0x4

    .line 43
    .line 44
    aget-wide v3, v0, p0

    .line 45
    .line 46
    mul-double v1, v1, v3

    .line 47
    .line 48
    return-wide v1

    .line 49
    :array_0
    .array-data 8
        0x1d871dd1c49ab086L
        -0x5db7ee1d2da1daeL
    .end array-data
.end method

.method public static fuzzyCompare(DDD)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    cmpg-double p4, p0, p2

    .line 10
    .line 11
    if-gez p4, :cond_1

    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :cond_1
    cmpl-double p4, p0, p2

    .line 16
    .line 17
    if-lez p4, :cond_2

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p0, p1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public static fuzzyEquals(DDD)Z
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-static {v0, p4, p5}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;D)D

    .line 17
    .line 18
    .line 19
    sub-double v0, p0, p2

    .line 20
    .line 21
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->copySign(DD)D

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    cmpg-double v2, v0, p4

    .line 28
    .line 29
    if-lez v2, :cond_1

    .line 30
    .line 31
    cmpl-double p4, p0, p2

    .line 32
    .line 33
    if-eqz p4, :cond_1

    .line 34
    .line 35
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 51
    :goto_1
    return p0

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        0x1e57a880dbf8527eL
        0x9bf5e6f4faf34a0L
        0x2ba1d58e3da5415eL    # 1.6307414116116908E-98
    .end array-data
.end method

.method public static isMathematicalInteger(D)Z
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmpl-double v2, p0, v0

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    rsub-int/lit8 v0, v0, 0x34

    .line 22
    .line 23
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-gt v0, p0, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
.end method

.method public static isPowerOfTwo(D)Z
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    cmpl-double v3, p0, v0

    .line 5
    .line 6
    if-lez v3, :cond_0

    .line 7
    .line 8
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    const-wide/16 v0, 0x1

    .line 19
    .line 20
    sub-long v0, p0, v0

    .line 21
    .line 22
    and-long/2addr p0, v0

    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    cmp-long v3, p0, v0

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    :cond_0
    return v2
.end method

.method public static log2(D)D
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    sget-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static log2(DLjava/math/RoundingMode;)I
    .locals 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-double v4, p0, v0

    if-lez v4, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x5

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isNormal(D)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    mul-double p0, p0, v0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result p0

    add-int/lit8 p0, p0, -0x34

    return p0

    .line 6
    :cond_1
    sget-object v1, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    .line 7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 8
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->scaleNormalize(D)D

    move-result-wide p0

    mul-double p0, p0, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double p2, p0, v4

    if-lez p2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :pswitch_1
    if-ltz v0, :cond_2

    const/4 v2, 0x1

    .line 9
    :cond_2
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result p0

    :goto_1
    xor-int/2addr p0, v3

    and-int/2addr v2, p0

    goto :goto_2

    :pswitch_2
    if-gez v0, :cond_3

    const/4 v2, 0x1

    .line 10
    :cond_3
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result p0

    goto :goto_1

    .line 11
    :pswitch_3
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result p0

    xor-int/lit8 v2, p0, 0x1

    goto :goto_2

    .line 12
    :pswitch_4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :cond_4
    :goto_2
    :pswitch_5
    if-eqz v2, :cond_5

    add-int/2addr v0, v3

    :cond_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 8
        0x38d6f37d684c157dL    # 6.906605153671258E-35
        -0x512dc42bc7baf438L
        0x4b6495a2f728a502L    # 1.5772840950632664E55
        -0x423d6c705fa4489bL    # -3.379029351878396E-11
        -0x5d8342406ae74638L
    .end array-data
.end method

.method public static mean(Ljava/lang/Iterable;)D
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/math/DoubleMath;->mean(Ljava/util/Iterator;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean(Ljava/util/Iterator;)D
    .locals 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x5

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v0

    const-wide/16 v2, 0x1

    move-wide v4, v2

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v6

    add-long/2addr v4, v2

    sub-double/2addr v6, v0

    long-to-double v8, v4

    div-double/2addr v6, v8

    add-double/2addr v0, v6

    goto :goto_0

    :cond_0
    return-wide v0

    :array_0
    .array-data 8
        -0x2068c5bb6f194557L    # -3.0413214510088656E152
        0x439f721faddcf6ceL    # 5.6647709852943654E17
        0x3fb9a123d232e3f0L    # 0.10011505014234934
        -0x125ac4954dd43b3cL    # -1.4989934434990422E220
        -0x5e03b4117c406d72L
    .end array-data
.end method

.method public static varargs mean([D)D
    .locals 12
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x5

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2
    aget-wide v0, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v0

    const-wide/16 v3, 0x1

    move-wide v6, v3

    const/4 v5, 0x1

    .line 3
    :goto_1
    array-length v8, p0

    if-ge v5, v8, :cond_1

    .line 4
    aget-wide v8, p0, v5

    invoke-static {v8, v9}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    add-long/2addr v6, v3

    .line 5
    aget-wide v8, p0, v5

    sub-double/2addr v8, v0

    long-to-double v10, v6

    div-double/2addr v8, v10

    add-double/2addr v0, v8

    add-int/2addr v5, v2

    goto :goto_1

    :cond_1
    return-wide v0

    :array_0
    .array-data 8
        -0x22463999743e82b6L    # -3.143088899813219E143
        -0x5af39c54b5f2782fL    # -3.199683827853331E-130
        -0x5708c84ec7b5408eL
        -0x3c7380191e3e3ac7L    # -2.56701726549649184E17
        0x7f9d7635a9394d10L    # 5.1721872114956306E306
    .end array-data
.end method

.method public static varargs mean([I)D
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 6
    array-length v1, p0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x5

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/16 v3, 0x0

    .line 7
    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_1

    .line 8
    aget v1, p0, v2

    int-to-long v5, v1

    add-long/2addr v3, v5

    add-int/2addr v2, v0

    goto :goto_1

    :cond_1
    long-to-double v0, v3

    .line 9
    array-length p0, p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0

    :array_0
    .array-data 8
        0xcc9c887c5b81a64L
        0x61295784098d9202L
        0x3a2e50d83862251dL    # 1.913195907685646E-28
        -0x4a110c7bfc2ad5d4L
        0x43d71db2acb6e209L    # 6.6627355682773494E18
    .end array-data
.end method

.method public static varargs mean([J)D
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x5

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    aget-wide v0, p0, v1

    long-to-double v0, v0

    const-wide/16 v3, 0x1

    move-wide v6, v3

    const/4 v5, 0x1

    .line 12
    :goto_1
    array-length v8, p0

    if-ge v5, v8, :cond_1

    add-long/2addr v6, v3

    .line 13
    aget-wide v8, p0, v5

    long-to-double v8, v8

    sub-double/2addr v8, v0

    long-to-double v10, v6

    div-double/2addr v8, v10

    add-double/2addr v0, v8

    add-int/2addr v5, v2

    goto :goto_1

    :cond_1
    return-wide v0

    nop

    :array_0
    .array-data 8
        0x3f5dafa5f71f8841L    # 0.0018118973498464505
        -0x126dc1a189441570L    # -6.440032835041822E219
        0x629c42117eb89d00L    # 1.0414543950358365E167
        -0x32b942d4d4087a47L    # -1.8708514698142135E64
        0x5a6c5ce870f6ba9L
    .end array-data
.end method

.method public static roundIntermediate(DLjava/math/RoundingMode;)D
    .locals 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    sget-object v0, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    aget p2, v0, p2

    .line 14
    .line 15
    const-wide/16 v0, 0x1

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 20
    .line 21
    packed-switch p2, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    new-instance p0, Ljava/lang/AssertionError;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    sub-double v2, p0, v0

    .line 35
    .line 36
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    cmpl-double p2, v2, v4

    .line 41
    .line 42
    if-nez p2, :cond_0

    .line 43
    .line 44
    return-wide p0

    .line 45
    :cond_0
    return-wide v0

    .line 46
    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    sub-double v2, p0, v0

    .line 51
    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    cmpl-double p2, v2, v4

    .line 57
    .line 58
    if-nez p2, :cond_1

    .line 59
    .line 60
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    add-double/2addr v0, p0

    .line 65
    :cond_1
    return-wide v0

    .line 66
    :pswitch_2
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    .line 67
    .line 68
    .line 69
    move-result-wide p0

    .line 70
    return-wide p0

    .line 71
    :pswitch_3
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    return-wide p0

    .line 78
    :cond_2
    double-to-long v0, p0

    .line 79
    cmpl-double p2, p0, v2

    .line 80
    .line 81
    if-lez p2, :cond_3

    .line 82
    .line 83
    const/4 p0, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/4 p0, -0x1

    .line 86
    :goto_0
    int-to-long p0, p0

    .line 87
    add-long/2addr v0, p0

    .line 88
    long-to-double p0, v0

    .line 89
    :pswitch_4
    return-wide p0

    .line 90
    :pswitch_5
    cmpg-double p2, p0, v2

    .line 91
    .line 92
    if-lez p2, :cond_5

    .line 93
    .line 94
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    double-to-long p0, p0

    .line 102
    add-long/2addr p0, v0

    .line 103
    long-to-double p0, p0

    .line 104
    :cond_5
    :goto_1
    return-wide p0

    .line 105
    :pswitch_6
    cmpl-double p2, p0, v2

    .line 106
    .line 107
    if-gez p2, :cond_7

    .line 108
    .line 109
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_6

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    double-to-long p0, p0

    .line 117
    sub-long/2addr p0, v0

    .line 118
    long-to-double p0, p0

    .line 119
    :cond_7
    :goto_2
    return-wide p0

    .line 120
    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    invoke-static {p2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 125
    .line 126
    .line 127
    return-wide p0

    .line 128
    :cond_8
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 129
    .line 130
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    const/4 p2, 0x4

    .line 133
    new-array p2, p2, [J

    .line 134
    .line 135
    fill-array-data p2, :array_0

    .line 136
    .line 137
    .line 138
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 8
        -0x1569e4deafc4722cL    # -2.772341814915838E205
        -0x7313c686b8f59f89L    # -2.0183659991488363E-246
        0x75c1653826fa0af8L    # 1.671630958648846E259
        -0xa5ebe633d80816dL    # -4.145662375842366E258
    .end array-data
.end method

.method public static roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 6
    .line 7
    sub-double/2addr v0, p0

    .line 8
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    cmpg-double v5, v0, v2

    .line 13
    .line 14
    if-gez v5, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    const-wide/high16 v1, 0x43e0000000000000L    # 9.223372036854776E18

    .line 20
    .line 21
    cmpg-double v3, p0, v1

    .line 22
    .line 23
    if-gez v3, :cond_1

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    :cond_1
    and-int/2addr p2, v0

    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    double-to-long p0, p0

    .line 30
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    add-int/lit8 p2, p2, -0x34

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    cmpg-double v2, p0, v0

    .line 56
    .line 57
    if-gez v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    :cond_3
    return-object p2
.end method

.method public static roundToInt(DLjava/math/RoundingMode;)I
    .locals 8
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, -0x3e1fffffffe00000L    # -2.147483649E9

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    cmpl-double v6, v0, v2

    .line 13
    .line 14
    if-lez v6, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    const-wide/high16 v6, 0x41e0000000000000L    # 2.147483648E9

    .line 20
    .line 21
    cmpg-double v3, v0, v6

    .line 22
    .line 23
    if-gez v3, :cond_1

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    :cond_1
    and-int/2addr v2, v4

    .line 27
    invoke-static {v2, p0, p1, p2}, Lcom/google/common/math/MathPreconditions;->checkInRangeForRoundingInputs(ZDLjava/math/RoundingMode;)V

    .line 28
    .line 29
    .line 30
    double-to-int p0, v0

    .line 31
    return p0
.end method

.method public static roundToLong(DLjava/math/RoundingMode;)J
    .locals 9
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    .line 6
    .line 7
    sub-double/2addr v2, v0

    .line 8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    cmpg-double v8, v2, v4

    .line 13
    .line 14
    if-gez v8, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    .line 20
    .line 21
    cmpg-double v5, v0, v3

    .line 22
    .line 23
    if-gez v5, :cond_1

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    :cond_1
    and-int/2addr v2, v6

    .line 27
    invoke-static {v2, p0, p1, p2}, Lcom/google/common/math/MathPreconditions;->checkInRangeForRoundingInputs(ZDLjava/math/RoundingMode;)V

    .line 28
    .line 29
    .line 30
    double-to-long p0, v0

    .line 31
    return-wide p0
.end method
