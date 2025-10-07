.class public Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/utils/StatisticsGraphData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataTransferStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;
    }
.end annotation


# static fields
.field public static final FAST_BUCKET_PERIOD_MILLISECONDS:J = 0x3e8L

.field public static final MAX_BUCKETS:I = 0x120

.field public static final SLOW_BUCKET_PERIOD_MILLISECONDS:J = 0x493e0L


# instance fields
.field private mLastReceived:J

.field private mLastSent:J

.field private mReceived:J

.field private mSent:J

.field private m_connectedTime:J

.field private m_fastBuckets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private m_fastBucketsLastStartTime:J

.field private m_isConnected:Z

.field private m_slowBuckets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private m_slowBucketsLastStartTime:J

.field private m_totalBytesReceived:J

.field private m_totalBytesSent:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_totalBytesSent:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_totalBytesReceived:J

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->stop()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private addReceivedToBuckets(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_slowBuckets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;

    .line 14
    .line 15
    iget-wide v1, v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;->m_bytesReceived:J

    .line 16
    .line 17
    add-long/2addr v1, p1

    .line 18
    iput-wide v1, v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;->m_bytesReceived:J

    .line 19
    .line 20
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_fastBuckets:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;

    .line 33
    .line 34
    iget-wide v1, v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;->m_bytesReceived:J

    .line 35
    .line 36
    add-long/2addr v1, p1

    .line 37
    iput-wide v1, v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;->m_bytesReceived:J

    .line 38
    .line 39
    return-void
.end method

.method private addSentToBuckets(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_slowBuckets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;

    .line 14
    .line 15
    iget-wide v1, v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;->m_bytesSent:J

    .line 16
    .line 17
    add-long/2addr v1, p1

    .line 18
    iput-wide v1, v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;->m_bytesSent:J

    .line 19
    .line 20
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_fastBuckets:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;

    .line 33
    .line 34
    iget-wide v1, v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;->m_bytesSent:J

    .line 35
    .line 36
    add-long/2addr v1, p1

    .line 37
    iput-wide v1, v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;->m_bytesSent:J

    .line 38
    .line 39
    return-void
.end method

.method private bucketStartTime(JJ)J
    .locals 0

    .line 1
    div-long/2addr p1, p3

    .line 2
    mul-long p1, p1, p3

    .line 3
    .line 4
    return-wide p1
.end method

.method private getReceivedSeries(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;

    .line 18
    .line 19
    iget-wide v2, v2, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;->m_bytesReceived:J

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object v0
.end method

.method private getSentSeries(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;

    .line 18
    .line 19
    iget-wide v2, v2, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;->m_bytesSent:J

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object v0
.end method

.method private manageBuckets()V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_slowBucketsLastStartTime:J

    .line 6
    .line 7
    sub-long v5, v0, v2

    .line 8
    .line 9
    const-wide/32 v2, 0x493e0

    .line 10
    .line 11
    .line 12
    cmp-long v4, v5, v2

    .line 13
    .line 14
    if-ltz v4, :cond_0

    .line 15
    .line 16
    const-wide/32 v7, 0x493e0

    .line 17
    .line 18
    .line 19
    iget-object v9, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_slowBuckets:Ljava/util/ArrayList;

    .line 20
    .line 21
    move-object v4, p0

    .line 22
    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->shiftBuckets(JJLjava/util/ArrayList;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->bucketStartTime(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    iput-wide v2, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_slowBucketsLastStartTime:J

    .line 30
    .line 31
    :cond_0
    iget-wide v2, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_fastBucketsLastStartTime:J

    .line 32
    .line 33
    sub-long v5, v0, v2

    .line 34
    .line 35
    const-wide/16 v2, 0x3e8

    .line 36
    .line 37
    cmp-long v4, v5, v2

    .line 38
    .line 39
    if-ltz v4, :cond_1

    .line 40
    .line 41
    const-wide/16 v7, 0x3e8

    .line 42
    .line 43
    iget-object v9, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_fastBuckets:Ljava/util/ArrayList;

    .line 44
    .line 45
    move-object v4, p0

    .line 46
    invoke-direct/range {v4 .. v9}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->shiftBuckets(JJLjava/util/ArrayList;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->bucketStartTime(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iput-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_fastBucketsLastStartTime:J

    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method private newBuckets()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    const/16 v3, 0x120

    .line 9
    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    new-instance v3, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;

    .line 13
    .line 14
    invoke-direct {v3, p0, v1}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;-><init>(Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method

.method private resetBytesTransferred()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x493e0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->bucketStartTime(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iput-wide v2, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_slowBucketsLastStartTime:J

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->newBuckets()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_slowBuckets:Ljava/util/ArrayList;

    .line 19
    .line 20
    const-wide/16 v2, 0x3e8

    .line 21
    .line 22
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->bucketStartTime(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_fastBucketsLastStartTime:J

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->newBuckets()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_fastBuckets:Ljava/util/ArrayList;

    .line 33
    .line 34
    return-void
.end method

.method private shiftBuckets(JJLjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList<",
            "Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    int-to-long v2, v1

    .line 4
    div-long v4, p1, p3

    .line 5
    .line 6
    const-wide/16 v6, 0x1

    .line 7
    .line 8
    add-long/2addr v4, v6

    .line 9
    cmp-long v6, v2, v4

    .line 10
    .line 11
    if-gez v6, :cond_1

    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    new-instance v3, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;

    .line 18
    .line 19
    invoke-direct {v3, p0, v0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;-><init>(Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p5, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x120

    .line 30
    .line 31
    if-lt v2, v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized addBytesReceived(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_totalBytesReceived:J

    .line 3
    .line 4
    add-long/2addr v0, p1

    .line 5
    iput-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_totalBytesReceived:J

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->manageBuckets()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->addReceivedToBuckets(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method

.method public declared-synchronized addBytesSent(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_totalBytesSent:J

    .line 3
    .line 4
    add-long/2addr v0, p1

    .line 5
    iput-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_totalBytesSent:J

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->manageBuckets()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->addSentToBuckets(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method

.method public byteCountNoDisplaySize(JZ)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    const/16 v3, 0x3e8

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v3, 0x400

    .line 10
    .line 11
    :goto_0
    new-instance v4, Ljava/text/DecimalFormat;

    .line 12
    .line 13
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v6, v2, [J

    .line 16
    .line 17
    fill-array-data v6, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    int-to-long v5, v3

    .line 31
    cmp-long v7, p1, v5

    .line 32
    .line 33
    if-gez v7, :cond_1

    .line 34
    .line 35
    long-to-double p1, p1

    .line 36
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    .line 37
    .line 38
    div-double/2addr p1, v0

    .line 39
    invoke-virtual {v4, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_1
    long-to-double p1, p1

    .line 45
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    int-to-double v6, v3

    .line 50
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    .line 51
    .line 52
    .line 53
    move-result-wide v8

    .line 54
    div-double/2addr v4, v8

    .line 55
    double-to-int v3, v4

    .line 56
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v5, v2, [J

    .line 59
    .line 60
    if-eqz p3, :cond_2

    .line 61
    .line 62
    fill-array-data v5, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    fill-array-data v5, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_2
    add-int/lit8 v5, v3, -0x1

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    if-eqz p3, :cond_3

    .line 86
    .line 87
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v4, v1, [J

    .line 90
    .line 91
    const-wide v8, -0x49328145e063d657L    # -1.0332834191852366E-44

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    aput-wide v8, v4, v0

    .line 97
    .line 98
    invoke-direct {p3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    :goto_3
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_3
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array v4, v2, [J

    .line 108
    .line 109
    fill-array-data v4, :array_3

    .line 110
    .line 111
    .line 112
    invoke-direct {p3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :goto_4
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v2, v2, [J

    .line 119
    .line 120
    fill-array-data v2, :array_4

    .line 121
    .line 122
    .line 123
    invoke-direct {p3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    int-to-double v2, v3

    .line 131
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 132
    .line 133
    .line 134
    move-result-wide v2

    .line 135
    div-double/2addr p1, v2

    .line 136
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    new-array p2, v1, [Ljava/lang/Object;

    .line 141
    .line 142
    aput-object p1, p2, v0

    .line 143
    .line 144
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    return-object p1

    .line 149
    :array_0
    .array-data 8
        0x331de1cec5084746L    # 1.8159816800043247E-62
        -0x4116d936aedb4e91L    # -1.1993174244461569E-5
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_1
    .array-data 8
        0x7c016d4bb0f7a4daL    # 2.122887069954356E289
        0x73e0d76f0afd33fcL    # 1.5072599761286864E250
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_2
    .array-data 8
        -0x3444c122f3accbdL    # -6.911307472832312E292
        -0x6a23bd117fe8fc5fL
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_3
    .array-data 8
        0x4d02ed80273401f7L    # 9.733024068394376E62
        0x73534f664d65a899L    # 3.375376384364335E247
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_4
    .array-data 8
        -0x79665404d3dbdec2L    # -7.241029905000021E-277
        0x1c3e7d15222e3555L
    .end array-data
.end method

.method public byteCountToDisplaySize(JZ)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    const/16 v3, 0x3e8

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v3, 0x400

    .line 10
    .line 11
    :goto_0
    int-to-long v4, v3

    .line 12
    cmp-long v6, p1, v4

    .line 13
    .line 14
    if-gez v6, :cond_1

    .line 15
    .line 16
    new-instance p3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array p2, v2, [J

    .line 27
    .line 28
    fill-array-data p2, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_1
    long-to-double p1, p1

    .line 40
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    int-to-double v6, v3

    .line 45
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v8

    .line 49
    div-double/2addr v4, v8

    .line 50
    double-to-int v3, v4

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v8, v2, [J

    .line 59
    .line 60
    if-eqz p3, :cond_2

    .line 61
    .line 62
    fill-array-data v8, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    fill-array-data v8, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_2
    add-int/lit8 v8, v3, -0x1

    .line 81
    .line 82
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    if-eqz p3, :cond_3

    .line 90
    .line 91
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v5, v1, [J

    .line 94
    .line 95
    const-wide v8, -0x4f25c8f794d7862cL    # -2.3183044469812445E-73

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    aput-wide v8, v5, v0

    .line 101
    .line 102
    invoke-direct {p3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    :goto_3
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    goto :goto_4

    .line 110
    :cond_3
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v5, v2, [J

    .line 113
    .line 114
    fill-array-data v5, :array_3

    .line 115
    .line 116
    .line 117
    invoke-direct {p3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :goto_4
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v5, v2, [J

    .line 131
    .line 132
    fill-array-data v5, :array_4

    .line 133
    .line 134
    .line 135
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    int-to-double v8, v3

    .line 143
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 144
    .line 145
    .line 146
    move-result-wide v5

    .line 147
    div-double/2addr p1, v5

    .line 148
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-array p2, v2, [Ljava/lang/Object;

    .line 153
    .line 154
    aput-object p1, p2, v0

    .line 155
    .line 156
    aput-object p3, p2, v1

    .line 157
    .line 158
    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    return-object p1

    .line 163
    :array_0
    .array-data 8
        -0x2cb0d147eec98bf3L    # -2.0326357272159182E93
        0x73de1011a31b80abL    # 1.3452574318599116E250
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_1
    .array-data 8
        0x6e075d4d8332dd37L    # 1.0557051594355875E222
        0x253e26b9e0ac010eL
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 8
        0x5979606c20125f58L    # 1.0484616161507407E123
        -0x224da519ecb66778L    # -2.238278244642591E143
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_3
    .array-data 8
        -0x477439c75958a6f8L    # -2.6118828009187165E-36
        -0xaf8b2af373b5510L
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_4
    .array-data 8
        -0x472835ff123905bbL    # -7.158764861428104E-35
        -0x51bf99c701363558L    # -6.595029541405852E-86
    .end array-data
.end method

.method public elapsedTimeToDisplay(J)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    sub-long v4, p1, v4

    .line 14
    .line 15
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    sub-long/2addr p1, v6

    .line 24
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    sub-long/2addr p1, v6

    .line 31
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    new-array v3, v3, [J

    .line 39
    .line 40
    fill-array-data v3, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x3

    .line 63
    new-array p2, p2, [Ljava/lang/Object;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    aput-object v1, p2, v3

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    aput-object v2, p2, v1

    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    aput-object p1, p2, v1

    .line 73
    .line 74
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :array_0
    .array-data 8
        0x33ec4dfe4165a481L    # 1.4091226967467295E-58
        -0x617c46b7737aa74eL
        -0xa57df15a4ebab8bL    # -5.796662088494684E258
        0x5c54f01de1eaf1adL    # 6.087406882820135E136
    .end array-data
.end method

.method public declared-synchronized getBytesReceived()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    iget-wide v2, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->mLastReceived:J

    .line 7
    .line 8
    sub-long v2, v0, v2

    .line 9
    .line 10
    iput-wide v2, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->mReceived:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->mLastReceived:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-wide v2

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method

.method public declared-synchronized getBytesSent()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    iget-wide v2, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->mLastSent:J

    .line 7
    .line 8
    sub-long v2, v0, v2

    .line 9
    .line 10
    iput-wide v2, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->mSent:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->mLastSent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-wide v2

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method

.method public declared-synchronized getElapsedTime()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    iget-wide v2, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_connectedTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    sub-long/2addr v0, v2

    .line 9
    monitor-exit p0

    .line 10
    return-wide v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method public declared-synchronized getFastReceivedSeries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->manageBuckets()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_fastBuckets:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->getReceivedSeries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public declared-synchronized getFastSentSeries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->manageBuckets()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_fastBuckets:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->getSentSeries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public declared-synchronized getSlowReceivedSeries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->manageBuckets()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_slowBuckets:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->getReceivedSeries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public declared-synchronized getSlowSentSeries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->manageBuckets()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_slowBuckets:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->getSentSeries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public declared-synchronized getTotalBytesReceived()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_totalBytesReceived:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public declared-synchronized getTotalBytesSent()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_totalBytesSent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public render_byteCount(Ljava/lang/Long;Z)J
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/16 p2, 0x3e8

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p2, 0x400

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    int-to-long v2, p2

    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-gez v4, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    return-wide p1

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    long-to-double v0, v0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    int-to-double v2, p2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    div-double/2addr v0, v4

    .line 37
    double-to-int p2, v0

    .line 38
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    long-to-double v0, v0

    .line 43
    int-to-double p1, p2

    .line 44
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    .line 45
    .line 46
    .line 47
    move-result-wide p1

    .line 48
    div-double/2addr v0, p1

    .line 49
    double-to-long p1, v0

    .line 50
    return-wide p1
.end method

.method public declared-synchronized startConnected()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_isConnected:Z

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_connectedTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public declared-synchronized startSession()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->resetBytesTransferred()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_isConnected:Z

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->m_connectedTime:J

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->resetBytesTransferred()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method
