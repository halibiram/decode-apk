.class Lcom/trilead/ssh2/channel/FifoBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/channel/FifoBuffer$Page;,
        Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;
    }
.end annotation


# instance fields
.field private closed:Z

.field private limit:I

.field private final lock:Ljava/lang/Object;

.field private final pageSize:I

.field private r:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

.field private sz:I

.field private w:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/trilead/ssh2/channel/FifoBuffer;-><init>(Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    move-object p1, p0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->limit:I

    .line 5
    iput p2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->pageSize:I

    .line 6
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->newPage()Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;-><init>(Lcom/trilead/ssh2/channel/FifoBuffer;Lcom/trilead/ssh2/channel/FifoBuffer$Page;I)V

    iput-object p2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->r:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    .line 8
    new-instance p2, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    invoke-direct {p2, p0, p1, p3}, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;-><init>(Lcom/trilead/ssh2/channel/FifoBuffer;Lcom/trilead/ssh2/channel/FifoBuffer$Page;I)V

    iput-object p2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->w:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    return-void
.end method

.method private newPage()Lcom/trilead/ssh2/channel/FifoBuffer$Page;
    .locals 2

    .line 1
    new-instance v0, Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    .line 2
    .line 3
    iget v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->pageSize:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/FifoBuffer$Page;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private releaseRing()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->w:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->r:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/channel/FifoBuffer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->pageSize:I

    return p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/trilead/ssh2/channel/FifoBuffer;)Lcom/trilead/ssh2/channel/FifoBuffer$Page;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->newPage()Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->closed:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->closed:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->releaseRing()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public read([BII)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->r:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    .line 19
    .line 20
    invoke-virtual {v3, p1, p2, v2}, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->read([BII)V

    .line 21
    .line 22
    .line 23
    add-int/2addr p2, v2

    .line 24
    sub-int/2addr p3, v2

    .line 25
    add-int/2addr v0, v2

    .line 26
    iget v3, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->sz:I

    .line 27
    .line 28
    sub-int/2addr v3, v2

    .line 29
    iput v3, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->sz:I

    .line 30
    .line 31
    iget-object v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 34
    .line 35
    .line 36
    monitor-exit v1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    if-lez v0, :cond_2

    .line 41
    .line 42
    monitor-exit v1

    .line 43
    return v0

    .line 44
    :cond_2
    iget-boolean v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->closed:Z

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->releaseRing()V

    .line 49
    .line 50
    .line 51
    monitor-exit v1

    .line 52
    const/4 p1, -0x1

    .line 53
    return p1

    .line 54
    :cond_3
    iget-object v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1
.end method

.method public readable()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->sz:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public setLimit(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput p1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->limit:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public writable()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->limit:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public write([BII)V
    .locals 3

    .line 1
    :goto_0
    if-lez p3, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->writable()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->w:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    .line 25
    .line 26
    invoke-virtual {v2, p1, p2, v1}, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->write([BII)V

    .line 27
    .line 28
    .line 29
    add-int/2addr p2, v1

    .line 30
    sub-int/2addr p3, v1

    .line 31
    iget v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->sz:I

    .line 32
    .line 33
    add-int/2addr v2, v1

    .line 34
    iput v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->sz:I

    .line 35
    .line 36
    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    goto :goto_0

    .line 43
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p1

    .line 45
    :cond_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-lez v2, :cond_0

    .line 8
    .line 9
    const/16 v2, 0x400

    .line 10
    .line 11
    new-array v3, v2, [B

    .line 12
    .line 13
    invoke-virtual {p0, v3, v0, v2}, Lcom/trilead/ssh2/channel/FifoBuffer;->read([BII)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1, v3, v0, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    add-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    return v1

    .line 25
    :goto_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method
