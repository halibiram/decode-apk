.class final Lcom/trilead/ssh2/Connection$PumpThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PumpThread"
.end annotation


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/trilead/ssh2/Connection$PumpThread;->in:Ljava/io/InputStream;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/trilead/ssh2/Connection$PumpThread;->out:Ljava/io/OutputStream;

    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x1113f225c1d3015cL    # -2.0768411382874306E226
        0x3ca91b7ac51c963fL    # 1.7421718284002902E-16
        0x72aabf31cee3a20L
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection$PumpThread;->in:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gez v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/trilead/ssh2/Connection$PumpThread;->in:Ljava/io/InputStream;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/Connection$PumpThread;->out:Ljava/io/OutputStream;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
