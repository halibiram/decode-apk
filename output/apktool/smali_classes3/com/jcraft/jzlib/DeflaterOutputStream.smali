.class public Lcom/jcraft/jzlib/DeflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# static fields
.field protected static final DEFAULT_BUFSIZE:I = 0x200


# instance fields
.field private final buf1:[B

.field protected buffer:[B

.field private close_out:Z

.field private closed:Z

.field protected final deflater:Lcom/jcraft/jzlib/Deflater;

.field protected mydeflater:Z

.field private syncFlush:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/jcraft/jzlib/Deflater;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/jcraft/jzlib/Deflater;-><init>(I)V

    const/16 v1, 0x200

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jcraft/jzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcom/jcraft/jzlib/Deflater;IZ)V

    .line 2
    iput-boolean v2, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->mydeflater:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/jcraft/jzlib/Deflater;)V
    .locals 2

    const/16 v0, 0x200

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jcraft/jzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcom/jcraft/jzlib/Deflater;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/jcraft/jzlib/Deflater;I)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcom/jcraft/jzlib/Deflater;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/jcraft/jzlib/Deflater;IZ)V
    .locals 3

    .line 5
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->closed:Z

    .line 7
    iput-boolean v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->syncFlush:Z

    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->buf1:[B

    .line 9
    iput-boolean v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->mydeflater:Z

    .line 10
    iput-boolean v1, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->close_out:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-lez p3, :cond_0

    .line 11
    iput-object p2, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 12
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->buffer:[B

    .line 13
    iput-boolean p4, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->close_out:Z

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x6

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 15
    throw p1

    nop

    :array_0
    .array-data 8
        -0x7dc3a9da3af0571bL
        -0x6dd7e02c9c6e72e8L
        -0x26dd07e13484daf8L    # -2.449163287687221E121
        0x2829876314d314a2L    # 3.239537535742553E-115
        -0x40328c20239d46deL    # -0.23009870778100444
        0xf09e19c26abf2b1L
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jcraft/jzlib/DeflaterOutputStream;->finish()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->mydeflater:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflater;->end()I

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->close_out:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->closed:Z

    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public deflate(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->buffer:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v3, v2}, Lcom/jcraft/jzlib/ZStream;->setOutput([BII)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/jcraft/jzlib/Deflater;->deflate(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x5

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    if-ne v0, p1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 26
    .line 27
    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 28
    .line 29
    if-gtz v1, :cond_3

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    if-eq p1, v1, :cond_3

    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 35
    .line 36
    iget p1, p1, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 37
    .line 38
    if-lez p1, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->buffer:[B

    .line 43
    .line 44
    invoke-virtual {v1, v2, v3, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return v0

    .line 48
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v3, 0x5

    .line 58
    new-array v3, v3, [J

    .line 59
    .line 60
    fill-array-data v3, :array_0

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/4 v2, 0x3

    .line 79
    new-array v2, v2, [J

    .line 80
    .line 81
    fill-array-data v2, :array_1

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 95
    .line 96
    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :array_0
    .array-data 8
        0x4984b63603e15fefL    # 1.47804070533089E46
        0xf9f573f1f94a1a8L
        0x5021367bf6fba9b2L    # 9.965547188306292E77
        0x7c1e83f693da01b2L    # 7.434573668604434E289
        -0x25618ac4c08728a4L    # -3.298820084247884E128
    .end array-data

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
    .line 132
    .line 133
    :array_1
    .array-data 8
        0x3f9de5d71cd8de97L    # 0.02919708360260972
        -0x33067e7556a4f54dL    # -6.557855552246528E62
        -0x1a19956190fe30d4L    # -7.441402622489838E182
    .end array-data
.end method

.method public finish()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflater;->finished()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflate(I)I

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->syncFlush:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflater;->finished()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflate(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 19
    .line 20
    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 21
    .line 22
    iget-object v2, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->buffer:[B

    .line 23
    .line 24
    array-length v2, v2

    .line 25
    if-ge v1, v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x1

    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    :cond_2
    :goto_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public getDeflater()Lcom/jcraft/jzlib/Deflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSyncFlush()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->syncFlush:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTotalIn()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->getTotalIn()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getTotalOut()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->getTotalOut()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public setSyncFlush(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->syncFlush:Z

    .line 2
    .line 3
    return-void
.end method

.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->buf1:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lcom/jcraft/jzlib/DeflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6

    const/4 v0, 0x2

    .line 3
    iget-object v1, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {v1}, Lcom/jcraft/jzlib/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-gez p3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v3, v4

    add-int v4, p2, p3

    .line 4
    array-length v5, p1

    if-le v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    or-int/2addr v3, v4

    if-nez v3, :cond_7

    if-nez p3, :cond_3

    return-void

    .line 5
    :cond_3
    iget-boolean v3, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->syncFlush:Z

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_3
    iget-object v1, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/jcraft/jzlib/ZStream;->setInput([BIIZ)V

    .line 7
    :cond_5
    iget-object p1, p0, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    iget p1, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-lez p1, :cond_6

    .line 8
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/DeflaterOutputStream;->deflate(I)I

    move-result p1

    if-ne p1, v2, :cond_5

    :cond_6
    return-void

    .line 9
    :cond_7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 10
    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        -0x18d231134401cb42L
        0xc1e2e83f3f75924L
    .end array-data
.end method
