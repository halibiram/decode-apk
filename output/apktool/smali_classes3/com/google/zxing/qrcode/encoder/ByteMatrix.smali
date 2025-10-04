.class public final Lcom/google/zxing/qrcode/encoder/ByteMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bytes:[[B

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    aput p1, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aput p2, v0, v1

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, [[B

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 22
    .line 23
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 24
    .line 25
    iput p2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public clear(B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-static {v3, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public get(II)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 2
    .line 3
    aget-object p2, v0, p2

    .line 4
    .line 5
    aget-byte p1, p2, p1

    .line 6
    .line 7
    return p1
.end method

.method public getArray()[[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public set(IIB)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object p2, v0, p2

    aput-byte p3, p2, p1

    return-void
.end method

.method public set(III)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method public set(IIZ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    iget v2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    mul-int/lit8 v2, v2, 0x2

    .line 8
    .line 9
    iget v4, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 10
    .line 11
    mul-int v2, v2, v4

    .line 12
    .line 13
    add-int/2addr v2, v3

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    iget v5, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 20
    .line 21
    if-ge v4, v5, :cond_3

    .line 22
    .line 23
    iget-object v5, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 24
    .line 25
    aget-object v5, v5, v4

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    :goto_1
    iget v7, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 29
    .line 30
    if-ge v6, v7, :cond_2

    .line 31
    .line 32
    aget-byte v7, v5, v6

    .line 33
    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    if-eq v7, v0, :cond_0

    .line 37
    .line 38
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v8, v3, [J

    .line 41
    .line 42
    fill-array-data v8, :array_0

    .line 43
    .line 44
    .line 45
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_0
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v8, v3, [J

    .line 59
    .line 60
    fill-array-data v8, :array_1

    .line 61
    .line 62
    .line 63
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v8, v3, [J

    .line 77
    .line 78
    fill-array-data v8, :array_2

    .line 79
    .line 80
    .line 81
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :goto_2
    add-int/2addr v6, v0

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    const/16 v5, 0xa

    .line 94
    .line 95
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    add-int/2addr v4, v0

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :array_0
    .array-data 8
        0x7196f89b5353e1cbL    # 1.4958179709602045E239
        -0x362903c3256a1bccL    # -5.248915434644238E47
    .end array-data

    .line 106
    .line 107
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
    :array_1
    .array-data 8
        -0x2ba1833b9f7f11b0L    # -2.604825209172379E98
        -0x6c7f5e5e4dea2f71L    # -9.648975815827241E-215
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
    :array_2
    .array-data 8
        0x2a0d3a03ca6da5eL
        0x5092c4b51fab8a3aL    # 1.390867803194612E80
    .end array-data
.end method
