.class public Lcom/tknetwork/tunnel/utils/StatisticsGraphData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;
    }
.end annotation


# static fields
.field private static statisticData:Lcom/tknetwork/tunnel/utils/StatisticsGraphData;


# instance fields
.field private final m_dataTransferStats:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

.field private m_displayDataTransferStats:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->m_dataTransferStats:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->m_displayDataTransferStats:Z

    .line 13
    .line 14
    return-void
.end method

.method public static declared-synchronized getStatisticData()Lcom/tknetwork/tunnel/utils/StatisticsGraphData;
    .locals 2

    .line 1
    const-class v0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->statisticData:Lcom/tknetwork/tunnel/utils/StatisticsGraphData;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->statisticData:Lcom/tknetwork/tunnel/utils/StatisticsGraphData;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->statisticData:Lcom/tknetwork/tunnel/utils/StatisticsGraphData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public declared-synchronized getDataTransferStats()Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->m_dataTransferStats:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

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

.method public declared-synchronized getDisplayDataTransferStats()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->m_displayDataTransferStats:Z
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

.method public declared-synchronized setDisplayDataTransferStats(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->m_displayDataTransferStats:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method
