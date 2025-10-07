.class public Landroidx/camera/core/ImageCaptureLatencyEstimate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNDEFINED_CAPTURE_LATENCY:J = -0x1L

.field public static final UNDEFINED_IMAGE_CAPTURE_LATENCY:Landroidx/camera/core/ImageCaptureLatencyEstimate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final UNDEFINED_PROCESSING_LATENCY:J = -0x1L


# instance fields
.field private final mCaptureLatencyMillis:J

.field private final mProcessingLatencyMillis:J

.field private final mTotalCaptureLatencyMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/core/ImageCaptureLatencyEstimate;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/camera/core/ImageCaptureLatencyEstimate;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->UNDEFINED_IMAGE_CAPTURE_LATENCY:Landroidx/camera/core/ImageCaptureLatencyEstimate;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mCaptureLatencyMillis:J

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mProcessingLatencyMillis:J

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/core/ImageCaptureLatencyEstimate;->computeTotalCaptureLatencyMillis(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iput-wide p1, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mTotalCaptureLatencyMillis:J

    .line 13
    .line 14
    return-void
.end method

.method private computeTotalCaptureLatencyMillis(JJ)J
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/ImageCaptureLatencyEstimate;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/camera/core/ImageCaptureLatencyEstimate;

    .line 12
    .line 13
    iget-wide v3, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mCaptureLatencyMillis:J

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/camera/core/ImageCaptureLatencyEstimate;->getCaptureLatencyMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    cmp-long v1, v3, v5

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    iget-wide v3, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mProcessingLatencyMillis:J

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/camera/core/ImageCaptureLatencyEstimate;->getProcessingLatencyMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    cmp-long v1, v3, v5

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    iget-wide v3, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mTotalCaptureLatencyMillis:J

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/camera/core/ImageCaptureLatencyEstimate;->getTotalCaptureLatencyMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    cmp-long p1, v3, v5

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0
.end method

.method public getCaptureLatencyMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mCaptureLatencyMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getProcessingLatencyMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mProcessingLatencyMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTotalCaptureLatencyMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mTotalCaptureLatencyMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mCaptureLatencyMillis:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mProcessingLatencyMillis:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mTotalCaptureLatencyMillis:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x3

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v0, v3, v4

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v3, v0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    aput-object v2, v3, v0

    .line 30
    .line 31
    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "captureLatencyMillis="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mCaptureLatencyMillis:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", processingLatencyMillis="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mProcessingLatencyMillis:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", totalCaptureLatencyMillis="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Landroidx/camera/core/ImageCaptureLatencyEstimate;->mTotalCaptureLatencyMillis:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
