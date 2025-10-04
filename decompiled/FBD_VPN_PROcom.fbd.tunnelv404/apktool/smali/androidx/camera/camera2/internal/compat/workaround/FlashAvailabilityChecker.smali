.class public final Landroidx/camera/camera2/internal/compat/workaround/FlashAvailabilityChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlashAvailability"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static isFlashAvailable(Landroidx/camera/camera2/internal/compat/workaround/CameraCharacteristicsProvider;)Z
    .locals 1
    .param p0    # Landroidx/camera/camera2/internal/compat/workaround/CameraCharacteristicsProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Landroidx/camera/camera2/internal/compat/workaround/FlashAvailabilityChecker;->isFlashAvailable(ZLandroidx/camera/camera2/internal/compat/workaround/CameraCharacteristicsProvider;)Z

    move-result p0

    return p0
.end method

.method public static isFlashAvailable(ZLandroidx/camera/camera2/internal/compat/workaround/CameraCharacteristicsProvider;)Z
    .locals 7
    .param p1    # Landroidx/camera/camera2/internal/compat/workaround/CameraCharacteristicsProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 2
    const-string v4, "FlashAvailability"

    :try_start_0
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p1, v5}, Landroidx/camera/camera2/internal/compat/workaround/CameraCharacteristicsProvider;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    const-class v5, Landroidx/camera/camera2/internal/compat/quirk/FlashAvailabilityBufferUnderflowQuirk;

    invoke-static {v5}, Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v6, v2, v3

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v2, v1

    aput-object v5, v2, v0

    .line 6
    const-string v0, "Device is known to throw an exception while checking flash availability. Flash is not available. [Manufacturer: %s, Model: %s, API Level: %d]."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v6, v2, v3

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v2, v1

    aput-object v5, v2, v0

    .line 9
    const-string v0, "Exception thrown while checking for flash availability on device not known to throw exceptions during this check. Please file an issue at https://issuetracker.google.com/issues/new?component=618491&template=1257717 with this error message [Manufacturer: %s, Model: %s, API Level: %d].\nFlash is not available."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-nez p0, :cond_3

    .line 10
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    if-nez p1, :cond_1

    .line 11
    const-string p0, "Characteristics did not contain key FLASH_INFO_AVAILABLE. Flash is not available."

    invoke-static {v4, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_2
    return v3

    .line 13
    :cond_3
    throw p1
.end method
