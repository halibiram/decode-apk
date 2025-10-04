.class public final Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation


# instance fields
.field private backingThreadFactory:Ljava/util/concurrent/ThreadFactory;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private daemon:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private nameFormat:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private priority:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->nameFormat:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->daemon:Ljava/lang/Boolean;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->priority:Ljava/lang/Integer;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static doBuild(Lcom/google/common/util/concurrent/ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;
    .locals 9

    .line 1
    iget-object v2, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->nameFormat:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->daemon:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v5, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->priority:Ljava/lang/Integer;

    .line 6
    .line 7
    iget-object v6, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    :goto_0
    move-object v1, p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    if-eqz v2, :cond_1

    .line 21
    .line 22
    new-instance p0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    const-wide/16 v7, 0x0

    .line 25
    .line 26
    invoke-direct {p0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 27
    .line 28
    .line 29
    :goto_2
    move-object v3, p0

    .line 30
    goto :goto_3

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    goto :goto_2

    .line 33
    :goto_3
    new-instance p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;

    .line 34
    .line 35
    move-object v0, p0

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 37
    .line 38
    .line 39
    return-object p0
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public build()Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->doBuild(Lcom/google/common/util/concurrent/ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->daemon:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    aput-object v1, v2, v0

    .line 10
    .line 11
    invoke-static {p1, v2}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->nameFormat:Ljava/lang/String;

    .line 15
    .line 16
    return-object p0
.end method

.method public setPriority(I)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .locals 6

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-lt p1, v2, :cond_0

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v3, 0x0

    .line 9
    :goto_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v5, v0, [J

    .line 12
    .line 13
    fill-array-data v5, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v3, v4, p1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 24
    .line 25
    .line 26
    const/16 v3, 0xa

    .line 27
    .line 28
    if-gt p1, v3, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v0, v0, [J

    .line 34
    .line 35
    fill-array-data v0, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v1, v0, p1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->priority:Ljava/lang/Integer;

    .line 53
    .line 54
    return-object p0

    .line 55
    :array_0
    .array-data 8
        0x32a6961f4cfd9b72L
        0x7ce7460e93318b89L    # 4.645050857176703E293
        0x37c4b0c454bfe7c2L    # 4.750304862929628E-40
        -0x27ef270a93e69937L    # -1.6595627408423582E116
        0x3fbca70cceb76c79L    # 0.1119239811591103
        -0x298b7bf56e9dddcaL    # -3.011387352201601E108
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x7eb059e0f4ae8d64L
        0x4038c5d52ffe9d75L    # 24.772784232770807
        0x7ac523a3a031c97fL    # 2.4558102228227656E283
        0x5779a7d6cb136798L    # 2.4679759445277306E113
        0x7205476b58c2e715L    # 1.773606966242663E241
        0x34359eae22a59159L    # 3.444239954328576E-57
    .end array-data
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/concurrent/ThreadFactory;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 8
    .line 9
    return-object p0
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 8
    .line 9
    return-object p0
.end method
