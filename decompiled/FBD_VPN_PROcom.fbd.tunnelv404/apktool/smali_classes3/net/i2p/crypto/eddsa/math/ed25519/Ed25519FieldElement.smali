.class public Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;
.super Lnet/i2p/crypto/eddsa/math/FieldElement;
.source "SourceFile"


# static fields
.field private static final ZERO:[B


# instance fields
.field final t:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    sput-object v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->ZERO:[B

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;)V

    .line 2
    .line 3
    .line 4
    array-length p1, p2

    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p2, "Invalid radix-2^51 representation"

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method


# virtual methods
.method public add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 5

    .line 1
    check-cast p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 2
    .line 3
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 13
    .line 14
    aget v3, v3, v2

    .line 15
    .line 16
    aget v4, p1, v2

    .line 17
    .line 18
    add-int/2addr v3, v4

    .line 19
    aput v3, v1, v2

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 25
    .line 26
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 27
    .line 28
    invoke-direct {p1, v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method public cmov(Lnet/i2p/crypto/eddsa/math/FieldElement;I)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 6

    .line 1
    check-cast p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 2
    .line 3
    neg-int p2, p2

    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 12
    .line 13
    aget v4, v3, v2

    .line 14
    .line 15
    aput v4, v1, v2

    .line 16
    .line 17
    aget v3, v3, v2

    .line 18
    .line 19
    iget-object v5, p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 20
    .line 21
    aget v5, v5, v2

    .line 22
    .line 23
    xor-int/2addr v3, v5

    .line 24
    and-int/2addr v3, p2

    .line 25
    xor-int/2addr v3, v4

    .line 26
    aput v3, v1, v2

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 32
    .line 33
    iget-object p2, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 34
    .line 35
    invoke-direct {p1, p2, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 8
    .line 9
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->toByteArray()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->toByteArray()[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Lnet/i2p/crypto/eddsa/Utils;->equal([B[B)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x1

    .line 22
    if-ne v0, p1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public invert()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x1

    .line 35
    :goto_0
    const/4 v5, 0x5

    .line 36
    if-ge v4, v5, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v4, 0x1

    .line 54
    :goto_1
    const/16 v6, 0xa

    .line 55
    .line 56
    if-ge v4, v6, :cond_1

    .line 57
    .line 58
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/4 v7, 0x1

    .line 74
    :goto_2
    const/16 v8, 0x14

    .line 75
    .line 76
    if-ge v7, v8, :cond_2

    .line 77
    .line 78
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    add-int/lit8 v7, v7, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {v4, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const/4 v4, 0x1

    .line 94
    :goto_3
    if-ge v4, v6, :cond_3

    .line 95
    .line 96
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_3
    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const/4 v4, 0x1

    .line 112
    :goto_4
    const/16 v6, 0x32

    .line 113
    .line 114
    if-ge v4, v6, :cond_4

    .line 115
    .line 116
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_4
    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    const/4 v7, 0x1

    .line 132
    :goto_5
    const/16 v8, 0x64

    .line 133
    .line 134
    if-ge v7, v8, :cond_5

    .line 135
    .line 136
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    add-int/lit8 v7, v7, 0x1

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_5
    invoke-virtual {v4, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    const/4 v4, 0x1

    .line 152
    :goto_6
    if-ge v4, v6, :cond_6

    .line 153
    .line 154
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    add-int/lit8 v4, v4, 0x1

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_6
    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    :goto_7
    if-ge v3, v5, :cond_7

    .line 170
    .line 171
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_7
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    return-object v0
.end method

.method public isNonZero()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->ZERO:[B

    .line 6
    .line 7
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/Utils;->equal([B[B)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 208

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v1, v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v2, 0x1

    .line 2
    aget v3, v1, v2

    mul-int/lit8 v4, v3, 0x13

    const/4 v5, 0x2

    .line 3
    aget v6, v1, v5

    mul-int/lit8 v7, v6, 0x13

    const/4 v8, 0x3

    .line 4
    aget v9, v1, v8

    mul-int/lit8 v10, v9, 0x13

    const/4 v11, 0x4

    .line 5
    aget v12, v1, v11

    mul-int/lit8 v13, v12, 0x13

    const/4 v14, 0x5

    .line 6
    aget v15, v1, v14

    mul-int/lit8 v11, v15, 0x13

    const/16 v16, 0x6

    .line 7
    aget v5, v1, v16

    mul-int/lit8 v14, v5, 0x13

    const/16 v19, 0x7

    .line 8
    aget v8, v1, v19

    mul-int/lit8 v2, v8, 0x13

    const/16 v22, 0x8

    move/from16 v23, v4

    .line 9
    aget v4, v1, v22

    move/from16 v24, v7

    mul-int/lit8 v7, v4, 0x13

    const/16 v25, 0x9

    move/from16 v26, v10

    .line 10
    aget v10, v1, v25

    move/from16 v27, v13

    mul-int/lit8 v13, v10, 0x13

    move/from16 v28, v11

    .line 11
    iget-object v11, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/16 v21, 0x1

    aget v0, v11, v21

    move/from16 v21, v14

    mul-int/lit8 v14, v0, 0x2

    move/from16 v29, v2

    const/16 v20, 0x3

    .line 12
    aget v2, v11, v20

    move/from16 v20, v7

    mul-int/lit8 v7, v2, 0x2

    move/from16 v30, v7

    const/16 v18, 0x5

    .line 13
    aget v7, v11, v18

    move/from16 v18, v2

    mul-int/lit8 v2, v7, 0x2

    move/from16 v31, v2

    .line 14
    aget v2, v11, v19

    move/from16 v19, v7

    mul-int/lit8 v7, v2, 0x2

    move/from16 v32, v7

    .line 15
    aget v7, v11, v25

    move/from16 v25, v2

    mul-int/lit8 v2, v7, 0x2

    const/16 v33, 0x0

    move/from16 v34, v2

    .line 16
    aget v2, v11, v33

    move/from16 v35, v13

    move/from16 v36, v14

    int-to-long v13, v2

    aget v1, v1, v33

    move/from16 v33, v10

    move-object/from16 v37, v11

    int-to-long v10, v1

    mul-long v13, v13, v10

    int-to-long v10, v2

    move-wide/from16 v38, v13

    int-to-long v13, v3

    mul-long v10, v10, v13

    int-to-long v13, v2

    move-wide/from16 v40, v10

    int-to-long v10, v6

    mul-long v13, v13, v10

    int-to-long v10, v2

    move-wide/from16 v42, v13

    int-to-long v13, v9

    mul-long v10, v10, v13

    int-to-long v13, v2

    move-wide/from16 v44, v10

    int-to-long v10, v12

    mul-long v13, v13, v10

    int-to-long v10, v2

    move-wide/from16 v46, v13

    int-to-long v13, v15

    mul-long v10, v10, v13

    int-to-long v13, v2

    move-wide/from16 v48, v10

    int-to-long v10, v5

    mul-long v13, v13, v10

    int-to-long v10, v2

    move-wide/from16 v50, v13

    int-to-long v13, v8

    mul-long v10, v10, v13

    int-to-long v13, v2

    move-wide/from16 v52, v10

    int-to-long v10, v4

    mul-long v13, v13, v10

    int-to-long v10, v2

    move-wide/from16 v54, v13

    move/from16 v2, v33

    int-to-long v13, v2

    mul-long v10, v10, v13

    int-to-long v13, v0

    move-wide/from16 v56, v10

    int-to-long v10, v1

    mul-long v13, v13, v10

    move/from16 v2, v36

    int-to-long v10, v2

    move-wide/from16 v58, v13

    int-to-long v13, v3

    mul-long v13, v13, v10

    move-wide/from16 v60, v13

    int-to-long v13, v0

    move/from16 v33, v3

    int-to-long v2, v6

    mul-long v13, v13, v2

    int-to-long v2, v9

    mul-long v2, v2, v10

    move-wide/from16 v62, v2

    int-to-long v2, v0

    move-wide/from16 v64, v13

    int-to-long v13, v12

    mul-long v2, v2, v13

    int-to-long v13, v15

    mul-long v13, v13, v10

    move-wide/from16 v66, v13

    int-to-long v13, v0

    move-wide/from16 v68, v2

    int-to-long v2, v5

    mul-long v13, v13, v2

    int-to-long v2, v8

    mul-long v2, v2, v10

    move-wide/from16 v70, v2

    int-to-long v2, v0

    move-wide/from16 v72, v13

    int-to-long v13, v4

    mul-long v2, v2, v13

    move/from16 v0, v35

    int-to-long v13, v0

    mul-long v10, v10, v13

    const/4 v0, 0x2

    .line 17
    aget v0, v37, v0

    move-wide/from16 v35, v2

    int-to-long v2, v0

    move-wide/from16 v74, v10

    int-to-long v10, v1

    mul-long v2, v2, v10

    int-to-long v10, v0

    move-wide/from16 v76, v2

    move/from16 v4, v33

    int-to-long v2, v4

    mul-long v10, v10, v2

    int-to-long v2, v0

    move-wide/from16 v78, v10

    int-to-long v10, v6

    mul-long v2, v2, v10

    int-to-long v10, v0

    move-wide/from16 v80, v2

    int-to-long v2, v9

    mul-long v10, v10, v2

    int-to-long v2, v0

    move-wide/from16 v82, v10

    int-to-long v10, v12

    mul-long v2, v2, v10

    int-to-long v10, v0

    move-wide/from16 v84, v2

    int-to-long v2, v15

    mul-long v10, v10, v2

    int-to-long v2, v0

    move-wide/from16 v86, v10

    int-to-long v10, v5

    mul-long v2, v2, v10

    int-to-long v10, v0

    move-wide/from16 v88, v2

    int-to-long v2, v8

    mul-long v10, v10, v2

    int-to-long v2, v0

    move-wide/from16 v90, v10

    move/from16 v8, v20

    int-to-long v10, v8

    mul-long v2, v2, v10

    move-wide/from16 v92, v2

    int-to-long v2, v0

    mul-long v2, v2, v13

    move/from16 v0, v18

    move-wide/from16 v17, v2

    int-to-long v2, v0

    move/from16 v20, v7

    int-to-long v7, v1

    mul-long v2, v2, v7

    move/from16 v7, v30

    int-to-long v7, v7

    move-wide/from16 v94, v2

    int-to-long v2, v4

    mul-long v2, v2, v7

    move-wide/from16 v96, v2

    int-to-long v2, v0

    move-wide/from16 v98, v13

    int-to-long v13, v6

    mul-long v2, v2, v13

    int-to-long v13, v9

    mul-long v13, v13, v7

    move-wide/from16 v100, v13

    int-to-long v13, v0

    move-wide/from16 v102, v2

    int-to-long v2, v12

    mul-long v13, v13, v2

    int-to-long v2, v15

    mul-long v2, v2, v7

    move-wide/from16 v104, v2

    int-to-long v2, v0

    move-wide/from16 v106, v13

    int-to-long v13, v5

    mul-long v2, v2, v13

    move/from16 v5, v29

    int-to-long v13, v5

    mul-long v29, v7, v13

    move-wide/from16 v108, v2

    int-to-long v2, v0

    mul-long v2, v2, v10

    mul-long v7, v7, v98

    const/4 v0, 0x4

    .line 18
    aget v0, v37, v0

    move-wide/from16 v110, v7

    int-to-long v7, v0

    move-wide/from16 v112, v2

    int-to-long v2, v1

    mul-long v7, v7, v2

    int-to-long v2, v0

    move-wide/from16 v114, v7

    int-to-long v7, v4

    mul-long v2, v2, v7

    int-to-long v7, v0

    move-wide/from16 v116, v2

    int-to-long v2, v6

    mul-long v7, v7, v2

    int-to-long v2, v0

    move-wide/from16 v118, v7

    int-to-long v7, v9

    mul-long v2, v2, v7

    int-to-long v7, v0

    move-wide/from16 v120, v2

    int-to-long v2, v12

    mul-long v7, v7, v2

    int-to-long v2, v0

    move-wide/from16 v122, v7

    int-to-long v7, v15

    mul-long v2, v2, v7

    int-to-long v7, v0

    move-wide/from16 v124, v2

    move/from16 v5, v21

    int-to-long v2, v5

    mul-long v7, v7, v2

    move-wide/from16 v126, v7

    int-to-long v7, v0

    mul-long v7, v7, v13

    move-wide/from16 v128, v7

    int-to-long v7, v0

    mul-long v7, v7, v10

    move-wide/from16 v130, v7

    int-to-long v7, v0

    mul-long v7, v7, v98

    move-wide/from16 v132, v7

    move/from16 v0, v19

    int-to-long v7, v0

    move-wide/from16 v134, v10

    int-to-long v10, v1

    mul-long v7, v7, v10

    move/from16 v5, v31

    int-to-long v10, v5

    move-wide/from16 v136, v7

    int-to-long v7, v4

    mul-long v7, v7, v10

    move-wide/from16 v138, v7

    int-to-long v7, v0

    int-to-long v4, v6

    mul-long v7, v7, v4

    int-to-long v4, v9

    mul-long v4, v4, v10

    move-wide/from16 v140, v4

    int-to-long v4, v0

    move-wide/from16 v142, v7

    int-to-long v7, v12

    mul-long v4, v4, v7

    move/from16 v15, v28

    int-to-long v7, v15

    mul-long v144, v10, v7

    move-wide/from16 v146, v4

    int-to-long v4, v0

    mul-long v4, v4, v2

    mul-long v148, v10, v13

    move-wide/from16 v150, v4

    int-to-long v4, v0

    mul-long v4, v4, v134

    mul-long v10, v10, v98

    .line 19
    aget v0, v37, v16

    move-wide v15, v10

    int-to-long v10, v0

    move-wide/from16 v152, v4

    int-to-long v4, v1

    mul-long v10, v10, v4

    int-to-long v4, v0

    move-wide/from16 v154, v10

    move/from16 v12, v33

    int-to-long v10, v12

    mul-long v4, v4, v10

    int-to-long v10, v0

    move-wide/from16 v156, v4

    int-to-long v4, v6

    mul-long v10, v10, v4

    int-to-long v4, v0

    move-wide/from16 v158, v10

    int-to-long v9, v9

    mul-long v4, v4, v9

    int-to-long v9, v0

    move/from16 v11, v27

    move-wide/from16 v27, v4

    int-to-long v4, v11

    mul-long v9, v9, v4

    move-wide/from16 v160, v9

    int-to-long v9, v0

    mul-long v9, v9, v7

    move-wide/from16 v162, v9

    int-to-long v9, v0

    mul-long v9, v9, v2

    move-wide/from16 v164, v9

    int-to-long v9, v0

    mul-long v9, v9, v13

    move-wide/from16 v166, v9

    int-to-long v9, v0

    mul-long v9, v9, v134

    move-wide/from16 v168, v9

    int-to-long v9, v0

    mul-long v9, v9, v98

    move-wide/from16 v170, v9

    move/from16 v0, v25

    int-to-long v9, v0

    move-wide/from16 v172, v13

    int-to-long v13, v1

    mul-long v9, v9, v13

    move/from16 v11, v32

    int-to-long v13, v11

    move-wide/from16 v31, v9

    int-to-long v9, v12

    mul-long v9, v9, v13

    move-wide/from16 v174, v9

    int-to-long v9, v0

    int-to-long v11, v6

    mul-long v9, v9, v11

    move/from16 v6, v26

    int-to-long v11, v6

    mul-long v25, v13, v11

    move-wide/from16 v176, v9

    int-to-long v9, v0

    mul-long v9, v9, v4

    mul-long v178, v13, v7

    move-wide/from16 v180, v9

    int-to-long v9, v0

    mul-long v9, v9, v2

    mul-long v182, v13, v172

    move-wide/from16 v184, v9

    int-to-long v9, v0

    mul-long v9, v9, v134

    mul-long v13, v13, v98

    .line 20
    aget v0, v37, v22

    move-wide/from16 v21, v13

    int-to-long v13, v0

    move-wide/from16 v186, v9

    int-to-long v9, v1

    mul-long v13, v13, v9

    int-to-long v9, v0

    move-wide/from16 v188, v13

    move/from16 v6, v33

    int-to-long v13, v6

    mul-long v9, v9, v13

    int-to-long v13, v0

    move-wide/from16 v190, v9

    move/from16 v6, v24

    int-to-long v9, v6

    mul-long v13, v13, v9

    move-wide/from16 v192, v13

    int-to-long v13, v0

    mul-long v13, v13, v11

    move-wide/from16 v194, v13

    int-to-long v13, v0

    mul-long v13, v13, v4

    move-wide/from16 v196, v13

    int-to-long v13, v0

    mul-long v13, v13, v7

    move-wide/from16 v198, v13

    int-to-long v13, v0

    mul-long v13, v13, v2

    move-wide/from16 v200, v13

    int-to-long v13, v0

    mul-long v13, v13, v172

    move-wide/from16 v202, v13

    int-to-long v13, v0

    mul-long v13, v13, v134

    move-wide/from16 v204, v13

    int-to-long v13, v0

    mul-long v13, v13, v98

    move/from16 v0, v20

    move-wide/from16 v19, v13

    int-to-long v13, v0

    move-wide/from16 v206, v2

    int-to-long v1, v1

    mul-long v13, v13, v1

    move/from16 v1, v34

    int-to-long v1, v1

    move/from16 v3, v23

    move-wide/from16 v23, v13

    int-to-long v13, v3

    mul-long v13, v13, v1

    move-wide/from16 v33, v13

    int-to-long v13, v0

    mul-long v13, v13, v9

    mul-long v11, v11, v1

    int-to-long v9, v0

    mul-long v9, v9, v4

    mul-long v7, v7, v1

    int-to-long v3, v0

    mul-long v3, v3, v206

    mul-long v5, v1, v172

    move-wide/from16 v172, v5

    int-to-long v5, v0

    mul-long v5, v5, v134

    mul-long v1, v1, v98

    add-long v37, v38, v74

    add-long v37, v37, v92

    add-long v37, v37, v29

    add-long v37, v37, v126

    add-long v37, v37, v144

    add-long v37, v37, v160

    add-long v37, v37, v25

    add-long v37, v37, v192

    add-long v37, v37, v33

    add-long v25, v40, v58

    add-long v25, v25, v17

    add-long v25, v25, v112

    add-long v25, v25, v128

    add-long v25, v25, v150

    add-long v25, v25, v162

    add-long v25, v25, v180

    add-long v25, v25, v194

    add-long v25, v25, v13

    add-long v13, v42, v60

    add-long v13, v13, v76

    add-long v13, v13, v110

    add-long v13, v13, v130

    add-long v13, v13, v148

    add-long v13, v13, v164

    add-long v13, v13, v178

    add-long v13, v13, v196

    add-long/2addr v13, v11

    add-long v11, v44, v64

    add-long v11, v11, v78

    add-long v11, v11, v94

    add-long v11, v11, v132

    add-long v11, v11, v152

    add-long v11, v11, v166

    add-long v11, v11, v184

    add-long v11, v11, v198

    add-long/2addr v11, v9

    add-long v9, v46, v62

    add-long v9, v9, v80

    add-long v9, v9, v96

    add-long v9, v9, v114

    add-long/2addr v9, v15

    add-long v9, v9, v168

    add-long v9, v9, v182

    add-long v9, v9, v200

    add-long/2addr v9, v7

    add-long v7, v48, v68

    add-long v7, v7, v82

    add-long v7, v7, v102

    add-long v7, v7, v116

    add-long v7, v7, v136

    add-long v7, v7, v170

    add-long v7, v7, v186

    add-long v7, v7, v202

    add-long/2addr v7, v3

    add-long v3, v50, v66

    add-long v3, v3, v84

    add-long v3, v3, v100

    add-long v3, v3, v118

    add-long v3, v3, v138

    add-long v3, v3, v154

    add-long v3, v3, v21

    add-long v3, v3, v204

    add-long v3, v3, v172

    add-long v15, v52, v72

    add-long v15, v15, v86

    add-long v15, v15, v106

    add-long v15, v15, v120

    add-long v15, v15, v142

    add-long v15, v15, v156

    add-long v15, v15, v31

    add-long v15, v15, v19

    add-long/2addr v15, v5

    add-long v5, v54, v70

    add-long v5, v5, v88

    add-long v5, v5, v104

    add-long v5, v5, v122

    add-long v5, v5, v140

    add-long v5, v5, v158

    add-long v5, v5, v174

    add-long v5, v5, v188

    add-long/2addr v5, v1

    add-long v0, v56, v35

    add-long v0, v0, v90

    add-long v0, v0, v108

    add-long v0, v0, v124

    add-long v0, v0, v146

    add-long v0, v0, v27

    add-long v0, v0, v176

    add-long v0, v0, v190

    add-long v0, v0, v23

    const-wide/32 v17, 0x2000000

    add-long v19, v37, v17

    const/16 v2, 0x1a

    shr-long v19, v19, v2

    add-long v25, v25, v19

    shl-long v19, v19, v2

    sub-long v37, v37, v19

    add-long v19, v9, v17

    shr-long v19, v19, v2

    add-long v7, v7, v19

    shl-long v19, v19, v2

    sub-long v9, v9, v19

    const-wide/32 v19, 0x1000000

    add-long v21, v25, v19

    const/16 v23, 0x19

    shr-long v21, v21, v23

    add-long v13, v13, v21

    shl-long v21, v21, v23

    sub-long v25, v25, v21

    add-long v21, v7, v19

    shr-long v21, v21, v23

    add-long v3, v3, v21

    shl-long v21, v21, v23

    sub-long v7, v7, v21

    add-long v21, v13, v17

    shr-long v21, v21, v2

    add-long v11, v11, v21

    shl-long v21, v21, v2

    sub-long v13, v13, v21

    add-long v21, v3, v17

    shr-long v21, v21, v2

    add-long v15, v15, v21

    shl-long v21, v21, v2

    sub-long v3, v3, v21

    add-long v21, v11, v19

    shr-long v21, v21, v23

    add-long v9, v9, v21

    shl-long v21, v21, v23

    sub-long v11, v11, v21

    add-long v21, v15, v19

    shr-long v21, v21, v23

    add-long v5, v5, v21

    shl-long v21, v21, v23

    move-wide/from16 v27, v3

    sub-long v3, v15, v21

    add-long v15, v9, v17

    shr-long/2addr v15, v2

    add-long/2addr v7, v15

    shl-long/2addr v15, v2

    sub-long/2addr v9, v15

    add-long v15, v5, v17

    shr-long/2addr v15, v2

    add-long/2addr v0, v15

    shl-long/2addr v15, v2

    sub-long/2addr v5, v15

    add-long v19, v0, v19

    shr-long v15, v19, v23

    const-wide/16 v19, 0x13

    mul-long v19, v19, v15

    add-long v19, v19, v37

    shl-long v15, v15, v23

    sub-long/2addr v0, v15

    add-long v17, v19, v17

    shr-long v15, v17, v2

    move-wide/from16 v17, v0

    add-long v0, v25, v15

    shl-long/2addr v15, v2

    move-wide/from16 v21, v5

    sub-long v5, v19, v15

    long-to-int v2, v5

    long-to-int v1, v0

    long-to-int v0, v13

    long-to-int v5, v11

    long-to-int v6, v9

    long-to-int v8, v7

    move-wide/from16 v9, v27

    long-to-int v7, v9

    long-to-int v4, v3

    move-wide/from16 v9, v21

    long-to-int v3, v9

    move-wide/from16 v9, v17

    long-to-int v10, v9

    move/from16 v29, v2

    move/from16 v30, v1

    move/from16 v31, v0

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v8

    move/from16 v35, v7

    move/from16 v36, v4

    move/from16 v37, v3

    move/from16 v38, v10

    .line 21
    filled-new-array/range {v29 .. v38}, [I

    move-result-object v0

    .line 22
    new-instance v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    move-object/from16 v2, p0

    iget-object v3, v2, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v1, v3, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v1
.end method

.method public negate()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 9
    .line 10
    aget v3, v3, v2

    .line 11
    .line 12
    neg-int v3, v3

    .line 13
    aput v3, v1, v2

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 19
    .line 20
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 21
    .line 22
    invoke-direct {v0, v2, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public pow22523()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v3, 0x1

    .line 35
    :goto_0
    const/4 v4, 0x5

    .line 36
    if-ge v3, v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/4 v3, 0x1

    .line 54
    :goto_1
    const/16 v4, 0xa

    .line 55
    .line 56
    if-ge v3, v4, :cond_1

    .line 57
    .line 58
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/4 v5, 0x1

    .line 74
    :goto_2
    const/16 v6, 0x14

    .line 75
    .line 76
    if-ge v5, v6, :cond_2

    .line 77
    .line 78
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    add-int/lit8 v5, v5, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {v3, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const/4 v3, 0x1

    .line 94
    :goto_3
    if-ge v3, v4, :cond_3

    .line 95
    .line 96
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_3
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v3, 0x1

    .line 112
    :goto_4
    const/16 v4, 0x32

    .line 113
    .line 114
    if-ge v3, v4, :cond_4

    .line 115
    .line 116
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_4
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const/4 v5, 0x1

    .line 132
    :goto_5
    const/16 v6, 0x64

    .line 133
    .line 134
    if-ge v5, v6, :cond_5

    .line 135
    .line 136
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    add-int/lit8 v5, v5, 0x1

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_5
    invoke-virtual {v3, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    :goto_6
    if-ge v2, v4, :cond_6

    .line 152
    .line 153
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_6
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    return-object v0
.end method

.method public square()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 115

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v2, v1, v2

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    aget v3, v1, v3

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    aget v4, v1, v4

    .line 13
    .line 14
    const/4 v5, 0x3

    .line 15
    aget v5, v1, v5

    .line 16
    .line 17
    const/4 v6, 0x4

    .line 18
    aget v6, v1, v6

    .line 19
    .line 20
    const/4 v7, 0x5

    .line 21
    aget v7, v1, v7

    .line 22
    .line 23
    const/4 v8, 0x6

    .line 24
    aget v8, v1, v8

    .line 25
    .line 26
    const/4 v9, 0x7

    .line 27
    aget v9, v1, v9

    .line 28
    .line 29
    const/16 v10, 0x8

    .line 30
    .line 31
    aget v10, v1, v10

    .line 32
    .line 33
    const/16 v11, 0x9

    .line 34
    .line 35
    aget v1, v1, v11

    .line 36
    .line 37
    mul-int/lit8 v11, v2, 0x2

    .line 38
    .line 39
    mul-int/lit8 v12, v3, 0x2

    .line 40
    .line 41
    mul-int/lit8 v13, v4, 0x2

    .line 42
    .line 43
    mul-int/lit8 v14, v5, 0x2

    .line 44
    .line 45
    mul-int/lit8 v15, v6, 0x2

    .line 46
    .line 47
    mul-int/lit8 v0, v7, 0x2

    .line 48
    .line 49
    move/from16 v16, v15

    .line 50
    .line 51
    mul-int/lit8 v15, v8, 0x2

    .line 52
    .line 53
    move/from16 v17, v15

    .line 54
    .line 55
    mul-int/lit8 v15, v9, 0x2

    .line 56
    .line 57
    move/from16 v18, v13

    .line 58
    .line 59
    mul-int/lit8 v13, v7, 0x26

    .line 60
    .line 61
    move/from16 v19, v13

    .line 62
    .line 63
    mul-int/lit8 v13, v8, 0x13

    .line 64
    .line 65
    move/from16 v20, v13

    .line 66
    .line 67
    mul-int/lit8 v13, v9, 0x26

    .line 68
    .line 69
    move/from16 v21, v13

    .line 70
    .line 71
    mul-int/lit8 v13, v10, 0x13

    .line 72
    .line 73
    move/from16 v22, v13

    .line 74
    .line 75
    mul-int/lit8 v13, v1, 0x26

    .line 76
    .line 77
    move/from16 v24, v13

    .line 78
    .line 79
    move/from16 v23, v14

    .line 80
    .line 81
    int-to-long v13, v2

    .line 82
    mul-long v13, v13, v13

    .line 83
    .line 84
    move-wide/from16 v25, v13

    .line 85
    .line 86
    int-to-long v13, v11

    .line 87
    int-to-long v2, v3

    .line 88
    mul-long v27, v13, v2

    .line 89
    .line 90
    move-wide/from16 v29, v2

    .line 91
    .line 92
    int-to-long v2, v4

    .line 93
    mul-long v31, v13, v2

    .line 94
    .line 95
    int-to-long v4, v5

    .line 96
    mul-long v33, v13, v4

    .line 97
    .line 98
    move-wide/from16 v35, v4

    .line 99
    .line 100
    int-to-long v4, v6

    .line 101
    mul-long v37, v13, v4

    .line 102
    .line 103
    int-to-long v6, v7

    .line 104
    mul-long v39, v13, v6

    .line 105
    .line 106
    move-wide/from16 v41, v6

    .line 107
    .line 108
    int-to-long v6, v8

    .line 109
    mul-long v43, v13, v6

    .line 110
    .line 111
    int-to-long v8, v9

    .line 112
    mul-long v45, v13, v8

    .line 113
    .line 114
    int-to-long v10, v10

    .line 115
    mul-long v47, v13, v10

    .line 116
    .line 117
    move-wide/from16 v49, v8

    .line 118
    .line 119
    int-to-long v8, v1

    .line 120
    mul-long v13, v13, v8

    .line 121
    .line 122
    move-wide/from16 v51, v13

    .line 123
    .line 124
    int-to-long v12, v12

    .line 125
    mul-long v29, v29, v12

    .line 126
    .line 127
    mul-long v53, v12, v2

    .line 128
    .line 129
    move-wide/from16 v55, v8

    .line 130
    .line 131
    move/from16 v1, v23

    .line 132
    .line 133
    int-to-long v8, v1

    .line 134
    mul-long v57, v12, v8

    .line 135
    .line 136
    mul-long v59, v12, v4

    .line 137
    .line 138
    int-to-long v0, v0

    .line 139
    mul-long v61, v12, v0

    .line 140
    .line 141
    mul-long v63, v12, v6

    .line 142
    .line 143
    int-to-long v14, v15

    .line 144
    mul-long v65, v12, v14

    .line 145
    .line 146
    mul-long v67, v12, v10

    .line 147
    .line 148
    move-wide/from16 v69, v10

    .line 149
    .line 150
    move/from16 v10, v24

    .line 151
    .line 152
    int-to-long v10, v10

    .line 153
    mul-long v12, v12, v10

    .line 154
    .line 155
    mul-long v23, v2, v2

    .line 156
    .line 157
    move-wide/from16 v71, v12

    .line 158
    .line 159
    move/from16 v12, v18

    .line 160
    .line 161
    int-to-long v12, v12

    .line 162
    mul-long v73, v12, v35

    .line 163
    .line 164
    mul-long v75, v12, v4

    .line 165
    .line 166
    mul-long v77, v12, v41

    .line 167
    .line 168
    mul-long v79, v12, v6

    .line 169
    .line 170
    mul-long v81, v12, v49

    .line 171
    .line 172
    move-wide/from16 v83, v14

    .line 173
    .line 174
    move/from16 v14, v22

    .line 175
    .line 176
    int-to-long v14, v14

    .line 177
    mul-long v12, v12, v14

    .line 178
    .line 179
    mul-long v2, v2, v10

    .line 180
    .line 181
    mul-long v35, v35, v8

    .line 182
    .line 183
    mul-long v85, v8, v4

    .line 184
    .line 185
    mul-long v87, v8, v0

    .line 186
    .line 187
    mul-long v89, v8, v6

    .line 188
    .line 189
    move-wide/from16 v91, v2

    .line 190
    .line 191
    move/from16 v2, v21

    .line 192
    .line 193
    int-to-long v2, v2

    .line 194
    mul-long v21, v8, v2

    .line 195
    .line 196
    mul-long v93, v8, v14

    .line 197
    .line 198
    mul-long v8, v8, v10

    .line 199
    .line 200
    mul-long v95, v4, v4

    .line 201
    .line 202
    move-wide/from16 v97, v8

    .line 203
    .line 204
    move/from16 v8, v16

    .line 205
    .line 206
    int-to-long v8, v8

    .line 207
    mul-long v99, v8, v41

    .line 208
    .line 209
    move-wide/from16 v101, v12

    .line 210
    .line 211
    move/from16 v12, v20

    .line 212
    .line 213
    int-to-long v12, v12

    .line 214
    mul-long v103, v8, v12

    .line 215
    .line 216
    mul-long v105, v4, v2

    .line 217
    .line 218
    mul-long v8, v8, v14

    .line 219
    .line 220
    mul-long v4, v4, v10

    .line 221
    .line 222
    move-wide/from16 v107, v4

    .line 223
    .line 224
    move/from16 v4, v19

    .line 225
    .line 226
    int-to-long v4, v4

    .line 227
    mul-long v4, v4, v41

    .line 228
    .line 229
    mul-long v18, v0, v12

    .line 230
    .line 231
    mul-long v41, v0, v2

    .line 232
    .line 233
    mul-long v109, v0, v14

    .line 234
    .line 235
    mul-long v0, v0, v10

    .line 236
    .line 237
    mul-long v12, v12, v6

    .line 238
    .line 239
    mul-long v111, v6, v2

    .line 240
    .line 241
    move-wide/from16 v113, v0

    .line 242
    .line 243
    move/from16 v0, v17

    .line 244
    .line 245
    int-to-long v0, v0

    .line 246
    mul-long v0, v0, v14

    .line 247
    .line 248
    mul-long v6, v6, v10

    .line 249
    .line 250
    mul-long v2, v2, v49

    .line 251
    .line 252
    mul-long v16, v83, v14

    .line 253
    .line 254
    mul-long v49, v83, v10

    .line 255
    .line 256
    mul-long v14, v14, v69

    .line 257
    .line 258
    mul-long v69, v69, v10

    .line 259
    .line 260
    mul-long v10, v10, v55

    .line 261
    .line 262
    add-long v25, v25, v71

    .line 263
    .line 264
    add-long v25, v25, v101

    .line 265
    .line 266
    add-long v25, v25, v21

    .line 267
    .line 268
    add-long v25, v25, v103

    .line 269
    .line 270
    add-long v25, v25, v4

    .line 271
    .line 272
    add-long v27, v27, v91

    .line 273
    .line 274
    add-long v27, v27, v93

    .line 275
    .line 276
    add-long v27, v27, v105

    .line 277
    .line 278
    add-long v27, v27, v18

    .line 279
    .line 280
    add-long v31, v31, v29

    .line 281
    .line 282
    add-long v31, v31, v97

    .line 283
    .line 284
    add-long v31, v31, v8

    .line 285
    .line 286
    add-long v31, v31, v41

    .line 287
    .line 288
    add-long v31, v31, v12

    .line 289
    .line 290
    add-long v33, v33, v53

    .line 291
    .line 292
    add-long v33, v33, v107

    .line 293
    .line 294
    add-long v33, v33, v109

    .line 295
    .line 296
    add-long v33, v33, v111

    .line 297
    .line 298
    add-long v37, v37, v57

    .line 299
    .line 300
    add-long v37, v37, v23

    .line 301
    .line 302
    add-long v37, v37, v113

    .line 303
    .line 304
    add-long v37, v37, v0

    .line 305
    .line 306
    add-long v37, v37, v2

    .line 307
    .line 308
    add-long v39, v39, v59

    .line 309
    .line 310
    add-long v39, v39, v73

    .line 311
    .line 312
    add-long v39, v39, v6

    .line 313
    .line 314
    add-long v39, v39, v16

    .line 315
    .line 316
    add-long v43, v43, v61

    .line 317
    .line 318
    add-long v43, v43, v75

    .line 319
    .line 320
    add-long v43, v43, v35

    .line 321
    .line 322
    add-long v43, v43, v49

    .line 323
    .line 324
    add-long v43, v43, v14

    .line 325
    .line 326
    add-long v45, v45, v63

    .line 327
    .line 328
    add-long v45, v45, v77

    .line 329
    .line 330
    add-long v45, v45, v85

    .line 331
    .line 332
    add-long v45, v45, v69

    .line 333
    .line 334
    add-long v47, v47, v65

    .line 335
    .line 336
    add-long v47, v47, v79

    .line 337
    .line 338
    add-long v47, v47, v87

    .line 339
    .line 340
    add-long v47, v47, v95

    .line 341
    .line 342
    add-long v47, v47, v10

    .line 343
    .line 344
    add-long v13, v51, v67

    .line 345
    .line 346
    add-long v13, v13, v81

    .line 347
    .line 348
    add-long v13, v13, v89

    .line 349
    .line 350
    add-long v13, v13, v99

    .line 351
    .line 352
    const-wide/32 v0, 0x2000000

    .line 353
    .line 354
    .line 355
    add-long v2, v25, v0

    .line 356
    .line 357
    const/16 v4, 0x1a

    .line 358
    .line 359
    shr-long/2addr v2, v4

    .line 360
    add-long v27, v27, v2

    .line 361
    .line 362
    shl-long/2addr v2, v4

    .line 363
    sub-long v25, v25, v2

    .line 364
    .line 365
    add-long v2, v37, v0

    .line 366
    .line 367
    shr-long/2addr v2, v4

    .line 368
    add-long v39, v39, v2

    .line 369
    .line 370
    shl-long/2addr v2, v4

    .line 371
    sub-long v37, v37, v2

    .line 372
    .line 373
    const-wide/32 v2, 0x1000000

    .line 374
    .line 375
    .line 376
    add-long v5, v27, v2

    .line 377
    .line 378
    const/16 v7, 0x19

    .line 379
    .line 380
    shr-long/2addr v5, v7

    .line 381
    add-long v31, v31, v5

    .line 382
    .line 383
    shl-long/2addr v5, v7

    .line 384
    sub-long v27, v27, v5

    .line 385
    .line 386
    add-long v5, v39, v2

    .line 387
    .line 388
    shr-long/2addr v5, v7

    .line 389
    add-long v43, v43, v5

    .line 390
    .line 391
    shl-long/2addr v5, v7

    .line 392
    sub-long v39, v39, v5

    .line 393
    .line 394
    add-long v5, v31, v0

    .line 395
    .line 396
    shr-long/2addr v5, v4

    .line 397
    add-long v33, v33, v5

    .line 398
    .line 399
    shl-long/2addr v5, v4

    .line 400
    sub-long v5, v31, v5

    .line 401
    .line 402
    add-long v8, v43, v0

    .line 403
    .line 404
    shr-long/2addr v8, v4

    .line 405
    add-long v45, v45, v8

    .line 406
    .line 407
    shl-long/2addr v8, v4

    .line 408
    sub-long v8, v43, v8

    .line 409
    .line 410
    add-long v10, v33, v2

    .line 411
    .line 412
    shr-long/2addr v10, v7

    .line 413
    add-long v37, v37, v10

    .line 414
    .line 415
    shl-long/2addr v10, v7

    .line 416
    sub-long v10, v33, v10

    .line 417
    .line 418
    add-long v15, v45, v2

    .line 419
    .line 420
    shr-long/2addr v15, v7

    .line 421
    add-long v47, v47, v15

    .line 422
    .line 423
    shl-long/2addr v15, v7

    .line 424
    move-wide/from16 v17, v8

    .line 425
    .line 426
    sub-long v7, v45, v15

    .line 427
    .line 428
    add-long v15, v37, v0

    .line 429
    .line 430
    shr-long/2addr v15, v4

    .line 431
    add-long v2, v39, v15

    .line 432
    .line 433
    shl-long/2addr v15, v4

    .line 434
    move-wide/from16 v21, v13

    .line 435
    .line 436
    sub-long v12, v37, v15

    .line 437
    .line 438
    add-long v14, v47, v0

    .line 439
    .line 440
    shr-long/2addr v14, v4

    .line 441
    add-long v21, v21, v14

    .line 442
    .line 443
    shl-long/2addr v14, v4

    .line 444
    sub-long v14, v47, v14

    .line 445
    .line 446
    const-wide/32 v19, 0x1000000

    .line 447
    .line 448
    .line 449
    add-long v19, v21, v19

    .line 450
    .line 451
    const/16 v9, 0x19

    .line 452
    .line 453
    shr-long v19, v19, v9

    .line 454
    .line 455
    const-wide/16 v23, 0x13

    .line 456
    .line 457
    mul-long v23, v23, v19

    .line 458
    .line 459
    add-long v23, v23, v25

    .line 460
    .line 461
    shl-long v19, v19, v9

    .line 462
    .line 463
    move-wide/from16 v25, v14

    .line 464
    .line 465
    sub-long v14, v21, v19

    .line 466
    .line 467
    add-long v0, v23, v0

    .line 468
    .line 469
    shr-long/2addr v0, v4

    .line 470
    move-wide/from16 v19, v14

    .line 471
    .line 472
    add-long v14, v27, v0

    .line 473
    .line 474
    shl-long/2addr v0, v4

    .line 475
    sub-long v0, v23, v0

    .line 476
    .line 477
    long-to-int v1, v0

    .line 478
    long-to-int v0, v14

    .line 479
    long-to-int v4, v5

    .line 480
    long-to-int v5, v10

    .line 481
    long-to-int v6, v12

    .line 482
    long-to-int v3, v2

    .line 483
    move-wide/from16 v9, v17

    .line 484
    .line 485
    long-to-int v2, v9

    .line 486
    long-to-int v8, v7

    .line 487
    move-wide/from16 v9, v25

    .line 488
    .line 489
    long-to-int v7, v9

    .line 490
    move-wide/from16 v9, v19

    .line 491
    .line 492
    long-to-int v10, v9

    .line 493
    move/from16 v27, v1

    .line 494
    .line 495
    move/from16 v28, v0

    .line 496
    .line 497
    move/from16 v29, v4

    .line 498
    .line 499
    move/from16 v30, v5

    .line 500
    .line 501
    move/from16 v31, v6

    .line 502
    .line 503
    move/from16 v32, v3

    .line 504
    .line 505
    move/from16 v33, v2

    .line 506
    .line 507
    move/from16 v34, v8

    .line 508
    .line 509
    move/from16 v35, v7

    .line 510
    .line 511
    move/from16 v36, v10

    .line 512
    .line 513
    filled-new-array/range {v27 .. v36}, [I

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    new-instance v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 518
    .line 519
    move-object/from16 v2, p0

    .line 520
    .line 521
    iget-object v3, v2, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 522
    .line 523
    invoke-direct {v1, v3, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    .line 524
    .line 525
    .line 526
    return-object v1
.end method

.method public squareAndDouble()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 115

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v2, v1, v2

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    aget v3, v1, v3

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    aget v4, v1, v4

    .line 13
    .line 14
    const/4 v5, 0x3

    .line 15
    aget v5, v1, v5

    .line 16
    .line 17
    const/4 v6, 0x4

    .line 18
    aget v6, v1, v6

    .line 19
    .line 20
    const/4 v7, 0x5

    .line 21
    aget v7, v1, v7

    .line 22
    .line 23
    const/4 v8, 0x6

    .line 24
    aget v8, v1, v8

    .line 25
    .line 26
    const/4 v9, 0x7

    .line 27
    aget v9, v1, v9

    .line 28
    .line 29
    const/16 v10, 0x8

    .line 30
    .line 31
    aget v10, v1, v10

    .line 32
    .line 33
    const/16 v11, 0x9

    .line 34
    .line 35
    aget v1, v1, v11

    .line 36
    .line 37
    mul-int/lit8 v11, v2, 0x2

    .line 38
    .line 39
    mul-int/lit8 v12, v3, 0x2

    .line 40
    .line 41
    mul-int/lit8 v13, v4, 0x2

    .line 42
    .line 43
    mul-int/lit8 v14, v5, 0x2

    .line 44
    .line 45
    mul-int/lit8 v15, v6, 0x2

    .line 46
    .line 47
    mul-int/lit8 v0, v7, 0x2

    .line 48
    .line 49
    move/from16 v16, v15

    .line 50
    .line 51
    mul-int/lit8 v15, v8, 0x2

    .line 52
    .line 53
    move/from16 v17, v15

    .line 54
    .line 55
    mul-int/lit8 v15, v9, 0x2

    .line 56
    .line 57
    move/from16 v18, v13

    .line 58
    .line 59
    mul-int/lit8 v13, v7, 0x26

    .line 60
    .line 61
    move/from16 v19, v13

    .line 62
    .line 63
    mul-int/lit8 v13, v8, 0x13

    .line 64
    .line 65
    move/from16 v20, v13

    .line 66
    .line 67
    mul-int/lit8 v13, v9, 0x26

    .line 68
    .line 69
    move/from16 v21, v13

    .line 70
    .line 71
    mul-int/lit8 v13, v10, 0x13

    .line 72
    .line 73
    move/from16 v22, v13

    .line 74
    .line 75
    mul-int/lit8 v13, v1, 0x26

    .line 76
    .line 77
    move/from16 v24, v13

    .line 78
    .line 79
    move/from16 v23, v14

    .line 80
    .line 81
    int-to-long v13, v2

    .line 82
    mul-long v13, v13, v13

    .line 83
    .line 84
    move-wide/from16 v25, v13

    .line 85
    .line 86
    int-to-long v13, v11

    .line 87
    int-to-long v2, v3

    .line 88
    mul-long v27, v13, v2

    .line 89
    .line 90
    move-wide/from16 v29, v2

    .line 91
    .line 92
    int-to-long v2, v4

    .line 93
    mul-long v31, v13, v2

    .line 94
    .line 95
    int-to-long v4, v5

    .line 96
    mul-long v33, v13, v4

    .line 97
    .line 98
    move-wide/from16 v35, v4

    .line 99
    .line 100
    int-to-long v4, v6

    .line 101
    mul-long v37, v13, v4

    .line 102
    .line 103
    int-to-long v6, v7

    .line 104
    mul-long v39, v13, v6

    .line 105
    .line 106
    move-wide/from16 v41, v6

    .line 107
    .line 108
    int-to-long v6, v8

    .line 109
    mul-long v43, v13, v6

    .line 110
    .line 111
    int-to-long v8, v9

    .line 112
    mul-long v45, v13, v8

    .line 113
    .line 114
    int-to-long v10, v10

    .line 115
    mul-long v47, v13, v10

    .line 116
    .line 117
    move-wide/from16 v49, v8

    .line 118
    .line 119
    int-to-long v8, v1

    .line 120
    mul-long v13, v13, v8

    .line 121
    .line 122
    move-wide/from16 v51, v13

    .line 123
    .line 124
    int-to-long v12, v12

    .line 125
    mul-long v29, v29, v12

    .line 126
    .line 127
    mul-long v53, v12, v2

    .line 128
    .line 129
    move-wide/from16 v55, v8

    .line 130
    .line 131
    move/from16 v1, v23

    .line 132
    .line 133
    int-to-long v8, v1

    .line 134
    mul-long v57, v12, v8

    .line 135
    .line 136
    mul-long v59, v12, v4

    .line 137
    .line 138
    int-to-long v0, v0

    .line 139
    mul-long v61, v12, v0

    .line 140
    .line 141
    mul-long v63, v12, v6

    .line 142
    .line 143
    int-to-long v14, v15

    .line 144
    mul-long v65, v12, v14

    .line 145
    .line 146
    mul-long v67, v12, v10

    .line 147
    .line 148
    move-wide/from16 v69, v10

    .line 149
    .line 150
    move/from16 v10, v24

    .line 151
    .line 152
    int-to-long v10, v10

    .line 153
    mul-long v12, v12, v10

    .line 154
    .line 155
    mul-long v23, v2, v2

    .line 156
    .line 157
    move-wide/from16 v71, v12

    .line 158
    .line 159
    move/from16 v12, v18

    .line 160
    .line 161
    int-to-long v12, v12

    .line 162
    mul-long v73, v12, v35

    .line 163
    .line 164
    mul-long v75, v12, v4

    .line 165
    .line 166
    mul-long v77, v12, v41

    .line 167
    .line 168
    mul-long v79, v12, v6

    .line 169
    .line 170
    mul-long v81, v12, v49

    .line 171
    .line 172
    move-wide/from16 v83, v14

    .line 173
    .line 174
    move/from16 v14, v22

    .line 175
    .line 176
    int-to-long v14, v14

    .line 177
    mul-long v12, v12, v14

    .line 178
    .line 179
    mul-long v2, v2, v10

    .line 180
    .line 181
    mul-long v35, v35, v8

    .line 182
    .line 183
    mul-long v85, v8, v4

    .line 184
    .line 185
    mul-long v87, v8, v0

    .line 186
    .line 187
    mul-long v89, v8, v6

    .line 188
    .line 189
    move-wide/from16 v91, v2

    .line 190
    .line 191
    move/from16 v2, v21

    .line 192
    .line 193
    int-to-long v2, v2

    .line 194
    mul-long v21, v8, v2

    .line 195
    .line 196
    mul-long v93, v8, v14

    .line 197
    .line 198
    mul-long v8, v8, v10

    .line 199
    .line 200
    mul-long v95, v4, v4

    .line 201
    .line 202
    move-wide/from16 v97, v8

    .line 203
    .line 204
    move/from16 v8, v16

    .line 205
    .line 206
    int-to-long v8, v8

    .line 207
    mul-long v99, v8, v41

    .line 208
    .line 209
    move-wide/from16 v101, v12

    .line 210
    .line 211
    move/from16 v12, v20

    .line 212
    .line 213
    int-to-long v12, v12

    .line 214
    mul-long v103, v8, v12

    .line 215
    .line 216
    mul-long v105, v4, v2

    .line 217
    .line 218
    mul-long v8, v8, v14

    .line 219
    .line 220
    mul-long v4, v4, v10

    .line 221
    .line 222
    move-wide/from16 v107, v4

    .line 223
    .line 224
    move/from16 v4, v19

    .line 225
    .line 226
    int-to-long v4, v4

    .line 227
    mul-long v4, v4, v41

    .line 228
    .line 229
    mul-long v18, v0, v12

    .line 230
    .line 231
    mul-long v41, v0, v2

    .line 232
    .line 233
    mul-long v109, v0, v14

    .line 234
    .line 235
    mul-long v0, v0, v10

    .line 236
    .line 237
    mul-long v12, v12, v6

    .line 238
    .line 239
    mul-long v111, v6, v2

    .line 240
    .line 241
    move-wide/from16 v113, v0

    .line 242
    .line 243
    move/from16 v0, v17

    .line 244
    .line 245
    int-to-long v0, v0

    .line 246
    mul-long v0, v0, v14

    .line 247
    .line 248
    mul-long v6, v6, v10

    .line 249
    .line 250
    mul-long v2, v2, v49

    .line 251
    .line 252
    mul-long v16, v83, v14

    .line 253
    .line 254
    mul-long v49, v83, v10

    .line 255
    .line 256
    mul-long v14, v14, v69

    .line 257
    .line 258
    mul-long v69, v69, v10

    .line 259
    .line 260
    mul-long v10, v10, v55

    .line 261
    .line 262
    add-long v25, v25, v71

    .line 263
    .line 264
    add-long v25, v25, v101

    .line 265
    .line 266
    add-long v25, v25, v21

    .line 267
    .line 268
    add-long v25, v25, v103

    .line 269
    .line 270
    add-long v25, v25, v4

    .line 271
    .line 272
    add-long v27, v27, v91

    .line 273
    .line 274
    add-long v27, v27, v93

    .line 275
    .line 276
    add-long v27, v27, v105

    .line 277
    .line 278
    add-long v27, v27, v18

    .line 279
    .line 280
    add-long v31, v31, v29

    .line 281
    .line 282
    add-long v31, v31, v97

    .line 283
    .line 284
    add-long v31, v31, v8

    .line 285
    .line 286
    add-long v31, v31, v41

    .line 287
    .line 288
    add-long v31, v31, v12

    .line 289
    .line 290
    add-long v33, v33, v53

    .line 291
    .line 292
    add-long v33, v33, v107

    .line 293
    .line 294
    add-long v33, v33, v109

    .line 295
    .line 296
    add-long v33, v33, v111

    .line 297
    .line 298
    add-long v37, v37, v57

    .line 299
    .line 300
    add-long v37, v37, v23

    .line 301
    .line 302
    add-long v37, v37, v113

    .line 303
    .line 304
    add-long v37, v37, v0

    .line 305
    .line 306
    add-long v37, v37, v2

    .line 307
    .line 308
    add-long v39, v39, v59

    .line 309
    .line 310
    add-long v39, v39, v73

    .line 311
    .line 312
    add-long v39, v39, v6

    .line 313
    .line 314
    add-long v39, v39, v16

    .line 315
    .line 316
    add-long v43, v43, v61

    .line 317
    .line 318
    add-long v43, v43, v75

    .line 319
    .line 320
    add-long v43, v43, v35

    .line 321
    .line 322
    add-long v43, v43, v49

    .line 323
    .line 324
    add-long v43, v43, v14

    .line 325
    .line 326
    add-long v45, v45, v63

    .line 327
    .line 328
    add-long v45, v45, v77

    .line 329
    .line 330
    add-long v45, v45, v85

    .line 331
    .line 332
    add-long v45, v45, v69

    .line 333
    .line 334
    add-long v47, v47, v65

    .line 335
    .line 336
    add-long v47, v47, v79

    .line 337
    .line 338
    add-long v47, v47, v87

    .line 339
    .line 340
    add-long v47, v47, v95

    .line 341
    .line 342
    add-long v47, v47, v10

    .line 343
    .line 344
    add-long v13, v51, v67

    .line 345
    .line 346
    add-long v13, v13, v81

    .line 347
    .line 348
    add-long v13, v13, v89

    .line 349
    .line 350
    add-long v13, v13, v99

    .line 351
    .line 352
    add-long v25, v25, v25

    .line 353
    .line 354
    add-long v27, v27, v27

    .line 355
    .line 356
    add-long v31, v31, v31

    .line 357
    .line 358
    add-long v33, v33, v33

    .line 359
    .line 360
    add-long v37, v37, v37

    .line 361
    .line 362
    add-long v39, v39, v39

    .line 363
    .line 364
    add-long v43, v43, v43

    .line 365
    .line 366
    add-long v45, v45, v45

    .line 367
    .line 368
    add-long v47, v47, v47

    .line 369
    .line 370
    add-long/2addr v13, v13

    .line 371
    const-wide/32 v0, 0x2000000

    .line 372
    .line 373
    .line 374
    add-long v2, v25, v0

    .line 375
    .line 376
    const/16 v4, 0x1a

    .line 377
    .line 378
    shr-long/2addr v2, v4

    .line 379
    add-long v27, v27, v2

    .line 380
    .line 381
    shl-long/2addr v2, v4

    .line 382
    sub-long v25, v25, v2

    .line 383
    .line 384
    add-long v2, v37, v0

    .line 385
    .line 386
    shr-long/2addr v2, v4

    .line 387
    add-long v39, v39, v2

    .line 388
    .line 389
    shl-long/2addr v2, v4

    .line 390
    sub-long v37, v37, v2

    .line 391
    .line 392
    const-wide/32 v2, 0x1000000

    .line 393
    .line 394
    .line 395
    add-long v5, v27, v2

    .line 396
    .line 397
    const/16 v7, 0x19

    .line 398
    .line 399
    shr-long/2addr v5, v7

    .line 400
    add-long v31, v31, v5

    .line 401
    .line 402
    shl-long/2addr v5, v7

    .line 403
    sub-long v27, v27, v5

    .line 404
    .line 405
    add-long v5, v39, v2

    .line 406
    .line 407
    shr-long/2addr v5, v7

    .line 408
    add-long v43, v43, v5

    .line 409
    .line 410
    shl-long/2addr v5, v7

    .line 411
    sub-long v39, v39, v5

    .line 412
    .line 413
    add-long v5, v31, v0

    .line 414
    .line 415
    shr-long/2addr v5, v4

    .line 416
    add-long v33, v33, v5

    .line 417
    .line 418
    shl-long/2addr v5, v4

    .line 419
    sub-long v5, v31, v5

    .line 420
    .line 421
    add-long v8, v43, v0

    .line 422
    .line 423
    shr-long/2addr v8, v4

    .line 424
    add-long v45, v45, v8

    .line 425
    .line 426
    shl-long/2addr v8, v4

    .line 427
    sub-long v8, v43, v8

    .line 428
    .line 429
    add-long v10, v33, v2

    .line 430
    .line 431
    shr-long/2addr v10, v7

    .line 432
    add-long v37, v37, v10

    .line 433
    .line 434
    shl-long/2addr v10, v7

    .line 435
    sub-long v10, v33, v10

    .line 436
    .line 437
    add-long v15, v45, v2

    .line 438
    .line 439
    shr-long/2addr v15, v7

    .line 440
    add-long v47, v47, v15

    .line 441
    .line 442
    shl-long/2addr v15, v7

    .line 443
    move-wide/from16 v17, v8

    .line 444
    .line 445
    sub-long v7, v45, v15

    .line 446
    .line 447
    add-long v15, v37, v0

    .line 448
    .line 449
    shr-long/2addr v15, v4

    .line 450
    add-long v2, v39, v15

    .line 451
    .line 452
    shl-long/2addr v15, v4

    .line 453
    move-wide/from16 v21, v13

    .line 454
    .line 455
    sub-long v12, v37, v15

    .line 456
    .line 457
    add-long v14, v47, v0

    .line 458
    .line 459
    shr-long/2addr v14, v4

    .line 460
    add-long v21, v21, v14

    .line 461
    .line 462
    shl-long/2addr v14, v4

    .line 463
    sub-long v14, v47, v14

    .line 464
    .line 465
    const-wide/32 v19, 0x1000000

    .line 466
    .line 467
    .line 468
    add-long v19, v21, v19

    .line 469
    .line 470
    const/16 v9, 0x19

    .line 471
    .line 472
    shr-long v19, v19, v9

    .line 473
    .line 474
    const-wide/16 v23, 0x13

    .line 475
    .line 476
    mul-long v23, v23, v19

    .line 477
    .line 478
    add-long v23, v23, v25

    .line 479
    .line 480
    shl-long v19, v19, v9

    .line 481
    .line 482
    move-wide/from16 v25, v14

    .line 483
    .line 484
    sub-long v14, v21, v19

    .line 485
    .line 486
    add-long v0, v23, v0

    .line 487
    .line 488
    shr-long/2addr v0, v4

    .line 489
    move-wide/from16 v19, v14

    .line 490
    .line 491
    add-long v14, v27, v0

    .line 492
    .line 493
    shl-long/2addr v0, v4

    .line 494
    sub-long v0, v23, v0

    .line 495
    .line 496
    long-to-int v1, v0

    .line 497
    long-to-int v0, v14

    .line 498
    long-to-int v4, v5

    .line 499
    long-to-int v5, v10

    .line 500
    long-to-int v6, v12

    .line 501
    long-to-int v3, v2

    .line 502
    move-wide/from16 v9, v17

    .line 503
    .line 504
    long-to-int v2, v9

    .line 505
    long-to-int v8, v7

    .line 506
    move-wide/from16 v9, v25

    .line 507
    .line 508
    long-to-int v7, v9

    .line 509
    move-wide/from16 v9, v19

    .line 510
    .line 511
    long-to-int v10, v9

    .line 512
    move/from16 v27, v1

    .line 513
    .line 514
    move/from16 v28, v0

    .line 515
    .line 516
    move/from16 v29, v4

    .line 517
    .line 518
    move/from16 v30, v5

    .line 519
    .line 520
    move/from16 v31, v6

    .line 521
    .line 522
    move/from16 v32, v3

    .line 523
    .line 524
    move/from16 v33, v2

    .line 525
    .line 526
    move/from16 v34, v8

    .line 527
    .line 528
    move/from16 v35, v7

    .line 529
    .line 530
    move/from16 v36, v10

    .line 531
    .line 532
    filled-new-array/range {v27 .. v36}, [I

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    new-instance v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 537
    .line 538
    move-object/from16 v2, p0

    .line 539
    .line 540
    iget-object v3, v2, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 541
    .line 542
    invoke-direct {v1, v3, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    .line 543
    .line 544
    .line 545
    return-object v1
.end method

.method public subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 5

    .line 1
    check-cast p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 2
    .line 3
    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 13
    .line 14
    aget v3, v3, v2

    .line 15
    .line 16
    aget v4, p1, v2

    .line 17
    .line 18
    sub-int/2addr v3, v4

    .line 19
    aput v3, v1, v2

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 25
    .line 26
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 27
    .line 28
    invoke-direct {p1, v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[Ed25519FieldElement val="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->toByteArray()[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lnet/i2p/crypto/eddsa/Utils;->bytesToHex([B)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "]"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
