.class Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Bucket"
.end annotation


# instance fields
.field public m_bytesReceived:J

.field public m_bytesSent:J

.field final synthetic this$0:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;


# direct methods
.method private constructor <init>(Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;->this$0:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;->m_bytesSent:J

    .line 4
    iput-wide v0, p0, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;->m_bytesReceived:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats$Bucket;-><init>(Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;)V

    return-void
.end method
