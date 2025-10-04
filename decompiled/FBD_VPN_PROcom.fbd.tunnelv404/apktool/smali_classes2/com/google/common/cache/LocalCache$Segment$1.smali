.class Lcom/google/common/cache/LocalCache$Segment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/LocalCache$Segment;->loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache$Segment;

.field final synthetic val$hash:I

.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$loadingFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic val$loadingValueReference:Lcom/google/common/cache/LocalCache$LoadingValueReference;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment$1;->this$0:Lcom/google/common/cache/LocalCache$Segment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$key:Ljava/lang/Object;

    .line 4
    .line 5
    iput p3, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$hash:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$loadingValueReference:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$loadingFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment$1;->this$0:Lcom/google/common/cache/LocalCache$Segment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$key:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$hash:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$loadingValueReference:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$loadingFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    sget-object v1, Lcom/google/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    .line 17
    .line 18
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 19
    .line 20
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v4, 0x5

    .line 23
    new-array v4, v4, [J

    .line 24
    .line 25
    fill-array-data v4, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment$1;->val$loadingValueReference:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->setException(Ljava/lang/Throwable;)Z

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0x33ba75a2260c26cL
        0x1dc033f1db216eefL
        -0x23bc76d0e455e573L    # -2.839886101614916E136
        -0x3bd0cae2e53a0147L    # -2.8783815549050765E20
        -0x67201a50e67f84acL    # -7.159048997887925E-189
    .end array-data
.end method
