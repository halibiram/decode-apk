.class public abstract Lcom/google/zxing/LuminanceSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/zxing/LuminanceSource;->width:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/zxing/LuminanceSource;->height:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 p3, 0x7

    .line 6
    new-array p3, p3, [J

    .line 7
    .line 8
    fill-array-data p3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x55d8a9f64df0b46dL    # 3.5354158689378967E105
        -0x68923f6601bb5255L    # -7.960385539266148E-196
        0x7b065f78fc99bd7dL    # 4.1586174831807E284
        -0x11624076ac79e9e2L    # -6.8820419786908594E224
        0x12c1086bf9a4df4aL    # 2.41257979874361E-218
        -0x6976c328774b46d4L    # -4.121374147949911E-200
        -0x5e2ad55213983464L
    .end array-data
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/LuminanceSource;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract getMatrix()[B
.end method

.method public abstract getRow(I[B)[B
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/LuminanceSource;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public invert()Lcom/google/zxing/LuminanceSource;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/zxing/InvertedLuminanceSource;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRotateSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :array_0
    .array-data 8
        0x31e7e178e3567bebL    # 2.7680821235840382E-68
        0x357f31a323ec124bL    # 5.2108714537378275E-51
        0x79bd8a76afa144ccL    # 2.6182996269367942E278
        0x37697dfb5a7d988cL    # 9.144848343953974E-42
        0x2272401fd8956cb8L
        0x66a6e5f15b3ee9e4L    # 3.1135005320284165E186
        -0x5231c98ad413478L
        -0x230252b87ba26df9L    # -8.835194945079221E139
        0x39d923a8cc1c6631L    # 4.957851632775649E-30
    .end array-data
.end method

.method public rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :array_0
    .array-data 8
        0x64c80feb9f23a425L    # 3.047071169675555E177
        -0x1b0f56f4ac49b26eL    # -1.687800169099806E178
        0x3a672c045b9cf6e9L    # 2.3397681592378885E-27
        -0x42d5d557fc508c55L    # -4.6481265407697585E-14
        0xd6d99a208fb580L
        0x2086b7d8523681beL
        0x33438aceaf9bc47L
        -0x46afdc483d8fa8e8L    # -1.2433436020767155E-32
        -0x73e8ad4cf8c0235eL
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/zxing/LuminanceSource;->width:I

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    iget v3, p0, Lcom/google/zxing/LuminanceSource;->height:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    mul-int v0, v0, v3

    .line 12
    .line 13
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    iget v4, p0, Lcom/google/zxing/LuminanceSource;->height:I

    .line 19
    .line 20
    if-ge v3, v4, :cond_4

    .line 21
    .line 22
    invoke-virtual {p0, v3, v1}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_1
    iget v5, p0, Lcom/google/zxing/LuminanceSource;->width:I

    .line 28
    .line 29
    if-ge v4, v5, :cond_3

    .line 30
    .line 31
    aget-byte v5, v1, v4

    .line 32
    .line 33
    and-int/lit16 v5, v5, 0xff

    .line 34
    .line 35
    const/16 v6, 0x40

    .line 36
    .line 37
    if-ge v5, v6, :cond_0

    .line 38
    .line 39
    const/16 v5, 0x23

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    const/16 v6, 0x80

    .line 43
    .line 44
    if-ge v5, v6, :cond_1

    .line 45
    .line 46
    const/16 v5, 0x2b

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    const/16 v6, 0xc0

    .line 50
    .line 51
    if-ge v5, v6, :cond_2

    .line 52
    .line 53
    const/16 v5, 0x2e

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v5, 0x20

    .line 57
    .line 58
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/16 v4, 0xa

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method
