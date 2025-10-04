.class final Lorg/junit/internal/management/ReflectiveThreadMXBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/junit/internal/management/ThreadMXBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;
    }
.end annotation


# instance fields
.field private final threadMxBean:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/junit/internal/management/ReflectiveThreadMXBean;->threadMxBean:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getThreadCpuTime(J)J
    .locals 4

    .line 1
    sget-object v0, Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;->getThreadCpuTimeMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const-string v1, "Unable to access ThreadMXBean"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v2, p0, Lorg/junit/internal/management/ReflectiveThreadMXBean;->threadMxBean:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x1

    .line 14
    new-array p2, p2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object p1, p2, v3

    .line 18
    .line 19
    invoke-virtual {v0, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-wide p1

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :catch_2
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :catch_3
    move-exception p1

    .line 37
    :goto_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 38
    .line 39
    invoke-direct {p2, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw p2

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 44
    .line 45
    invoke-direct {p1, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public isThreadCpuTimeSupported()Z
    .locals 3

    .line 1
    sget-object v0, Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;->isThreadCpuTimeSupportedMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lorg/junit/internal/management/ReflectiveThreadMXBean;->threadMxBean:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return v0

    .line 19
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method
