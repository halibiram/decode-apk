.class public final Landroidx/camera/core/CameraSelector$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/CameraSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mCameraFilterSet:Ljava/util/LinkedHashSet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroidx/camera/core/CameraFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mPhysicalCameraId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/CameraSelector$Builder;->mCameraFilterSet:Ljava/util/LinkedHashSet;

    return-void
.end method

.method private constructor <init>(Ljava/util/LinkedHashSet;)V
    .locals 1
    .param p1    # Ljava/util/LinkedHashSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Landroidx/camera/core/CameraFilter;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/camera/core/CameraSelector$Builder;->mCameraFilterSet:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static fromSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector$Builder;
    .locals 1
    .param p0    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/CameraSelector$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/camera/core/CameraSelector;->getCameraFilterSet()Ljava/util/LinkedHashSet;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroidx/camera/core/CameraSelector$Builder;-><init>(Ljava/util/LinkedHashSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;
    .locals 1
    .param p1    # Landroidx/camera/core/CameraFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraSelector$Builder;->mCameraFilterSet:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Landroidx/camera/core/CameraSelector;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/CameraSelector;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/core/CameraSelector$Builder;->mCameraFilterSet:Ljava/util/LinkedHashSet;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/camera/core/CameraSelector$Builder;->mPhysicalCameraId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroidx/camera/core/CameraSelector;-><init>(Ljava/util/LinkedHashSet;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public requireLensFacing(I)Landroidx/camera/core/CameraSelector$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    const-string v1, "The specified lens facing is invalid."

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/camera/core/CameraSelector$Builder;->mCameraFilterSet:Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    new-instance v1, Landroidx/camera/core/impl/LensFacingCameraFilter;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Landroidx/camera/core/impl/LensFacingCameraFilter;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public setPhysicalCameraId(Ljava/lang/String;)Landroidx/camera/core/CameraSelector$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/core/CameraSelector$Builder;->mPhysicalCameraId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
