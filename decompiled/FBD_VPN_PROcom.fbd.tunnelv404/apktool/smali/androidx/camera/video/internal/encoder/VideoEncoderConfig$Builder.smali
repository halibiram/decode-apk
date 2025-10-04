.class public abstract Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/encoder/VideoEncoderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
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


# virtual methods
.method public abstract build()Landroidx/camera/video/internal/encoder/VideoEncoderConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setBitrate(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setColorFormat(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setDataSpace(Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .param p1    # Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setFrameRate(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setIFrameInterval(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setInputTimebase(Landroidx/camera/core/impl/Timebase;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .param p1    # Landroidx/camera/core/impl/Timebase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setMimeType(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setProfile(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setResolution(Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
