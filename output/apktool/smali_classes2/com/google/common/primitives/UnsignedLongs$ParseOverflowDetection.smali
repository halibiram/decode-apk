.class final Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/UnsignedLongs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseOverflowDetection"
.end annotation


# static fields
.field static final maxSafeDigits:[I

.field static final maxValueDivs:[J

.field static final maxValueMods:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/16 v0, 0x25

    .line 2
    .line 3
    new-array v1, v0, [J

    .line 4
    .line 5
    sput-object v1, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueDivs:[J

    .line 6
    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    sput-object v1, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueMods:[I

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    sput-object v0, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxSafeDigits:[I

    .line 14
    .line 15
    new-instance v0, Ljava/math/BigInteger;

    .line 16
    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/16 v2, 0x10

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    :goto_0
    const/16 v2, 0x24

    .line 39
    .line 40
    if-gt v1, v2, :cond_0

    .line 41
    .line 42
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueDivs:[J

    .line 43
    .line 44
    int-to-long v3, v1

    .line 45
    const-wide/16 v5, -0x1

    .line 46
    .line 47
    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    aput-wide v7, v2, v1

    .line 52
    .line 53
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueMods:[I

    .line 54
    .line 55
    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    long-to-int v4, v3

    .line 60
    aput v4, v2, v1

    .line 61
    .line 62
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxSafeDigits:[I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    add-int/lit8 v3, v3, -0x1

    .line 73
    .line 74
    aput v3, v2, v1

    .line 75
    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    return-void

    .line 80
    nop

    :array_0
    .array-data 8
        -0x6d6833f39b4a0731L    # -4.213340382918522E-219
        0x794312fef68ad29cL
        0x1b4e2d28bd7947d5L
        -0x21beeb8c6d8ba08cL    # -1.0663823426715369E146
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

.method public static overflowInParse(JII)Z
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    cmp-long v3, p0, v0

    .line 5
    .line 6
    if-ltz v3, :cond_3

    .line 7
    .line 8
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueDivs:[J

    .line 9
    .line 10
    aget-wide v3, v0, p3

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    cmp-long v1, p0, v3

    .line 14
    .line 15
    if-gez v1, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    cmp-long v1, p0, v3

    .line 19
    .line 20
    if-lez v1, :cond_1

    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    sget-object p0, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueMods:[I

    .line 24
    .line 25
    aget p0, p0, p3

    .line 26
    .line 27
    if-le p2, p0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v2, 0x0

    .line 31
    :cond_3
    :goto_0
    return v2
.end method
