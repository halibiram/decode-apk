.class public interface abstract Landroidx/camera/camera2/internal/compat/workaround/CameraCharacteristicsProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .param p1    # Landroid/hardware/camera2/CameraCharacteristics$Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
