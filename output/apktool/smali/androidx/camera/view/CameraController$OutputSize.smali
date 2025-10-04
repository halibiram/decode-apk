.class public final Landroidx/camera/view/CameraController$OutputSize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputSize"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/CameraController$OutputSize$OutputAspectRatio;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final UNASSIGNED_ASPECT_RATIO:I = -0x1


# instance fields
.field private final mAspectRatio:I

.field private final mResolution:Landroid/util/Size;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 3
    iput p1, p0, Landroidx/camera/view/CameraController$OutputSize;->mAspectRatio:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/camera/view/CameraController$OutputSize;->mResolution:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;)V
    .locals 1
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroidx/camera/view/CameraController$OutputSize;->mAspectRatio:I

    .line 8
    iput-object p1, p0, Landroidx/camera/view/CameraController$OutputSize;->mResolution:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public getAspectRatio()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/view/CameraController$OutputSize;->mAspectRatio:I

    .line 2
    .line 3
    return v0
.end method

.method public getResolution()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController$OutputSize;->mResolution:Landroid/util/Size;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "aspect ratio: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/camera/view/CameraController$OutputSize;->mAspectRatio:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " resolution: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/view/CameraController$OutputSize;->mResolution:Landroid/util/Size;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
