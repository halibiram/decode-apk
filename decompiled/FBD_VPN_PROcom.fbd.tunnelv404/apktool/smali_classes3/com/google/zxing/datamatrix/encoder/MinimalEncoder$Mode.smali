.class final enum Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field public static final enum ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field public static final enum B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field public static final enum C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field public static final enum EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field public static final enum TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field public static final enum X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

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
    invoke-direct {v0, v1, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 23
    .line 24
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

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
    invoke-direct {v1, v4, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 45
    .line 46
    new-instance v4, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

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
    invoke-direct {v4, v6, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v4, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 66
    .line 67
    new-instance v6, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 68
    .line 69
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v8, v2, [J

    .line 72
    .line 73
    fill-array-data v8, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    const/4 v8, 0x3

    .line 84
    invoke-direct {v6, v7, v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v6, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 88
    .line 89
    new-instance v7, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 90
    .line 91
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v10, v2, [J

    .line 94
    .line 95
    fill-array-data v10, :array_4

    .line 96
    .line 97
    .line 98
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    const/4 v10, 0x4

    .line 106
    invoke-direct {v7, v9, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v7, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 110
    .line 111
    new-instance v9, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 112
    .line 113
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v12, v2, [J

    .line 116
    .line 117
    fill-array-data v12, :array_5

    .line 118
    .line 119
    .line 120
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    const/4 v12, 0x5

    .line 128
    invoke-direct {v9, v11, v12}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v9, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 132
    .line 133
    const/4 v11, 0x6

    .line 134
    new-array v11, v11, [Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 135
    .line 136
    aput-object v0, v11, v3

    .line 137
    .line 138
    aput-object v1, v11, v5

    .line 139
    .line 140
    aput-object v4, v11, v2

    .line 141
    .line 142
    aput-object v6, v11, v8

    .line 143
    .line 144
    aput-object v7, v11, v10

    .line 145
    .line 146
    aput-object v9, v11, v12

    .line 147
    .line 148
    sput-object v11, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->$VALUES:[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 149
    .line 150
    return-void

    .line 151
    :array_0
    .array-data 8
        0x1ba40ce1dae99dceL    # 1.583338866085466E-175
        0x3926f7e75d083920L    # 2.2117739702869437E-33
    .end array-data

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
    :array_1
    .array-data 8
        -0x722fe323b15be736L    # -3.775659339624592E-242
        0x9a697d1955cb2f3L
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
    :array_2
    .array-data 8
        0xd2768586ab46febL
        0x586c50c838388949L    # 8.925517422821638E117
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    :array_3
    .array-data 8
        -0x13c5e0a3329a3a2fL    # -2.1985272263049748E213
        0x29080cee2a8b80aL
    .end array-data

    :array_4
    .array-data 8
        0x64df82711d3d5f43L    # 7.980305207266988E177
        0x75786712b6229bebL    # 7.328125994754531E257
    .end array-data

    :array_5
    .array-data 8
        0x5a491a83bcff931aL    # 8.496571673180147E126
        -0x638a467afb3d84e3L
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->$VALUES:[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 8
    .line 9
    return-object v0
.end method
