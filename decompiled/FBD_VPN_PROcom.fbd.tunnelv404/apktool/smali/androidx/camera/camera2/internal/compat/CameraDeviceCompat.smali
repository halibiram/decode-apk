.class public final Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;,
        Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;
    }
.end annotation


# static fields
.field public static final SESSION_OPERATION_MODE_CONSTRAINED_HIGH_SPEED:I = 0x1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final SESSION_OPERATION_MODE_NORMAL:I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# instance fields
.field private final mImpl:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1c

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance p2, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi28Impl;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi28Impl;-><init>(Landroid/hardware/camera2/CameraDevice;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x18

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi24Impl;->create(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi24Impl;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 v1, 0x17

    .line 30
    .line 31
    if-lt v0, v1, :cond_2

    .line 32
    .line 33
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi23Impl;->create(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi23Impl;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl;->create(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraDeviceCompatBaseImpl;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public static toCameraDeviceCompat(Landroid/hardware/camera2/CameraDevice;)Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;
    .locals 1
    .param p0    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/MainThreadAsyncHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;->toCameraDeviceCompat(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;

    move-result-object p0

    return-object p0
.end method

.method public static toCameraDeviceCompat(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;
    .locals 1
    .param p0    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public createCaptureSession(Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;)V
    .locals 1
    .param p1    # Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;->createCaptureSession(Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$CameraDeviceCompatImpl;->unwrap()Landroid/hardware/camera2/CameraDevice;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
