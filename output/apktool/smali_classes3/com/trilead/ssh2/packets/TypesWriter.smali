.class public Lcom/trilead/ssh2/packets/TypesWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field arr:[B

.field pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 12
    .line 13
    return-void
.end method

.method private resize(I)V
    .locals 3

    .line 1
    new-array p1, p1, [B

    .line 2
    .line 3
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    array-length v2, v0

    .line 7
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getBytes([B)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getBytes()[B
    .locals 4

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    new-array v1, v0, [B

    .line 2
    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 2
    .line 3
    return v0
.end method

.method public writeBoolean(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-le v0, v2, :cond_0

    .line 9
    .line 10
    array-length v0, v1

    .line 11
    add-int/lit8 v0, v0, 0x20

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    .line 17
    .line 18
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 19
    .line 20
    add-int/lit8 v2, v1, 0x1

    .line 21
    .line 22
    iput v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 23
    .line 24
    aput-byte p1, v0, v1

    .line 25
    .line 26
    return-void
.end method

.method public writeByte(I)V
    .locals 1

    .line 4
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(II)V

    .line 5
    iget p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    return-void
.end method

.method public writeByte(II)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 1
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x20

    .line 2
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    int-to-byte p1, p1

    aput-byte p1, v0, p2

    return-void
.end method

.method public writeBytes([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([BII)V

    return-void
.end method

.method public writeBytes([BII)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 3
    array-length v0, v1

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x20

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    iget v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    return-void
.end method

.method public writeMPInt(Ljava/math/BigInteger;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    aget-byte v0, p1, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    array-length v0, p1

    .line 19
    invoke-virtual {p0, p1, v2, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public writeNameList([Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    const/16 v2, 0x2c

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    :cond_0
    aget-object v2, p1, v1

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2

    .line 3
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 5
    :goto_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const/4 v0, 0x0

    .line 6
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([BII)V

    return-void

    :array_0
    .array-data 8
        0x87091a279e7026fL
        0x5e0584f96cde24ffL    # 8.397281537693629E144
        -0x46ed13a400c9dd52L    # -9.111227303234983E-34
    .end array-data
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 8
    :goto_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const/4 p2, 0x0

    .line 9
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([BII)V

    return-void
.end method

.method public writeString([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([BII)V

    return-void
.end method

.method public writeUINT32(I)V
    .locals 1

    .line 7
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(II)V

    .line 8
    iget p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    return-void
.end method

.method public writeUINT32(II)V
    .locals 4

    add-int/lit8 v0, p2, 0x4

    .line 1
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x20

    .line 2
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, p2

    add-int/lit8 v2, p2, 0x2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 4
    aput-byte v3, v0, v1

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 5
    aput-byte v1, v0, v2

    int-to-byte p1, p1

    .line 6
    aput-byte p1, v0, p2

    return-void
.end method

.method public writeUINT64(J)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    .line 7
    .line 8
    array-length v3, v2

    .line 9
    const/16 v4, 0x20

    .line 10
    .line 11
    if-le v0, v3, :cond_0

    .line 12
    .line 13
    array-length v0, v2

    .line 14
    add-int/2addr v0, v4

    .line 15
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    .line 19
    .line 20
    iget v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 21
    .line 22
    add-int/lit8 v3, v2, 0x1

    .line 23
    .line 24
    iput v3, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 25
    .line 26
    const/16 v5, 0x38

    .line 27
    .line 28
    shr-long v5, p1, v5

    .line 29
    .line 30
    long-to-int v6, v5

    .line 31
    int-to-byte v5, v6

    .line 32
    aput-byte v5, v0, v2

    .line 33
    .line 34
    add-int/lit8 v5, v2, 0x2

    .line 35
    .line 36
    iput v5, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 37
    .line 38
    const/16 v6, 0x30

    .line 39
    .line 40
    shr-long v6, p1, v6

    .line 41
    .line 42
    long-to-int v7, v6

    .line 43
    int-to-byte v6, v7

    .line 44
    aput-byte v6, v0, v3

    .line 45
    .line 46
    add-int/lit8 v3, v2, 0x3

    .line 47
    .line 48
    iput v3, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 49
    .line 50
    const/16 v6, 0x28

    .line 51
    .line 52
    shr-long v6, p1, v6

    .line 53
    .line 54
    long-to-int v7, v6

    .line 55
    int-to-byte v6, v7

    .line 56
    aput-byte v6, v0, v5

    .line 57
    .line 58
    add-int/lit8 v5, v2, 0x4

    .line 59
    .line 60
    iput v5, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 61
    .line 62
    shr-long v6, p1, v4

    .line 63
    .line 64
    long-to-int v4, v6

    .line 65
    int-to-byte v4, v4

    .line 66
    aput-byte v4, v0, v3

    .line 67
    .line 68
    add-int/lit8 v3, v2, 0x5

    .line 69
    .line 70
    iput v3, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 71
    .line 72
    const/16 v4, 0x18

    .line 73
    .line 74
    shr-long v6, p1, v4

    .line 75
    .line 76
    long-to-int v4, v6

    .line 77
    int-to-byte v4, v4

    .line 78
    aput-byte v4, v0, v5

    .line 79
    .line 80
    add-int/lit8 v4, v2, 0x6

    .line 81
    .line 82
    iput v4, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 83
    .line 84
    const/16 v5, 0x10

    .line 85
    .line 86
    shr-long v5, p1, v5

    .line 87
    .line 88
    long-to-int v6, v5

    .line 89
    int-to-byte v5, v6

    .line 90
    aput-byte v5, v0, v3

    .line 91
    .line 92
    add-int/lit8 v3, v2, 0x7

    .line 93
    .line 94
    iput v3, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 95
    .line 96
    shr-long v5, p1, v1

    .line 97
    .line 98
    long-to-int v6, v5

    .line 99
    int-to-byte v5, v6

    .line 100
    aput-byte v5, v0, v4

    .line 101
    .line 102
    add-int/2addr v2, v1

    .line 103
    iput v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 104
    .line 105
    long-to-int p2, p1

    .line 106
    int-to-byte p1, p2

    .line 107
    aput-byte p1, v0, v3

    .line 108
    .line 109
    return-void
.end method
