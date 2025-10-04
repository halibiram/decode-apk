.class public Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/logger/TrafficHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LastDiff"
.end annotation


# instance fields
.field private final lasttdp:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

.field private final tdp:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;


# direct methods
.method private constructor <init>(Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;->lasttdp:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 4
    iput-object p2, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;->tdp:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;-><init>(Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;)V

    return-void
.end method


# virtual methods
.method public getDiffIn()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;->tdp:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->in:J

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;->lasttdp:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 6
    .line 7
    iget-wide v2, v2, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->in:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public getDiffOut()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;->tdp:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->out:J

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;->lasttdp:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 6
    .line 7
    iget-wide v2, v2, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->out:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public getIn()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;->tdp:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->in:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public getOut()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/logger/TrafficHistory$LastDiff;->tdp:Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/tknetwork/tunnel/logger/TrafficHistory$TrafficDatapoint;->out:J

    .line 4
    .line 5
    return-wide v0
.end method
