.class final enum Lcom/tknetwork/tunnel/core/ConfigParser$linestate;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/core/ConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "linestate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tknetwork/tunnel/core/ConfigParser$linestate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

.field public static final enum done:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

.field public static final enum initial:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

.field public static final enum readin_single_quote:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

.field public static final enum reading_quoted:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

.field public static final enum reading_unquoted:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;


# direct methods
.method private static synthetic $values()[Lcom/tknetwork/tunnel/core/ConfigParser$linestate;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 3
    .line 4
    sget-object v1, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->initial:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->readin_single_quote:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->reading_quoted:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->reading_unquoted:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->done:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

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
    invoke-direct {v0, v1, v3}, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->initial:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 23
    .line 24
    new-instance v0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    new-array v4, v3, [J

    .line 30
    .line 31
    fill-array-data v4, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-direct {v0, v1, v4}, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->readin_single_quote:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 46
    .line 47
    new-instance v0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 48
    .line 49
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    new-array v5, v4, [J

    .line 53
    .line 54
    fill-array-data v5, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->reading_quoted:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 68
    .line 69
    new-instance v0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 70
    .line 71
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v5, v4, [J

    .line 74
    .line 75
    fill-array-data v5, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-direct {v0, v1, v4}, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    sput-object v0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->reading_unquoted:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 89
    .line 90
    new-instance v0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 91
    .line 92
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v2, v2, [J

    .line 95
    .line 96
    fill-array-data v2, :array_4

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-direct {v0, v1, v3}, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->done:Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 110
    .line 111
    invoke-static {}, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->$values()[Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sput-object v0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->$VALUES:[Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 116
    .line 117
    return-void

    .line 118
    nop

    .line 119
    :array_0
    .array-data 8
        0xb4e0685f1973d90L
        0x6a4ed3f59406291aL    # 1.2081808641801987E204
    .end array-data

    .line 120
    .line 121
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
    :array_1
    .array-data 8
        -0x6b46436a9885a85cL    # -7.82843795948555E-209
        -0x2c10db9031e0fc4L
        -0x2501e24a5c5921dbL    # -2.087546675762708E130
        0xf98996bb2545029L
    .end array-data

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
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_2
    .array-data 8
        -0x48e10622b3dc29d4L    # -3.4725333957361053E-43
        -0x49a210ebb50e35e7L    # -8.192643135860827E-47
        -0x51813adc205a1216L    # -9.899421988875611E-85
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
    .line 164
    .line 165
    .line 166
    .line 167
    :array_3
    .array-data 8
        -0x2c999ea5e02bf3bL
        -0x5bdbd88885569b61L    # -1.386426327012005E-134
        -0x738cb26061bfbc24L
    .end array-data

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
    .line 178
    .line 179
    :array_4
    .array-data 8
        -0x3ab2639568c54398L    # -7.1595008384506254E25
        0x4d7d57bfb77bed19L    # 1.9313464121403915E65
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

.method public static valueOf(Ljava/lang/String;)Lcom/tknetwork/tunnel/core/ConfigParser$linestate;
    .locals 1

    .line 1
    const-class v0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tknetwork/tunnel/core/ConfigParser$linestate;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->$VALUES:[Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tknetwork/tunnel/core/ConfigParser$linestate;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tknetwork/tunnel/core/ConfigParser$linestate;

    .line 8
    .line 9
    return-object v0
.end method
