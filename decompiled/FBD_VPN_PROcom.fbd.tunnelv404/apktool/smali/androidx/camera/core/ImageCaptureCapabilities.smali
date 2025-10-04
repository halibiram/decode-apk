.class public interface abstract Landroidx/camera/core/ImageCaptureCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getSupportedOutputFormats()Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/camera/core/ExperimentalImageCaptureOutputFormat;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCaptureProcessProgressSupported()Z
.end method

.method public abstract isPostviewSupported()Z
.end method
