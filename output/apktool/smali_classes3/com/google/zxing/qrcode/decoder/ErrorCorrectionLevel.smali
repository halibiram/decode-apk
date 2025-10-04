.class public final enum Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private static final FOR_BITS:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum Q:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

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
    const/4 v4, 0x1

    .line 20
    invoke-direct {v0, v1, v3, v4}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 24
    .line 25
    new-instance v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 26
    .line 27
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v6, v2, [J

    .line 30
    .line 31
    fill-array-data v6, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-direct {v1, v5, v4, v3}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 45
    .line 46
    new-instance v5, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

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
    const/4 v7, 0x3

    .line 63
    invoke-direct {v5, v6, v2, v7}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    .line 64
    .line 65
    .line 66
    sput-object v5, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->Q:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 67
    .line 68
    new-instance v6, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 69
    .line 70
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v9, v2, [J

    .line 73
    .line 74
    fill-array-data v9, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-direct {v6, v8, v7, v2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    sput-object v6, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 88
    .line 89
    const/4 v8, 0x4

    .line 90
    new-array v9, v8, [Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 91
    .line 92
    aput-object v0, v9, v3

    .line 93
    .line 94
    aput-object v1, v9, v4

    .line 95
    .line 96
    aput-object v5, v9, v2

    .line 97
    .line 98
    aput-object v6, v9, v7

    .line 99
    .line 100
    sput-object v9, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->$VALUES:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 101
    .line 102
    new-array v8, v8, [Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 103
    .line 104
    aput-object v1, v8, v3

    .line 105
    .line 106
    aput-object v0, v8, v4

    .line 107
    .line 108
    aput-object v6, v8, v2

    .line 109
    .line 110
    aput-object v5, v8, v7

    .line 111
    .line 112
    sput-object v8, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->FOR_BITS:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 113
    .line 114
    return-void

    .line 115
    :array_0
    .array-data 8
        0x69506be24fbf9395L    # 1.9640290557276008E199
        -0x5ac052d99cd8f0b8L
    .end array-data

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
    .line 126
    .line 127
    :array_1
    .array-data 8
        -0xb32dd3a40575a95L
        -0x30884430ff9181baL    # -6.70939036978673E74
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_2
    .array-data 8
        -0x1cdbf1717d47346fL    # -3.784692184878466E169
        0x69b0dd770c6b2b51L    # 1.2909397824525153E201
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
    :array_3
    .array-data 8
        -0x45e6ef8c892e5b01L    # -7.908886514435236E-29
        0x22baa67b858598efL
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->bits:I

    .line 5
    .line 6
    return-void
.end method

.method public static forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->FOR_BITS:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-ge p0, v1, :cond_0

    .line 7
    .line 8
    aget-object p0, v0, p0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->$VALUES:[Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->bits:I

    .line 2
    .line 3
    return v0
.end method
