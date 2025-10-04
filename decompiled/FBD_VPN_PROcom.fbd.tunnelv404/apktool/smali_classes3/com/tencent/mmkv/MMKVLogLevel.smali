.class public final enum Lcom/tencent/mmkv/MMKVLogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/mmkv/MMKVLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/mmkv/MMKVLogLevel;

.field public static final enum LevelDebug:Lcom/tencent/mmkv/MMKVLogLevel;

.field public static final enum LevelError:Lcom/tencent/mmkv/MMKVLogLevel;

.field public static final enum LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

.field public static final enum LevelNone:Lcom/tencent/mmkv/MMKVLogLevel;

.field public static final enum LevelWarning:Lcom/tencent/mmkv/MMKVLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/tencent/mmkv/MMKVLogLevel;

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
    invoke-direct {v0, v1, v3}, Lcom/tencent/mmkv/MMKVLogLevel;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/tencent/mmkv/MMKVLogLevel;->LevelDebug:Lcom/tencent/mmkv/MMKVLogLevel;

    .line 23
    .line 24
    new-instance v1, Lcom/tencent/mmkv/MMKVLogLevel;

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
    invoke-direct {v1, v4, v5}, Lcom/tencent/mmkv/MMKVLogLevel;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/tencent/mmkv/MMKVLogLevel;->LevelInfo:Lcom/tencent/mmkv/MMKVLogLevel;

    .line 45
    .line 46
    new-instance v4, Lcom/tencent/mmkv/MMKVLogLevel;

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
    invoke-direct {v4, v6, v7}, Lcom/tencent/mmkv/MMKVLogLevel;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v4, Lcom/tencent/mmkv/MMKVLogLevel;->LevelWarning:Lcom/tencent/mmkv/MMKVLogLevel;

    .line 67
    .line 68
    new-instance v6, Lcom/tencent/mmkv/MMKVLogLevel;

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
    invoke-direct {v6, v8, v2}, Lcom/tencent/mmkv/MMKVLogLevel;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v6, Lcom/tencent/mmkv/MMKVLogLevel;->LevelError:Lcom/tencent/mmkv/MMKVLogLevel;

    .line 88
    .line 89
    new-instance v8, Lcom/tencent/mmkv/MMKVLogLevel;

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
    invoke-direct {v8, v9, v10}, Lcom/tencent/mmkv/MMKVLogLevel;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v8, Lcom/tencent/mmkv/MMKVLogLevel;->LevelNone:Lcom/tencent/mmkv/MMKVLogLevel;

    .line 110
    .line 111
    const/4 v9, 0x5

    .line 112
    new-array v9, v9, [Lcom/tencent/mmkv/MMKVLogLevel;

    .line 113
    .line 114
    aput-object v0, v9, v3

    .line 115
    .line 116
    aput-object v1, v9, v5

    .line 117
    .line 118
    aput-object v4, v9, v7

    .line 119
    .line 120
    aput-object v6, v9, v2

    .line 121
    .line 122
    aput-object v8, v9, v10

    .line 123
    .line 124
    sput-object v9, Lcom/tencent/mmkv/MMKVLogLevel;->$VALUES:[Lcom/tencent/mmkv/MMKVLogLevel;

    .line 125
    .line 126
    return-void

    .line 127
    :array_0
    .array-data 8
        0x5dbef9b90cac5ecfL    # 3.777252320898227E143
        -0x14a6e75409c9e61dL    # -1.2891634521364139E209
        -0xad6a63fd18ee0e8L    # -2.378999641597341E256
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
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 8
        -0x5447aef5297085dL
        0x284fac4e2b2dc607L
        -0x421e19a433690c1eL    # -1.302384643662563E-10
    .end array-data

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
    :array_2
    .array-data 8
        0x70d8c76c29825f9aL
        -0x5008de7ea40156c9L    # -1.248513621993739E-77
        -0x75b4556229db5605L
    .end array-data

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
    :array_3
    .array-data 8
        0x2c37fe1e11370220L    # 1.1232580482125566E-95
        -0x7f44f62b3deab79bL    # -3.850396350878744E-305
        -0x38ad966d13326ec4L    # -3.824105482428615E35
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    :array_4
    .array-data 8
        0x2b1b301d9ac98943L    # 4.855544691130444E-101
        -0x2df1b9a8965d9d94L    # -1.8820434062406172E87
        0x7d879b088765c0eL
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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mmkv/MMKVLogLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/mmkv/MMKVLogLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tencent/mmkv/MMKVLogLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tencent/mmkv/MMKVLogLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mmkv/MMKVLogLevel;->$VALUES:[Lcom/tencent/mmkv/MMKVLogLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tencent/mmkv/MMKVLogLevel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tencent/mmkv/MMKVLogLevel;

    .line 8
    .line 9
    return-object v0
.end method
