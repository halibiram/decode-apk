.class final Lorg/junit/internal/management/FakeThreadMXBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/junit/internal/management/ThreadMXBean;


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


# virtual methods
.method public getThreadCpuTime(J)J
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public isThreadCpuTimeSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
