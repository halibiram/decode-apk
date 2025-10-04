.class public abstract Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/internal/CameraUseCaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CameraId"
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

.method public static create(Ljava/lang/String;Landroidx/camera/core/impl/Identifier;)Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/impl/Identifier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/internal/AutoValue_CameraUseCaseAdapter_CameraId;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/camera/core/internal/AutoValue_CameraUseCaseAdapter_CameraId;-><init>(Ljava/lang/String;Landroidx/camera/core/impl/Identifier;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getCameraConfigId()Landroidx/camera/core/impl/Identifier;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCameraIdString()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
