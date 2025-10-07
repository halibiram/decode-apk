.class public Lcom/trilead/ssh2/util/TimeoutService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    }
.end annotation


# static fields
.field private static final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/trilead/ssh2/util/TimeoutService$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/trilead/ssh2/util/TimeoutService$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/trilead/ssh2/util/TimeoutService;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 7
    .line 8
    const/16 v1, 0x14

    .line 9
    .line 10
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/trilead/ssh2/util/TimeoutService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final addTimeoutHandler(JLjava/lang/Runnable;)Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    .locals 3

    .line 1
    new-instance v0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p2}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    sub-long/2addr p0, v1

    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    cmp-long p2, p0, v1

    .line 17
    .line 18
    if-gez p2, :cond_0

    .line 19
    .line 20
    move-wide p0, v1

    .line 21
    :cond_0
    sget-object p2, Lcom/trilead/ssh2/util/TimeoutService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    .line 23
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    invoke-interface {p2, v0, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public static final cancelTimeoutHandler(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
