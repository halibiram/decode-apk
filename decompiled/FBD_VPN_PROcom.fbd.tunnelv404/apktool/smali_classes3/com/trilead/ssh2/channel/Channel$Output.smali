.class Lcom/trilead/ssh2/channel/Channel$Output;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/channel/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Output"
.end annotation


# instance fields
.field buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

.field sink:Ljava/io/OutputStream;

.field stream:Lcom/trilead/ssh2/channel/ChannelInputStream;

.field final synthetic this$0:Lcom/trilead/ssh2/channel/Channel;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel$Output;->this$0:Lcom/trilead/ssh2/channel/Channel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 7
    .line 8
    const/16 v1, 0x800

    .line 9
    .line 10
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelBufferSize:I

    .line 11
    .line 12
    invoke-direct {v0, p1, v1, v2}, Lcom/trilead/ssh2/channel/FifoBuffer;-><init>(Ljava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->this$0:Lcom/trilead/ssh2/channel/Channel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->isEOF()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    .line 24
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v3, 0x5

    .line 34
    new-array v3, v3, [J

    .line 35
    .line 36
    fill-array-data v3, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/trilead/ssh2/channel/Channel$Output;->sink:Ljava/io/OutputStream;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        0x64e3aae1fe041cdeL    # 9.962236639186915E177
        -0x68bf20f9cf948618L
        -0x38057b60a1e7bb86L    # -5.6397669494110544E38
        0x1eb11235392e08e9L    # 7.588998324310732E-161
        0x3ca0e8bbfb4c9f17L    # 1.1733057839302914E-16
    .end array-data
.end method

.method public eof()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/FifoBuffer;->close()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->sink:Ljava/io/OutputStream;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/trilead/ssh2/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public pipeTo(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel$Output;->sink:Ljava/io/OutputStream;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->this$0:Lcom/trilead/ssh2/channel/Channel;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/channel/FifoBuffer;->writeTo(Ljava/io/OutputStream;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel;->freeupWindow(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel$Output;->stream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 26
    .line 27
    return-void
.end method

.method public read([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/trilead/ssh2/channel/FifoBuffer;->read([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public readable()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public write([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/trilead/ssh2/channel/FifoBuffer;->write([BII)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->sink:Ljava/io/OutputStream;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel$Output;->this$0:Lcom/trilead/ssh2/channel/Channel;

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-virtual {p1, p3, p2}, Lcom/trilead/ssh2/channel/Channel;->freeupWindow(IZ)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
