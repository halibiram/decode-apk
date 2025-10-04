.class public Lcom/jcraft/jzlib/ZOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected buf:[B

.field private buf1:[B

.field protected bufsize:I

.field protected compress:Z

.field private dos:Lcom/jcraft/jzlib/DeflaterOutputStream;

.field private end:Z

.field protected flush:I

.field private inflater:Lcom/jcraft/jzlib/Inflater;

.field protected out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x200

    .line 2
    iput v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    .line 4
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    .line 5
    iput-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->end:Z

    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf1:[B

    .line 7
    iput-object p1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 8
    new-instance p1, Lcom/jcraft/jzlib/Inflater;

    invoke-direct {p1}, Lcom/jcraft/jzlib/Inflater;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jzlib/ZOutputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 9
    invoke-virtual {p1}, Lcom/jcraft/jzlib/Inflater;->init()I

    .line 10
    iput-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jzlib/ZOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 2

    .line 12
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x200

    .line 13
    iput v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    .line 15
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    .line 16
    iput-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->end:Z

    const/4 v0, 0x1

    .line 17
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf1:[B

    .line 18
    iput-object p1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 19
    new-instance v1, Lcom/jcraft/jzlib/Deflater;

    invoke-direct {v1, p2, p3}, Lcom/jcraft/jzlib/Deflater;-><init>(IZ)V

    .line 20
    new-instance p2, Lcom/jcraft/jzlib/DeflaterOutputStream;

    invoke-direct {p2, p1, v1}, Lcom/jcraft/jzlib/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lcom/jcraft/jzlib/Deflater;)V

    iput-object p2, p0, Lcom/jcraft/jzlib/ZOutputStream;->dos:Lcom/jcraft/jzlib/DeflaterOutputStream;

    .line 21
    iput-boolean v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catchall_0
    move-exception v1

    .line 7
    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZOutputStream;->end()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 16
    .line 17
    throw v1

    .line 18
    :catch_0
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZOutputStream;->end()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 27
    .line 28
    return-void
.end method

.method public declared-synchronized end()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->end:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->dos:Lcom/jcraft/jzlib/DeflaterOutputStream;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/jcraft/jzlib/DeflaterOutputStream;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflater;->end()I

    .line 23
    .line 24
    .line 25
    :catch_0
    :goto_0
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->end:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    throw v0
.end method

.method public finish()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    const-wide v3, 0x39610e527c193115L    # 2.627884588610731E-32

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    aput-wide v3, v2, v0

    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v1, v0, v0}, Lcom/jcraft/jzlib/ZOutputStream;->write([BII)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->dos:Lcom/jcraft/jzlib/DeflaterOutputStream;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/jcraft/jzlib/DeflaterOutputStream;->finish()V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZOutputStream;->flush()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getFlushMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    .line 2
    .line 3
    return v0
.end method

.method public getTotalIn()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->dos:Lcom/jcraft/jzlib/DeflaterOutputStream;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/jcraft/jzlib/DeflaterOutputStream;->getTotalIn()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 13
    .line 14
    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 15
    .line 16
    return-wide v0
.end method

.method public getTotalOut()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->dos:Lcom/jcraft/jzlib/DeflaterOutputStream;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/jcraft/jzlib/DeflaterOutputStream;->getTotalOut()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    .line 13
    .line 14
    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 15
    .line 16
    return-wide v0
.end method

.method public setFlushMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    .line 2
    .line 3
    return-void
.end method

.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf1:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lcom/jcraft/jzlib/ZOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->dos:Lcom/jcraft/jzlib/DeflaterOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jzlib/DeflaterOutputStream;->write([BII)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/jcraft/jzlib/ZStream;->setInput([BIIZ)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 6
    :cond_2
    iget-object p3, p0, Lcom/jcraft/jzlib/ZOutputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    iget v0, p3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-lez v0, :cond_4

    .line 7
    iget-object p2, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    array-length v0, p2

    invoke-virtual {p3, p2, p1, v0}, Lcom/jcraft/jzlib/ZStream;->setOutput([BII)V

    .line 8
    iget-object p2, p0, Lcom/jcraft/jzlib/ZOutputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    iget p3, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    invoke-virtual {p2, p3}, Lcom/jcraft/jzlib/Inflater;->inflate(I)I

    move-result p2

    .line 9
    iget-object p3, p0, Lcom/jcraft/jzlib/ZOutputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    iget p3, p3, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    if-lez p3, :cond_3

    .line 10
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    invoke-virtual {v0, v1, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_3
    if-eqz p2, :cond_2

    :cond_4
    if-nez p2, :cond_5

    return-void

    .line 11
    :cond_5
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

    iget-object p3, p0, Lcom/jcraft/jzlib/ZOutputStream;->inflater:Lcom/jcraft/jzlib/Inflater;

    iget-object p3, p3, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jcraft/jzlib/ZStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        0x5379acd4bd29938cL    # 1.3389093236566943E94
        0x5618d8060470f14fL    # 5.697931682419659E106
        -0x75933b0b8db2f1d5L
    .end array-data
.end method
