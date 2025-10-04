.class public Lcom/jcraft/jzlib/ZInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private buf:[B

.field private buf1:[B

.field protected compress:Z

.field protected deflater:Lcom/jcraft/jzlib/Deflater;

.field protected flush:I

.field protected iis:Lcom/jcraft/jzlib/InflaterInputStream;

.field protected in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jzlib/ZInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .line 9
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/jcraft/jzlib/ZInputStream;->flush:I

    const/4 v0, 0x1

    .line 11
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/jcraft/jzlib/ZInputStream;->buf1:[B

    const/16 v1, 0x200

    .line 12
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/jcraft/jzlib/ZInputStream;->buf:[B

    .line 13
    iput-object p1, p0, Lcom/jcraft/jzlib/ZInputStream;->in:Ljava/io/InputStream;

    .line 14
    new-instance p1, Lcom/jcraft/jzlib/Deflater;

    invoke-direct {p1}, Lcom/jcraft/jzlib/Deflater;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jzlib/ZInputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 15
    invoke-virtual {p1, p2}, Lcom/jcraft/jzlib/Deflater;->init(I)I

    .line 16
    iput-boolean v0, p0, Lcom/jcraft/jzlib/ZInputStream;->compress:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/jcraft/jzlib/ZInputStream;->flush:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/jcraft/jzlib/ZInputStream;->in:Ljava/io/InputStream;

    const/4 v1, 0x1

    .line 5
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/jcraft/jzlib/ZInputStream;->buf1:[B

    const/16 v1, 0x200

    .line 6
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/jcraft/jzlib/ZInputStream;->buf:[B

    .line 7
    new-instance v1, Lcom/jcraft/jzlib/InflaterInputStream;

    invoke-direct {v1, p1, p2}, Lcom/jcraft/jzlib/InflaterInputStream;-><init>(Ljava/io/InputStream;Z)V

    iput-object v1, p0, Lcom/jcraft/jzlib/ZInputStream;->iis:Lcom/jcraft/jzlib/InflaterInputStream;

    .line 8
    iput-boolean v0, p0, Lcom/jcraft/jzlib/ZInputStream;->compress:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/ZInputStream;->compress:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflater;->end()I

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->iis:Lcom/jcraft/jzlib/InflaterInputStream;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/jcraft/jzlib/InflaterInputStream;->close()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public getFlushMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/ZInputStream;->flush:I

    .line 2
    .line 3
    return v0
.end method

.method public getTotalIn()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/ZInputStream;->compress:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 6
    .line 7
    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->iis:Lcom/jcraft/jzlib/InflaterInputStream;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/jcraft/jzlib/InflaterInputStream;->getTotalIn()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public getTotalOut()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/ZInputStream;->compress:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    .line 6
    .line 7
    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->iis:Lcom/jcraft/jzlib/InflaterInputStream;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/jcraft/jzlib/InflaterInputStream;->getTotalOut()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->buf1:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jzlib/ZInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->buf1:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/jcraft/jzlib/ZInputStream;->compress:Z

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jzlib/ZStream;->setOutput([BII)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/jcraft/jzlib/ZInputStream;->in:Ljava/io/InputStream;

    iget-object p2, p0, Lcom/jcraft/jzlib/ZInputStream;->buf:[B

    array-length p3, p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/jcraft/jzlib/ZInputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    iget-object p3, p0, Lcom/jcraft/jzlib/ZInputStream;->buf:[B

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v0, p1, v1}, Lcom/jcraft/jzlib/ZStream;->setInput([BIIZ)V

    .line 7
    iget-object p1, p0, Lcom/jcraft/jzlib/ZInputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    iget p2, p0, Lcom/jcraft/jzlib/ZInputStream;->flush:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jzlib/Deflater;->deflate(I)I

    move-result p1

    .line 8
    iget-object p2, p0, Lcom/jcraft/jzlib/ZInputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    iget p2, p2, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    if-lez p2, :cond_1

    return p2

    :cond_1
    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    const/4 p2, -0x2

    if-eq p1, p2, :cond_3

    const/4 p2, -0x3

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    new-instance p1, Lcom/jcraft/jzlib/ZStreamException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jcraft/jzlib/ZInputStream;->deflater:Lcom/jcraft/jzlib/Deflater;

    iget-object p3, p3, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jcraft/jzlib/ZStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/jcraft/jzlib/ZInputStream;->iis:Lcom/jcraft/jzlib/InflaterInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jzlib/InflaterInputStream;->read([BII)I

    move-result p1

    return p1

    nop

    :array_0
    .array-data 8
        0x757dc073a80de89bL    # 8.934474990167084E257
        0x16846a9940d036L
        0x3854e47dbf88f3ebL    # 2.455906717007287E-37
    .end array-data
.end method

.method public setFlushMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jzlib/ZInputStream;->flush:I

    .line 2
    .line 3
    return-void
.end method

.method public skip(J)J
    .locals 4

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    int-to-long v1, v0

    .line 4
    cmp-long v3, p1, v1

    .line 5
    .line 6
    if-gez v3, :cond_0

    .line 7
    .line 8
    long-to-int v0, p1

    .line 9
    :cond_0
    new-array p1, v0, [B

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    int-to-long p1, p1

    .line 16
    return-wide p1
.end method
