.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 5
    .line 6
    return-void
.end method

.method private findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    filled-new-array {p1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    new-array v2, v0, [I

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    :goto_0
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getSize()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-ge v4, v5, :cond_2

    .line 28
    .line 29
    if-ge v3, v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 38
    .line 39
    invoke-virtual {v5, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    aput v5, v2, v3

    .line 44
    .line 45
    add-int/2addr v3, v1

    .line 46
    :cond_1
    add-int/2addr v4, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    if-ne v3, v0, :cond_3

    .line 49
    .line 50
    return-object v2

    .line 51
    :cond_3
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    .line 52
    .line 53
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/16 v1, 0x8

    .line 56
    .line 57
    new-array v1, v1, [J

    .line 58
    .line 59
    fill-array-data v1, :array_0

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p1, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :array_0
    .array-data 8
        0x64c2016ae2449ba4L    # 2.2800981691216565E177
        0x655d5879dd8dfbd6L    # 1.902657243407215E180
        0x7aeda6e5697b6e4dL    # 1.3779041640427817E284
        0x3965fd8a38631aceL    # 3.3881560970734845E-32
        0x61eed2c805d1e10cL    # 5.5468664085731343E163
        -0x45b87e9bc0d46b1aL    # -5.933606219862555E-28
        -0x7b4c0e3d74e105d5L    # -5.239194888276955E-286
        -0x2a039b0907b5c3b2L
    .end array-data
.end method

.method private findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[I)[I
    .locals 9

    .line 1
    array-length v0, p2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v0, :cond_4

    .line 7
    .line 8
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 9
    .line 10
    aget v5, p2, v3

    .line 11
    .line 12
    invoke-virtual {v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    :goto_1
    if-ge v6, v0, :cond_2

    .line 19
    .line 20
    if-eq v3, v6, :cond_1

    .line 21
    .line 22
    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 23
    .line 24
    aget v8, p2, v6

    .line 25
    .line 26
    invoke-virtual {v7, v8, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    and-int/lit8 v8, v7, 0x1

    .line 31
    .line 32
    if-nez v8, :cond_0

    .line 33
    .line 34
    or-int/lit8 v7, v7, 0x1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    and-int/lit8 v7, v7, -0x2

    .line 38
    .line 39
    :goto_2
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 40
    .line 41
    invoke-virtual {v8, v5, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 55
    .line 56
    invoke-virtual {v8, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-virtual {v6, v7, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    aput v5, v1, v3

    .line 65
    .line 66
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 75
    .line 76
    aget v6, v1, v3

    .line 77
    .line 78
    invoke-virtual {v5, v6, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    aput v4, v1, v3

    .line 83
    .line 84
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    return-object v1
.end method

.method private runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-ge v3, v4, :cond_0

    .line 13
    .line 14
    move-object v10, p2

    .line 15
    move-object p2, p1

    .line 16
    move-object p1, v10

    .line 17
    :cond_0
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getOne()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    :goto_0
    move-object v10, p2

    .line 30
    move-object p2, p1

    .line 31
    move-object p1, v10

    .line 32
    move-object v11, v4

    .line 33
    move-object v4, v3

    .line 34
    move-object v3, v11

    .line 35
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    mul-int/lit8 v5, v5, 0x2

    .line 40
    .line 41
    if-lt v5, p3, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_3

    .line 48
    .line 49
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 64
    .line 65
    invoke-virtual {v7, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    :goto_1
    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-lt v7, v8, :cond_1

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-nez v7, :cond_1

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    sub-int/2addr v7, v8

    .line 94
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    invoke-virtual {p2, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    invoke-virtual {v8, v9, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    iget-object v9, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 109
    .line 110
    invoke-virtual {v9, v7, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v5, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {p1, v7, v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {p2, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v5, v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v5, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-ge v5, v6, :cond_2

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 147
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 154
    .line 155
    const/16 v3, 0x8

    .line 156
    .line 157
    new-array v3, v3, [J

    .line 158
    .line 159
    fill-array-data v3, :array_0

    .line 160
    .line 161
    .line 162
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    new-array v1, v1, [J

    .line 178
    .line 179
    fill-array-data v1, :array_1

    .line 180
    .line 181
    .line 182
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p3

    .line 203
    :cond_3
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    .line 204
    .line 205
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array p3, v1, [J

    .line 208
    .line 209
    fill-array-data p3, :array_2

    .line 210
    .line 211
    .line 212
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-direct {p1, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw p1

    .line 223
    :cond_4
    invoke-virtual {v3, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    if-eqz p2, :cond_5

    .line 228
    .line 229
    iget-object p3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 230
    .line 231
    invoke-virtual {p3, p2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    invoke-virtual {v3, p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 236
    .line 237
    .line 238
    move-result-object p3

    .line 239
    invoke-virtual {p1, p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    new-array p2, v2, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 244
    .line 245
    aput-object p3, p2, v0

    .line 246
    .line 247
    const/4 p3, 0x1

    .line 248
    aput-object p1, p2, p3

    .line 249
    .line 250
    return-object p2

    .line 251
    :cond_5
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    .line 252
    .line 253
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 254
    .line 255
    const/4 p3, 0x4

    .line 256
    new-array p3, p3, [J

    .line 257
    .line 258
    fill-array-data p3, :array_3

    .line 259
    .line 260
    .line 261
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-direct {p1, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw p1

    .line 272
    nop

    .line 273
    :array_0
    .array-data 8
        0xe815bc40371628bL    # 8.330376535371817E-239
        -0x2c0a4ff32639b982L    # -2.895289854896848E96
        -0x27ad10f9e9c2ffcdL    # -2.984100951385922E117
        0x74ab59f915067d8eL    # 1.002644156650534E254
        -0x7d9f262d85d0652bL
        0x30349550a51e4843L    # 1.777605182747552E-76
        0x1bbc623823c73c3aL    # 4.482817593718462E-175
        0x35a281000da99bdfL    # 2.472829490021088E-50
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_1
    .array-data 8
        0x7c68eee3a5d3f849L    # 1.9438518760099504E291
        -0x7e6fbcbd157bea6eL    # -3.794355850071862E-301
        -0x76ee739634d5068bL    # -5.442313547862351E-265
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :array_2
    .array-data 8
        -0x559ee0688240d03cL
        0x7ae5768b166615beL    # 9.973729012596157E283
        -0x1f6c000f0a5402bfL    # -1.7161797218638105E157
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_3
    .array-data 8
        0x4172032873d97664L    # 1.888730324059142E7
        0x38ef21e3255a6755L    # 1.8737114969146558E-34
        -0x15dfcd1b34245fcaL    # -1.5871209775408046E203
        0x7202964520e9fd7bL    # 1.5492291630259772E241
    .end array-data
.end method


# virtual methods
.method public decode([II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decodeWithECCount([II)I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public decodeWithECCount([II)I
    .locals 8

    .line 1
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 6
    .line 7
    .line 8
    new-array v1, p2, [I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    :goto_0
    if-ge v4, p2, :cond_1

    .line 15
    .line 16
    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 17
    .line 18
    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    add-int/2addr v7, v4

    .line 23
    invoke-virtual {v6, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->exp(I)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-virtual {v0, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    add-int/lit8 v7, p2, -0x1

    .line 32
    .line 33
    sub-int/2addr v7, v4

    .line 34
    aput v6, v1, v7

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    :cond_0
    add-int/2addr v4, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-eqz v5, :cond_2

    .line 42
    .line 43
    return v3

    .line 44
    :cond_2
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    .line 48
    invoke-direct {v0, v4, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 52
    .line 53
    invoke-virtual {v1, p2, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {p0, v1, v0, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    aget-object v0, p2, v3

    .line 62
    .line 63
    aget-object p2, p2, v2

    .line 64
    .line 65
    invoke-direct {p0, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p0, p2, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[I)[I

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    :goto_1
    array-length v1, v0

    .line 74
    if-ge v3, v1, :cond_4

    .line 75
    .line 76
    array-length v1, p1

    .line 77
    sub-int/2addr v1, v2

    .line 78
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 79
    .line 80
    aget v5, v0, v3

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->log(I)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    sub-int/2addr v1, v4

    .line 87
    if-ltz v1, :cond_3

    .line 88
    .line 89
    aget v4, p1, v1

    .line 90
    .line 91
    aget v5, p2, v3

    .line 92
    .line 93
    invoke-static {v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    aput v4, p1, v1

    .line 98
    .line 99
    add-int/2addr v3, v2

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    .line 102
    .line 103
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    const/4 v0, 0x4

    .line 106
    new-array v0, v0, [J

    .line 107
    .line 108
    fill-array-data v0, :array_0

    .line 109
    .line 110
    .line 111
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-direct {p1, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    :cond_4
    array-length p1, v0

    .line 123
    return p1

    .line 124
    nop

    .line 125
    :array_0
    .array-data 8
        0x4f4e2ef1d7dc325fL    # 1.0665882471035416E74
        0x5b58b0e3be129d7cL    # 1.0953586929103676E132
        -0x74f6f4a13f503ad5L
        0x11c0ff15c13e12faL    # 3.67342199303975E-223
    .end array-data
.end method
