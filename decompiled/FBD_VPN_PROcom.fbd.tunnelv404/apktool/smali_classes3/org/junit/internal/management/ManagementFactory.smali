.class public Lorg/junit/internal/management/ManagementFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/management/ManagementFactory$ThreadHolder;,
        Lorg/junit/internal/management/ManagementFactory$RuntimeHolder;,
        Lorg/junit/internal/management/ManagementFactory$FactoryHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getRuntimeMXBean()Lorg/junit/internal/management/RuntimeMXBean;
    .locals 1

    .line 1
    invoke-static {}, Lorg/junit/internal/management/ManagementFactory$RuntimeHolder;->access$000()Lorg/junit/internal/management/RuntimeMXBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getThreadMXBean()Lorg/junit/internal/management/ThreadMXBean;
    .locals 1

    .line 1
    invoke-static {}, Lorg/junit/internal/management/ManagementFactory$ThreadHolder;->access$100()Lorg/junit/internal/management/ThreadMXBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
