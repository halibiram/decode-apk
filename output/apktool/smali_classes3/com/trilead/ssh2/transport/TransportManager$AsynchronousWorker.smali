.class Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/transport/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsynchronousWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/trilead/ssh2/transport/TransportManager;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/trilead/ssh2/transport/TransportManager;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/trilead/ssh2/transport/TransportManager;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-wide/16 v2, 0x7d0

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/trilead/ssh2/transport/TransportManager;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/trilead/ssh2/transport/TransportManager;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/trilead/ssh2/transport/TransportManager;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, [B

    .line 65
    .line 66
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :try_start_3
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_1
    return-void

    .line 74
    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    throw v1
.end method
