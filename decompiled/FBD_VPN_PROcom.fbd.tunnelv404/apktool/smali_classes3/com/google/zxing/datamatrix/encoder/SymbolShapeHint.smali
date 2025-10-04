.class public final enum Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field public static final enum FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field public static final enum FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field public static final enum FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v3}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 23
    .line 24
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v5, v2, [J

    .line 29
    .line 30
    fill-array-data v5, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-direct {v1, v4, v5}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 45
    .line 46
    new-instance v4, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 47
    .line 48
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v7, v2, [J

    .line 51
    .line 52
    fill-array-data v7, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const/4 v7, 0x2

    .line 63
    invoke-direct {v4, v6, v7}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v4, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 67
    .line 68
    new-array v2, v2, [Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 69
    .line 70
    aput-object v0, v2, v3

    .line 71
    .line 72
    aput-object v1, v2, v5

    .line 73
    .line 74
    aput-object v4, v2, v7

    .line 75
    .line 76
    sput-object v2, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->$VALUES:[Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 77
    .line 78
    return-void

    .line 79
    :array_0
    .array-data 8
        -0x5839f691f30aaae9L    # -4.369391152344978E-117
        0x132c93ec3f91983dL    # 2.590611431796299E-216
        0x7b1a2a7742fc545L
    .end array-data

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
    :array_1
    .array-data 8
        0x41a420dc4e3217d4L    # 1.6884893509783804E8
        0x41de1fe02b842136L    # 2.021621934064527E9
        -0x2d9686c61d42e7b9L    # -1.0134866491789852E89
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
    :array_2
    .array-data 8
        -0x272025751f77d023L    # -1.2852213346561303E120
        -0x27e10ce7fba1cdddL    # -3.048689371662548E116
        -0x68b1df624138d233L
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->$VALUES:[Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 8
    .line 9
    return-object v0
.end method
