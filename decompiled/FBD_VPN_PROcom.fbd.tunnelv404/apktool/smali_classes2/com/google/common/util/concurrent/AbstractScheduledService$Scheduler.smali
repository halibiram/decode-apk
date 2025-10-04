.class public abstract Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Scheduler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;-><init>()V

    return-void
.end method

.method public static newFixedDelaySchedule(JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
    .locals 8

    .line 1
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p2, v0

    .line 7
    .line 8
    if-lez v2, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    new-array v2, v2, [J

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler$1;

    .line 32
    .line 33
    move-object v2, v0

    .line 34
    move-wide v3, p0

    .line 35
    move-wide v5, p2

    .line 36
    move-object v7, p4

    .line 37
    invoke-direct/range {v2 .. v7}, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler$1;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :array_0
    .array-data 8
        -0x64b519f9ea713c70L
        -0x3b27eda1cd776d51L    # -4.5470249847980096E23
        0x2d19aaccdb98f7adL    # 1.968791043103893E-91
        0x4ecdd1cd1e4056fcL    # 4.1161374874965422E71
        -0x246ae737d6f5c8b6L    # -1.4974584232750127E133
    .end array-data
.end method

.method public static newFixedRateSchedule(JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
    .locals 8

    .line 1
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p2, v0

    .line 7
    .line 8
    if-lez v2, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    new-array v2, v2, [J

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler$2;

    .line 32
    .line 33
    move-object v2, v0

    .line 34
    move-wide v3, p0

    .line 35
    move-wide v5, p2

    .line 36
    move-object v7, p4

    .line 37
    invoke-direct/range {v2 .. v7}, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler$2;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :array_0
    .array-data 8
        -0x16901768c2b589c7L    # -7.6326318814672775E199
        0x724c1d696aa7c1d2L
        0x319e13bbb43c48a6L    # 1.0894736409870034E-69
        0x5da0298ee38aa5L
        0x405263fe7a4038bfL    # 73.56240707656524
    .end array-data
.end method


# virtual methods
.method public abstract schedule(Lcom/google/common/util/concurrent/AbstractService;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;
.end method
