.class public Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final BUFF_SIZE:I

.field bi:Ljava/io/InputStream;

.field blockSize:I

.field buffer:[B

.field currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

.field enc:[B

.field input_buffer:[B

.field input_buffer_pos:I

.field input_buffer_size:I

.field pos:I


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x800

    .line 5
    .line 6
    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->BUFF_SIZE:I

    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer:[B

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    .line 14
    .line 15
    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer_size:I

    .line 16
    .line 17
    iput-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->bi:Ljava/io/InputStream;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private fill_buffer()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->bi:Ljava/io/InputStream;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer:[B

    .line 7
    .line 8
    const/16 v3, 0x800

    .line 9
    .line 10
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer_size:I

    .line 15
    .line 16
    return v0
.end method

.method private getBlock()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    iget-object v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->enc:[B

    .line 8
    .line 9
    sub-int/2addr v2, v1

    .line 10
    invoke-direct {p0, v3, v1, v2}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->internal_read([BII)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ltz v2, :cond_0

    .line 15
    .line 16
    add-int/2addr v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 19
    .line 20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v2, 0x6

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
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->enc:[B

    .line 42
    .line 43
    iget-object v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->buffer:[B

    .line 44
    .line 45
    invoke-interface {v1, v2, v0, v3, v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    new-instance v0, Ljava/io/IOException;

    .line 52
    .line 53
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    new-array v2, v2, [J

    .line 57
    .line 58
    fill-array-data v2, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    nop

    .line 73
    :array_0
    .array-data 8
        -0x69fba29ddd024d67L
        0x3007bacc9e157158L
        -0x44e3cdb822853bfcL    # -5.8308807326618584E-24
        -0x6f75e745ee810f9eL
        -0x62661e29682ce965L    # -4.389178738625297E-166
        0xb3fe4686e1713b6L
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 8
        0x1ae660f764b8f1bbL
        -0x13a8aff21cac3c61L    # -7.84819410568736E213
        0x5a83053b5b13f693L    # 1.030027130713041E128
        0x180d86d2c9ad3ebcL
        -0x5ad14790fc7f70bfL
    .end array-data
.end method

.method private internal_read([BII)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer_size:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    .line 8
    .line 9
    if-lt v2, v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->fill_buffer()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gtz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer_size:I

    .line 19
    .line 20
    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    .line 21
    .line 22
    sub-int/2addr v0, v1

    .line 23
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer:[B

    .line 28
    .line 29
    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    .line 30
    .line 31
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    .line 35
    .line 36
    add-int/2addr p1, p3

    .line 37
    iput p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->input_buffer_pos:I

    .line 38
    .line 39
    return p3
.end method


# virtual methods
.method public changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    .line 8
    .line 9
    new-array v0, p1, [B

    .line 10
    .line 11
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->buffer:[B

    .line 12
    .line 13
    new-array v0, p1, [B

    .line 14
    .line 15
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->enc:[B

    .line 16
    .line 17
    iput p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    .line 18
    .line 19
    return-void
.end method

.method public read()I
    .locals 3

    .line 8
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    if-lt v0, v1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->getBlock()V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->buffer:[B

    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-lez p3, :cond_1

    .line 2
    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    if-lt v1, v2, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->getBlock()V

    .line 4
    :cond_0
    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    sub-int/2addr v1, v2

    .line 5
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->buffer:[B

    iget v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public readPlain([BII)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->pos:I

    .line 2
    .line 3
    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->blockSize:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-ge v0, p3, :cond_1

    .line 9
    .line 10
    add-int v1, p2, v0

    .line 11
    .line 12
    sub-int v2, p3, v0

    .line 13
    .line 14
    invoke-direct {p0, p1, v1, v2}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->internal_read([BII)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ltz v1, :cond_0

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 23
    .line 24
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 p3, 0x5

    .line 27
    new-array p3, p3, [J

    .line 28
    .line 29
    fill-array-data p3, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    return v0

    .line 44
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 45
    .line 46
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/16 p3, 0x8

    .line 49
    .line 50
    new-array p3, p3, [J

    .line 51
    .line 52
    fill-array-data p3, :array_1

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x7730392604d1ab97L    # 1.3077769549922284E266
        0xc7bdacf4be2e35dL
        0x67195a7e90b122d7L    # 4.4126056518665443E188
        -0x374bcd578b032aacL    # -1.759483754719048E42
        -0x7578a247711e9fa0L    # -6.078828724977585E-258
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_1
    .array-data 8
        -0x2f771e08d5d9cfb2L    # -9.219895151215154E79
        0x499f4d6c8419b19eL    # 4.467633108853297E46
        0x56c784783bde6cddL    # 1.1046351072725917E110
        0x1982a0c96bec5130L    # 8.562500811407642E-186
        -0x7798ab1397b8f054L
        0x2c54e3972f3048cdL    # 3.911826296418082E-95
        -0x28faa2cdc52f2386L
        -0x64031608e882acb6L    # -7.306503365228495E-174
    .end array-data
.end method
