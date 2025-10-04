.class public abstract Landroidx/camera/core/ImmutableImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageInfo;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Lcom/google/auto/value/AutoValue;
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

.method public static create(Landroidx/camera/core/impl/TagBundle;JILandroid/graphics/Matrix;)Landroidx/camera/core/ImageInfo;
    .locals 7
    .param p0    # Landroidx/camera/core/impl/TagBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v6, Landroidx/camera/core/AutoValue_ImmutableImageInfo;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-wide v2, p1

    .line 6
    move v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Landroidx/camera/core/AutoValue_ImmutableImageInfo;-><init>(Landroidx/camera/core/impl/TagBundle;JILandroid/graphics/Matrix;)V

    .line 9
    .line 10
    .line 11
    return-object v6
.end method


# virtual methods
.method public abstract getRotationDegrees()I
.end method

.method public abstract getSensorToBufferTransformMatrix()Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTagBundle()Landroidx/camera/core/impl/TagBundle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTimestamp()J
.end method

.method public populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/utils/ExifData$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/ImmutableImageInfo;->getRotationDegrees()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setOrientationDegrees(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 6
    .line 7
    .line 8
    return-void
.end method
