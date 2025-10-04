.class public final Lcom/google/zxing/client/result/GeoParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "SourceFile"


# instance fields
.field private final altitude:D

.field private final latitude:D

.field private final longitude:D

.field private final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(DDDLjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->GEO:Lcom/google/zxing/client/result/ParsedResultType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Lcom/google/zxing/client/result/GeoParsedResult;->latitude:D

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/zxing/client/result/GeoParsedResult;->longitude:D

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    .line 11
    .line 12
    iput-object p7, p0, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getAltitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/google/zxing/client/result/GeoParsedResult;->latitude:D

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v3, v2, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v3, p0, Lcom/google/zxing/client/result/GeoParsedResult;->longitude:D

    .line 32
    .line 33
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v3, p0, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    .line 37
    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .line 40
    cmpl-double v1, v3, v5

    .line 41
    .line 42
    if-lez v1, :cond_0

    .line 43
    .line 44
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v3, v2, [J

    .line 47
    .line 48
    fill-array-data v3, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v3, p0, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    .line 62
    .line 63
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x6d

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v2, v2, [J

    .line 78
    .line 79
    fill-array-data v2, :array_2

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const/16 v1, 0x29

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0

    .line 107
    :array_0
    .array-data 8
        0x2f4c37e3e01791f9L    # 7.437078101196322E-81
        0x210752f069070351L
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_1
    .array-data 8
        0x4d3ee8bc8837c983L    # 1.2715277241357029E64
        -0x4fc68434c6b0cae1L    # -2.200804033154435E-76
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
    :array_2
    .array-data 8
        -0x47b6a357133f9927L    # -1.4906415996541079E-37
        0x6cf9168474ee90d5L    # 8.648528487080536E216
    .end array-data
.end method

.method public getGeoURI()Ljava/lang/String;
    .locals 7

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
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    iget-wide v1, p0, Lcom/google/zxing/client/result/GeoParsedResult;->latitude:D

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x2c

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-wide v2, p0, Lcom/google/zxing/client/result/GeoParsedResult;->longitude:D

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-wide v2, p0, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    .line 40
    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    cmpl-double v6, v2, v4

    .line 44
    .line 45
    if-lez v6, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-wide v1, p0, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    const/16 v1, 0x3f

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        0x339159ee05aa0439L    # 2.699433285775242E-60
        0x39af89f4eaa95dffL    # 7.774937494550375E-31
    .end array-data
.end method

.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/zxing/client/result/GeoParsedResult;->latitude:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/zxing/client/result/GeoParsedResult;->longitude:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
