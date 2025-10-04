.class Lcom/tknetwork/tunnel/fragment/GraphFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/fragment/GraphFragment;->updateByteCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/fragment/GraphFragment;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/fragment/GraphFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment$1;->this$0:Lcom/tknetwork/tunnel/fragment/GraphFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment$1;->this$0:Lcom/tknetwork/tunnel/fragment/GraphFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tknetwork/tunnel/fragment/GraphFragment;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/fragment/GraphFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment$1;->this$0:Lcom/tknetwork/tunnel/fragment/GraphFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/tknetwork/tunnel/utils/RetrieveData;->findData()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Long;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Long;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment$1;->this$0:Lcom/tknetwork/tunnel/fragment/GraphFragment;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/tknetwork/tunnel/fragment/GraphFragment;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/fragment/GraphFragment;)Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    invoke-virtual {v2, v3, v4}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->addBytesReceived(J)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment$1;->this$0:Lcom/tknetwork/tunnel/fragment/GraphFragment;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/tknetwork/tunnel/fragment/GraphFragment;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/fragment/GraphFragment;)Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-virtual {v1, v2, v3}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;->addBytesSent(J)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/tknetwork/tunnel/fragment/GraphFragment$1;->this$0:Lcom/tknetwork/tunnel/fragment/GraphFragment;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lcom/tknetwork/tunnel/fragment/GraphFragment$1$1;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/tknetwork/tunnel/fragment/GraphFragment$1$1;-><init>(Lcom/tknetwork/tunnel/fragment/GraphFragment$1;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    const-wide/16 v0, 0x3e8

    .line 83
    .line 84
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    nop

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    return-void
.end method
