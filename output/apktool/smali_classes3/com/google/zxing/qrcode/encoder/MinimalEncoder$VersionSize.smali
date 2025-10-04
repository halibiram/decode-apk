.class final enum Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VersionSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

.field public static final enum LARGE:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

.field public static final enum MEDIUM:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

.field public static final enum SMALL:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

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
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    new-array v5, v4, [J

    .line 22
    .line 23
    fill-array-data v5, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-direct {v0, v1, v5, v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->SMALL:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 38
    .line 39
    new-instance v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 40
    .line 41
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v6, v2, [J

    .line 44
    .line 45
    fill-array-data v6, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v7, v4, [J

    .line 58
    .line 59
    fill-array-data v7, :array_3

    .line 60
    .line 61
    .line 62
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    const/4 v7, 0x1

    .line 70
    invoke-direct {v1, v3, v7, v6}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sput-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->MEDIUM:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 74
    .line 75
    new-instance v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 76
    .line 77
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v8, v2, [J

    .line 80
    .line 81
    fill-array-data v8, :array_4

    .line 82
    .line 83
    .line 84
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v9, v4, [J

    .line 94
    .line 95
    fill-array-data v9, :array_5

    .line 96
    .line 97
    .line 98
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-direct {v3, v6, v2, v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->LARGE:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 109
    .line 110
    new-array v4, v4, [Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 111
    .line 112
    aput-object v0, v4, v5

    .line 113
    .line 114
    aput-object v1, v4, v7

    .line 115
    .line 116
    aput-object v3, v4, v2

    .line 117
    .line 118
    sput-object v4, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->$VALUES:[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 119
    .line 120
    return-void

    .line 121
    :array_0
    .array-data 8
        0x6af7b47c0758c330L
        -0x93c5cb30291fdcbL
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_1
    .array-data 8
        0x427ca58eb977b952L    # 1.9685868563155825E12
        -0x811b458d21bb2caL
        0x4c56c589ab858873L    # 5.717594011609572E59
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
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
    :array_2
    .array-data 8
        -0x3035f160242ef861L    # -2.3571946451965375E76
        -0x7f0049dac94fb292L
    .end array-data

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
    :array_3
    .array-data 8
        -0x3ecbfd565e092c0dL    # -1311401.6326725453
        0x300c7495784c8a30L    # 3.0718210023429435E-77
        -0x1a5fec6b49d8842L
    .end array-data

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
    :array_4
    .array-data 8
        0x24de7511cd62e825L
        0x61dd8ef521c2604cL    # 2.6596163818838008E163
    .end array-data

    .line 178
    .line 179
    :array_5
    .array-data 8
        0x39dda4aac4c873b9L    # 5.84609645551885E-30
        0x10b898f6f3da9fffL    # 4.055968616175805E-228
        0x18653119bd35270eL
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->description:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->$VALUES:[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
