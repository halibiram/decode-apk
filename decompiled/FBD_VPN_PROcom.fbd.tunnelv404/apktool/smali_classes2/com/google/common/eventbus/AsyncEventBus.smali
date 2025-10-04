.class public Lcom/google/common/eventbus/AsyncEventBus;
.super Lcom/google/common/eventbus/EventBus;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/eventbus/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/common/eventbus/Dispatcher;->legacyAsync()Lcom/google/common/eventbus/Dispatcher;

    move-result-object v0

    sget-object v1, Lcom/google/common/eventbus/EventBus$LoggingHandler;->INSTANCE:Lcom/google/common/eventbus/EventBus$LoggingHandler;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/Dispatcher;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/common/eventbus/Dispatcher;->legacyAsync()Lcom/google/common/eventbus/Dispatcher;

    move-result-object v1

    sget-object v2, Lcom/google/common/eventbus/EventBus$LoggingHandler;->INSTANCE:Lcom/google/common/eventbus/EventBus$LoggingHandler;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/Dispatcher;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x1b57996c16f88510L    # 5.823737373888676E-177
        0x6e3bf3394bcbc629L    # 1.0103225962521462E223
    .end array-data
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/common/eventbus/Dispatcher;->legacyAsync()Lcom/google/common/eventbus/Dispatcher;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/Dispatcher;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    return-void

    nop

    :array_0
    .array-data 8
        -0x7dbd68f3a426a8d8L    # -8.88289323032383E-298
        -0x4fc5a531085ad49cL    # -2.2760380907659922E-76
    .end array-data
.end method
