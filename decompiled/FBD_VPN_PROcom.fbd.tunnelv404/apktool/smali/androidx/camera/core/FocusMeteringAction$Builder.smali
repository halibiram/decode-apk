.class public Landroidx/camera/core/FocusMeteringAction$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/FocusMeteringAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mAutoCancelDurationInMillis:J

.field final mMeteringPointsAe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/MeteringPoint;",
            ">;"
        }
    .end annotation
.end field

.field final mMeteringPointsAf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/MeteringPoint;",
            ">;"
        }
    .end annotation
.end field

.field final mMeteringPointsAwb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/MeteringPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/FocusMeteringAction;)V
    .locals 5
    .param p1    # Landroidx/camera/core/FocusMeteringAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAf:Ljava/util/List;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAe:Ljava/util/List;

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAwb:Ljava/util/List;

    const-wide/16 v3, 0x1388

    .line 12
    iput-wide v3, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mAutoCancelDurationInMillis:J

    .line 13
    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAf()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAe()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAwb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction;->getAutoCancelDurationInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mAutoCancelDurationInMillis:J

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/MeteringPoint;)V
    .locals 1
    .param p1    # Landroidx/camera/core/MeteringPoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/camera/core/FocusMeteringAction$Builder;-><init>(Landroidx/camera/core/MeteringPoint;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/MeteringPoint;I)V
    .locals 2
    .param p1    # Landroidx/camera/core/MeteringPoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAf:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAe:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAwb:Ljava/util/List;

    const-wide/16 v0, 0x1388

    .line 6
    iput-wide v0, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mAutoCancelDurationInMillis:J

    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/camera/core/FocusMeteringAction$Builder;->addPoint(Landroidx/camera/core/MeteringPoint;I)Landroidx/camera/core/FocusMeteringAction$Builder;

    return-void
.end method


# virtual methods
.method public addPoint(Landroidx/camera/core/MeteringPoint;)Landroidx/camera/core/FocusMeteringAction$Builder;
    .locals 1
    .param p1    # Landroidx/camera/core/MeteringPoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/camera/core/FocusMeteringAction$Builder;->addPoint(Landroidx/camera/core/MeteringPoint;I)Landroidx/camera/core/FocusMeteringAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addPoint(Landroidx/camera/core/MeteringPoint;I)Landroidx/camera/core/FocusMeteringAction$Builder;
    .locals 4
    .param p1    # Landroidx/camera/core/MeteringPoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    const-string v3, "Point cannot be null."

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-lt p2, v1, :cond_1

    const/4 v2, 0x7

    if-gt p2, v2, :cond_1

    const/4 v0, 0x1

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid metering mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAe:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_4

    .line 6
    iget-object p2, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAwb:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method

.method public build()Landroidx/camera/core/FocusMeteringAction;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/FocusMeteringAction;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/camera/core/FocusMeteringAction;-><init>(Landroidx/camera/core/FocusMeteringAction$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public disableAutoCancel()Landroidx/camera/core/FocusMeteringAction$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mAutoCancelDurationInMillis:J

    .line 4
    .line 5
    return-object p0
.end method

.method public removePoints(I)Landroidx/camera/core/FocusMeteringAction$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAf:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    :cond_0
    and-int/lit8 v0, p1, 0x2

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAe:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    .line 18
    .line 19
    :cond_1
    and-int/lit8 p1, p1, 0x4

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAwb:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-object p0
.end method

.method public setAutoCancelDuration(JLjava/util/concurrent/TimeUnit;)Landroidx/camera/core/FocusMeteringAction$Builder;
    .locals 3
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const-string v1, "autoCancelDuration must be at least 1"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    iput-wide p1, p0, Landroidx/camera/core/FocusMeteringAction$Builder;->mAutoCancelDurationInMillis:J

    .line 20
    .line 21
    return-object p0
.end method
