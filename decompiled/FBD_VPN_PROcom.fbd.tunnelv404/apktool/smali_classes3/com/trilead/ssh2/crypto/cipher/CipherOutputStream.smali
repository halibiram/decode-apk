.class public Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final BUFF_SIZE:I

.field blockSize:I

.field bo:Ljava/io/OutputStream;

.field buffer:[B

.field currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

.field enc:[B

.field out_buffer:[B

.field out_buffer_pos:I

.field pos:I


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x800

    .line 5
    .line 6
    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->BUFF_SIZE:I

    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    .line 14
    .line 15
    iput-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private internal_write(I)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    const/16 p1, 0x800

    if-lt v2, p1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    :cond_0
    return-void
.end method

.method private internal_write([BII)V
    .locals 4

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    rsub-int v1, v0, 0x800

    if-le p3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, p3

    .line 2
    :goto_1
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 3
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    sub-int/2addr p3, v1

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    iput v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writeBlock()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    .line 4
    .line 5
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->enc:[B

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-interface {v0, v1, v3, v2, v3}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->enc:[B

    .line 12
    .line 13
    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    .line 14
    .line 15
    invoke-direct {p0, v0, v3, v1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->internal_write([BII)V

    .line 16
    .line 17
    .line 18
    iput v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/io/IOException;

    .line 23
    .line 24
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v3, 0x5

    .line 27
    new-array v3, v3, [J

    .line 28
    .line 29
    fill-array-data v3, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v1

    .line 43
    :array_0
    .array-data 8
        0x472f251c99aa3e5eL    # 8.085695885774179E34
        -0x481f57e696d10e75L    # -1.5296705910982245E-39
        0x22a76a8d80b23b11L    # 9.601274171155767E-142
        0x46ac4920ee86e79dL    # 2.8685065832375852E32
        -0x4a79024ff782f1f1L    # -7.681180757235537E-51
    .end array-data
.end method


# virtual methods
.method public changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    .line 8
    .line 9
    new-array v0, p1, [B

    .line 10
    .line 11
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    .line 12
    .line 13
    new-array p1, p1, [B

    .line 14
    .line 15
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->enc:[B

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    .line 19
    .line 20
    return-void
.end method

.method public flush()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 15
    .line 16
    .line 17
    iput v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 26
    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    .line 31
    new-array v2, v2, [J

    .line 32
    .line 33
    fill-array-data v2, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :array_0
    .array-data 8
        0x1b0ad7c3d89c10ddL    # 2.070050379942245E-178
        -0x1c458048c4225a9dL    # -2.5601488368454653E172
        0x79c4d19f00076d71L    # 3.690475915951854E278
        0x7e6cb9fe5ffd11L
        -0x5dc47887b9d0e649L    # -8.818512620176433E-144
        0x1b1f7cd02be89e4eL    # 4.85647844681231E-178
        -0x4ca8be2f390088e8L    # -2.2613943508912407E-61
        -0x78df44b2309359c8L    # -2.416311310616242E-274
    .end array-data
.end method

.method public write(I)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 8
    iget p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    if-lt v2, p1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->writeBlock()V

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 3

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    sub-int/2addr v0, v1

    .line 2
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 5
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    if-lt v1, v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->writeBlock()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writePlain(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->internal_write(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        -0x3f8bcb4015bc78c5L    # -323.29685427072735
        0x3a423b099bca6369L    # 4.602054316648185E-28
        0xe00560fe40cd423L    # 3.062414632406998E-241
        0xefd907409233a6bL
        -0x57c6fb75aefce4c8L
        -0x28ceaea3261900a7L    # -1.041194108565679E112
        0x522e6831be3c1929L    # 7.561056067569427E87
        -0x387264d6e8e91ab4L    # -4.9191564123703524E36
    .end array-data
.end method

.method public writePlain([BII)V
    .locals 1

    .line 4
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->internal_write([BII)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p3, 0x8

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        0x6a646b3266feed7cL    # 3.200928447124402E204
        0x3489f325c4998320L    # 1.3228930745363861E-55
        -0x3460caece09fba74L    # -1.9130033358718198E56
        -0x5480e7587bab9e94L    # -3.5542685793735263E-99
        -0x714f8fe51df2c09eL
        0x75a9671a75ec7cb7L    # 6.102769741090735E258
        0x499ed2c352acb27fL    # 4.3992473661217854E46
        -0x7e20cdbc735afb23L
    .end array-data
.end method
