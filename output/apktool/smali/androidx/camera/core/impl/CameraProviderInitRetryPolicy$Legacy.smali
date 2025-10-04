.class public final Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$Legacy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/RetryPolicyInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Legacy"
.end annotation


# instance fields
.field private final mBasePolicy:Landroidx/camera/core/RetryPolicy;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;-><init>(J)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$Legacy;->mBasePolicy:Landroidx/camera/core/RetryPolicy;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public copy(J)Landroidx/camera/core/RetryPolicy;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$Legacy;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$Legacy;-><init>(J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getTimeoutInMillis()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$Legacy;->mBasePolicy:Landroidx/camera/core/RetryPolicy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/RetryPolicy;->getTimeoutInMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public onRetryDecisionRequested(Landroidx/camera/core/RetryPolicy$ExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;
    .locals 2
    .param p1    # Landroidx/camera/core/RetryPolicy$ExecutionState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$Legacy;->mBasePolicy:Landroidx/camera/core/RetryPolicy;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/camera/core/RetryPolicy;->onRetryDecisionRequested(Landroidx/camera/core/RetryPolicy$ExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/camera/core/RetryPolicy$RetryConfig;->shouldRetry()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Landroidx/camera/core/RetryPolicy$ExecutionState;->getCause()Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    instance-of v0, p1, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "CameraX"

    .line 22
    .line 23
    const-string v1, "The device might underreport the amount of the cameras. Finish the initialize task since we are already reaching the maximum number of retries."

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;->getAvailableCameraCount()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-lez p1, :cond_0

    .line 35
    .line 36
    sget-object p1, Landroidx/camera/core/RetryPolicy$RetryConfig;->COMPLETE_WITHOUT_FAILURE:Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_0
    sget-object p1, Landroidx/camera/core/RetryPolicy$RetryConfig;->NOT_RETRY:Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_1
    sget-object p1, Landroidx/camera/core/RetryPolicy$RetryConfig;->DEFAULT_DELAY_RETRY:Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 43
    .line 44
    return-object p1
.end method
