.class public final Landroidx/camera/core/RetryPolicy$RetryConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/camera/core/ExperimentalRetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/RetryPolicy$RetryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mShouldRetry:Z

.field private mTimeoutInMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/camera/core/RetryPolicy$RetryConfig$Builder;->mShouldRetry:Z

    .line 6
    .line 7
    invoke-static {}, Landroidx/camera/core/RetryPolicy$RetryConfig;->getDefaultRetryDelayInMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Landroidx/camera/core/RetryPolicy$RetryConfig$Builder;->mTimeoutInMillis:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/RetryPolicy$RetryConfig;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/camera/core/RetryPolicy$RetryConfig$Builder;->mShouldRetry:Z

    .line 4
    .line 5
    iget-wide v2, p0, Landroidx/camera/core/RetryPolicy$RetryConfig$Builder;->mTimeoutInMillis:J

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/core/RetryPolicy$RetryConfig;-><init>(ZJLandroidx/camera/core/RetryPolicy$1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public setRetryDelayInMillis(J)Landroidx/camera/core/RetryPolicy$RetryConfig$Builder;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x64L
            to = 0x7d0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-wide p1, p0, Landroidx/camera/core/RetryPolicy$RetryConfig$Builder;->mTimeoutInMillis:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setShouldRetry(Z)Landroidx/camera/core/RetryPolicy$RetryConfig$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/camera/core/RetryPolicy$RetryConfig$Builder;->mShouldRetry:Z

    .line 2
    .line 3
    return-object p0
.end method
