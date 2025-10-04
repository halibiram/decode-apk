.class public final Lcom/google/zxing/client/result/SMSParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "SourceFile"


# instance fields
.field private final body:Ljava/lang/String;

.field private final numbers:[Ljava/lang/String;

.field private final subject:Ljava/lang/String;

.field private final vias:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 3
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 7
    iput-object p1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSMSURI()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v3, v2, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x1

    .line 28
    :goto_0
    iget-object v6, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 29
    .line 30
    array-length v6, v6

    .line 31
    if-ge v4, v6, :cond_2

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/16 v6, 0x2c

    .line 38
    .line 39
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :goto_1
    iget-object v6, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 43
    .line 44
    aget-object v6, v6, v4

    .line 45
    .line 46
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v6, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    aget-object v6, v6, v4

    .line 54
    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v7, v2, [J

    .line 60
    .line 61
    fill-array-data v7, :array_1

    .line 62
    .line 63
    .line 64
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v6, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 75
    .line 76
    aget-object v6, v6, v4

    .line 77
    .line 78
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_1
    add-int/2addr v4, v1

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    const/4 v4, 0x1

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const/4 v4, 0x0

    .line 90
    :goto_2
    iget-object v5, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v5, :cond_4

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    const/4 v1, 0x0

    .line 96
    :goto_3
    if-nez v4, :cond_5

    .line 97
    .line 98
    if-eqz v1, :cond_8

    .line 99
    .line 100
    :cond_5
    const/16 v3, 0x3f

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    if-eqz v4, :cond_6

    .line 106
    .line 107
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v5, v2, [J

    .line 110
    .line 111
    fill-array-data v5, :array_2

    .line 112
    .line 113
    .line 114
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    :cond_6
    if-eqz v1, :cond_8

    .line 130
    .line 131
    if-eqz v4, :cond_7

    .line 132
    .line 133
    const/16 v1, 0x26

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    :cond_7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v2, v2, [J

    .line 141
    .line 142
    fill-array-data v2, :array_3

    .line 143
    .line 144
    .line 145
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    return-object v0

    .line 165
    :array_0
    .array-data 8
        0x24f9fd278ae72ea3L
        0x3e262154b18ac568L    # 2.5762941886919485E-9
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
    :array_1
    .array-data 8
        0x7dd0558f246ce180L    # 1.068252711345665E298
        0x65c38420f75699dbL    # 1.6196495415773872E182
    .end array-data

    .line 178
    .line 179
    :array_2
    .array-data 8
        0x18d1855a47d6aa6dL    # 3.93241515634825E-189
        -0x6fb51d8e524a493L    # -8.949990229436766E274
    .end array-data

    :array_3
    .array-data 8
        -0x6f684c17e8b5531eL
        -0xca19c04fdccc361L    # -5.312207081165191E247
    .end array-data
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVias()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
