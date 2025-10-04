.class public Lcom/tknetwork/tunnel/utils/RetrieveData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static totalDownload:J

.field static totalUpload:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static findData()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
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
    sget-wide v1, Lcom/tknetwork/tunnel/utils/RetrieveData;->totalDownload:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    sput-wide v1, Lcom/tknetwork/tunnel/utils/RetrieveData;->totalDownload:J

    .line 19
    .line 20
    :cond_0
    sget-wide v1, Lcom/tknetwork/tunnel/utils/RetrieveData;->totalUpload:J

    .line 21
    .line 22
    cmp-long v5, v1, v3

    .line 23
    .line 24
    if-nez v5, :cond_1

    .line 25
    .line 26
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    sput-wide v1, Lcom/tknetwork/tunnel/utils/RetrieveData;->totalUpload:J

    .line 31
    .line 32
    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    sget-wide v3, Lcom/tknetwork/tunnel/utils/RetrieveData;->totalDownload:J

    .line 37
    .line 38
    sub-long v3, v1, v3

    .line 39
    .line 40
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    sget-wide v7, Lcom/tknetwork/tunnel/utils/RetrieveData;->totalUpload:J

    .line 45
    .line 46
    sub-long v7, v5, v7

    .line 47
    .line 48
    sput-wide v1, Lcom/tknetwork/tunnel/utils/RetrieveData;->totalDownload:J

    .line 49
    .line 50
    sput-wide v5, Lcom/tknetwork/tunnel/utils/RetrieveData;->totalUpload:J

    .line 51
    .line 52
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    return-object v0
.end method
