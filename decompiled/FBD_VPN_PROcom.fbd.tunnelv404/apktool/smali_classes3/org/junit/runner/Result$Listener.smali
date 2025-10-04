.class Lorg/junit/runner/Result$Listener;
.super Lorg/junit/runner/notification/RunListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runner/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listener"
.end annotation

.annotation runtime Lorg/junit/runner/notification/RunListener$ThreadSafe;
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/runner/Result;


# direct methods
.method private constructor <init>(Lorg/junit/runner/Result;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/junit/runner/Result;Lorg/junit/runner/Result$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/junit/runner/Result$Listener;-><init>(Lorg/junit/runner/Result;)V

    return-void
.end method


# virtual methods
.method public testAssumptionFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/junit/runner/Result;->access$1100(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/junit/runner/Result;->access$900(Lorg/junit/runner/Result;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public testFinished(Lorg/junit/runner/Description;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/junit/runner/Result;->access$800(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public testIgnored(Lorg/junit/runner/Description;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/junit/runner/Result;->access$1000(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public testRunFinished(Lorg/junit/runner/Result;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    .line 6
    .line 7
    invoke-static {p1}, Lorg/junit/runner/Result;->access$700(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v2, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    .line 12
    .line 13
    invoke-static {v2}, Lorg/junit/runner/Result;->access$600(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public testRunStarted(Lorg/junit/runner/Description;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/junit/runner/Result$Listener;->this$0:Lorg/junit/runner/Result;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/junit/runner/Result;->access$600(Lorg/junit/runner/Result;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
