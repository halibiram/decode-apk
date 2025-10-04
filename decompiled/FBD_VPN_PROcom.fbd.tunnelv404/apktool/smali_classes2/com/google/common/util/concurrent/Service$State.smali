.class public final enum Lcom/google/common/util/concurrent/Service$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/Service$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/Service$State;

.field public static final enum FAILED:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum NEW:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum RUNNING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum STARTING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum STOPPING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum TERMINATED:Lcom/google/common/util/concurrent/Service$State;


# direct methods
.method private static synthetic $values()[Lcom/google/common/util/concurrent/Service$State;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/google/common/util/concurrent/Service$State;

    .line 3
    .line 4
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/Service$State;

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
    invoke-direct {v0, v1, v3}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    .line 23
    .line 24
    new-instance v0, Lcom/google/common/util/concurrent/Service$State;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v3, v2, [J

    .line 29
    .line 30
    fill-array-data v3, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-direct {v0, v1, v3}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 45
    .line 46
    new-instance v0, Lcom/google/common/util/concurrent/Service$State;

    .line 47
    .line 48
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v3, v2, [J

    .line 51
    .line 52
    fill-array-data v3, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 66
    .line 67
    new-instance v0, Lcom/google/common/util/concurrent/Service$State;

    .line 68
    .line 69
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v3, v2, [J

    .line 72
    .line 73
    fill-array-data v3, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v3, 0x3

    .line 84
    invoke-direct {v0, v1, v3}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 88
    .line 89
    new-instance v0, Lcom/google/common/util/concurrent/Service$State;

    .line 90
    .line 91
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v3, v3, [J

    .line 94
    .line 95
    fill-array-data v3, :array_4

    .line 96
    .line 97
    .line 98
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/4 v3, 0x4

    .line 106
    invoke-direct {v0, v1, v3}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    .line 110
    .line 111
    new-instance v0, Lcom/google/common/util/concurrent/Service$State;

    .line 112
    .line 113
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v2, v2, [J

    .line 116
    .line 117
    fill-array-data v2, :array_5

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const/4 v2, 0x5

    .line 128
    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    .line 132
    .line 133
    invoke-static {}, Lcom/google/common/util/concurrent/Service$State;->$values()[Lcom/google/common/util/concurrent/Service$State;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->$VALUES:[Lcom/google/common/util/concurrent/Service$State;

    .line 138
    .line 139
    return-void

    .line 140
    nop

    .line 141
    :array_0
    .array-data 8
        0x2e808abe7ca9ec94L    # 1.0643842323478195E-84
        0x53b52acce31f4303L    # 1.7661265987828812E95
    .end array-data

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
    :array_1
    .array-data 8
        0x3ab9a53bc1f300f5L    # 8.28648957622667E-26
        0x408c04b57b4aa416L    # 896.5886140662503
    .end array-data

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
    :array_2
    .array-data 8
        0x1dd926d26c54272eL    # 6.82446854596821E-165
        0x14e514592c71fbf3L    # 5.129476153688573E-208
    .end array-data

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
    :array_3
    .array-data 8
        0x1a091cc58a948902L    # 2.95502176236397E-183
        -0x3e2d911703636822L    # -1.2370339704467692E9
    .end array-data

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
    :array_4
    .array-data 8
        -0x5741e0c10f14ace7L
        0x75062b77751e18b9L    # 5.201252593044104E255
        -0x471e7eca119cc138L    # -1.0535275651937482E-34
    .end array-data

    .line 190
    .line 191
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
    :array_5
    .array-data 8
        -0x2e14f149e0132e9aL    # -4.205095878146448E86
        -0xeeb1d15cd1ba134L    # -5.31275649639578E236
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/Service$State;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/util/concurrent/Service$State;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->$VALUES:[Lcom/google/common/util/concurrent/Service$State;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/Service$State;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/util/concurrent/Service$State;

    .line 8
    .line 9
    return-object v0
.end method
