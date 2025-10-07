.class public Lcom/trilead/ssh2/packets/TypesReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field arr:[B

.field max:I

.field pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 4
    array-length p1, p1

    iput p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    .line 7
    iput p2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 8
    array-length v0, p1

    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-ltz p2, :cond_0

    .line 9
    array-length p1, p1

    if-gt p2, p1, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        0x7b0c1240ed98f69aL    # 5.2178128172140676E284
        0x7e56643bc0952c5bL    # 3.748863180147462E300
        0x429fe365dd1dca56L    # 8.765381756786584E12
    .end array-data
.end method

.method public constructor <init>([BII)V
    .locals 2

    const/4 v0, 0x3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    .line 13
    iput p2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr p3, p2

    .line 14
    iput p3, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-ltz p2, :cond_1

    .line 15
    array-length v1, p1

    if-gt p2, v1, :cond_1

    if-ltz p3, :cond_0

    .line 16
    array-length p1, p1

    if-gt p3, p1, :cond_0

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_1

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        -0x79b09fcddcb3b302L    # -2.765593486072628E-278
        -0x610e8eb4f43ca76cL
        0x79c4b2488e89f46cL    # 3.668776265736272E278
    .end array-data

    :array_1
    .array-data 8
        -0x21859e6a699af50dL    # -1.3176870049632073E147
        0x656b9391b677e777L    # 3.5759023761667023E180
        0x7c376f43ab12f68bL    # 2.2837779189372713E290
    .end array-data
.end method


# virtual methods
.method public readBoolean()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 3
    .line 4
    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    .line 5
    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    .line 9
    .line 10
    add-int/lit8 v3, v1, 0x1

    .line 11
    .line 12
    iput v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 13
    .line 14
    aget-byte v1, v2, v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    .line 21
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x4f95cf4919ec4caaL    # 2.466202922256235E75
        -0x16cbddb04024ae11L    # -6.020157501551243E198
        -0x511cb1db198855f4L    # -7.949991120192549E-83
        0x11a47d78c2e2e41bL
    .end array-data
.end method

.method public readByte()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 2
    .line 3
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    iput v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 12
    .line 13
    aget-byte v0, v1, v0

    .line 14
    .line 15
    and-int/lit16 v0, v0, 0xff

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 19
    .line 20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    new-array v2, v2, [J

    .line 24
    .line 25
    fill-array-data v2, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :array_0
    .array-data 8
        -0x36042462d70574c1L    # -2.5446448733430055E48
        0x2b6ca53ec2426b35L    # 1.6370716299870633E-99
        0x120f2267ef856a84L    # 1.076647864110007E-221
        0x14c714c45f7138c4L
    .end array-data
.end method

.method public readByteString()[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 6
    .line 7
    add-int v2, v0, v1

    .line 8
    .line 9
    iget v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    .line 10
    .line 11
    if-gt v2, v3, :cond_0

    .line 12
    .line 13
    new-array v2, v0, [B

    .line 14
    .line 15
    iget-object v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 22
    .line 23
    add-int/2addr v1, v0

    .line 24
    iput v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    new-array v2, v2, [J

    .line 33
    .line 34
    fill-array-data v2, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x76c34447dd8772b6L    # 1.2133721879326568E264
        -0x232acdff8d44638dL    # -1.5775312761972855E139
        0x5c76bcac6bc4dcaeL    # 2.6441818221247462E137
        0x19a41d81de4717edL    # 3.698438385961855E-185
        -0x3cf36c60720ade0dL    # -1.0054516048292464E15
    .end array-data
.end method

.method public readBytes([BII)V
    .locals 3

    .line 6
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int v1, v0, p3

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 7
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x4

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        0x75b36c0c94e22b50L    # 9.33193566077657E258
        0x26e9a8b7a130274L    # 5.84935652698375E-297
        -0x37b283de359ceef7L    # -2.0066376725752954E40
        -0x1c7a0189a8ba3cc5L    # -2.656144129779209E171
    .end array-data
.end method

.method public readBytes(I)[B
    .locals 4

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 2
    new-array v1, p1, [B

    .line 3
    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-object v1

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        -0x2fdc343e922b5c29L    # -1.146105481639014E78
        -0x5761fa8b0ad3a815L
        -0x3b82bb2a73423ecaL    # -8.638649655181019E21
        0x13fe654b7dda5084L
    .end array-data
.end method

.method public readMPINT()Ljava/math/BigInteger;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 14
    .line 15
    .line 16
    move-object v0, v1

    .line 17
    :goto_0
    return-object v0
.end method

.method public readNameList()[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2c

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/trilead/ssh2/util/Tokenizer;->parseTokens(Ljava/lang/String;C)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 6

    .line 6
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 7
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v2, v3, :cond_0

    .line 8
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x3

    new-array v5, v5, [J

    fill-array-data v5, :array_0

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-object v2

    .line 10
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 8
        0x762cfefad56d3000L    # 1.7833006691839133E261
        0x23868751b82b38e6L
        0x7ce3b8883679da9fL    # 3.9359624342630315E293
    .end array-data

    :array_1
    .array-data 8
        -0x5b76a943e792d727L
        0xa8db886bad445b3L
        -0x7206d8e89076de94L
        -0x6fc88867a6bb4659L
    .end array-data
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v2, v3, :cond_1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    invoke-direct {p1, v2, v1, v0}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    invoke-direct {v2, v3, v1, v0, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object p1, v2

    .line 4
    :goto_0
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        0x8ed175277701ebeL
        0x6e3ce988536a9325L    # 1.0451015580154988E223
        -0x2d1031beacfd0f51L    # -3.2394661554106498E91
        -0x2af28f3d72298c20L
    .end array-data
.end method

.method public readUINT32()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    add-int/lit8 v2, v0, 0x4

    .line 5
    .line 6
    iget v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    .line 7
    .line 8
    if-gt v2, v3, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    .line 11
    .line 12
    add-int/lit8 v3, v0, 0x1

    .line 13
    .line 14
    iput v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 15
    .line 16
    aget-byte v4, v2, v0

    .line 17
    .line 18
    and-int/lit16 v4, v4, 0xff

    .line 19
    .line 20
    shl-int/lit8 v4, v4, 0x18

    .line 21
    .line 22
    add-int/lit8 v5, v0, 0x2

    .line 23
    .line 24
    iput v5, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 25
    .line 26
    aget-byte v3, v2, v3

    .line 27
    .line 28
    and-int/lit16 v3, v3, 0xff

    .line 29
    .line 30
    shl-int/lit8 v3, v3, 0x10

    .line 31
    .line 32
    or-int/2addr v3, v4

    .line 33
    add-int/lit8 v4, v0, 0x3

    .line 34
    .line 35
    iput v4, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 36
    .line 37
    aget-byte v5, v2, v5

    .line 38
    .line 39
    and-int/lit16 v5, v5, 0xff

    .line 40
    .line 41
    shl-int/lit8 v5, v5, 0x8

    .line 42
    .line 43
    or-int/2addr v3, v5

    .line 44
    add-int/2addr v0, v1

    .line 45
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 46
    .line 47
    aget-byte v0, v2, v4

    .line 48
    .line 49
    and-int/lit16 v0, v0, 0xff

    .line 50
    .line 51
    or-int/2addr v0, v3

    .line 52
    return v0

    .line 53
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 54
    .line 55
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v1, v1, [J

    .line 58
    .line 59
    fill-array-data v1, :array_0

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :array_0
    .array-data 8
        0x38e075fb8d782553L    # 9.90702554594511E-35
        -0x10d5757d6339e5beL    # -3.143727785672494E227
        -0x7b628f4b2820552L    # -2.730227850228419E271
        -0x667d0124c14938f5L    # -8.731405661561993E-186
    .end array-data
.end method

.method public readUINT64()J
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 3
    .line 4
    add-int/lit8 v2, v1, 0x8

    .line 5
    .line 6
    iget v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    .line 7
    .line 8
    if-gt v2, v3, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x1

    .line 13
    .line 14
    iput v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 15
    .line 16
    aget-byte v4, v2, v1

    .line 17
    .line 18
    and-int/lit16 v4, v4, 0xff

    .line 19
    .line 20
    shl-int/lit8 v4, v4, 0x18

    .line 21
    .line 22
    add-int/lit8 v5, v1, 0x2

    .line 23
    .line 24
    iput v5, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 25
    .line 26
    aget-byte v3, v2, v3

    .line 27
    .line 28
    and-int/lit16 v3, v3, 0xff

    .line 29
    .line 30
    shl-int/lit8 v3, v3, 0x10

    .line 31
    .line 32
    or-int/2addr v3, v4

    .line 33
    add-int/lit8 v4, v1, 0x3

    .line 34
    .line 35
    iput v4, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 36
    .line 37
    aget-byte v5, v2, v5

    .line 38
    .line 39
    and-int/lit16 v5, v5, 0xff

    .line 40
    .line 41
    shl-int/lit8 v5, v5, 0x8

    .line 42
    .line 43
    or-int/2addr v3, v5

    .line 44
    add-int/2addr v0, v1

    .line 45
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 46
    .line 47
    aget-byte v4, v2, v4

    .line 48
    .line 49
    and-int/lit16 v4, v4, 0xff

    .line 50
    .line 51
    or-int/2addr v3, v4

    .line 52
    int-to-long v3, v3

    .line 53
    add-int/lit8 v5, v1, 0x5

    .line 54
    .line 55
    iput v5, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 56
    .line 57
    aget-byte v0, v2, v0

    .line 58
    .line 59
    and-int/lit16 v0, v0, 0xff

    .line 60
    .line 61
    shl-int/lit8 v0, v0, 0x18

    .line 62
    .line 63
    add-int/lit8 v6, v1, 0x6

    .line 64
    .line 65
    iput v6, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 66
    .line 67
    aget-byte v5, v2, v5

    .line 68
    .line 69
    and-int/lit16 v5, v5, 0xff

    .line 70
    .line 71
    shl-int/lit8 v5, v5, 0x10

    .line 72
    .line 73
    or-int/2addr v0, v5

    .line 74
    add-int/lit8 v5, v1, 0x7

    .line 75
    .line 76
    iput v5, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 77
    .line 78
    aget-byte v6, v2, v6

    .line 79
    .line 80
    and-int/lit16 v6, v6, 0xff

    .line 81
    .line 82
    shl-int/lit8 v6, v6, 0x8

    .line 83
    .line 84
    or-int/2addr v0, v6

    .line 85
    add-int/lit8 v1, v1, 0x8

    .line 86
    .line 87
    iput v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 88
    .line 89
    aget-byte v1, v2, v5

    .line 90
    .line 91
    and-int/lit16 v1, v1, 0xff

    .line 92
    .line 93
    or-int/2addr v0, v1

    .line 94
    int-to-long v0, v0

    .line 95
    const/16 v2, 0x20

    .line 96
    .line 97
    shl-long v2, v3, v2

    .line 98
    .line 99
    const-wide v4, 0xffffffffL

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    and-long/2addr v0, v4

    .line 105
    or-long/2addr v0, v2

    .line 106
    return-wide v0

    .line 107
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 108
    .line 109
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v0, v0, [J

    .line 112
    .line 113
    fill-array-data v0, :array_0

    .line 114
    .line 115
    .line 116
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v1

    .line 127
    :array_0
    .array-data 8
        0x2a7216b7e5f74e60L
        -0x7a6be24f64e915aL    # -5.337306502174376E271
        -0x5a46e590281401a4L    # -5.794448669889004E-127
        -0x4089590e20cb4f76L    # -0.00553030472955752
    .end array-data
.end method

.method public remain()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    .line 2
    .line 3
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method
