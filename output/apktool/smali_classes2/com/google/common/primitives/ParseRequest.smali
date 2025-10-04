.class final Lcom/google/common/primitives/ParseRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/primitives/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field final radix:I

.field final rawValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/primitives/ParseRequest;->rawValue:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/common/primitives/ParseRequest;->radix:I

    .line 7
    .line 8
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/common/primitives/ParseRequest;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v3, v0, [J

    .line 16
    .line 17
    fill-array-data v3, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/16 v3, 0x10

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v4, v0, [J

    .line 38
    .line 39
    fill-array-data v4, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/16 v0, 0x23

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    if-ne v1, v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/16 v0, 0x30

    .line 67
    .line 68
    if-ne v1, v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-le v0, v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const/16 v3, 0x8

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const/16 v3, 0xa

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    :goto_1
    new-instance v0, Lcom/google/common/primitives/ParseRequest;

    .line 91
    .line 92
    invoke-direct {v0, p0, v3}, Lcom/google/common/primitives/ParseRequest;-><init>(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 97
    .line 98
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    const/4 v1, 0x3

    .line 101
    new-array v1, v1, [J

    .line 102
    .line 103
    fill-array-data v1, :array_2

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :array_0
    .array-data 8
        -0x2bf65e92ea0b44b7L    # -6.843320860111942E96
        0xd05723d874b6a7fL
    .end array-data

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
    .line 128
    .line 129
    :array_1
    .array-data 8
        0x48c993eb2e34d16dL    # 4.4562825294546536E42
        0x432381793a6a3732L    # 2.745191114283929E15
    .end array-data

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
    :array_2
    .array-data 8
        -0x1b5686ffd5a8be25L    # -8.064208538994432E176
        -0xbeae3dc0bc3b769L
        -0x6e8c0b80af265233L
    .end array-data
.end method
