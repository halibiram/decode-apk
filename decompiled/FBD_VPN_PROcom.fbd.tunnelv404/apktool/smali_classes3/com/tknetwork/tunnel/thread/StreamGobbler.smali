.class public Lcom/tknetwork/tunnel/thread/StreamGobbler;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/thread/StreamGobbler$OnLineListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/tknetwork/tunnel/thread/StreamGobbler$OnLineListener;

.field private final reader:Ljava/io/BufferedReader;

.field private writer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/tknetwork/tunnel/thread/StreamGobbler$OnLineListener;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/tknetwork/tunnel/thread/StreamGobbler;->reader:Ljava/io/BufferedReader;

    .line 6
    iput-object p2, p0, Lcom/tknetwork/tunnel/thread/StreamGobbler;->listener:Lcom/tknetwork/tunnel/thread/StreamGobbler$OnLineListener;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/tknetwork/tunnel/thread/StreamGobbler;->reader:Ljava/io/BufferedReader;

    .line 3
    iput-object p2, p0, Lcom/tknetwork/tunnel/thread/StreamGobbler;->writer:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/StreamGobbler;->reader:Ljava/io/BufferedReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/tknetwork/tunnel/thread/StreamGobbler;->writer:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v1, p0, Lcom/tknetwork/tunnel/thread/StreamGobbler;->listener:Lcom/tknetwork/tunnel/thread/StreamGobbler$OnLineListener;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v1, v0}, Lcom/tknetwork/tunnel/thread/StreamGobbler$OnLineListener;->onLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/StreamGobbler;->reader:Ljava/io/BufferedReader;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    .line 28
    .line 29
    :catch_1
    return-void
.end method
