.class public Lcom/google/common/base/internal/Finalizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final FINALIZABLE_REFERENCE:Ljava/lang/String;

.field private static final bigThreadConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private static final inheritableThreadLocals:Ljava/lang/reflect/Field;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final frqReference:Ljava/lang/ref/PhantomReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/PhantomReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/common/base/internal/Finalizer;->FINALIZABLE_REFERENCE:Ljava/lang/String;

    .line 17
    .line 18
    const-class v0, Lcom/google/common/base/internal/Finalizer;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    .line 29
    .line 30
    invoke-static {}, Lcom/google/common/base/internal/Finalizer;->getBigThreadConstructor()Ljava/lang/reflect/Constructor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/google/common/base/internal/Finalizer;->bigThreadConstructor:Ljava/lang/reflect/Constructor;

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    invoke-static {}, Lcom/google/common/base/internal/Finalizer;->getInheritableThreadLocalsField()Ljava/lang/reflect/Field;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    sput-object v0, Lcom/google/common/base/internal/Finalizer;->inheritableThreadLocals:Ljava/lang/reflect/Field;

    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 8
        -0x49265bb7315b3550L    # -1.7965862604495082E-44
        -0x33a2585d9a29daf5L    # -7.445853321212713E59
        -0x585791c1fd5358a3L
        0x6e68a10af1aa8c8aL    # 7.122211494538858E223
        0x3c1922f539589edfL    # 3.40663835051025E-19
        -0x595082ea409381cL    # -4.89525500096801E281
        -0x2e78868bd58ae8f0L    # -5.700380324111741E84
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/PhantomReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/ref/PhantomReference<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/common/base/internal/Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 5
    .line 6
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/common/base/internal/Finalizer;->finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/google/common/base/internal/Finalizer;->frqReference:Ljava/lang/ref/PhantomReference;

    .line 14
    .line 15
    return-void
.end method

.method private cleanUp(Ljava/lang/ref/Reference;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/internal/Finalizer;->getFinalizeReferentMethod()Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/common/base/internal/Finalizer;->frqReference:Ljava/lang/ref/PhantomReference;

    .line 13
    .line 14
    if-ne p1, v2, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    const/4 v2, 0x0

    .line 18
    :try_start_0
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    sget-object v2, Lcom/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    .line 24
    .line 25
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 26
    .line 27
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v5, 0x6

    .line 30
    new-array v5, v5, [J

    .line 31
    .line 32
    fill-array-data v5, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v2, v3, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object p1, p0, Lcom/google/common/base/internal/Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    return p1

    .line 55
    :array_0
    .array-data 8
        0x640d2507584978d5L    # 9.01044541759433E173
        -0x736add30e8cca6f6L
        0x3f4e07723fefcb2fL    # 9.164150104637776E-4
        0x3330550fde91df1L
        0x17be04238794d352L
        0x19480f3d5078239cL    # 6.911937914295262E-187
    .end array-data
.end method

.method private static getBigThreadConstructor()Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Ljava/lang/Thread;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [Ljava/lang/Class;

    .line 5
    .line 6
    const-class v2, Ljava/lang/ThreadGroup;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const-class v2, Ljava/lang/Runnable;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object v2, v1, v3

    .line 15
    .line 16
    const-class v2, Ljava/lang/String;

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    aput-object v2, v1, v3

    .line 20
    .line 21
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    aput-object v2, v1, v3

    .line 25
    .line 26
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    aput-object v2, v1, v3

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    return-object v0

    .line 36
    :catchall_0
    const/4 v0, 0x0

    .line 37
    return-object v0
.end method

.method private getFinalizeReferentMethod()Ljava/lang/reflect/Method;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/base/internal/Finalizer;->finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Class;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Ljava/lang/AssertionError;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x4037107524c2c766L    # -0.19481025414501546
        0x53bcaf0c82131bfeL    # 2.393288752537122E95
        0x71dd5479c732beb4L    # 3.0558242375699678E240
    .end array-data
.end method

.method private static getInheritableThreadLocalsField()Ljava/lang/reflect/Field;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :catchall_0
    sget-object v0, Lcom/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    .line 28
    .line 29
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 30
    .line 31
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/16 v3, 0xf

    .line 34
    .line 35
    new-array v3, v3, [J

    .line 36
    .line 37
    fill-array-data v3, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    return-object v0

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x42c527cd6d8d459L
        0x3715179397c10ee6L    # 2.364505720489685E-43
        -0x333b314ed2db5dffL    # -6.687237638778174E61
        0x6055166cc7273218L    # 1.130953818264378E156
    .end array-data

    .line 54
    .line 55
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
    :array_1
    .array-data 8
        -0x2f926d578dc56ecbL    # -2.7394447059682095E79
        0x5700f5ccade6168dL    # 1.2746126348142458E111
        -0x5508d0251e9e71b4L
        -0xabfd47fc74ff260L    # -6.06979929818991E256
        -0x42bb5ee5b6cf3f87L    # -1.465800447491405E-13
        -0x3fc43d6d16b5abf7L    # -27.760054188391255
        0xfae74d96e42546bL
        -0x1269baf562a616e5L    # -7.861240562532801E219
        -0x290f5f2fdb8d2adfL    # -6.24831670581352E110
        0x15c86f3462c76a67L    # 9.741694379471666E-204
        0x439655772c54a898L    # 4.0233086853435546E17
        -0x67e7fa5d5dbd5706L
        0x36b79a1e15004c56L    # 4.134184563068218E-45
        -0x4400a7817510e1c7L    # -1.0620329786684071E-19
        0x2c670563f2a86efdL    # 8.622170807785791E-95
    .end array-data
.end method

.method public static startFinalizer(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/PhantomReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/ref/PhantomReference<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v3, 0x7

    .line 9
    new-array v3, v3, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    new-instance v1, Lcom/google/common/base/internal/Finalizer;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/base/internal/Finalizer;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/PhantomReference;)V

    .line 30
    .line 31
    .line 32
    const-class p0, Lcom/google/common/base/internal/Finalizer;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-object p1, Lcom/google/common/base/internal/Finalizer;->bigThreadConstructor:Ljava/lang/reflect/Constructor;

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x5

    .line 50
    new-array v3, v3, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    aput-object p2, v3, v4

    .line 54
    .line 55
    aput-object v1, v3, v0

    .line 56
    .line 57
    const/4 v4, 0x2

    .line 58
    aput-object p0, v3, v4

    .line 59
    .line 60
    const/4 v4, 0x3

    .line 61
    aput-object v2, v3, v4

    .line 62
    .line 63
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    .line 65
    const/4 v4, 0x4

    .line 66
    aput-object v2, v3, v4

    .line 67
    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    sget-object v2, Lcom/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    .line 77
    .line 78
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 79
    .line 80
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    const/16 v5, 0x9

    .line 83
    .line 84
    new-array v5, v5, [J

    .line 85
    .line 86
    fill-array-data v5, :array_1

    .line 87
    .line 88
    .line 89
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v2, v3, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :cond_0
    move-object p1, p2

    .line 100
    :goto_0
    if-nez p1, :cond_1

    .line 101
    .line 102
    new-instance p1, Ljava/lang/Thread;

    .line 103
    .line 104
    invoke-direct {p1, p2, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 108
    .line 109
    .line 110
    :try_start_1
    sget-object p0, Lcom/google/common/base/internal/Finalizer;->inheritableThreadLocals:Ljava/lang/reflect/Field;

    .line 111
    .line 112
    if-eqz p0, :cond_2

    .line 113
    .line 114
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    sget-object p2, Lcom/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    .line 120
    .line 121
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 122
    .line 123
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    const/16 v2, 0xb

    .line 126
    .line 127
    new-array v2, v2, [J

    .line 128
    .line 129
    fill-array-data v2, :array_2

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {p2, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    const/16 p2, 0x8

    .line 151
    .line 152
    new-array p2, p2, [J

    .line 153
    .line 154
    fill-array-data p2, :array_3

    .line 155
    .line 156
    .line 157
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    nop

    .line 169
    :array_0
    .array-data 8
        -0x34546d6ca46cd038L    # -3.3803861426550873E56
        0x1f84cfc988ea9a3bL    # 7.579126857709864E-157
        -0x4a8dadeced3a82e3L    # -3.0604164123893423E-51
        -0xcc5c54aba84bdcL
        -0x80afa753bb7e9bdL    # -6.941013764804836E269
        0x5a39f2b906f51b46L    # 4.391211531111448E126
        0x29e58fed55d67c28L    # 7.344883710432686E-107
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_1
    .array-data 8
        -0x2f729aa105a8c0deL    # -1.0892230390406142E80
        0x78d9246eb0466411L    # 1.3601328099686964E274
        0x68928ef034da8c19L    # 5.418968475329339E195
        0x175e2a28b7b8c648L
        0x4c9f915434d60650L    # 1.2681830964588333E61
        -0x22c06fdf132635dbL    # -1.5034752957400382E141
        0x190ee35facbb66dbL    # 5.546065813207014E-188
        -0x68e7b6736f3abcddL
        -0x538577b7575bceeL
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_2
    .array-data 8
        0x770182378369d39cL    # 1.764245814583629E265
        0xce15c3c8ff8b30aL
        0x628f1851741b4562L    # 5.7300456415175724E166
        -0x5cfaecd6bbd7e16aL
        -0x7a67bf938d49168dL
        -0x1295ac0ec4fff616L    # -1.161724313629332E219
        -0x10bb398737b7a661L    # -9.843139293569605E227
        0x67586469eae6dc03L    # 6.792489739227468E189
        -0x2197015ccb1f76f0L    # -6.242167943596653E146
        0x39b3235a18b088eL
        -0x151d7662625632f4L    # -7.439429596109421E206
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    :array_3
    .array-data 8
        -0x49da4b9a1f88c19bL    # -7.425472186448572E-48
        0x3e01b7b2c0f283ccL    # 5.156491916571338E-10
        -0x3768dae260f5d677L    # -5.040530993499384E41
        0x281a30fe100d3f55L
        0x179e6897a7d63d69L    # 6.50876709401069E-195
        0x3671a9217aaf8a5eL    # 1.9334270070260157E-46
        0x1f8003e396364a9fL    # 5.832361069237225E-157
        -0x7a3d8e43dc0c9bd0L    # -6.350613630074158E-281
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :catch_0
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/common/base/internal/Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/google/common/base/internal/Finalizer;->cleanUp(Ljava/lang/ref/Reference;)Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void
.end method
