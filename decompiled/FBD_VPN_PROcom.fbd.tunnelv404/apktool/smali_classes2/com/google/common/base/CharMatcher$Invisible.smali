.class final Lcom/google/common/base/CharMatcher$Invisible;
.super Lcom/google/common/base/CharMatcher$RangesMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Invisible"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher$Invisible;

.field private static final RANGE_ENDS:Ljava/lang/String;

.field private static final RANGE_STARTS:Ljava/lang/String; = "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u0890\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/common/base/CharMatcher$Invisible;->RANGE_ENDS:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lcom/google/common/base/CharMatcher$Invisible;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$Invisible;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/google/common/base/CharMatcher$Invisible;->INSTANCE:Lcom/google/common/base/CharMatcher$Invisible;

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 8
        -0x308dc307445ba3b2L    # -5.155849243936698E74
        0x6c8db1d81f0a9d47L    # 7.997346743765291E214
        -0x3c3aa4ea0eab49d4L    # -3.0776956478593659E18
        -0x49bbbfc0e557a393L    # -2.7712542189983507E-47
        0x244af97b6cc3c02bL    # 7.422427744221969E-134
        0x502c22aa4d810e0eL    # 1.6289290172057394E78
        0x50f66b8ca330c05dL    # 1.0633510596228813E82
        -0x294fc011013d0fb5L    # -3.816320758613175E109
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    const-string v1, "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u0890\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9"

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    new-array v3, v3, [J

    .line 27
    .line 28
    fill-array-data v3, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x2726a98290d2559aL    # 4.388062657477748E-120
        -0x58125ea4a625d032L    # -2.3499993255205415E-116
        0x56456578811bcf43L    # 3.9258035986065705E107
        0x334e45b0ac61bf49L    # 1.4717541528253935E-61
    .end array-data

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
    .line 67
    :array_1
    .array-data 8
        0x31f9f0056ffd695dL    # 6.01299014267583E-68
        -0x36d6ec0d11e86827L    # -2.7962821410376478E44
        0x793e1fb714007dceL    # 1.0429585763504709E276
        -0x6a4b0b956ef8188cL
        -0x51c41754ffbc9ccdL    # -5.6118148570928816E-86
        -0x23434969251f800aL    # -5.3426929331317E138
        -0x8e36f40c979d907L    # -5.756742072757181E265
        0x3803c511f33d3641L    # 7.262279458704692E-39
    .end array-data
.end method
