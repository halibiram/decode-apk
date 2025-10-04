.class public final Landroidx/camera/core/RetryPolicy$RetryConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/camera/core/ExperimentalRetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/RetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RetryConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/RetryPolicy$RetryConfig$Builder;
    }
.end annotation


# static fields
.field public static COMPLETE_WITHOUT_FAILURE:Landroidx/camera/core/RetryPolicy$RetryConfig; = null
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final DEFAULT_DELAY_MILLIS:J = 0x1f4L

.field public static final DEFAULT_DELAY_RETRY:Landroidx/camera/core/RetryPolicy$RetryConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final MINI_DELAY_MILLIS:J = 0x64L

.field public static final MINI_DELAY_RETRY:Landroidx/camera/core/RetryPolicy$RetryConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final NOT_RETRY:Landroidx/camera/core/RetryPolicy$RetryConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final mCompleteWithoutFailure:Z

.field private final mDelayInMillis:J

.field private final mShouldRetry:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/RetryPolicy$RetryConfig;-><init>(ZJ)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/camera/core/RetryPolicy$RetryConfig;->NOT_RETRY:Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 10
    .line 11
    new-instance v0, Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v0, v4}, Landroidx/camera/core/RetryPolicy$RetryConfig;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/camera/core/RetryPolicy$RetryConfig;->DEFAULT_DELAY_RETRY:Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 18
    .line 19
    new-instance v0, Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 20
    .line 21
    const-wide/16 v5, 0x64

    .line 22
    .line 23
    invoke-direct {v0, v4, v5, v6}, Landroidx/camera/core/RetryPolicy$RetryConfig;-><init>(ZJ)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Landroidx/camera/core/RetryPolicy$RetryConfig;->MINI_DELAY_RETRY:Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 27
    .line 28
    new-instance v0, Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 29
    .line 30
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/core/RetryPolicy$RetryConfig;-><init>(ZJZ)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Landroidx/camera/core/RetryPolicy$RetryConfig;->COMPLETE_WITHOUT_FAILURE:Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 34
    .line 35
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-static {}, Landroidx/camera/core/RetryPolicy$RetryConfig;->getDefaultRetryDelayInMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Landroidx/camera/core/RetryPolicy$RetryConfig;-><init>(ZJ)V

    return-void
.end method

.method private constructor <init>(ZJ)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/camera/core/RetryPolicy$RetryConfig;-><init>(ZJZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZJLandroidx/camera/core/RetryPolicy$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/RetryPolicy$RetryConfig;-><init>(ZJ)V

    return-void
.end method

.method private constructor <init>(ZJZ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-boolean p1, p0, Landroidx/camera/core/RetryPolicy$RetryConfig;->mShouldRetry:Z

    .line 6
    iput-wide p2, p0, Landroidx/camera/core/RetryPolicy$RetryConfig;->mDelayInMillis:J

    if-eqz p4, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 7
    const-string p2, "shouldRetry must be false when completeWithoutFailure is set to true"

    invoke-static {p1, p2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 8
    :cond_0
    iput-boolean p4, p0, Landroidx/camera/core/RetryPolicy$RetryConfig;->mCompleteWithoutFailure:Z

    return-void
.end method

.method public static getDefaultRetryDelayInMillis()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method


# virtual methods
.method public getRetryDelayInMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/camera/core/RetryPolicy$RetryConfig;->mDelayInMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public shouldCompleteWithoutFailure()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/RetryPolicy$RetryConfig;->mCompleteWithoutFailure:Z

    .line 2
    .line 3
    return v0
.end method

.method public shouldRetry()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/RetryPolicy$RetryConfig;->mShouldRetry:Z

    .line 2
    .line 3
    return v0
.end method
