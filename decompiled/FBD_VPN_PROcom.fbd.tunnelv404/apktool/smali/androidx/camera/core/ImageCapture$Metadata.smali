.class public final Landroidx/camera/core/ImageCapture$Metadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation


# instance fields
.field private mIsReversedHorizontal:Z

.field private mIsReversedHorizontalSet:Z

.field private mIsReversedVertical:Z

.field private mLocation:Landroid/location/Location;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontalSet:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mLocation:Landroid/location/Location;

    .line 2
    .line 3
    return-object v0
.end method

.method public isReversedHorizontal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontal:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReversedHorizontalSet()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontalSet:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReversedVertical()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedVertical:Z

    .line 2
    .line 3
    return v0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mLocation:Landroid/location/Location;

    .line 2
    .line 3
    return-void
.end method

.method public setReversedHorizontal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontal:Z

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontalSet:Z

    .line 5
    .line 6
    return-void
.end method

.method public setReversedVertical(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedVertical:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Metadata{mIsReversedHorizontal="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontal:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mIsReversedVertical="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedVertical:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mLocation="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mLocation:Landroid/location/Location;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "}"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
